# Using Python 3.9 image as the base
FROM python:3.9.12-slim

WORKDIR /app

# Installing dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

# Cloning the GitHub repository
RUN git clone https://github.com/anilkumarinjam/vip_airesumeanalyzer.git

# Changing directory to the cloned repository
WORKDIR /app/vip_airesumeanalyzer

# Creating a virtual environment with Python 3
RUN python3 -m venv venvapp

# Setting the PATH to use the virtual environment's bin directory (Activating/switching the virtual env)
ENV PATH="/app/vip_airesumeanalyzer/venvapp/bin:$PATH"

# Installing Python dependencies within the virtual environment
RUN pip install --no-cache-dir -r App/requirements.txt

# Downloading the SpaCy model within the virtual environment
RUN python -m spacy download en_core_web_sm

# Downloading the NLTK stopwords to the directory where nltk searches  for them
RUN python -m nltk.downloader stopwords -d /app/vip_airesumeanalyzer/venvapp/nltk_data

# Replacing resume_parser.py and utils.py in the venv with our  custom versions
COPY pyresparser/resume_parser.py venvapp/lib/python3.9/site-packages/pyresparser/resume_parser.py

COPY pyresparser/utils.py venvapp/lib/python3.9/site-packages/pyresparser/utils.py

# Setting the command to run our application(streamlit run app.py)
ENTRYPOINT ["streamlit", "run", "App/App.py", "--server.port=8501", "--server.address=0.0.0.0"]


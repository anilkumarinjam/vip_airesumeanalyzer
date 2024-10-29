# Use a specific Python 3.9 image as the base
FROM python:3.9.12-slim

# Set the initial working directory
WORKDIR /app

# Install dependencies, including python3-venv
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone the GitHub repository
RUN git clone https://github.com/anilkumarinjam/vip_airesumeanalyzer.git

# Change directory to the cloned repository
WORKDIR /app/vip_airesumeanalyzer

# Create a virtual environment with Python 3.9
RUN python3 -m venv venvapp

# Set the PATH to use the virtual environment's bin directory
ENV PATH="/app/vip_airesumeanalyzer/venvapp/bin:$PATH"

# Install Python dependencies within the virtual environment
RUN pip install --no-cache-dir -r App/requirements.txt

# Download SpaCy model within the virtual environment
RUN python -m spacy download en_core_web_sm

# Download NLTK stopwords to the correct directory
RUN python -m nltk.downloader stopwords -d /app/vip_airesumeanalyzer/venvapp/nltk_data

# Replace resume_parser.py (adjust the path if needed)
COPY pyresparser/resume_parser.py venvapp/lib/python3.9/site-packages/pyresparser/resume_parser.py


# Set the command to run your application (adjust as needed)
ENTRYPOINT ["streamlit", "run", "App/App.py", "--server.port=8501", "--server.address=0.0.0.0"]


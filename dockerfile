# Use a specific Python 3.9 image as the base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install dependencies, including python3.9-venv
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    python3-venv \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone the GitHub repository
RUN git clone https://github.com/anilkumarinjam/vip_airesumeanalyzer.git .

# Create a virtual environment with Python 3.9
RUN python3 -m venv venvapp

# Set the PATH to use the virtual environment's bin directory
ENV PATH="/app/venvapp/bin:$PATH"

# Install Python dependencies within the virtual environment
RUN pip install --no-cache-dir -r requirements.txt

# Download SpaCy model within the virtual environment
RUN python -m spacy download en_core_web_sm

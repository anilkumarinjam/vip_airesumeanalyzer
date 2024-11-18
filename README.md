# AI Resume Analyzer

## Requirements
Ensure the following tools are installed:

- **Python (3.9.12)**: [Download Python 3.9.12](https://www.python.org/downloads/release/python-3912/)
- **MySQL**: [Download MySQL](https://www.mysql.com/downloads/)
- **Visual Studio Code (Preferred Code Editor)**: [Download VS Code](https://code.visualstudio.com/Download)
- **Visual Studio Build Tools for C++**: [Download Build Tools](https://aka.ms/vs/17/release/vs_BuildTools.exe)

## Setup & Installation 👀
Follow these steps to set up the project:

### 1. Download the Code
Clone the repository manually or via Git:

`git clone https://github.com/anilkumarinjam/vip_airesumeanalyzer`
### 2. Create and Activate a Virtual Environment (Recommended)
`cd vip_airesumeanalyzer`
`python -m venv venvapp`
#### Activate the virtual environment:
`source venvapp/bin/activate`
### 3. Install required Packages
`cd ../..`
`cd App`
`pip install -r requirements.txt`
### 4. Download spaCy Language Model
`python -m spacy download en_core_web_sm`
### 5. Replaces files in pyreparser (resumeparser,utils)
###7. Run the application
`streamlit run App.py`

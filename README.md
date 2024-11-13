AI Resume Analyzer
Requirements
Ensure the following tools are installed:

Python (3.9.12): Download Python 3.9.12
MySQL: Download MySQL
Visual Studio Code (Preferred Code Editor): Download VS Code
Visual Studio Build Tools for C++: Download Build Tools
Setup & Installation 👀
Follow these steps to set up the project:

Download the Code

Clone the repository manually or via Git:
bash
Copy code
git clone https://github.com/deepakpadhi986/AI-Resume-Analyzer.git
Create and Activate a Virtual Environment (Recommended)

Open your command prompt, navigate to the project directory, and create a virtual environment:
bash
Copy code
cd AI-Resume-Analyzer
python -m venv venvapp
Activate the virtual environment:
bash
Copy code
cd venvapp/Scripts
activate
Install Required Packages

Navigate to the App folder and install the required packages:
bash
Copy code
cd ../..
cd App
pip install -r requirements.txt
Download spaCy Language Model

Download the en_core_web_sm language model:
bash
Copy code
python -m spacy download en_core_web_sm
Database Setup

Create a new MySQL database named cv.
Update your MySQL user credentials in App.py (located at AI-Resume-Analyzer/App/App.py) at Line 95:
python
Copy code
connection = pymysql.connect(host='localhost', user='root', password='root@MySQL4admin', db='cv')
Replace File in pyresparser

Go to venvapp\Lib\site-packages\pyresparser.
Replace the existing resume_parser.py file with the provided resume_parser.py from this project.
Run the Application

Start the application by running:
bash
Copy code
streamlit run App.py

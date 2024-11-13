Requirements:
Have these things installed to make your process smooth
Python (3.9.12) https://www.python.org/downloads/release/python-3912/
MySQL https://www.mysql.com/downloads/
Visual Studio Code (Prefered Code Editor) https://code.visualstudio.com/Download
Visual Studio build tools for C++ https://aka.ms/vs/17/release/vs_BuildTools.exe
Setup & Installation 👀
To run this project, perform the following tasks 

Download the code file manually or via git

git clone https://github.com/deepakpadhi986/AI-Resume-Analyzer.git
Create a virtual environment and activate it (recommended)

Open your command prompt and change your project directory to AI-Resume-Analyzer and run the following command

python -m venv venvapp

cd venvapp/Scripts

activate
Downloading packages from requirements.txt inside App folder

cd../..

cd App

pip install -r requirements.txt

python -m spacy download en_core_web_sm
After installation is finished create a Database cv

And change user credentials inside App.py

AI-Resume-Analyzer/App/App.py

Line 95 in 17e1cdb

 connection = pymysql.connect(host='localhost',user='root',password='root@MySQL4admin',db='cv') 
Go to venvapp\Lib\site-packages\pyresparser folder

And replace the resume_parser.py with resume_parser.py

Run the App.py file using

streamlit run App.py

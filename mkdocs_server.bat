@ECHO OFF
call .venv\Scripts\activate.bat
cd mkdocs_requirements
start mkdocs serve
start http://127.0.0.1:8000
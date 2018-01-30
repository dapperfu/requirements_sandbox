@ECHO OFF
call .venv\Scripts\activate.bat
doorstop create REQ ./reqs
doorstop add REQ
doorstop create TST ./reqs/tests --parent REQ

pause
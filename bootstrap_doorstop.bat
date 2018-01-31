@ECHO OFF
call .venv\Scripts\activate.bat
doorstop create REQ ./requirements

doorstop add REQ
doorstop add REQ

doorstop create BAK ./requirements/backend --parent REQ
doorstop add BAK
doorstop add BAK
doorstop add BAK

doorstop create FRNT ./requirements/frontend --parent REQ
doorstop add FRNT
doorstop add FRNT
doorstop add FRNT
doorstop add FRNT

doorstop link BAK1 REQ1
doorstop link BAK2 REQ2
doorstop link BAK3 REQ2

doorstop link FRNT1 REQ1
doorstop link FRNT2 REQ1

doorstop link FRNT3 REQ2
doorstop link FRNT4 REQ2 

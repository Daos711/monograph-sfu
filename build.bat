@echo off
pdflatex main.tex
bibtex8 -B -c cp1251.csf main
powershell -NoProfile -Command "[IO.File]::WriteAllText('main.bbl',[Text.Encoding]::GetEncoding(1251).GetString([IO.File]::ReadAllBytes('main.bbl')),[Text.Encoding]::UTF8)"
pdflatex main.tex
pdflatex main.tex
echo Done!
pause

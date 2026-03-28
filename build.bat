@echo off
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
echo Done!
copy main.pdf "Монография.pdf"
pause

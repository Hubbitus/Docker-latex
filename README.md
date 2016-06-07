# Docker-latex
Latex docker build with Russian fonts to use in gitlab-ci builder

Initially based on https://github.com/natlownes/docker-latex but updated to use `ubuntu:15.04` and additionally include next packages:
 * texlive-lang-cyrillic
 * xfonts-scalable
 * ttf-mscorefonts-installer
 * scalable-cyrfonts-tex

## Usage ##

    mkdir target
    docker run -it --rm -v `pwd`:/source hubbitus/latex pdflatex -synctex=1 -interaction=nonstopmode -output-directory target file.tex

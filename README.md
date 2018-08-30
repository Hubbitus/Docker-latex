# Docker-latex
Latex docker build with Russian fonts to use in gitlab-ci builder

Initially based on https://github.com/natlownes/docker-latex but updated to use `debian:buster` and additionally include next packages:
 * texlive-lang-cyrillic
 * xfonts-scalable
 * ttf-mscorefonts-installer
 * scalable-cyrfonts-tex
 * texlive-base
 * texlive-extra-utils
 * texlive-font-utils
 * texlive-fonts-recommended
 * texlive-latex-base
 * texlive-latex-extra
 * texlive-pictures
 * texlive-science

## Usage ##

    mkdir target
    docker run -it --rm -v `pwd`:/source hubbitus/latex pdflatex -synctex=1 -interaction=nonstopmode -output-directory target file.tex

FROM ubuntu:15.04
MAINTAINER Pavel Alexeev <PAhan@Hubbitus.info>
# Based on https://github.com/natlownes/docker-latex

# we need multiverse and non-free for ttf-mscorefonts-installer (http://packages.ubuntu.com/ru/precise/ttf-mscorefonts-installer)
# Auto accept EULA solution: http://askubuntu.com/questions/16225/how-can-i-accept-the-microsoft-eula-agreement-for-ttf-mscorefonts-installer
RUN sed -ri 's/(universe)$/\1 multiverse/g' /etc/apt/sources.list \
	&& apt-get update --fix-missing -qq -y \
	&& echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections \
	&& apt-get install -y \
		texlive-latex-base \
		texlive-xetex \
		latex-xcolor \
		texlive-math-extra \
		texlive-latex-extra \
		fontconfig \
		\
		texlive-lang-cyrillic \
		xfonts-scalable \
		ttf-mscorefonts-installer \
		scalable-cyrfonts-tex \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

#?		ttf-mscorefonts-installer \
# Requires accept EULA

WORKDIR /source

An Introduction
===============

This template is designed to make any latex homework assignment easy and professional looking. It's what I use for most of my assignments.
This package provides all of the necessary components to use this template. For contributions, comments, and bug reports, please contact Jay Sayre at jsayre@marlboro.edu.
This homework template is based on the latex template found here: http://www.latextemplates.com/template/structured-general-purpose-assignment, based on the original template by  Ted Pavlic, which I'm presuming I'm free to edit. 

This template uses the Arno Pro font, designed by Robert Slimbach, and found in Jordan Suchow's (github.com/suchow) beautiful looking thesis template. 

Installation
============

### Windows 8 ###
1. Download latest version of TexLive
2. Install fonts by selecting all of them, right-clicking on install
3. Download this Git Repo

Compilation:
In order to have the nice Arno Pro fonts, make sure to use XeLateX.
In the powershell, this is:
> xelatex -synctex=-1 homework.tex

### Linux ###
1. Download latest version of TexLive
I found the instructions here to be helpful: http://tex.stackexchange.com/questions/1092/how-to-install-vanilla-texlive-on-debian-or-ubuntu
2. Copy fonts to fonts folder - I'm not sure if this is the right folder

> sudo cp fonts/* /usr/share/fonts/opentype;
> sudo fc-cache -fsv

3. Run.

> xelatex homework.tex

Table of Contents
=================

If you have an assignment long enough to warrant a table of contents then you can add one.
This is done by editing the homework.cls file, and uncommenting the last three lines or copy and pasting:
'''
\newpage
\tableofcontents 
\newpage
'''
An Introduction
===============

This template is designed to make any latex homework assignment easy and nice looking, and is what I use for most of my assignments.
This package provides all of the necessary components to use this template. For contributions, comments, and bug reports, please contact Jay Sayre at jsayre at marlboro edu.
This homework template is based on the latex template by [Ted Pavlic](http://www.tedpavlic.com/post_homework_tex_example.php). 

This template uses the Arno Pro font, designed by Robert Slimbach, and found in Jordan Suchow's [beautiful looking thesis template.](https://github.com/suchow/LaTeX-template-for-Harvard-dissertation) 

Installation
============

### Windows 8 ###
1. Download latest version of TexLive
2. Download this Git Repo
3. Install fonts by selecting all of them, right-clicking on install

Compilation:
In order to have the nice Arno Pro fonts, make sure to use XeLateX.
In the powershell, this is:
> xelatex -synctex=-1 homework.tex

### Linux ###
1. Download latest version of TexLive
2. Download this Git Repo
I found the instructions here to be helpful: [How to Install "Vanilla" TexLive](http://tex.stackexchange.com/questions/1092/how-to-install-vanilla-texlive-on-debian-or-ubuntu)
3. Copy fonts to fonts folder - I'm not sure if this is the right folder

> sudo cp fonts/* /usr/share/fonts/opentype;
> sudo fc-cache -fsv

Then simply run:

> xelatex homework.tex

Use
===

In order to use this template, a few things I've noticed:

* Packages you wish to use must be placed into the homework.cls file due to the Arno Pro font.
* XelateX is preferred to compile the document, but is not necessary -- however you will lose the nice font in the process.
* Problems with sections must have a \vspace{15pt} preceeding them to look properly. Like this:

```
\end{homeworkSection} 
\vspace{15pt}
\end{homeworkProblem} 
```

Table of Contents
=================

If you have an assignment long enough to warrant a table of contents then you can add one.
This is done by editing the homework.cls file, and uncommenting the last three lines or copy and pasting:

```
\newpage
\tableofcontents 
\newpage
```
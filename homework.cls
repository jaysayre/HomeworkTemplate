% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "homework.cls",
%     version         = "0.1",
%     date            = "June 2013",
%     codetable       = "ISO/ASCII",
%     supported       = "send email to jsayre@marlboro.edu",
%     docstring       = "A homework Class written by Jay Sayre."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2013/06/01 v0.1 Homework Class]
\LoadClass{article}

%---------------------------------------------------------------------
%----------- Put any frequently used packages here ------------
%---------------------------------------------------------------------

\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{extramarks}
\usepackage{graphicx}
\usepackage{lipsum} % Used to generate filler text
\usepackage{Sweave} %Package used for R code/output. Feel free to comment out
\usepackage[margin=1in]{geometry} % Sets margin measurements
\linespread{1} % Line spacing 

%-------------------------------------------------------------------------
%  TITLE PAGE
%-------------------------------------------------------------------------

\title{
\textmd{\textbf{\hmwkClass:\ \hmwkTitle}}\\
\normalsize\vspace{0.1in}\small{\hmwkDueDate}\\
%\vspace{0.1in}\large{\textit{\hmwkClassInstructor\ \hmwkClassTime}} %Uncomment as desired
\vspace{-.1in} \author{\textbf{\hmwkAuthorName}}
}

\date{} % Insert date here if you want it to appear below your name

% ----------------------------------------------------------------------
% Set up the header and footer
%-----------------------------------------------------------------------
\pagestyle{fancy}
\lhead{\hmwkAuthorName} % Top left header
\chead{\hmwkClass\ (\hmwkClassInstructor\ \hmwkClassTime)} % Top center header %Assignment name removed
\rhead{\firstxmark} % Top right header
\lfoot{\lastxmark} % Bottom left footer
\cfoot{} % Bottom center footer
\rfoot{Page\ \thepage\ of\ \pageref{LastPage}} % Bottom right footer
\renewcommand\headrulewidth{0.4pt} % Size of the header rule
\renewcommand\footrulewidth{0.4pt} % Size of the footer rule
\setlength\parindent{0pt} % Removes all indentation from paragraphs

%----------------------------------------------------------------------------
% FONT OPTIONS
%  Use Arno Pro instead of standard LaTeX fonts
% package{mathspec} only works with xetex, so Arno Pro will only display with xetex
%----------------------------------------------------------------------------

\RequirePackage{ifxetex}
\ifxetex % Allows the file to be rendered with pdflatex, albeit without nice font
\RequirePackage{mathspec}

\setmathsfont(Digits,Latin,Greek)[Numbers={OldStyle,Proportional}]{Arno Pro}
\setmathrm{Arno Pro}

\RequirePackage{fontspec,xltxtra,xunicode}
\defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
\setromanfont[Mapping=tex-text, 
        Numbers=OldStyle, 
			  Ligatures={Common}, 
			  SizeFeatures={%
		          {Size={-10}, Font=* Caption},
		          {Size={10-13.0}, Font=*},
		          {Size={13.01-19.9}, Font=* Subhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
		       {Size={19.91-},Font=* Display, Ligatures=Rare, Contextuals={Swash,Alternate}}}]
			  {Arno Pro} %
\fi

%----------------------------------------------------------------------------
%	DOCUMENT STRUCTURE COMMANDS
%----------------------------------------------------------------------------

% Header and footer for when a page split occurs within a problem environment
\newcommand{\enterProblemHeader}[1]{
\nobreak\extramarks{#1}{#1 continued on next page\ldots}\nobreak
\nobreak\extramarks{#1 (continued)}{#1 continued on next page\ldots}\nobreak
}

% Header and footer for when a page split occurs between problem environments
\newcommand{\exitProblemHeader}[1]{
\nobreak\extramarks{#1 (continued)}{#1 continued on next page\ldots}\nobreak
\nobreak\extramarks{#1}{}\nobreak
}

\setcounter{secnumdepth}{0} % Removes default section numbers
\newcounter{homeworkProblemCounter} % Creates a counter to keep track of the number of problems

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK CHAPTERS
%----------------------------------------------------------------------------

\newcommand{\chapterName}{}
\newenvironment{chapter}[1]{ % New environment for chapters of homework problems, takes 1 argument - name of the chapter
\renewcommand{\chapterName}{#1} % Assign \chapterName to name of the chapter
\section{\chapterName}  % Makes a chapter with custom name of the chapter
}

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK PROBLEMS
%----------------------------------------------------------------------------

\newcommand{\problemName}{}
\newenvironment{problem}[1][Problem \arabic{homeworkProblemCounter}]{ % Makes a new environment called problem which takes 1 argument (custom name) but the default is "Problem #"
\stepcounter{homeworkProblemCounter} % Increase counter for number of problems
\renewcommand{\problemName}{#1} % Assign \problemName the name of the problem
\subsection{\problemName} % Make a subsection in the document with the custom problem count
\enterProblemHeader{\problemName} % Header and footer within the environment
\vspace{-5pt} %Changes spacing between problem title and text
}{
\exitProblemHeader{\problemName} % Header and footer after the environment
\vspace{-10pt} %Changes spacing between end of last problem and beginning of next
}

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK ANSWERS
%----------------------------------------------------------------------------

\newcommand{\answer}[1]{ % Defines the problem answer command with the content as the only argument
\vspace{5pt} %Adds spacing in front of problem answer
\noindent\framebox[\columnwidth][c]{\begin{minipage}{0.98\columnwidth}#1\end{minipage}} % Makes the box around the problem answer and puts the content inside
}

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK SECTIONS
%----------------------------------------------------------------------------

\newcommand{\probpartName}{}
\newenvironment{probpart}[1]{ % New environment for sections within homework problems, takes 1 argument - the name of the section
\renewcommand{\probpartName}{#1} % Assign \probpartName to the name of the section from the environment argument
\vspace{-10pt}  % Changes spacing between start of section and what's before it
\subsubsection{\probpartName} % Make a subsubsection with the custom name of the subsection
\enterProblemHeader{\problemName\ [\probpartName]} % Header and footer within the environment
\vspace{-5pt} %Changes spacing between problem section title and problem text
}{
\enterProblemHeader{\problemName} % Header and footer after the environment
}

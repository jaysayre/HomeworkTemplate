% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "homework.cls",
%     version         = "1.1",
%     date            = "October 2016",
%     codetable       = "ISO/ASCII",
%     supported       = "send email to sayrejay (at) gmai|",
%     docstring       = "A homework Class written by Jay Sayre."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2016/10/14 v1.1 Homework Class]
\LoadClass{article}

%---------------------------------------------------------------------
%----------- Put any frequently used packages here ------------
%---------------------------------------------------------------------

\usepackage{lipsum}
\usepackage{fancyhdr}
\usepackage{extramarks}
\usepackage{graphicx}
\usepackage{amsmath, amssymb}
\usepackage[colorlinks=true, urlcolor=blue]{hyperref}
\usepackage{color}

\definecolor{shadecolor}{rgb}{1,0.8,0.3} % Used for defining answer box color
%\definecolor{fntcolor}{rgb}{0,0,0.4} % Midnight blue 
\definecolor{fntcolor}{rgb}{0,0,0} % Black %Uncomment above line and comment this out to print in blue

\usepackage[innerleftmargin = 1.5pt, innerrightmargin = 1.5pt, % Sets spacing for homework answer boxes
	    innertopmargin = 1.5pt, innerbottommargin = 1.5pt,
	    %splitbottomskip=-.5pt,
	    skipabove = 0pt, skipbelow = 0pt,
	    fontcolor = fntcolor,linecolor = fntcolor, 
	    %backgroundcolor=shadecolor, % Uncomment this line to have answer boxes colored
	    everyline=true]{mdframed}
\usepackage[margin=1in]{geometry} % Sets margin measurements

\usepackage{mathpazo,mathabx} % Provides text and math font

\linespread{1} % Line spacing 

%---------------------------------------------------------------------
%                Shortcut Macros -- Put here
%---------------------------------------------------------------------

\DeclareMathOperator{\Lagr}{\mathcal{L}}
\DeclareMathOperator{\Emp}{\emptyset}
\DeclareMathOperator{\pr}{\partial}
\DeclareMathOperator{\R}{\mathbb{R}}
\DeclareMathOperator{\N}{\mathbb{N}}
\DeclareMathOperator{\Z}{\mathbb{Z}}
\DeclareMathOperator{\Q}{\mathbb{Q}}
\DeclareMathOperator{\lTi}{\lim_{n \to \infty}}

%-------------------------------------------------------------------------
%  TITLE PAGE
%-------------------------------------------------------------------------

\title{
\textmd{\textbf{\hmwkClass:\ \hmwkTitle}}\\
\normalsize\vspace{0.1in}\small{\hmwkDueDate}\\
%\vspace{0.1in}\large{\textit{\hmwkInstructor\ \hmwkClassTime}} %Uncomment as desired
\vspace{-.1in} \author{\textbf{\hmwkAuthorName}}
}
\date{} % Insert date here if you want it to appear below your name

% ----------------------------------------------------------------------
% Set up the header and footer
%-----------------------------------------------------------------------
\pagestyle{fancy}
\lhead{\hmwkAuthorShort} % Top left header
\chead{\hmwkClass\ (\hmwkInstructor\ \hmwkClassTime): \hmwkTitle} % Top center header
\rhead{\firstxmark} % Top right header
\lfoot{\lastxmark} % Bottom left footer
\cfoot{} % Bottom center footer
\rfoot{Page\ \thepage\ }%of\ \pageref{LastPage}} % Bottom right footer
\renewcommand\headrulewidth{0.4pt} % Size of the header rule
\renewcommand\footrulewidth{0.4pt} % Size of the footer rule
\setlength\parindent{0pt} % Removes all indentation from paragraphs
\normalfont

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
\newcounter{probpartCounter} % Counter for homework sections

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
\newenvironment{problem}[1][Problem \arabic{homeworkProblemCounter}.]{ % Makes a new environment called problem which takes 1 argument (custom name) but the default is "Problem #"
\stepcounter{homeworkProblemCounter} % Increase counter for number of problems
\renewcommand{\problemName}{#1} % Assign \problemName the name of the problem
\setcounter{probpartCounter}{0} % Reset problem section naming for each problem
\subsection{\problemName} % Make a subsection in the document with the custom problem count
\enterProblemHeader{\problemName} % Header and footer within the environment
\vspace{-5pt} %Changes spacing between problem title and text
}{
\exitProblemHeader{\problemName} % Header and footer after the environment
\vspace{-5pt} %Changes spacing between end of last problem and beginning of next
}

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK ANSWERS
%----------------------------------------------------------------------------

\newcommand{\answer}[1]{ % Defines the problem answer command with the content as the only argument
\noindent \begin{mdframed} #1 \end{mdframed}}

%----------------------------------------------------------------------------
%	DEFINES HOMEWORK SECTIONS
%----------------------------------------------------------------------------

\newcommand{\probpartName}{}
\newenvironment{probpart}[1][(\alph{probpartCounter})]{ % New environment for sections within homework problems, takes 1 argument - the name of the section
\stepcounter{probpartCounter} %Default is lettering for problem parts. Custom argument
\renewcommand{\probpartName}{#1} % Assign \probpartName to the name of the section from the environment argument
\vspace{-10pt}  % Changes spacing between start of section and what's before it
\subsubsection{\probpartName} % Make a subsubsection with the custom name of the subsection
\enterProblemHeader{\probpartName} % Header and footer within the environment
\vspace{-5pt} %Changes spacing between problem section title and problem text
}{
\enterProblemHeader{\problemName \probpartName} % Header and footer after the environment
}

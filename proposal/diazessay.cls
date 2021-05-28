%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Diaz Essay LaTeX Class
% Version 1.0 (13/1/19), adapted by @ydavidchen
% Class originates from http://www.LaTeXTemplates.com
%
% Authors:
% Vel (vel@LaTeXTemplates.com)
% Nicolas Diaz (nsdiaz@uc.cl)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%	CLASS CONFIGURATION
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diazessay}[2019/01/13 Diaz Essay class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{article}  %loads base class

%% PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
\usepackage[english]{babel} % English language hyphenation

\usepackage{graphicx} % Required for including images
\graphicspath{{Figures/}{./}} %specifies where to look for included images (trailing slash required)
\usepackage{wrapfig} %allows in-line images

\usepackage{booktabs} % Required for better horizontal rules in tables
\usepackage{enumitem} % Required for list customisation
\setlist{noitemsep} %no spacing between list items

\makeatletter
\renewcommand\@biblabel[1]{\textbf{#1.}} %remove the square brackets from each bibliography item ('[1]' to '1.')
\makeatother

%%	DOCUMENT MARGINS
\usepackage{geometry} %required
\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US Letter
	top=1in, %top margin
	bottom=1in, %bottom margin
	left=1in, %left margin
	right=1in, % Right margin
	headheight=0.75cm, % Header height
	footskip=1.5cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.75cm, % Space from the top margin to the baseline of the header
	%showframe, % Uncomment to show how the type block is set on the page
}
\setlength{\parskip}{-0.1in} %overrides default value so that pargraph has no extra padding

%%	FONTS
\usepackage[utf8]{inputenc} %required for inputting international characters
\usepackage[T1]{fontenc} %set 8-bit encoding
\usepackage{mathpazo} %set Palatino font
\usepackage[protrusion=true, expansion=true]{microtype} %better typography
\linespread{1.25} % Increase line spacing slightly; Palatino benefits from a slight increase by default

\usepackage[labelfont=bf]{caption} %boldface figure/table caption identifiers
\newcommand\mycaption[2]{\caption[#1]{\scriptsize \textbf{#1}. #2}}

%% TITLE SECTION
\makeatletter
\renewcommand{\maketitle}{ % Customise the title (do not edit title and author name here)
	\vspace*{20pt} % Vertical whitespace before the title
	\begin{center} %Left/right align use flushleft & flushright
		{\LARGE\@title} %Increase the font size of the title
		\vspace{10pt} \\ %Vertical whitespace between the title and author name
		{\large\@author} \\
		\@date
		\vspace{10pt} % Vertical whitespace between the author block & Abstract section
	\end{center}
}
\makeatother

%% HEADERS & FOOTERS
\usepackage{fancyhdr} 
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt} %remove default top horizontal rule
\lhead{} %left header
\chead{} %center header
\rhead{} %right header
\lfoot{} %left footer
\cfoot{\thepage} %center footer
\rfoot{} %right footer
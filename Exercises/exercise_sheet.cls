\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise_sheet}

\LoadClass[11pt]{scrartcl}

\RequirePackage[latin1]{inputenc}
%\RequirePackage[T1]{fontenc}
\RequirePackage{calc}

% --------------------------------------------
% PACKAGE OPTIONS
% --------------------------------------------

% Displaying answers
\newif\if@answers
\@answersfalse
\DeclareOption{answers} {%
    \@answerstrue%
}%
\ProcessOptions\relax

% --------------------------------------------
% NEW COMMANDS
% --------------------------------------------

\newcommand\@answertext{%
  \if@answers
  \begin{center}\Huge\bf\sf Solution\end{center}
  \vspace{1cm}
  \fi
}

% --------------------------------------------
% PAGE LAYOUT
% --------------------------------------------

\setlength\parindent{0pt}
\setlength\parskip\parsep

\RequirePackage{geometry}
\geometry{a4paper, tmargin=10mm,bmargin=20mm,lmargin=30mm,rmargin=30mm,
  headheight=15mm,headsep=7mm,includeheadfoot}

\RequirePackage[headsepline, automark]{scrpage2}
\pagestyle{scrheadings}
\setkomafont{pagehead}{\normalfont}
\renewcommand\sectionmarkformat{}
\renewcommand\subsectionmarkformat{}

\ohead{}
\rofoot{Page:~\thepage~of~\pageref{@last-page}}
\cfoot{}
\setfootsepline{0.4pt}

\setlength{\marginparsep}{5ex}
\setlength{\fboxsep}{2mm}

\RequirePackage{charter}

\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage[onehalfspacing]{setspace}

% --------------------------------------------
% COUNTERS
% --------------------------------------------

\newcounter{question}
\newcounter{subquestion}
\newcounter{points}
\newcounter{subpoints}
\newcounter{@loop}

\def\@deldecpoint#1!!{#1}
\newcommand\@calcpoint[1]{\number\expandafter\@deldecpoint#1!!}

\newcommand{\@refcounter}[1]{%
  \addtocounter{#1}{-1}%
  \refstepcounter{#1}%
}

% --------------------------------------------
% DISPLAYED OBJECTS
% --------------------------------------------

% Points next to questions 

\newcommand{\@points}[1]{%
  \framebox[10mm]{\rule{0cm}{0.75em} \if@answers #1\fi}%
}

\newcommand{\@@points}[1]{%
  \framebox[10mm]{\rule{0cm}{0.75em} #1}%
}

% Solution or lines

  \newcommand{\answerSecond}{}
\newenvironment{Answer}[1]{
  \renewcommand{\answerSecond}{#1}
  \vspace{1em}
  \setcounter{@loop}{0}
  \vspace{1.5em}
  \if@answers
  \noindent\textbf{\sffamily{Solution:}}\\
  \else
  \comment
  \fi
}
{
  \if@answers
  \else
  \endcomment
  \noindent%
  \loop%
  \ifnum\value{@loop}<\answerSecond%
    \rule{\hsize}{0.4pt}\\[0.5em]
  \addtocounter{@loop}{1}%
  \repeat%
  \fi%
}

% Inline macro for answer

\newcommand\ifanswer[1]{\if@answers #1 \fi}

% Question block

\newcommand{\QuestionBlock}[2]{
  \@QuestionBlock{#1}{0}{#2}{\ref{@last-subquestion\arabic{question}}}\par
}

\newcommand{\@QuestionBlock}[4]{
  \@refcounter{subpoints}
  \label{@last-subquestion\arabic{question}}

  \refstepcounter{question}
  \setcounter{subquestion}{0}
  \addtocounter{points}{#2}
  \setcounter{subpoints}{#2}
  \cleardoublepage
  {\raggedsection\sffamily\size@section\bfseries Question:~#1\nobreak}\\[2.3ex \@plus.2ex]
  \setlength{\fboxrule}{2pt}
  \marginpar{\@points{#4}}
  #3
}

%  Single question

  \newcommand{\subquestPoints}{}
\newenvironment{Question}[1]{
  \vspace*{0.5cm}
   \renewcommand{\subquestPoints}{\@calcpoint{#1}}
 \addtocounter{points}{\subquestPoints}%
 \addtocounter{subpoints}{\subquestPoints}%
 \@refcounter{subpoints}%
 \setlength{\fboxrule}{0.5pt}%
 \vspace{1em}%
 \stepcounter{subquestion}%
 \begin{description}%
   \setlength{\labelsep}{1.5em}%
 \item[\alph{subquestion})]  
   \marginpar{\@@points{\subquestPoints}}
}
{
 \end{description}
 \vspace{-1.5em}%
}

% Utility macros

\newcommand\true\iftrue
\newcommand\false\iffalse

\newcommand{\breakpage}{%
  \if@answers\else~\clearpage\fi %
}

% --------------------------------------------
% END OF DOCUMENT
% --------------------------------------------

\AtEndDocument{
  \@refcounter{points}
  \label{@last-page}
  \@refcounter{question}
  \label{@last-question}
  \@refcounter{subpoints}
  \label{@last-subquestion\arabic{question}}
}

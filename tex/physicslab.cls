\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{physicslab}[2026/09/03 Physics laboratory handouts]

\newif\ifphysicsshowsolutions
\physicsshowsolutionsfalse
\DeclareOption{solutions}{\physicsshowsolutionstrue}
\DeclareOption{nosolutions}{\physicsshowsolutionsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt,a4paper]{article}
\RequirePackage{physicslab-common}
\RequirePackage[left=20mm,right=20mm,top=18mm,bottom=20mm,headheight=15pt]{geometry}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage[most]{tcolorbox}
\RequirePackage{titlesec}
\RequirePackage{xparse}

\setlength{\parindent}{1.25em}
\setlength{\parskip}{0.25em}
\setlist{nosep,leftmargin=*}
\renewcommand{\arraystretch}{1.15}

\titleformat{\section}
  {\Large\bfseries\sffamily\color{PhysicsNavy}}
  {\thesection}{0.7em}{}
\titleformat{\subsection}
  {\large\bfseries\sffamily\color{PhysicsBlue}}
  {\thesubsection}{0.7em}{}

\newcommand{\physicsinstitution}{Department of Physics}
\newcommand{\physicsdocumenttype}{Course Material}
\newcommand{\physicstitle}{Untitled}
\newcommand{\physicssubtitle}{}
\newcommand{\physicsauthor}{}
\newcommand{\physicsdate}{\today}

\newcommand{\institution}[1]{\renewcommand{\physicsinstitution}{#1}}
\newcommand{\documenttype}[1]{\renewcommand{\physicsdocumenttype}{#1}}
\newcommand{\materialtitle}[1]{\renewcommand{\physicstitle}{#1}}
\newcommand{\materialsubtitle}[1]{\renewcommand{\physicssubtitle}{#1}}
\newcommand{\materialauthor}[1]{\renewcommand{\physicsauthor}{#1}}
\newcommand{\materialdate}[1]{\renewcommand{\physicsdate}{#1}}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\sffamily\color{PhysicsMuted}\physicsdocumenttype}
\fancyhead[R]{\small\sffamily\color{PhysicsMuted}\physicstitle}
\fancyfoot[L]{\small\sffamily\color{PhysicsMuted}\physicsinstitution}
\fancyfoot[R]{\small\sffamily\color{PhysicsMuted}\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\makematerialtitle}{%
  \thispagestyle{empty}
  \noindent{\color{PhysicsRed}\rule{13mm}{2.4pt}}\par
  \vspace{0.5cm}
  {\sffamily\small\bfseries\color{PhysicsBlue}\physicsdocumenttype\par}
  \vspace{0.25cm}
  {\sffamily\huge\bfseries\color{PhysicsNavy}\physicstitle\par}
  \ifx\physicssubtitle\empty\else
    \vspace{0.2cm}{\sffamily\large\color{PhysicsMuted}\physicssubtitle\par}
  \fi
  \vspace{0.55cm}
  \noindent{\color{PhysicsLine}\rule{\textwidth}{0.7pt}}\par
  \vspace{0.35cm}
  \noindent\begin{tabularx}{\textwidth}{@{}Xr@{}}
    {\sffamily\small\color{PhysicsMuted}\physicsinstitution}
    \ifx\physicsauthor\empty\else\\[-0.2em]
      {\sffamily\small\physicsauthor}
    \fi
    & {\sffamily\small\color{PhysicsMuted}\physicsdate}
  \end{tabularx}
  \vspace{0.65cm}
}

\newtcolorbox{objectivebox}{
  enhanced,
  colback=PhysicsCyan!12,
  colframe=PhysicsBlue,
  boxrule=0.8pt,
  arc=1.5mm,
  title={Objective},
  fonttitle=\bfseries\sffamily,
  coltitle=PhysicsNavy
}

\newtcolorbox{safetybox}{
  enhanced,
  colback=PhysicsWarm,
  colframe=PhysicsGold,
  boxrule=0.8pt,
  arc=1.5mm,
  title={Safety},
  fonttitle=\bfseries\sffamily,
  coltitle=PhysicsInk
}

\newcounter{problem}
\NewDocumentEnvironment{problem}{O{}}{%
  \refstepcounter{problem}
  \par\medskip\noindent
  {\sffamily\bfseries\color{PhysicsNavy}Problem~\theproblem
  \if\relax\detokenize{#1}\relax\else. #1\fi}\par\smallskip
}{\par\medskip}

\NewDocumentEnvironment{solution}{+b}{%
  \ifphysicsshowsolutions
    \begin{tcolorbox}[
      enhanced,
      breakable,
      colback=PhysicsCyan!10,
      colframe=PhysicsCyan,
      boxrule=0.8pt,
      arc=1.5mm,
      title={Solution},
      fonttitle=\bfseries\sffamily,
      coltitle=PhysicsNavy
    ]
    #1
    \end{tcolorbox}
  \fi
}{}

\NewDocumentCommand{\answer}{m}{%
  \ifphysicsshowsolutions
    \par\smallskip\noindent\textbf{Answer:} #1
  \fi
}

\NewDocumentCommand{\teacheronly}{m}{%
  \ifphysicsshowsolutions
    \par\smallskip\noindent{\color{PhysicsMuted}\sffamily\footnotesize
      Instructor note: #1}
  \fi
}

\NewDocumentCommand{\blankline}{O{3cm}}{\rule{#1}{0.4pt}}

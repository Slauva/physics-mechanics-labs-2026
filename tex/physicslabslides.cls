\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{physicslabslides}[2026/09/03 Physics laboratory slide decks]

\newif\ifphysicsshowsolutions
\physicsshowsolutionsfalse
\DeclareOption{solutions}{\physicsshowsolutionstrue}
\DeclareOption{nosolutions}{\physicsshowsolutionsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[aspectratio=169,11pt]{beamer}
\RequirePackage{physicslab-common}
\RequirePackage{xparse}
\usetheme{PhysicsLab}

\NewDocumentCommand{\labversionlabel}{}{%
  \ifphysicsshowsolutions
    solution version%
  \else
    student version%
  \fi
}

\pdfstringdefDisableCommands{%
  \def\labversionlabel{version}%
}

\RenewDocumentEnvironment{solution}{+b}{%
  \ifphysicsshowsolutions
    \begin{exampleblock}{Solution}
      #1
    \end{exampleblock}
  \fi
}{}

\NewDocumentEnvironment{solutionframe}{O{Solution}+b}{%
  \ifphysicsshowsolutions
    \begin{frame}{#1}
      \slidetag{SOLUTION VERSION}
      \vspace{0.25em}
      \small
      #2
    \end{frame}
  \fi
}{}

\NewDocumentCommand{\answer}{m}{%
  \ifphysicsshowsolutions
    \begin{beamercolorbox}[rounded=true,sep=0.6em,wd=\linewidth]{block body example}
      \textbf{Answer:} #1
    \end{beamercolorbox}
  \fi
}

\NewDocumentCommand{\teacheronly}{m}{%
  \ifphysicsshowsolutions
    {\color{PhysicsMuted}\scriptsize\sffamily Instructor note: #1}
  \fi
}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClass{article}
\ProvidesClass{recipe}

\usepackage{food}
\usepackage{fancyhdr}

% Don't put the page number anywhere
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}%
\fancyhf{}
\lfoot{\@author}
\rfoot{\@date}

% A simple small title
\renewcommand{\maketitle}
{%
  \begin{center}%
    \Huge
    \@title%
  \end{center}%
}

% This environment should wrap all recipes
\renewenvironment{recipe}[1]
{%
  \title{#1}%
  \maketitle%
  \begin{multicols}{2}%
}
{%
  \end{multicols}%
  \clearpage%
}

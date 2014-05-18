\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\LoadClass{article}
\ProvidesClass{recipe}

\usepackage{food}

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

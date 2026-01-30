% Author:
% Carlos Briceño <carjavi@hotmail.com>
% https://carjavi.com
%% Custom carloscv.cls CV class for Carlos Briceño
%% Basado en article, optimizado para ATS

%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{carloscv}[2026/01/29 Carlos CV Class]

% Clase base/ Tamaño de la hoja
\LoadClass[11pt,letterpaper]{article}


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\RequirePackage[
    letterpaper,
    left=1.27cm,   % Margen Izquierdo
    right=1.27cm,  % Margen Derecho
    top=1.1cm,    % Margen Superior
    bottom=1.27cm  % Margen Inferior
]{geometry}

% Paquetes requeridos
\RequirePackage{xcolor}
\RequirePackage{fontspec}
\RequirePackage{fontawesome5}
\RequirePackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{tikz}


% ==== COLORES ====
\definecolor{headerblue}{RGB}{41,128,185}
\definecolor{darkgray}{RGB}{64,64,64}
\definecolor{lightgray}{RGB}{128,128,128}
\definecolor{cvteal}{RGB}{0, 204, 204} % turquesa

%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure an optional directory location for fonts(default: 'fonts/')
% Not required anymore but left in place for backward compatability.
% ==== FUENTES (en carpeta ./fonts) ====
\setmainfont{MyriadPro-Regular.otf}[Path=fonts/]

\newfontfamily\namefontA[
    Path=fonts/,
]{MyriadPro-BoldCond.otf}

\newfontfamily\namefontB[
    Path=fonts/,
]{TitilliumMaps26L003.otf}

\newfontfamily\subtitlefont[
    Path=fonts/,
]{TitilliumMaps26L003.otf}

\newfontfamily\sectionfont[
    Path=fonts/,
]{MyriadPro-Regular.otf}

\newfontfamily\starjedifont[
    Path=fonts/,
]{Starjedi.ttf}

% ==== HIPERVÍNCULOS ====
\hypersetup{
    colorlinks=true,
    linkcolor=cvteal,
    urlcolor=cvteal,
    pdfborder={0 0 0}
}

% ==== SECCIONES (MAYÚSCULAS, NEGRAS, MYRIAD REGULAR) ====
\titleformat{\section}
  {\sectionfont\Large\bfseries\color{black}}
  {}
  {0em}
  {}
  [\vspace{2pt}\titlerule]

\titleformat{\subsection}
  {\sectionfont\large\bfseries}
  {}
  {0em}
  {}

% ==== COMANDOS ====
\newcommand{\cvitem}[4]{%
    \textbf{#1} \hfill {\color{lightgray}#2}\\
    \textit{#3}\\[0.2em]
    #4\\[0.5em]
}

\newcommand{\skillbar}[2]{%
    \sectionfont\textbf{#1} \\
    \tikz{\fill[cvteal] (0,0) rectangle (#2/10,0.12);
          \draw[lightgray,thick] (0,0) rectangle (1.0,0.12);}%
}

% Listas compactas
\setlist[itemize]{leftmargin=*,noitemsep,topsep=0pt}

% Página
\pagestyle{empty}
\setlength{\parindent}{0pt}
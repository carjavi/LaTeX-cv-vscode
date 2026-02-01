% Author:
% Carlos Briceño <carjavi@hotmail.com>
% https://carjavi.com
%% Custom carloscv.cls CV class for Carlos Briceño
%% ATS-Frendly

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
    top=1cm,    % Margen Superior
    bottom=1cm  % Margen Inferior
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
\definecolor{cvteal}{HTML}{6FCCDD} % turquesa

%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% ==== FUENTES (en carpeta ./fonts) ====
\setmainfont{MyriadPro-Regular.otf}[
    Path=fonts/,
    AutoFakeBold=1.5,
    AutoFakeSlant=0.2
]

\newfontfamily\namefontA[
    Path=fonts/,
]{MyriadPro-BoldCond.otf}

\newfontfamily\namefontB[
    Path=fonts/,
    AutoFakeSlant=0.2,
    AutoFakeBold=1.5
]{TitilliumMaps26L003.otf}

\newfontfamily\subtitlefont{TitilliumMaps26L003.otf}[
    Path=fonts/,
    AutoFakeBold=1.5,
    AutoFakeSlant=0.2
]

\newfontfamily\sectionfont{MyriadPro-Regular.otf}[
    Path=fonts/,
    BoldFont=MyriadPro-Bold.otf,
    ItalicFont=MyriadPro-It.otf
]

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

% ==== SECCIONES SUBTITULOS (WORK EXPERIENCE, EDUCATION...) ====
\newlength{\sectionbeforeskip}
\newlength{\sectionafterskip}
\setlength{\sectionbeforeskip}{6pt}  % espacio ANTES del título (entre secciones)
\setlength{\sectionafterskip}{4pt}   % espacio DESPUÉS del título (antes del contenido)

\titleformat{\section}
  {\sectionfont\fontsize{12}{15}\selectfont\color{black}}
  {}
  {0em}
  {}
  [\titlerule] % <-- quité el \vspace{2pt} de aquí

% Esto fuerza el espaciado real del título
\titlespacing*{\section}
  {0pt}
  {\sectionbeforeskip}
  {\sectionafterskip}

% ==== COMANDOS ====
% seccion education
\newcommand{\cvitem}[4]{%
    \noindent
    \begin{minipage}{\linewidth}
        \textbf{#1} \hspace{0.2em} #2\\
        {\listfont\fontsize{9}{12}\selectfont
         \hspace*{1.5em}\textcolor{cvteal}{#3}\\
         \hspace*{1.5em}\textcolor{lightgray}{#4}}
    \end{minipage}
    \vspace{0.5em}
}

% Página
\pagestyle{empty}
\setlength{\parindent}{0pt}
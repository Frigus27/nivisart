\ProvidesClass{nivisart}[2021/01/01]
\LoadClass[UTF8]{ctexart} %基于ctexart
\RequirePackage{cnmath} %中国常用数学符号的自制包
\RequirePackage{geometry} %改页边距，LaTeX自带的太宽了
\geometry{a4paper,top=20mm,bottom=30mm,left=25mm,right=25mm,headsep=10pt}
\renewcommand{\baselinestretch}{1.5} %1.5倍行距
\RequirePackage{enumitem}
\RequirePackage{array}
\RequirePackage{background} %加背景功能
\backgroundsetup{contents=}

\RequirePackage{nivisdraw} %支持绘图

\renewcommand{\paragraph}[1]{\vspace{1ex} \par \textbf{#1}\quad}
\renewcommand{\subparagraph}[1]{\par \textbf{#1}\quad}
\numberwithin{figure}{section}
\numberwithin{table}{section}

% 改一下proof，变成中国常用方式
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries
    \quad\quad#1\@addpunct{\ }]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}

% 取消theorem里的点号，适配中文常用方式
\makeatletter
\g@addto@macro\th@plain{\thm@headpunct{\ }}
\g@addto@macro\th@definition{\thm@headpunct{\ }}
\g@addto@macro\th@remark{\thm@headpunct{\ }}
\makeatother

% 以下是按中文常用方式定义的一些theorem
\theoremstyle{plain}
\newtheorem{theorem}{\quad \quad 定理}[section]
\newtheorem{proposition}{\quad \quad 命题}[section]
\newtheorem{problem}{\quad \quad 问题}[section]
\newtheorem{lemma}{\quad\quad 引理}[section]
\newtheorem{corollary}{\quad \quad 推论}[section]
\newtheorem{property}{\quad \quad 性质}[section]
\newtheorem*{theorem*}{\quad \quad 定理}
\newtheorem*{proposition*}{\quad \quad 命题}
\newtheorem*{problem*}{\quad \quad 问题}
\newtheorem*{lemma*}{\quad\quad 引理}
\newtheorem*{corollary*}{\quad \quad 推论}
\newtheorem*{property*}{\quad \quad 性质}

\theoremstyle{definition}
\newtheorem{definition}{\quad \quad 定义}[section]
\newtheorem*{definition*}{\quad \quad 定义}

\theoremstyle{remark}
\newtheorem*{remark}{\quad \quad 附注}
\newtheorem*{note}{\quad \quad 注意}

\usepackage{caption} %使链接图片时能链接到图而非label
\usepackage{hyperref} %你懂的

\usepackage{footnote}%脚注

\usepackage[version=4]{mhchem} % 提供无机化学支持

\usepackage{anyfontsize} %解决Size substitutions with differences的Warning

% --------------------------------------------------------------------------------------

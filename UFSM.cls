                                          % ###                         ### ### #####  #### ##     ## 
                                          % #          #                #   #   #  # #   #  ##   ##  
                                          % #    ###  ###   ##  ## ##   #   #   #    ##     ##   ##  
                                          % #    #  #  #   #  #  # #    #   #   ###   ###   # # # #  
                                          % #     ###  #   ####   #     #   #   #       ##  # # # #  
                                          % #  # #  #  #   #     # #    #   #   #    #   #  #  #  #  
                                          % ##### ####   ##  ### ## ##    ###   ###   ####  ### # ### 

% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
                                          
    %% Classe alternativa para a formatacao de teses e dissertações segundo a MDT-UFSM.
    %% Modificada e melhorada por Gilson Olegario da Silva - Filosofia UFSM - para adaptar-se a forma de dissertação por artigos científicos. 
    %% Baseada na versão de abnt-UTFPR.cls (v1.3) (por Hugo Vieira Neto e Diogo Rosa Kuiaski) e
    %% na versão mdt-ufsm.cls (do Departamento de Informática da UFSM), que por sua vez, é uma adaptação de iiufrgs.cls   %% (UFRGS TeX Users Group).
              
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UFSM}

\DeclareOption{diss}{%
  \AtEndOfClass{%
    \newcommand{\titlepagespecificinfo}{%
        Dissertação apresentada ao Curso de Mestrado de em Filosofia
        Programa de \\ Pós-Graduação em Filosofia (PPGF), \ Área de Concentração Filosofia Teórica e Prática,  
%        do \@altcourse{}, \'{A}rea de Concentra{\c{c}}{\~a}o em Filosofia, 
        da \ufsm{} (UFSM, RS), \\ como requisito parcial para obtenção do grau de\\[6pt]
      \textbf{\UFSMgrau} em {\UFSMcurso}
    }
    \def\doctypename{Dissertação de Mestrado}
    \def\doctypearticle{a}
    \def\doctypenameIngles{Master's Dissertation}
		\def\doctypenameCIP{Dissertação (Mestrado)}
  }
}

\DeclareOption{oneside}{\AtEndOfClass{\@twosidefalse}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass[12pt,a4paper]{report}
\RequirePackage{indentfirst}
\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{setspace} 
\RequirePackage[top=3cm, bottom=2cm, left=3cm, right=2cm]{geometry}

%----------------------- Definições de tamanho de fonte, MDT UFSM -----------------

\newcommand\LargeA{\@setfontsize\LargeA{18pt}{18.1pt}}
\newcommand\LargeB{\@setfontsize\LargeB{16pt}{16.1pt}}
\newcommand\LargeC{\@setfontsize\LargeC{14pt}{14.1pt}}
\newcommand\LargeD{\@setfontsize\LargeD{12pt}{12.1pt}}

%---------------------- DEFINICOES DA UFSM----------------------------

\providecommand{\UFSMuniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\UFSMuniversidade}{#1}}

\providecommand{\UFSMprograma}{}
\newcommand{\programa}[1]{\renewcommand{\UFSMprograma}{#1}}

\providecommand{\UFSMcentro}{}
\newcommand{\centro}[1]{\renewcommand{\UFSMcentro}{#1}}

\providecommand{\UFSMcurso}{}
\newcommand{\curso}[1]{\renewcommand{\UFSMcurso}{#1}}

\providecommand{\UFSMdocumento}{}
\newcommand{\documento}[1]{\renewcommand{\UFSMdocumento}{#1}}

\providecommand{\UFSMnivel}{}
\newcommand{\nivel}[1]{\renewcommand{\UFSMnivel}{#1}}

\providecommand{\UFSMgrau}{}
\newcommand{\grau}[1]{\renewcommand{\UFSMgrau}{#1}}

\providecommand{\UFSMtitulo}{}
\newcommand{\titulo}[1]{\renewcommand{\UFSMtitulo}{#1}}

\providecommand{\UFSMtitle}{}
\renewcommand{\title}[1]{\renewcommand{\UFSMtitle}{#1}}

\providecommand{\UFSMautor}{}
\newcommand{\autor}[1]{\renewcommand{\UFSMautor}{#1}}

\providecommand{\UFSMcitacaoautor}{}
\newcommand{\citacao}[1]{\renewcommand{\UFSMcitacaoautor}{#1}}

\providecommand{\UFSMproforientador}{}
\newcommand{\proforientador}[1]{\renewcommand{\UFSMproforientador}{#1}}

\providecommand{\UFSMgrauorientador}{}
\newcommand{\grauorientador}[1]{\renewcommand{\UFSMgrauorientador}{#1}}

\providecommand{\UFSMcitacaoorientador}{}
\newcommand{\citacaoorientador}[1]{\renewcommand{\UFSMcitacaoorientador}{#1}}

\providecommand{\UFSMprimeiroprofbanca}{}
\newcommand{\primeiroprofbanca}[1]{\renewcommand{\UFSMprimeiroprofbanca}{#1}}

\providecommand{\UFSMsegundoprofbanca}{}
\newcommand{\segundoprofbanca}[1]{\renewcommand{\UFSMsegundoprofbanca}{#1}}

\providecommand{\UFSMdiadadefesa}{}
\newcommand{\diadadefesa}[1]{\renewcommand{\UFSMdiadadefesa}{#1}}

\providecommand{\UFSMcidade}{}
\newcommand{\cidade}[1]{\renewcommand{\UFSMcidade}{#1}}

\providecommand{\UFSMano}{}
\newcommand{\ano}[1]{\renewcommand{\UFSMano}{#1}}

\providecommand{\UFSMcomentario}{}
\newcommand{\comentario}[1]{\renewcommand{\UFSMcomentario}{#1}}

\providecommand{\UFSMlevel}{}
\newcommand{\level}[1]{\renewcommand{\UFSMlevel}{#1}}

\providecommand{\UFSMdocumentoeng}{}
\newcommand{\documentoeng}[1]{\renewcommand{\UFSMdocumentoeng}{#1}}

\providecommand{\UFSMuniversidadeeng}{}
\newcommand{\universidadeeng}[1]{\renewcommand{\UFSMuniversidadeeng}{#1}}

\providecommand{\UFSMprogramaeng}{}
\newcommand{\programaeng}[1]{\renewcommand{\UFSMprogramaeng}{#1}}

\providecommand{\UFSMdefenseday}{}
\newcommand{\defenseday}[1]{\renewcommand{\UFSMdefenseday}{#1}}

%-------------------keywords contagem ---- Definição das palavras-chave (máx. 10)  --------------

\newcounter{kwcounter}
\newcommand{\keyword}[1]{
        \addtocounter{kwcounter}{1}
        \expandafter\gdef\csname keyw\alph{kwcounter}\endcsname{#1}
}
\newcommand{\@cipkw}{%
        \@ifundefined{keywa}{}{1.~\expandafter\MakeUppercase\keywa\@. }%
        \@ifundefined{keywb}{}{2.~\expandafter\MakeUppercase\keywb\@. }%
        \@ifundefined{keywc}{}{3.~\expandafter\MakeUppercase\keywc\@. }%
        \@ifundefined{keywd}{}{4.~\expandafter\MakeUppercase\keywd\@. }%
        \@ifundefined{keywe}{}{5.~\expandafter\MakeUppercase\keywe\@. }%
        \@ifundefined{keywf}{}{6.~\expandafter\MakeUppercase\keywf\@. }%
        \@ifundefined{keywg}{}{7.~\expandafter\MakeUppercase\keywg\@. }%
        \@ifundefined{keywh}{}{8.~\expandafter\MakeUppercase\keywh\@. }%
        \@ifundefined{keywi}{}{9.~\expandafter\MakeUppercase\keywi\@. }%
        \@ifundefined{keywj}{}{10.~\expandafter\MakeUppercase\keywj\@. }%
}
\newcommand{\@abstractkw}{%
        \@ifundefined{keywa}{}{\expandafter\MakeUppercase\keywa}%
        \@ifundefined{keywb}{}{. \keywb}%
        \@ifundefined{keywc}{}{. \keywc}%
        \@ifundefined{keywd}{}{. \keywd}%
        \@ifundefined{keywe}{}{. \keywe}%
        \@ifundefined{keywf}{}{. \keywf}%
        \@ifundefined{keywg}{}{. \keywg}%
        \@ifundefined{keywh}{}{. \keywh}%
        \@ifundefined{keywi}{}{. \keywi}%
        \@ifundefined{keywj}{}{. \keywj}%
}

\newcounter{kwcountereng}
\newcommand{\keywordeng}[1]{
        \addtocounter{kwcountereng}{1}
        \expandafter\gdef\csname keyw\alph{kwcountereng}\endcsname{#1}
}
\newcommand{\@englishkw}{%
        \@ifundefined{keywa}{}{\expandafter\MakeUppercase\keywa}%
        \@ifundefined{keywb}{}{. \keywb}%
        \@ifundefined{keywc}{}{. \keywc}%
        \@ifundefined{keywd}{}{. \keywd}%
        \@ifundefined{keywe}{}{. \keywe}%
        \@ifundefined{keywf}{}{. \keywf}%
        \@ifundefined{keywg}{}{. \keywg}%
        \@ifundefined{keywh}{}{. \keywh}%
        \@ifundefined{keywi}{}{. \keywi}%
        \@ifundefined{keywj}{}{. \keywj}%
}

\newcommand{\UFSMifnotempty}[3]{\ifthenelse{\not\equal{#1}{}}{#2}{#3}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%% CAPA %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\capa}{
\singlespacing
	\begin{titlepage}
	\begin{center}
  \setcounter{page}{2}

%-------------------------- cabeçalho ---------------

{\bfseries\LargeC\MakeUppercase{\UFSMuniversidade}}\par
{\bfseries\LargeC\MakeUppercase{\UFSMcentro}}\par
{\bfseries\LargeC\MakeUppercase{\UFSMprograma}}\par
      


\vspace{4.23333333cm}
%------------------------- nome da coisa ---------------
\onehalfspacing
			{\bfseries\LargeA\MakeUppercase{\UFSMtitulo}}\par
\singlespacing

\vspace{3.81cm}

%------------------------ dissertação de ... ----------------
			{\bfseries\LargeC\MakeUppercase{\UFSMdocumento\ de \UFSMnivel}}\par



\vspace{2.96333333cm}
%--------------------- nome do vivente -------------

				{\bfseries\LargeB{\UFSMautor}}\\

\vspace{7.7cm}

    
%------------------- onde foi que fez a coisa toda -----------

			{\bfseries\LargeC{\UFSMcidade, RS, Brasil}} \par
			{\bfseries\LargeC{\UFSMano}}
		
\end{center}
\end{titlepage}
}

%---------------- te espalha, vivente ---------------


%%%%%%%%%%%%%%%%%%%%%%%%%%%% FOLHA DE ROSTO %%%%%%%%%%%%%%%%% 
\clearpage

\newcommand{\folharosto}{
	\begin{titlepage}
		\begin{center}
\setlength{\baselineskip}{1.5\baselineskip}
		{\bfseries\LargeB\MakeUppercase{\UFSMtitulo}\par}
\setlength{\baselineskip}{\baselineskip}

\vspace{59.5mm}
		{\bfseries\LargeC{\UFSMautor}}\par

\vspace{20.6mm}
		{\LargeC{\UFSMcomentario}}\par


\vspace{30.4mm}
    
{\bfseries\UFSMgrauorientador~}{\bfseries\ignorespaces\UFSMproforientador}\par						
		
		\vspace{6.7cm}
		
			{\bfseries\LargeC{\UFSMcidade}, RS, Brasil}\par
			{\bfseries\LargeC\UFSMano}
		
    \end{center}
	\end{titlepage}
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%% FICHA CATALOGRÁFICA %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeCIP}[1]{
  \clearpage
  \mbox{} \vfill
  \UFSMcipwindow
	\vspace{2ex}
  \nominata{#1}
  %se for impresso, não deve contar a página, pois será impressa no verso da folha de aprovação
  %\setcounter{page}{2}
}

\def\UFSMcipwindow{%
        \noindent
        \framebox[140mm]{
        \begin{minipage}{120mm}%
                \vspace*{2ex}
                \setlength{\parindent}{2em}%
                \setlength{\parskip}{1.4ex}%
        \noindent\UFSMcitacaoautor \par
        \UFSMtitulo\ / por \UFSMautor.\ -- \UFSMano.\\
        \indent\pageref{LastPage}~f.; 30 cm. \par
        \indent\UFSMgrauorientador\ \UFSMproforientador\\
        \indent\UFSMdocumento\ (\UFSMnivel)- \UFSMuniversidade, \UFSMprograma, RS, \UFSMano. \par
        \@cipkw\ I.~\UFSMcitacaoorientador. II.~Título.
        \vspace{4ex}
        \end{minipage}%
        }%
    }

 \newcommand{\nominata}[1]{
  \vspace{3ex}
  % \noindent
  % Ficha catalográfica elaborada por \\
  % {#1} \\
  % Biblioteca Central da UFSM \\
   \hrule
   \vskip 10\p@
   \noindent \copyright \ \UFSMano \\
   Todos os direitos autorais reservados a \UFSMautor. A reprodução de partes ou do todo deste trabalho só poderá ser feita mediante a citação da fonte. \\
   E-mail: {#1}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%% FOLHA DE APROVACAO %%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\aprovacao}{
	\begin{titlepage}
  \begin{center}

	{\bfseries\LargeC{\UFSMuniversidade}\par}
	{\bfseries\LargeC{\UFSMcentro}\par}
  {\bfseries\LargeC{\UFSMprograma}\par}

\vspace{16.6mm}

{\bfseries\LargeC{Comissão Examinadora, abaixo assinada,\\
aprova a \UFSMdocumento\ de \UFSMnivel}}

\vspace{13.4mm}

{\bfseries\LargeC\MakeUppercase{\UFSMtitulo}\par}

\vspace{9.7mm}


{elaborada por\\ \bfseries\LargeC{\UFSMautor}\par}

\vspace{13.7mm}

{como requisito parcial para a obtenção do grau de\\}
{\bfseries\LargeC{\UFSMnivel\ em \UFSMcurso}}

\vspace{10.0mm}

{\bfseries\LargeC\MakeUppercase{COMISSÃO EXAMINADORA}}\par

\vspace{8.7mm}

{\bfseries\UFSMproforientador, Dr.}\\
{(Presidente/Orientador)}

\vspace{8.4mm}


{\bfseries\UFSMprimeiroprofbanca}

\vspace{8.9mm}

{\bfseries\UFSMsegundoprofbanca}

\vspace{71.6mm}
% \vspace{30.1mm}



{\LargeD\UFSMcidade, \UFSMdiadadefesa\ de \UFSMano}
		
    \end{center}
    \end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Resumo (abstract) e Abstract (englishabstract) %%%%%%%%%%%%%%%%%%%%%%%%%%%%
 \renewenvironment{abstract}{%
   \chapter*{\abstractname}
 	%\vspace{-1cm}
   \noindent\abstractheaderbox
   \indent
 	%\setlength{\baselineskip}{1.5\baselineskip}
 }{%
   %\setlength{\baselineskip}{\baselineskip}
   \par\vfill
   \noindent\textbf{Palavras-chave:} \@abstractkw.
 }
 
 \newcommand{\abstractheaderbox}{%
   \parbox[t]{\textwidth}{
     \centering
     \UFSMdocumento\ de \UFSMnivel\\
     \UFSMprograma\\
     \UFSMuniversidade\\~\\
     \textbf{\MakeUppercase{\UFSMtitulo}}\\
     \MakeUppercase{AUTOR:~\UFSMautor}\\
     \MakeUppercase{ORIENTADOR:~\UFSMproforientador}\\
     Local da Defesa e Data:~\UFSMcidade,~\UFSMano.\\~\\
   }
 }
 
 \newenvironment{englishabstract}{
         \begin{otherlanguage}{english}
           \chapter*{\abstractname}
         %  \vspace{-1cm}
           \noindent\englishabstractheaderbox
           \indent
 }{
           \par\vfill
           \noindent\textbf{Keywords:} \@englishkw.
        \end{otherlanguage}
 }
 
 \newcommand{\englishabstractheaderbox}{%
   \parbox[t]{\textwidth}{
     \centering
     \UFSMlevel's~\UFSMdocumentoeng\\
     \UFSMprogramaeng\\
     \UFSMuniversidadeeng\\~\\
     \textbf{\MakeUppercase{\UFSMtitle}}\\
     \MakeUppercase{Autor}:~\MakeUppercase{\UFSMautor}\\
     {\MakeUppercase{Advisor}:~\MakeUppercase{\UFSMproforientador}\\}
     Defense Place and Date:~\UFSMcidade,~\UFSMdefenseday,~\UFSMano\\~\\
   }
 }
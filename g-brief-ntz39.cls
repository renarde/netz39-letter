%%
%% This is file `g-brief.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% g-brief.dtx  (with options: `class')
%%
%% =======================================================================
%%
%% Copyright (C) 1991-2003 Michael Lenzen.
%%
%% For additional copyright information see further down in this file.
%%
%% This file is part of the G-BRIEF package.
%% -----------------------------------------------------------------------
%%
%% It may be distributed under the terms of the LaTeX Project Public
%% License (LPPL), as described in lppl.txt in the base LaTeX distribution.
%% Either version 1.1 or, at your option, any later version.
%%
%% The latest version of this license is in
%%
%%          http://www.latex-project.org/lppl.txt
%%
%% LPPL Version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.
%%
%%
%% Error reports in case of UNCHANGED versions to
%%
%%                            <lenzen@lenzen.com>
%%                            <m.lenzen@t-online.de>
%%
%%
\def\filedate{2003/05/08}
\def\fileversion{4.0.1}
\def\filedate{2003/05/08}
\def\fileversion{4.0.1}
\def\filename{g-brief.cls}
\NeedsTeXFormat{LaTeX2e}[2001/06/01]

\ProvidesClass{g-brief-ntz39}[\filedate\space v\fileversion\space g-brief-ntz39 class]

\RequirePackage[pdftex]{graphicx}
\RequirePackage{tikz}

\RequirePackage[ngerman, num]{isodate}
\monthyearsepgerman{}{}
\daymonthsepgerman{}{}


\newdimen\VorschubH
\newdimen\VorschubV
\VorschubH = 0.0mm
\VorschubV = 0.0mm

\def\sprache{ngerman}
\def\telefontex{{\footnotesize Telefon\/:}}
\def\telefaxtext{{\footnotesize Telefax\/:}}
\def\telextext{{\footnotesize Telex\/:}}
\def\emailtext{{\footnotesize e--Mail\/:}}
\def\httptext{{\footnotesize HTTP\/:}}
\def\banktext{{\footnotesize Bank\/:}}
\def\ibantext{{\footnotesize IBAN\/:}}
\def\bictext{{\footnotesize BIC\/:}}
\def\vorstandtext{{\footnotesize Vorstand:}}
\def\umsatzidtext{{\footnotesize Umsatzsteuerid\/:}}
\def\steueridtext{{\footnotesize Steuernummer\/:}}
\def\registergerichttext{{\footnotesize Registergericht\/:}}
\def\registernummertext{{\footnotesize Registernummer\/:}}
\def\betrefftext{{\normalsize Betr.:}}
\def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
\def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
\def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
\def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
\def\datumtext{\footnotesize\textsc{Datum}}
%\def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
%  M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
%  Oktober\or November\or Dezember\fi \space\number\year}
\def\datum{\the\day.\the\month.\the\year}


\DeclareOption{10pt}{\def\@schrift{0}}
\DeclareOption{11pt}{\def\@schrift{1}}
\DeclareOption{12pt}{\def\@schrift{2}}

\let\@docencoding\@empty
\DeclareOption{ansinew}{\def\@docencoding{ansinew}}
\DeclareOption{applemac}{\def\@docencoding{applemac}}
\DeclareOption{ascii}{\def\@docencoding{ascii}}
\DeclareOption{cp1250}{\def\@docencoding{cp1250}}
\DeclareOption{cp1252}{\def\@docencoding{cp1252}}
\DeclareOption{cp437de}{\def\@docencoding{cp437de}}
\DeclareOption{cp437}{\def\@docencoding{cp437}}
\DeclareOption{cp850}{\def\@docencoding{cp850}}
\DeclareOption{cp852}{\def\@docencoding{cp852}}
\DeclareOption{cp865}{\def\@docencoding{cp865}}
\DeclareOption{decmulti}{\def\@docencoding{decmulti}}
\DeclareOption{latin1}{\def\@docencoding{latin1}}
\DeclareOption{latin2}{\def\@docencoding{latin2}}
\DeclareOption{latin3}{\def\@docencoding{latin3}}
\DeclareOption{latin4}{\def\@docencoding{latin4}}
\DeclareOption{latin5}{\def\@docencoding{latin5}}
\DeclareOption{latin9}{\def\@docencoding{latin9}}
\DeclareOption{utf8}{\def\@docencoding{utf8}}
\DeclareOption{t1}{\def\@fontencoding{T1}}
\DeclareOption{next}{\def\@docencoding{next}}
\DeclareOption{sans}{\renewcommand{\familydefault}{\sfdefault}}
% \usepackage[latin1]{inputenc} %Umlaute erkennen & ß, Umlaute werden als Bild dargestellt STRG+C der Umlaute nicht möglich
% \usepackage[T1]{fontenc} %Lateinsiches Alphabet + Umlaute, kein Scharf ß, STRG+C der Umlaute möglich

\DeclareOption{german}{
  \def\sprache{german}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}}
  \def\vorstandtext{{\footnotesize Vorstand:}}
  \def\ibantext{{\footnotesize IBAN\/:}}
  \def\bictext{{\footnotesize BIC\/:}}
  \def\umsatzidtext{{\footnotesize Umsatzsteuerid\/:}}
  \def\steueridtext{{\footnotesize Steuernummer\/:}}
  \def\registergerichttext{{\footnotesize Registergericht\/:}}
  \def\registernummertext{{\footnotesize Registernummer\/:}}
  \def\betrefftext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  %\def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
  %  M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
  %  Oktober\or November\or Dezember\fi \space\number\year}
  \def\datum{\the\day.\the\month.\the\year}
}


\DeclareOption{ngerman}{
  \def\sprache{ngerman}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}}
  \def\ibantext{{\footnotesize IBAN\/:}}
  \def\bictext{{\footnotesize BIC\/:}}
  \def\vorstandtext{{\footnotesize Vorstand:}}
  \def\umsatzidtext{{\footnotesize Umsatzsteuerid\/:}}
  \def\steueridtext{{\footnotesize Steuernummer\/:}}
  \def\registergerichttext{{\footnotesize Registergericht\/:}}
  \def\registernummertext{{\footnotesize Registernummer\/:}}
  \def\betrefftext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  %\def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
  %  M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
  %  Oktober\or November\or Dezember\fi \space\number\year}
  \def\datum{\the\day.\the\month.\the\year}
}

\DeclareOption{english}{
  \def\sprache{english}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}} \def\ibantext{{\footnotesize code}} \def\bictext{{\footnotesize acct}}
  \def\vorstandtext{{\normalsize Board:}}
  \def\umsatzidtext{{\footnotesize VAT Reg. No.\/:}}
  \def\steueridtext{{\footnotesize Tax No.\/:}}
  \def\registergerichttext{{\footnotesize Register Court\/:}}
  \def\registernummertext{{\footnotesize Register No.\/:}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
%   \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}
  }

\DeclareOption{american}{
  \def\sprache{american}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}} \def\blztext{{\footnotesize code}} \def\kontotext{{\footnotesize acct}}
  \def\vorstandtext{{\normalsize Board:}}
  \def\umsatzidtext{{\footnotesize VAT Reg. No.\/:}}
  \def\steueridtext{{\footnotesize Tax No.\/:}}
  \def\registergerichttext{{\footnotesize Register Court\/:}}
  \def\registernummertext{{\footnotesize Register No.\/:}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}
  }

\def\n39logo{
	  %% Inline Logo
	  \begin{tikzpicture}[
	      y=0.8pt,
	      x=0.8pt,
	      yscale=-1,
	      inner sep=0pt,
	      outer sep=0pt,
	      scale=0.2
	  ]
	  \begin{scope}[shift={(-448.05262,-67.70133)}]
	    \path[color=black,fill=black,even odd rule,line width=16.000pt]
	      (534.1205,161.8816) -- (534.1205,172.2877) -- (581.3732,172.2877) .. controls
	      (571.8452,181.8308) and (562.3036,191.3603) .. (552.7463,200.8741) --
	      (565.3389,200.8741) .. controls (585.4511,200.8741) and (601.7400,217.2036) ..
	      (601.7400,237.3158) .. controls (601.7400,257.4280) and (585.4511,273.7170) ..
	      (565.3389,273.7170) .. controls (545.2267,273.7170) and (528.8972,257.4280) ..
	      (528.8972,237.3158) -- (518.4911,237.3158) .. controls (518.4911,263.1743) and
	      (539.4804,284.1231) .. (565.3389,284.1231) .. controls (591.1974,284.1231) and
	      (612.1462,263.1743) .. (612.1462,237.3158) .. controls (612.1462,215.3233) and
	      (596.9939,196.8355) .. (576.5548,191.8042) -- (606.5180,161.8816) -- cycle;
	    \begin{scope}[cm={{-1.0,0.0,0.0,-1.0,(1130.6373,475.18252)}}]
	      \path[color=black,fill=black,even odd rule,line width=16.000pt]
		(565.3389,208.6889) .. controls (549.5365,208.6889) and (536.7120,221.5134) ..
		(536.7120,237.3158) .. controls (536.7120,249.4467) and (544.2722,259.8031) ..
		(554.9328,263.9587) -- (554.9328,252.2164) .. controls (550.2090,248.9346) and
		(547.1181,243.5056) .. (547.1181,237.3158) .. controls (547.1181,227.2597) and
		(555.2828,219.0950) .. (565.3389,219.0950) .. controls (575.3950,219.0950) and
		(583.5192,227.2597) .. (583.5192,237.3158) .. controls (583.5192,243.4955) and
		(580.4441,248.9328) .. (575.7450,252.2164) -- (575.7450,263.9587) .. controls
		(586.3945,259.8031) and (593.9253,249.4467) .. (593.9253,237.3158) .. controls
		(593.9253,221.5134) and (581.1413,208.6889) .. (565.3389,208.6889) -- cycle;
	      \path[color=black,fill=black,even odd rule,line width=16.000pt]
		(565.3389,232.0925) .. controls (562.4657,232.0925) and (560.1156,234.4426) ..
		(560.1156,237.3158) -- (560.1156,268.4937) -- (570.5217,268.4937) --
		(570.5217,237.3158) .. controls (570.5217,234.4426) and (568.2121,232.0925) ..
		(565.3389,232.0925) -- cycle;
	    \end{scope}
	    \path[fill=black] (630.8529,149.4914) .. controls (625.1306,149.5458) and
	      (620.4890,150.3447) .. (619.3535,151.0301) .. controls (617.0825,152.4009) and
	      (616.5461,155.6877) .. (617.2480,156.4558) .. controls (617.9500,157.2237) and
	      (628.6785,164.1143) .. (633.3633,166.3761) .. controls (645.9778,172.4665) and
	      (632.0756,195.7720) .. (621.2161,191.6018) .. controls (613.5199,188.6464) and
	      (604.7892,179.8446) .. (603.3192,179.7785) .. controls (601.8492,179.7137) and
	      (599.9557,180.7048) .. (599.4726,183.2607) .. controls (598.9895,185.8166) and
	      (602.4810,198.1576) .. (611.2554,207.7576) .. controls (621.7846,219.2778) and
	      (638.1817,206.5491) .. (638.1817,217.0704) --
	      (638.1817,265.9427)arc(179.961:0.039:13.018) -- (664.2172,203.5060) --
	      (664.2172,188.9294) .. controls (664.2172,183.4623) and (670.9201,161.5406) ..
	      (648.7498,152.3663) .. controls (643.3754,150.1424) and (636.5752,149.4370) ..
	      (630.8529,149.4914) -- cycle;
	  \end{scope}
	  \path[color=black,fill=black,even odd rule,line width=8.333pt]
	    (150.0000,23.1213) .. controls (79.9291,23.1213) and (23.1213,79.9291) ..
	    (23.1213,150.0000) .. controls (23.1213,220.0708) and (79.9291,276.8787) ..
	    (150.0000,276.8787) .. controls (220.0708,276.8787) and (276.8787,220.0708) ..
	    (276.8787,150.0000) .. controls (276.8787,79.9291) and (220.0708,23.1213) ..
	    (150.0000,23.1213) -- cycle(150.0000,40.5068) .. controls (210.4603,40.5068)
	    and (259.4540,89.5397) .. (259.4540,150.0000) .. controls (259.4540,210.4603)
	    and (210.4603,259.4540) .. (150.0000,259.4540) .. controls (89.5278,259.8428)
	    and (41.3547,203.5210) .. (40.5068,150.0000) .. controls (40.5068,89.5397) and
	    (89.5397,40.5068) .. (150.0001,40.5068) -- cycle;
	  \end{tikzpicture}
	  %% Logo End
}


\ExecuteOptions{11pt,@sprache} \ProcessOptions
\LoadClass[1\@schrift pt, a4paper, oneside, final]{letter}[1999/04/29]
\normalsize

\setlength\oddsidemargin{0\p@}
\setlength\evensidemargin{\oddsidemargin}
\setlength\marginparwidth{90\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{-12.69mm}
\setlength\headheight{4.23mm}
\setlength\headsep{6.35mm}
\setlength\topskip{3.38mm}
\addtolength\footskip{4.23mm}

\setlength\textheight{178.88mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{1}

\advance\topmargin by \VorschubV
\advance\oddsidemargin by \VorschubH
\setlength\evensidemargin{\oddsidemargin}

\AtEndOfClass{\pagestyle{regularpage}}

\def\Name#1{\def\name{#1}} \def\name{}
\def\Strasse#1{\def\strasse{#1}} \def\strasse{}
\def\Zusatz#1{\def\zusatz{#1}} \def\zusatz{}
\def\Ort#1{\def\ort{#1}} \def\ort{}
\def\Land#1{\def\land{#1}} \def\land{}
\def\RetourAdresse#1{\def\retouradresse{#1}} \def\retouradresse{}

%\def\Telefon#1{\def\telefon{#1}} \def\telefon{}
\def\Telefax#1{\def\telefax{#1}} \def\telefax{}
\def\Telex#1{\def\telex{#1}} \def\telex{}
\def\EMail#1{\def\email{#1}} \def\email{}
\def\HTTP#1{\def\http{#1}} \def\http{}

\def\Bank#1{\def\bank{#1}} \def\bank{}
\def\IBAN#1{\def\iban{#1}} \def\iban{}
\def\BIC#1{\def\bic{#1}} \def\bic{}

\def\Vorsitz#1{\def\vorsitz{#1}} \def\vorsitz{}
\def\Vertreter#1{\def\vertreter{#1}} \def\vertreter{}
\def\Kassenwart#1{\def\kassenwart{#1}} \def\kassenwart{}

\def\Registergericht#1{\def\registergericht{#1}} \def\registergericht{}
\def\Registernummer#1{\def\registernummer{#1}} \def\registernummer{}
\def\Umsatzsteuerid#1{\def\umsatzsteuerid{#1}} \def\umsatzsteuerid{}
\def\Steuernummer#1{\def\steuernummer{#1}} \def\steuernummer{}

\def\Postvermerk#1{\def\postvermerk{#1}} \def\postvermerk{}
\def\Adresse#1{\def\adresse{#1}} \def\adresse{}

\def\IhrZeichen#1{\def\ihrzeichen{#1}} \def\ihrzeichen{}
\def\IhrSchreiben#1{\def\ihrschreiben{#1}} \def\ihrschreiben{}
\def\MeinZeichen#1{\def\meinzeichen{#1}} \def\meinzeichen{}
\def\Datum#1{\def\datum{#1}} \def\datum{}

\def\Betreff#1{\def\betreff{#1}} \def\betreff{}

\def\Anrede#1{\def\anrede{#1}} \def\anrede{}
\def\Gruss#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{}

\def\Unterschrift#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}

\newif\ifklassisch\klassischfalse
\def\klassisch{\klassischtrue}

\newif\iftrennlinien\trennlinienfalse
\def\trennlinien{\trennlinientrue}

\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newif\iffaltmarken\faltmarkenfalse
\def\faltmarken{\faltmarkentrue}

\newif\iffenstermarken\fenstermarkenfalse
\def\fenstermarken{\fenstermarkentrue}

\newif\ifunserzeichen\unserzeichenfalse
\def\unserzeichen{\unserzeichentrue}


\newenvironment{g-brief}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

  \ifx \ihrzeichen\empty \ifx \ihrschreiben\empty \ifx
  \meinzeichen\empty \makebox[45.5mm][l]{} \makebox[55.0mm][l]{}
  \makebox[20.0mm][l]{} \else \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi \else
  \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi \else
  \makebox[45.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} \ifunserzeichen
  \makebox[20.0mm][l]{\unserzeichentext} \else
  \makebox[20.0mm][l]{\meinzeichentext} \fi \fi
  \makebox[37.0mm][r]{\datumtext} \\
  \makebox[45.5mm][l]{\ihrzeichen}
  \makebox[55.0mm][l]{\ihrschreiben}
  \makebox[20.0mm][l]{\meinzeichen}
  \makebox[37.0mm][r]{\datum} \par

  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \betreff\empty \else \ifklassisch \betrefftext \space \space
  \betreff \else \textbf{\betreff} \fi \mbox{}
  \par \vspace{-1\parskip} \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \par \fi\nobreak
  \addtolength\textheight{63mm}
  }
{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi

  \vspace{\grussskip} \par \nobreak \stopbreaks \noindent
  \parbox[t]{3.5in}{\raggedright \ignorespaces {\normalsize \ifx
      \gruss\empty \else \gruss \mbox{} \\[16.92mm] \fi \ifx
      \unterschrift\empty \relax \else \ifklassisch
      \textsl{(\unterschrift)} \else \unterschrift \fi}
    \fi\strut} \ifx \anlagen\empty \else \vspace{4mm} \par \anlagen
  \par \fi \ifx \verteiler\empty \else \ifx \anlagen\empty
  \vspace{4mm}\par \fi \verteiler \fi }

\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi
  \headheight16pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
      \put(-9, 2){\parbox{180mm}{\n39logo}}
      \put(8,1){\parbox{180mm}{ \huge \name}}
      %\put(-9, 3){\parbox{180mm}{\huge \name %\\ \normalsize \ifklassisch \textsl{
%             \strasse \quad \\ \ifx \zusatz\empty \else
%             \zusatz \quad \\ \fi \quad \ort \quad \ifx \land\empty \else \\
%             \land \quad \fi} \else \textsc{
%             \strasse \quad \\ \ifx \zusatz\empty \else
%             \zusatz \quad \\ \fi \ort \quad \ifx \land\empty \else \\
%             \land \quad \fi} \fi
% 	      }}
      \put(102, -39){\parbox{180mm}{ %\includegraphics[width=0.15\textwidth]{logo/logo_final}
      %\\
      \name \\
      \strasse \\
      \ifx \zusatz\empty \else \zusatz \\ \fi
      \ort \\
      \ifx \land\empty \else \land \\ \fi
      \\
      \telefon \\
      \email \\
      \http \\
      %\vorstandtext \\
      %\underline\vorsitz \\
      %\vertreter \\
      %\kassenwart
%       }}
%       \put(128,-32){\parbox{180mm}{
%        \begin{tabular}{ll}
%        \vorstandtext & \underline\vorstand \\
%         {} & \vertreter \\
%         {} & \kassenwart
%        \end{tabular}
      }}
\
      \iftrennlinien \put(-9,-7){\rule{180mm}{0.5pt}} \fi
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
      \put(-15,-182.16){\line(1,0){3}} \fi
      \put( -9, -22.00){\makebox(85,4)
        {\scriptsize \ifx \retouradresse\empty
          \textrm{\name\ $\cdot$\ \strasse\ $\cdot$\ \ort \ifx
              \land\empty \else \ $\cdot$\ \land \fi } \else
            \textrm{\retouradresse} \fi}}
      \iftrennlinien \put( -9, -22.10){\line(1,0){85}} \fi
      \put(-1,-28.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
          \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
      \iffenstermarken
      \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
      \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
      \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
      \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
      \fi
    \end{picture}
    \hfill}
  \def\@oddfoot{\unitlength1mm
    \begin{picture}(0,0)
      \put(-9,0){\parbox[][][t]{180mm}{
      \footnotesize \iftrennlinien
        \rule{180mm}{0.5pt} \fi
          \begin{tabular}{ll}
            \vorstandtext & \vorsitz \\
             & \vertreter   \\
             & \kassenwart
            %\ifx \telefon\empty \else \telefontex & \telefon \\ \fi \ifx
            %\telefax\empty \else \telefaxtext & \telefax \\ \fi \ifx
            %\telex\empty \else \telextext & \telex \\ \fi \ifx
            %\email\empty \else \emailtext & \email \\ \fi \ifx
            %\http\empty \else \httptext & \http \\ \fi \
          \end{tabular} \ifcase\@ptsize\hspace{5em}\or \hspace{2.5em}\or  \hspace{0em} \fi
          \begin{tabular}{ll}
            \ifx \registergericht\empty \else \registergerichttext & \registergericht \\ \fi \ifx \registernummer\empty \else \registernummertext & \registernummer \\ \fi \ifx \umsatzsteuerid\empty \else \umsatzidtext & \umsatzsteuerid \\ \fi \ifx \steuernummer\empty \else \steueridtext & \steuernummer \\ \fi \
          \end{tabular}\hfill
          \begin{tabular}{ll}
            \banktext & \bank \\%\ifx \bank\empty \else \ifx \blz\empty \else \ifx
            \ibantext  & \iban \\
            \bictext & \bic%\konto\empty \else \banktext & \bank \\ & \blztext \space \blz
            %\\ & \kontotext \space \konto \\ \ \fi \fi \fi
          \end{tabular}}}
    \end{picture} \hfill}
  \def\@evenhead{\@oddhead} \def\@evenfoot{\@oddfoot}}

\def\ps@regularpage{ \headheight36pt\def\@oddhead{\unitlength1mm
    \begin{picture}(0,0)
      \put(-5,5){\makebox(10,10){\n39logo}\hfill}
      \put(4.5,2){\makebox(170,15){\normalsize \ifklassisch
        {\Large\quad}\name\hfill\datum\hfill\pagename\ \thepage\quad
        \else
        {\Large\quad}\name\hfill\datum\hfill\pagename\
        \thepage\quad} \fi}
      \iftrennlinien \put(-9,0){\rule{180mm}{0.5pt}} \fi
    \end{picture}\hfill}
  \def\@oddfoot{\empty} \def\@evenhead{\@oddhead}
  \def\@evenfoot{\@oddfoot}}

\IfFileExists{babel.sty}
  {\RequirePackage[\sprache]{babel}[2001/03/01]}
  {\ClassError{g-brief}
    {Babel not installed !!!}
    {Get babel package !!!}}

\ifx \@docencoding\empty \else
\IfFileExists{inputenc.sty}
  {\RequirePackage[\@docencoding]{inputenc}}
  {\ClassError{g-brief}
    {LaTeX2e not complete installed or out of date !!!}
    {Get current LaTeX2e !!!}}
\fi

\IfFileExists{marvosym.sty}
  {\RequirePackage{marvosym}}
  {}
  \def\Telefon#1{\def\telefon{#1}} \def\telefon{}
\IfFileExists{europs.sty}
  {\RequirePackage{europs}}
  {}{}
\IfFileExists{eurosym.sty}
  {\RequirePackage{eurosym}}
  {}{}

%%
%% End of file `g-brief.cls'.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Begin defs netz39

 \Name                {Netz39 e.\,V.}
 \Strasse             {Leibnizstra\ss e 32}
 \Zusatz              {}
 \RetourAdresse       {}
 \Ort                 {39104 Magdeburg}
 \Land                {}

 \Telefon             {+49\ 391\ 58245281}
 \Telefax             {}
 \Telex               {}
 \HTTP                {http://www.netz39.de}
 \EMail               {kontakt@netz39.de}

 \Vorsitz             {Rick Hollinski}
 \Vertreter           {Maximilian Grau}
 \Kassenwart          {Michael Albrecht}

 \Bank                {GLS Gemeinschaftsbank eG}
 \IBAN                {DE64\ 4306\ 0967\ 4120\ 8043\ 00}
 \BIC                 {GENODEM1GLS}

 \Registergericht     {Amtsgericht Stendal}
 \Registernummer      {VR\ 3169}
 \Umsatzsteuerid      {}
 \Steuernummer        {}


%%
%% End defs netz39

\endinput

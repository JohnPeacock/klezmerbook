\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2003-2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This is pretty complicated to get it to look right.

\include "today.lyh"

% tempo strings

eighthnote = \markup { \override #'(word-space . 0.0) { \note #"8" #0.75 } }
eighthdotnote = \markup { \override #'(word-space . 0.0) { \note #"8." #0.75 } }
quarternote = \markup { \override #'(word-space . 0.0) { \note #"4" #0.75 } }
quarterdotnote = \markup { \override #'(word-space . 0.0) { \note #"4." #0.75 } }
halfnote = \markup { \override #'(word-space . 0.0) { \note #"2" #0.75 } }
halfdotnote = \markup { \override #'(word-space . 0.0) { \note #"2." #0.75 } }

largotempoprefix = \markup "Largo"
largotempovalue = \markup "40-60"

larghettotempoprefix = \markup "Larghetto"
larghettotempovalue = \markup "60-66"

adagiotempoprefix = \markup "Adagio"
adagiotempovalue = \markup "66-76"

andantetempoprefix = \markup "Andante"
andantetempovalue = \markup "76-108"

moderatotempoprefix = \markup "Moderato"
moderatotempovalue = \markup "100-120"

allegrettotempoprefix = \markup "Allegretto"
allegrettotempovalue = \markup "110-130"

allegrotempoprefix = \markup "Allegro"
allegrotempovalue = \markup "120-168"

prestotempoprefix = \markup "Presto"
prestotempovalue = \markup "168-200"

prestissimotempoprefix = \markup "Prestissimo"
prestissimotempovalue = \markup "200-208"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

titleMarkup = \markup { "" }
headMarkup = \markup { "" }
evenTitleHeaderMarkup = \markup { "" }
oddTitleHeaderMarkup = \markup { "" }
subtitleMarkup = \markup { "" }
subsubtitleMarkup = \markup { "" }
composerMarkup = \markup { "" }
poetMarkup = \markup { "" }
arrangerMarkup = \markup { "" }
opusMarkup = \markup { "" }
pieceMarkup = \markup { "" }
% this is a hack to put in a page break
meterMarkup = \markup { "" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% default values that we can redefine later

tempoprefix = \markup "   "
temponote = \halfnote
tempovalue = \markup "10"

klezmerSongGroup = \markup { "Temple Aliyah Klezmer Band" }
choralSongGroup = \markup { "Temple Aliyah Chorus" }
mannaSongGroup = \markup { "Project Manna" }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% common textual markups
markupA =    \markup { \box \bold \huge "A" }
markupB =    \markup { \box \bold \huge "B" }
markupC =    \markup { \box \bold \huge "C" }
markupD =    \markup { \box \bold \huge "D" }
markupE =    \markup { \box \bold \huge "E" }
markupF =    \markup { \box \bold \huge "F" }
markupG =    \markup { \box \bold \huge "G" }
markupH =    \markup { \box \bold \huge "H" }
markupI =    \markup { \box \bold \huge "I" }
markupJ =    \markup { \box \bold \huge "J" }
markupK =    \markup { \box \bold \huge "K" }
markupL =    \markup { \box \bold \huge "L" }
markupM =    \markup { \box \bold \huge "M" }
markupN =    \markup { \box \bold \huge "N" }
markupO =    \markup { \box \bold \huge "O" }
markupP =    \markup { \box \bold \huge "P" }
markupQ =    \markup { \box \bold \huge "Q" }
markupR =    \markup { \box \bold \huge "R" }
markupS =    \markup { \box \bold \huge "S" }
markupT =    \markup { \box \bold \huge "T" }
markupU =    \markup { \box \bold \huge "U" }
markupV =    \markup { \box \bold \huge "V" }
markupW =    \markup { \box \bold \huge "W" }
markupX =    \markup { \box \bold \huge "X" }
markupY =    \markup { \box \bold \huge "Y" }
markupZ =    \markup { \box \bold \huge "Z" }

% letters plus number
markupAI =   \markup { \box \bold \huge "A1" }
markupBI =   \markup { \box \bold \huge "B1" }
markupCI =   \markup { \box \bold \huge "C1" }
markupDI =   \markup { \box \bold \huge "D1" }
markupEI =   \markup { \box \bold \huge "E1" }
markupFI =   \markup { \box \bold \huge "F1" }
markupGI =   \markup { \box \bold \huge "G1" }
markupHI =   \markup { \box \bold \huge "H1" }
markupJI =   \markup { \box \bold \huge "J1" }

markupAII =  \markup { \box \bold \huge "A2" }
markupBII =  \markup { \box \bold \huge "B2" }
markupCII =  \markup { \box \bold \huge "C2" }
markupDII =  \markup { \box \bold \huge "D2" }
markupEII =  \markup { \box \bold \huge "E2" }
markupFII =  \markup { \box \bold \huge "F2" }
markupGII =  \markup { \box \bold \huge "G2" }
markupHII =  \markup { \box \bold \huge "H2" }
markupJII =  \markup { \box \bold \huge "J2" }

markupAIII = \markup { \box \bold \huge "A3" }
markupBIII = \markup { \box \bold \huge "B3" }
markupCIII = \markup { \box \bold \huge "C3" }
markupDIII = \markup { \box \bold \huge "D3" }
markupEIII = \markup { \box \bold \huge "E3" }
markupFIII = \markup { \box \bold \huge "F3" }
markupGIII = \markup { \box \bold \huge "G3" }
markupHIII = \markup { \box \bold \huge "H3" }
markupJIII = \markup { \box \bold \huge "J3" }

markupAIV = \markup { \box \bold \huge "A4" }
markupBIV = \markup { \box \bold \huge "B4" }
markupCIV = \markup { \box \bold \huge "C4" }
markupDIV = \markup { \box \bold \huge "D4" }
markupEIV = \markup { \box \bold \huge "E4" }
markupFIV = \markup { \box \bold \huge "F4" }
markupGIV = \markup { \box \bold \huge "G4" }
markupHIV = \markup { \box \bold \huge "H4" }
markupJIV = \markup { \box \bold \huge "J4" }

% markups with segno
markupS =    \markup { \musicglyph #"scripts.segno" }
markupSA =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "A" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSB =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "B" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSC =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "C" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSD =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "D" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSE =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "E" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSF =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "F" }
    { \musicglyph #"scripts.segno" }
  }
}
markupSG =   \markup {
  \override #'(baseline-skip . 2.75)
  \center-column {
    { \box \bold \huge "G" }
    { \musicglyph #"scripts.segno" }
  }
}

% d.s. markups
markupDS =       \markup { \italic "D.S. al Coda" }
markupDSFN =     \markup { \italic "D.S. al Fine " }
markupDSsimple = \markup { \italic "D.S." }
markupDSAL =     \markup { \italic "D.S. ad lib." }

% d.c. markups
markupDC =   \markup { \italic "D.C." }
markupDCAF = \markup { \italic "D.C. al Fine" }
markupDCAC = \markup { \italic "D.C. al Coda" }
markupDCAL = \markup { \italic "D.C. ad lib." }
markupDCALAC = \markup { \italic "D.C. ad lib. al Coda" }

% coda markups
markupFC =   \markup { \italic "Final Coda" }
markupTC =   \markup { \italic "To Coda " \hspace #0.2 { \smaller \general-align #Y #-0.65 \musicglyph #"scripts.coda" } }
markupCT =   \markup { { \smaller \general-align #Y #-0.65 \musicglyph #"scripts.coda" } \italic "To Coda " }
markupCC =   \markup { { \smaller \general-align #Y #-0.65 \musicglyph #"scripts.coda" } \italic "Coda" }
markupCCRT = \markup {
    { \smaller \general-align #Y #-0.65 \musicglyph #"scripts.coda" } \italic "Coda Rit." }

% misc markups
markupFN = \markup { \italic "Fine" }
markupRT = \markup { \italic "Rit." }
markupCH = \markup { "Chorus" }

% go to section letter markups
markupToA =  \markup { "To " \hspace #0.5 \box \bold \huge "A" }
markupToB =  \markup { "To " \hspace #0.5 \box \bold \huge "B" }
markupToC =  \markup { "To " \hspace #0.5 \box \bold \huge "C" }
markupToD =  \markup { "To " \hspace #0.5 \box \bold \huge "D" }
markupToE =  \markup { "To " \hspace #0.5 \box \bold \huge "E" }
markupToF =  \markup { "To " \hspace #0.5 \box \bold \huge "F" }
markupToG =  \markup { "To " \hspace #0.5 \box \bold \huge "G" }

%============================================================
% Graphical markups

% Picture of glasses.  Means look at conductor.
eyeglassesps = #"0.15 setlinewidth
-0.9 0 translate
1.1 1.1 scale
1.2 0.7 moveto
0.7 0.7 0.5 0 361 arc
stroke
2.20 0.70 0.50 0 361 arc
stroke
1.45 0.85 0.30 0 180 arc
stroke
0.20 0.70 moveto
0.80 2.00 lineto
0.92 2.26 1.30 2.40 1.15 1.70 curveto
stroke
2.70 0.70 moveto
3.30 2.00 lineto
3.42 2.26 3.80 2.40 3.65 1.70 curveto
stroke"

markupGlasses =  \markup { \with-dimensions #'(0 . 4.4) #'(0 . 2.5) \postscript #eyeglassesps }

%------------------------------------------------------------
% Picture of beaters.  Tells drummer to use beaters not standard sticks.
markupBeaters = \markup { 
  \with-dimensions #'(0 . 5) #'(0 . 5) 
  \postscript #"
    0 6 translate
    0.8 -0.8 scale
    0 0 0 setrgbcolor
    [] 0 setdash
    1 setlinewidth
    0 setlinejoin
    0 setlinecap
    gsave [1 0 0 1 0 0] concat
    gsave [1 0 0 1 -3.5406095 -199.29342] concat
    gsave
    0 0 0 setrgbcolor
    newpath
    7.1434065 200.94354 moveto
    7.2109628 200.90454 7.2785188 200.86554 7.3460747 200.82654 curveto
    8.2056347 202.31535 9.0651946 203.80414 9.9247546 205.29295 curveto
    9.8571989 205.33195 9.7896429 205.37095 9.7220864 205.40996 curveto
    8.8625264 203.92115 8.0029664 202.43233 7.1434065 200.94354 curveto
    closepath
    eofill
    grestore
    gsave
    0 0 0 setrgbcolor
    newpath
    4.9646672 203.10444 moveto
    5.0036707 203.03688 5.0426744 202.96933 5.0816777 202.90176 curveto
    6.5704792 203.76133 8.0592809 204.6209 9.5480824 205.48045 curveto
    9.5090791 205.54801 9.4700754 205.61556 9.4310717 205.68311 curveto
    7.94227 204.82356 6.4534687 203.96399 4.9646672 203.10444 curveto
    closepath
    eofill
    grestore
    gsave
    <<
    /ShadingType 3
    /ColorSpace /DeviceRGB
    /Coords [113.13708 207.87465 0 113.13708 207.87465 16.162441]
    /Extend [true true]
    /Domain [0 1]
    /Function <<
    /FunctionType 3
    /Functions
    [
    <<
    /FunctionType 2
    /Domain [0 1]
    /C0 [1 1 1]
    /C1 [0.72941178 0.72941178 0.72941178]
    /N 1
    >>
    ]
    /Domain [0 1]
    /Bounds [ ]
    /Encode [ 0 1 ]
    >>
    >>
    newpath
    7.6422017 200.76488 moveto
    7.6505696 201.02554 7.3905363 201.24867 7.1341335 201.20075 curveto
    6.8759501 201.16916 6.6949602 200.87978 6.7801462 200.63381 curveto
    6.8480773 200.39155 7.1438307 200.25377 7.3728389 200.35861 curveto
    7.5332399 200.42458 7.6444521 200.59122 7.6422017 200.76488 curveto
    closepath
    clip
    gsave [0.052859054 0.063089841 -0.020912282 0.017521108 5.7334261 189.76443] concat
    shfill
    grestore
    grestore
    0 0 0 setrgbcolor
    [] 0 setdash
    0.027282091 setlinewidth
    0 setlinejoin
    0 setlinecap
    newpath
    7.6422017 200.76488 moveto
    7.6505696 201.02554 7.3905363 201.24867 7.1341335 201.20075 curveto
    6.8759501 201.16916 6.6949602 200.87978 6.7801462 200.63381 curveto
    6.8480773 200.39155 7.1438307 200.25377 7.3728389 200.35861 curveto
    7.5332399 200.42458 7.6444521 200.59122 7.6422017 200.76488 curveto
    closepath
    stroke
    gsave
    <<
    /ShadingType 3
    /ColorSpace /DeviceRGB
    /Coords [113.13708 207.87465 0 113.13708 207.87465 16.162441]
    /Extend [true true]
    /Domain [0 1]
    /Function <<
    /FunctionType 3
    /Functions
    [
    <<
    /FunctionType 2
    /Domain [0 1]
    /C0 [1 1 1]
    /C1 [0.72941178 0.72941178 0.72941178]
    /N 1
    >>
    ]
    /Domain [0 1]
    /Bounds [ ]
    /Encode [ 0 1 ]
    >>
    >>
    newpath
    5.2721217 202.83181 moveto
    5.2804896 203.09247 5.0204563 203.3156 4.7640539 203.26768 curveto
    4.5058701 203.23609 4.3248803 202.94671 4.4100662 202.70074 curveto
    4.4779975 202.45848 4.7737511 202.3207 5.0027593 202.42554 curveto
    5.1631598 202.49149 5.2743721 202.65813 5.2721217 202.83181 curveto
    closepath
    clip
    gsave [0.052859054 0.063089841 -0.020912282 0.017521108 3.363346 191.83136] concat
    shfill
    grestore
    grestore
    0 0 0 setrgbcolor
    [] 0 setdash
    0.027282091 setlinewidth
    0 setlinejoin
    0 setlinecap
    newpath
    5.2721217 202.83181 moveto
    5.2804896 203.09247 5.0204563 203.3156 4.7640539 203.26768 curveto
    4.5058701 203.23609 4.3248803 202.94671 4.4100662 202.70074 curveto
    4.4779975 202.45848 4.7737511 202.3207 5.0027593 202.42554 curveto
    5.1631598 202.49149 5.2743721 202.65813 5.2721217 202.83181 curveto
    closepath
    stroke
    grestore
    grestore
  "
}

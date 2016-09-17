\version "2.18.0"

%=====================================================================
%
% Copyright 2008-2010, Richard J. Schoeller
%
%=====================================================================

bandmsectiona = {
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakA
    \bar "||"
}

bandmsectionb = {
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 | \breakBeit
    s1 | \breakBnin s1 | \breakBten s1 | \breakBelv s1 | \breakB
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronome = \context Voice = "metronome" {
    \time  4/4
    \preintro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ei- leh cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.

    Ei- leh cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

melodysectionb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

melody = {
    \key f \major
    \melodysectiona
    \melodysectionb
}

melodymidi = {
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
}

%--------------------------------------------------

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \key f \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
    \repeat unfold 4 { r8 \acciaccatura { cis''16 } d''8 } |
    \repeat unfold 4 { r8 \acciaccatura { cis''16 } d''8 } |
    \repeat unfold 4 { r8 \acciaccatura { cis''16 } d''8 } |
    \repeat unfold 4 { r8 \acciaccatura { cis''16 } d''8 } |

    \repeat unfold 4 { r8 \acciaccatura { cis''16 } d''8 } |
    r8 \acciaccatura { e''16 } f''4 e''8 d''8 r8 a'8 r8 |
    r8 \acciaccatura { e''16 } f''8 r8 d''8 d''4 c''8 r8 |
    r8 c''8 d''8 e''8 f''8 d''8 d''8 cis''8 |

% the following only works with Reiner's arrangement
%    r8 \acciaccatura { cis''8 } d''4 d''8 d''4 f''8 r8 |
%    r8 \acciaccatura { cis''8 } d''4 d''8 d''4 a'8 r8 |
%    r8 \acciaccatura { cis''8 } d''4 d''8 d''4 a''8 r8 |
%    r8 \acciaccatura { cis''8 } d''4 a'8 d''8 e''8 f''8 e''8 |

    d''2 r4 \tuplet 3/2 { fis'8 g'8 a'8 } |
    bes'4 c''8 bes'8 a'8 g'8 f'8. a'16 |
    d''8 d''4 d''8 cis''8 a'4 g'8 |
% first alternative if we wish to rearrange to Reiner's
%    d'4 r8 d''8 a'8 bes'8 b'8 cis''8 |
    f'2 r4 a'4 |
}

harmonysectionb = {
    bes'4. bes'8 bes'4 a'8 g'8 |
    f'2 g'2 |
    a'4 a'4 bes'4 g'4 |
    f'2 e'2 |

    d''2 r4 \tuplet 3/2 { fis'8 g'8 a'8 } |
    bes'4 c''8 bes'8 a'8 g'8 f'8. a'16 |
    d''8 d''4 d''8 cis''8 a'4 g'8 |
    f'4 r4 a'2 |

    d''2 r4 \tuplet 3/2 { fis'8 g'8 a'8 } |
    bes'4 c''8 bes'8 a'8 g'8 f'8. a'16 |
    d''8 d''4 d''8 cis''8 a'4 g'8 |
    f'4 r4 a'2 |
}

harmony = {
    \time  4/4
    \harmonysectiona
    \harmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    d'4 d'4 d'2 ~ |
    d'8 cis'8 d'8 e'8 g'8 f'8 e'8 d'8 |
    d'4 d'4 d'2 ~ |
    d'4 c'4 bes4 a4 |

    d'4 d'4 d'2 ~ |
    d'8 e'8 f'8 e'8 d'8 cis'8 d'4 |
    bes2 ~ bes8 c'8 d'8 e'8 |
    f'2 r4 e'4 |

%    r8 d'4 d'8 d'2 ~ |
%    d'8 cis'8 d'8 e'8 g'8 f'8 e'8 d'8 |
%    r8 d'4 d'8 d'2 ~ |
%    d'4. e'8 f'8 g'8 a'8 b'8 |

    c''2 b'2 |
    bes'2 a'4 d'8. f'16 |
    gis'4 g'4 f'8 e'8 d'8 cis'8 |
%    d'4 r8 d''8 a'8 g'8 f'8 e'8 |
    d'2 r4 a4 |
}

countersectionb = {
    d'4. f'8 f'4 e'4 |
    f'4. c'8 cis'8 d'8 e'4 |
    f'4. d'8 e'2 |
    f'4 e'4 d'4 cis'4 |

    c'2 b2 |
    bes a4 d'8. f'16 |
    gis'4 g'4 f'8 e'8 d'8 cis'8 |
    d'4 r4 a'2 |

    c'2 b2 |
    bes a4 d'8. f'16 |
    gis'4 g'4 f'8 e'8 d'8 cis'8 |
    d'4 r4 a'2 |
}

counter = {
    \time  4/4
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key f \major
    \time 4/4
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

clarinetsectionb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key f \major
    \time 4/4
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = \transpose c d' {
    \key f \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

trumpetsectionb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

trumpetnotes = \transpose c d {
    \key f \major
    \time 4/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = \transpose c d {
    \key f \major
    \time 4/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
    \countersectiona
    \countersectionb
}
trombonenotesmidi = {
    \preintro
    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectionb = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

guitarnotes = {
    \time  4/4
    \key f \major
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi = {
    \time  4/4
    \key f \major
    \preintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |

    d4 a,4 g,4 d4 |
    g,4 d4 a,4 d4 |
    bes,4 d4 c4 e4 |
    f4 e4 d4 a,4 |

%    d4 a,4 d4 a,4 |
%    d4 a,4 d4 a,4 |
%    d4 a,4 d4 a,4 |
%    d4 a,4 b,4 cis4 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 a,2 |
}

basssectionb = {
    bes,4 r8 bes,8 c4 r8 c8 |
    f,4 r8 f,8 a,4 r8 cis8 |
    d4 r8 d8 c4 r8 c8 |
    f8 r8 c8 r8 e8 a,8 b,8 cis8 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 < a, a >2 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 < a, a >2 |
}

bassline = {
    \time  4/4
    \key f \major
    \basssectiona
    \basssectionb
}

basslinemidi = {
    \time  4/4
    \key f \major
    \preintro
    \basssectiona
    \basssectionb
    \basssectiona
    \basssectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    d1:min | d1:min | d1:min | d1:min |
    d2:min g2:min | a2:7 d2:min | bes2 g2:min | a2:sus4 a2:7 |
    d2:min g2:min | a2:7 d2:min | bes2 a2:7 | d1:min |
}

chordletterssectionb = \chordmode {
    d1:min | d1:min | d1:min | d1:min |
    d2:min g2:min | a2:7 d2:min | bes2 g2:min | a2:sus4 a2:7 |
    d2:min g2:min | a2:7 d2:min | bes2 a2:7 | d2:min s2 |
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

scorechordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

guitarchordletters = {
    \chordletterssectiona
    \chordletterssectionb
}
clarinetchordletters = \transpose bes, c \scorechordletters
tenorsaxchordletters = \transpose bes, c \scorechordletters
trumpetchordletters = \transpose bes, c \scorechordletters
altosaxchordletters = \transpose ees c \scorechordletters
%guitarchordletters = \chordletters
flutechordletters = \scorechordletters
violinchordletters = \scorechordletters
trombonechordletters = \scorechordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |

    r8 < a d' f' >8 r8 < a d' f' >8 r8 < b d' g' >8 r8 < b d' g' >8 |
    r8 < bes d' g' > r8 < bes d' g' >8 r8 < a cis' e' >8 r8 < a d' f' >8 |
    r8 < bes d' f' g' > r8 < bes d' f' g' >8 r8 < c' e' g' >8 r8 < c' e' g' >8 |
    r8 < c' f' a' >8 r8 < c' f' a' >8 r8 < d' f' a' >8 r8 < a cis' e' g' >8 |

%    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
%    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
%    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
%    r8 < a d' f' >8 r8 < a d' f' >8 r8 < a d' f' >8 r8 < a cis' e' >8 |

    r8 < a d' f' >8 r8 < a d' f' >8 r8 < b d' g' >8 r8 < b d' g' >8 |
    r8 < bes d' g' >8 r8 < bes d' g' >8 r8 < a d' f' >8 r8 < a d' f' >8 |
    r8 < bes d' bes' >8 r8 < bes d' g' >8 r8 < cis' e' g' >8 r8 < cis' e' g' >8 |
    r8 < d' f' a' >4 < d' f' a' >8 < d' f' a' >8 r8 < cis' e' g' a' >8 r8
}

pianorightuppersectionb = {
    r4 < bes d' f' >4 r4 < g bes c' e' >4
    r4 < a c' f' >4 r4 < a cis' e' >4
    r4 < d' f' a' >4 r4 < bes c' e' g' >4
    < c' f' a' >8 r8 < c' e' g' >8 r8 < b' d' e' gis' >8 r8 < cis' g' a' >8 r8

    r8 < a d' f' >8 r8 < a d' f' >8 r8 < b d' g' >8 r8 < b d' g' >8
    r8 < bes d' g' >8 r8 < bes d' g' >8 r8 < a d' f' >8 r8 < a d' f' >8
    r8 < bes d' bes' >8 r8 < bes d' g' >8 r8 < cis' e' g' >8 r8 < cis' e' g' >8
    < d' f' a' >4 r4 a'2 |

    r8 < a d' f' >8 r8 < a d' f' >8 r8 < b d' g' >8 r8 < b d' g' >8
    r8 < bes d' g' >8 r8 < bes d' g' >8 r8 < a d' f' >8 r8 < a d' f' >8
    r8 < bes d' bes' >8 r8 < bes d' g' >8 r8 < cis' e' g' >8 r8 < cis' e' g' >8
    < d' f' a' >4 r4 a'2 |
}

pianorightuppernotes = {
    \key f \major
    \time 4/4
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianorightlowernotes = {
}

pianoleftuppersectiona = {
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |

    d4 a,4 g,4 d4 |
    g,4 d4 a,4 d4 |
    bes,4 d4 c4 e4 |
    f4 e4 d4 a,4 |

%    d4 a,4 d4 a,4 |
%    d4 a,4 d4 a,4 |
%    d4 a,4 d4 a,4 |
%    d4 a,4 b,4 cis4 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 a,2 |
}

pianoleftuppersectionb = {
    bes,4 r8 bes,8 c4 r8 c8 |
    f,4 r8 f,8 a,4 r8 cis8 |
    d4 r8 d8 c4 r8 c8 |
    f8 r8 c8 r8 e8 a,8 b,8 cis8 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 a,2 |

    d4 a,4 g,4 d4 |
    g,4 bes,4 d4 a,4 |
    bes,4 g,4 a,4 a,4 |
    d4 r4 a2 |
}

pianoleftuppernotes = {
    \key f \major
    \time 4/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianorightnotesmidi = {
    \preintro
    <<
        { \pianorightuppernotes \pianorightuppernotes }
        { \pianorightlowernotes \pianorightlowernotes }
    >>
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftuppernotes
    \pianoleftuppernotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
}

drumslow = \drummode {
    \time 4/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
    \key f \major
    \time 4/4
    \melody
}
flutenotesmidi = \transpose c c' {
    \preintro
    \melody
    \melody
}

altosaxnotes = \transpose c a {
    \key f \major
    \time 4/4
    \harmony
}
altosaxnotesmidi = \transpose c a {
    \preintro
    \harmony
    \harmony
}

tenorsaxnotes = \transpose c d {
    \key f \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d {
    \preintro
    \harmony
    \harmony
}
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key f \major
    \time 4/4
    \melody
}
violinnotesmidi = { \preintro \violinnotes }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \preintro \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key f \major
    \time 4/4
    \clef bass
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

combinenotes = <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

altocombinenotes = \transpose c' a <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

tenorcombinenotes = \transpose c d <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% put the instrument Voices into staves for printing and for
% midi

combinestaff = \context Staff = "combinestaff" <<
    \clef violin
    \bandm
    \new Voice << \combinenotes >>
>>

altocombinestaff = \context Staff = "altocombinestaff" <<
    \clef violin
    \bandm
    \new Voice <<  \altocombinenotes >>
>>

tenorcombinestaff = \context Staff = "tenorcombinestaff" <<
    \clef violin
    \bandm
    \new Voice << \tenorcombinenotes >>
>>

tenorharmony = \transpose c' bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d1:min | d1:min | d1:min | d1:min |
}

previewnotes = {
    \key f \major
    \time 4/4
    \tempo \tempostring
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |
}

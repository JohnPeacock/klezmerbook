\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 18 October 2003
%
% History:
%    18 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

bandmsectiona = {
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 | \breakAeit
    s1 | \breakAnin
    s1 | \breakAten
    s1 | \breakAelv
    s1 | \breakAtwl
    s1 | \breakAtht
    s1 | \breakAfrt
    s1 | \breakAfft
    s1 | \breakAsxt
    s1 | \breakAsvt
    s1 | \breakAett
    s1 | \breakAnnt
    s1 | \breakAtwy
    s1 | \breakAtwnone
    s1 | \breakAtwntwo
    s1 | \breakAtwntre
    s1 | \breakAtwnfor
    s1 | \breakA
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmsectiona
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
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__ ul'- yish- re lev sim- cha.__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__ ul'- yish- re lev sim- cha.__
    La la la la la la la la la, la la la la la la la la la.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

melody = {
    \key g \major
    \melodysectiona
}

melodymidi = {
    \preintro
    \melodysectiona
}

%--------------------------------------------------

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \key g \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
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
    s1 |
}

harmony = {
    \time  4/4
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
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
    s1 |
}

counter = {
    \time  4/4
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key g \major
    \time 4/4
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key g \major
    \time 4/4
    \clarinetsectiona
}

clarinetnotesmidi = \transpose c d' {
    \key g \major
    \time 4/4
    \preintro
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

trumpetnotes = \transpose c d {
    \key g \major
    \time 4/4
    \trumpetsectiona
}

trumpetnotesmidi = \transpose c d {
    \key g \major
    \time 4/4
    \preintro
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
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
    s1 |
}

trombonenotes = \transpose c c, {
    \trombonesectiona
}
trombonenotesmidi = {
    \preintro
    \trombonesectiona
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
    s1 |
}

guitarnotes = {
    \time  4/4
    \key g \major
    \guitarsectiona
}

guitarnotesmidi = {
    \time  4/4
    \key g \major
    \preintro
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 d4 | % e2:min c4 d4 |
    e2 c4 a,4 | % e2:min c4 a4 |

    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e2 r2 | % e1:min |

    g,4 g,4 d4 d4 | % g2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    e,2 r2 | % e1:min |

    g,4 g,4 d4 d4 | % g2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    e2 r2 | % e1:min |

    g2 fis2 | % g2 d2 |
    e2 d2  | % c2 d2 |
    e2 fis2 | % c2 d2 |
    e4 b,4 e4 r4 | % e1:min |

    g2 fis2 | % g2 d2 |
    e2 d2  | % c2 d2 |
    e2 fis2 | % c2 d2 |
    e4 b,4 e4 r4 | % e2:min c4 a4 |
    e,2 r2 | % e1:min |
}

bassline = {
    \time  4/4
    \key g \major
    \basssectiona
}

basslinemidi = {
    \time  4/4
    \key g \major
    \preintro
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    e2:min c4 a4 |
    e2:min c4 a4 |
    e2:min c4 d4 |
    e2:min c4 a4 |

    e2:min c4 a4 |
    e2:min c4 a4 |
    e2:min c4 a4 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e2:min c4 a4 |
    e1:min |
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
}

scorechordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
}

guitarchordletters = {
    \chordletterssectiona
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

pianorightuppernotes = {
    \key g \major
    \time 4/4
}

pianorightlowernotes = {
    \key g \major
    \time 4/4
}

pianoleftuppernotes = {
    \key g \major
    \time 4/4
}

pianorightnotesmidi = {
    \preintro
    <<
        { \pianorightuppernotes }
        { \pianorightlowernotes }
    >>
}

pianoleftnotesmidi = {
    \preintro
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

flutenotes = \transpose c c' { \melody }
flutenotesmidi = { \preintro \flutenotes }

altosaxnotes = \transpose c a { \melody }
altosaxnotesmidi = { \preintro \altosaxnotes }

tenorsaxnotes = \transpose c d' {
    \key g \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = { \preintro \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = { \melody }
violinnotesmidi = { \preintro \violinnotes }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \preintro \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
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
    e2:min c4 a4 |
    e2:min c4 a4 |
    e2:min c4 d4 |
    e2:min c4 a4 |
}

previewnotes = {
    \key g \major
    \time 4/4
    \tempo \tempostring
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |
}

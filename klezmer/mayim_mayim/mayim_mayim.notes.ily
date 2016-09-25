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
% Creation: 22 October 2003
%
% History:
%    22 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

bandmsectiona = {
    \grace { s8 }
    s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor

    s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 | \breakAeit
    \bar "||"
    s2 | \breakAnin
    s2 | \breakAten
    s2 | \breakAelv
    s2 | \breakAtwl

    s2 | \breakAtht
    s2 | \breakAfrt
    s2 | \breakAfft
    s2 | \breakAsxt
    \bar "||"
    s2 | \breakAsvt
    s2 | \breakAett

    s2 | \breakAnnt
    s2 | \breakAtwy
    s2 | \breakAtwnone
    s2 | \breakAtwntwo

    s2 | \breakAtwntre
    s2 | \breakAtwnfor
    s2 | \breakAtwnfiv
    s2 | \breakA
}

bandmNV = {
    \tempo \tempostring
    \bandmsectiona
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 | }

metronome = \context Voice = "metronome" {
    \preintro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    U'shav- tem ma- yim b'- sa- son __ mi- may'- nei ha- y'- shu- ah.
    U'shav- tem ma- yim b'- sa- son __ mi- may'- nei ha- y'- shu- ah.
    Ma- yim, ma- yim, ma- yim, ma- yim, hoi, ma- yim b'- sa- son!
    Ma- yim, ma- yim, ma- yim, ma- yim, hoi, ma- yim b'- sa- son!
    Hey! Hey! Hey! Hey!
    Ma- yim, ma- yim, ma- yim, ma- yim, ma- yim, ma- yim b'- sa- son!
    Ma- yim, ma- yim, ma- yim, ma- yim, ma- yim, ma- yim b'- sa- son!
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

melody = {
    \key f \major
    \time 2/4
    \melodysectiona
}

melodymidi = {
    \preintro
    \melodysectiona
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
    \new Voice { \key f \major \time 2/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

harmony = {
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

counter = {
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key f \major
    \time 2/4
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key f \major
    \time 2/4
    \clarinetsectiona
}

clarinetnotesmidi = \transpose c d' {
    \key f \major
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

trumpetnotes = \transpose c d {
    \key f \major
    \time 2/4
    \trumpetsectiona
}

trumpetnotesmidi = \transpose c d {
    \key f \major
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

trombonenotes = \transpose c c, {
    \trombonesectiona
}
trombonenotesmidi = {
    \preintro
    \trombonesectiona
    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotes = {
    \time 2/4
    \key f \major
    \guitarsectiona
}

guitarnotesmidi = {
    \time 2/4
    \key f \major
    \preintro
    \guitarsectiona
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    \grace { s8 } % \grace { s8 }
    d4 a,4 | % d2:min |
    d4 a,4 | % d2:min |
    c4 f,4 | % f2 |
    a,4 cis4 | % a2 |

    d4 a,4 | % d2:min |
    d4 a,4 | % d2:min |
    d4 g,4 | % g2:min |
    a,4 d4 | % a4:min d4:min |

    bes,4 bes,4 | % bes2 |
    bes,4 bes,4 | % bes2 |
    bes,4 f,4 | % bes4 f4 |
    f,4 bes,4 | % f4 bes4 |

    bes,4 bes,4 | % bes2 |
    bes,4 bes,4 | % bes2 |
    bes,4 f,4 | % bes4 f4 |
    a,4 e4 | % a2:min |

    c4 c4 | % c2 |
    c4 c4 | % c2 |

    c4 g,4 | % c2 |
    c4 g,4 | % c2 |
    d4 a,4 | % d2:min |
    d4 cis4 | % d4:min c4 |

    c4 g,4 | % c2 |
    c4 g,4 | % c2 |
    d4 a,4 | % d2:min |
    a,4 d4 | % a4:7 d4:min |
}

bassline = {
    \time 2/4
    \key f \major
    \basssectiona
}

basslinemidi = {
    \time 2/4
    \key f \major
    \preintro
    \basssectiona
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \grace { s8 }
    d2:min |
    d2:min |
    f2 |
    a2 |

    d2:min |
    d2:min |
    g2:min |
    a4:min d4:min |

    bes2 |
    bes2 |
    bes4 f4 |
    f4 bes4 |

    bes2 |
    bes2 |
    bes4 f4 |
    a2:min |

    c2 |
    c2 |

    c2 |
    c2 |
    d2:min |
    d4:min c4 |

    c2 |
    c2 |
    d2:min |
    a4:7 d4:min |
}

chordletters = \chordmode {
    \chordletterssectiona
}

scorechordletters = \chordmode {
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
    \key f \major
    \time 2/4
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |
}

pianorightlowernotes = {
    \key f \major
    \time 2/4
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |
}

pianoleftuppernotes = {
    \key f \major
    \time 2/4
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |
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
    \time 2/4
    \stemUp
    \dynamicUp
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 }
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
    \key f \major
    \time 2/4
    \melody
}
flutenotesmidi = { \melodymidi }

altosaxnotes = \transpose c a {
    \key f \major
    \time 2/4
    \melody
}
altosaxnotesmidi = { \melodymidi }

tenorsaxnotes = \transpose c d' {
    \key f \major
    \time 2/4
    \harmony
}
tenorsaxnotesmidi = { \preintro \harmony \harmony }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key f \major
    \time 2/4
    \melody
}
violinnotesmidi = { \melodymidi }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key f \major
    \time 2/4
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
    \grace { s8 }
    d2:min |
    d2:min |
    f2 |
    a2 |
}

previewnotes = {
    \key f \major
    \time 2/4
    \tempo \tempostring
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |
}

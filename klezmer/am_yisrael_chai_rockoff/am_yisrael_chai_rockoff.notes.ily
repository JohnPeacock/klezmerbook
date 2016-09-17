\version "2.18.0"

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
    \markA \positionA
    \repeat volta 2 {
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 | \breakAfor
        s1 | \breakAfiv
        s1 | \breakAsix
    }
    \alternative {
        { s1 | \breakAsev s1 | \breakAeit }
        { s1 | \breakAnin s1 | }
    }
    \breakA
    \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
        s1 | \breakBfor
        s1 | \breakBfiv
        s1 | \breakBsix
        s1 | \breakBsev
        s1 |
    }
    \breakB
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

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
    Am Yis- ra- el chai, am Yis- ra- el chai, am Yis- ra- el __ chai!
    Am Yis- ra- el chai, am Yis- ra- el chai, am Yis- ra- el __ chai! am Yis- ra- el __ chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu chai!
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

melodysectionb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

melody = {
    \key c \major
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
    \new Voice { \key c \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

harmonysectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

harmony = {
    \time  4/4
    \harmonysectiona
    \harmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

counter = {
    \time  4/4
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key c \major
    \time 4/4
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key c \major
    \time 4/4
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = \transpose c d' {
    \key c \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

trumpetnotes = \transpose c d {
    \key c \major
    \time 4/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = \transpose c d {
    \key c \major
    \time 4/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

trombonenotes = \transpose c c, {
    \trombonesectiona
    \trombonesectionb
}
trombonenotesmidi = {
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarnotes = {
    \time  4/4
    \key c \major
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi = {
    \time  4/4
    \key c \major
    \preintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    \repeat volta 2 {
        c4 d4 e4 g4 | % c
        c4 d4 e4 g4 | % c
        c4 d4 e4 f4 | % c
        d2. r4 | % g

        d4 e4 f4 a4 | % g
        d4 e4 f4 a4 | % g
    }
    \alternative {
        {
            d4 e4 f4 g4 | % g
            e2. r4 | % c
        }
        {
            g4 g4 a4 b4 | % g
            c'2. r4 | % c
        }
    }
}

basssectionb = {
    \repeat volta 2 {
        c4 c4 c4 c4 | %c2 c2:aug
        c4 a,4 f,2 | % f1
        b,4 b,4 b,4 b,4 | % g1:7
        b,4 a,4 g,2 | % g2:7 c2

        c4 c4 c4 c4 | %c2 c2:aug
        c4 a,4 f,2 | % f1
        a,4 b,4 c4 g,4 | % f2 g2:7
        c1 | % c1
    }
}

bassline = {
    \time  4/4
    \key c \major
    \basssectiona
    \basssectionb
}

basslinemidi = {
    \time  4/4
    \key c \major
    \preintro
    \basssectiona
    \basssectionb
    \basssectiona
    \basssectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        c1 |
        c1 |
        c1 |
        g1 |
        g1 |
        g1 |
    }
    \alternative {
        { g1 | c1 | }
        { g1 | c1 | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        c2 c2:aug |
        f1 |
        g1:7 |
        g2:7 c2 |

        c2 c2:aug |
        f1 |
        f2 g2:7 |
        c1 |
    }
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

clarinetchordletters = \transpose bes, c \scorechordletters
tenorsaxchordletters = \transpose bes, c \scorechordletters
trumpetchordletters = \transpose bes, c \scorechordletters
altosaxchordletters = \transpose ees c \scorechordletters
guitarchordletters = \chordletters
flutechordletters = \scorechordletters
violinchordletters = \scorechordletters
trombonechordletters = \scorechordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotes = {
    \key c \major
    \time 4/4
}

pianorightlowernotes = {
    \key c \major
    \time 4/4
}

pianoleftuppernotes = {
    \key c \major
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

flutenotes = \transpose c c' {
    \key c \major
    \time 4/4
    \melody
}
flutenotesmidi = { \preintro \flutenotes }

altosaxnotes = \transpose c a {
    \key c \major
    \time 4/4
    \melody
}
altosaxnotesmidi = { \preintro \altosaxnotes }

tenorsaxnotes = \transpose c d' {
    \key c \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = { \preintro \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key c \major
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
    \key c \major
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
    \repeat volta 2 { c1:min | bes1 | bes2. g4:7 | c1:min | }
}

previewnotes = {
    \key c \major
    \time 4/4
    \tempo \tempostring
    \markA \positionA
    \bar ".|:"
    c'8 c'4 d'8 e'4 g'4 |
    c'8 c'4 d'8 e'4 g'4 |
    c'8 c'4 d'8 e'4 ( f'4 ) |
    d'2. r4 |
}

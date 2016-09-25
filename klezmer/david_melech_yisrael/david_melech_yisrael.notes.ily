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
% Creation: 7 October 2003
%
% History:
%    7 October 2008 - Dick Schoeller
%        o Creation
%
%    18 October 2008 - Dick Schoeller
%        o Preview
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
    s1 |
    \breakA
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
    \bandmsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam. __
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam.
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

melody = {
    \key c \major
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
    \new Voice { \key c \major \time 4/4 \melody }
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
}

harmony = {
    \time  4/4
    \harmonysectiona
}

harmonymidi = {
    \time  4/4
    \preintro
    \harmonysectiona
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
}

counter = {
    \time  4/4
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key c \major
    \time 4/4
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key c \major
    \time 4/4
    \clarinetsectiona
}

clarinetnotesmidi = \transpose c d' {
    \key c \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

trumpetnotes = \transpose c d {
    \key c \major
    \time 4/4
    \trumpetsectiona
}

trumpetnotesmidi = \transpose c d {
    \key c \major
    \time 4/4
    \preintro
    \trumpetsectiona
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
    \key c \major
    \guitarsectiona
}

guitarnotesmidi = {
    \time  4/4
    \key c \major
    \preintro
    \guitarsectiona
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    c4 g,4 c4 g,4 |
    c4 g,4 c4 g,4 |
    c4 g,4 c4 f,4 |
    d4 g,4 d4 g,4 |
    c4 b,4 c4 b,4 |
    c4 f,4 g,4 c4 |
    c4 b,4 c4 b,4 |
    c4 f,4 g,4 b,4 |
}

bassline = {
    \time  4/4
    \key c \major
    \basssectiona
}

basslinemidi = {
    \time  4/4
    \key c \major
    \preintro
    \basssectiona
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    c1 | c1 | c2 f2 | g1 |
    c4 g4 c4 g4 | c4 f4 g4:7 c4 | c4 g4 c4 g4 c4 f4 g2:7 |
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
    \key c \major
    \time 4/4
    \melody
}
flutenotesmidi = \transpose c c' { \melodymidi }

altosaxnotes = \transpose c a {
    \key c \major
    \time 4/4
    \melody
}
altosaxnotesmidi = \transpose c a { \harmonymidi }

tenorsaxnotes = \transpose c d' {
    \key c \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d' { \harmonymidi }
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
violinnotesmidi = { \melodymidi }

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
    c1 | c1 | c2 f2 | g1 |
}

previewnotes = {
    \key c \major
    \time 4/4
    \tempo \tempostring
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |
}

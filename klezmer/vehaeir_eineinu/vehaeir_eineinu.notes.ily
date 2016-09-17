\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = {
    \partial 8 s8 |
}

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s2 s4 s8 \markFN \positionFN \bar "|." s8 | }
    }
    \breakA
}

bandmsectionb = {
    \markB \positionB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \markDCAF \positionDCAF
    \bar "||"
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronomeintro = { s1 | }

metronome = \context Voice = "metronome" {
    \time  4/4
    \preintro
    \tempo 4 = 84
    \metronomeintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    V'- ha- eir ein- nei- nu b'- To- ra- te- cha
    v'- da- beik li- bei- nu b'- mitz- vo- te- cha
    v'- ya- cheid l- va- vei- nu
    l'- a- ha- vah ul'- yi- rah
    et sh'- me- cha.  V'-
    et sh'- me- cha.  V'-

    lo __ nei- vosh v'- lo __ ni- ka- leim
    v'- lo __ ni- ka- sheil __ l'- o- lam va- ed.  V'-
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
    \partial 8 c'8 |
}

melodymidiintro = {
    s2 s4 s8 c'8 |
}

melodysectiona = {
    \repeat volta 2 {
        c'8 ( g8 ) ees'8. ees'16 ees'8 d'4 c'8 |
        c'8 ( g8 ) ees'4 ees'8 d'4 c'8 |
        c'8 ( d'8 ) ees'8. ees'16 ees'8 ( f'8 ) g'8. g'16 |
        f'8 g'8 aes'8 ( g'8 ) f'4 r4 |

        f'8 ( g'8 aes'4 ) g'8 f'4 ees'8 |
        ees'8 ( f'8 g'4 ) f'8 ees'4 c'8 |
        c'8 g8 c'4 c'8 d'8 ees'4 |
    }
    \alternative {
        { d'8 c'8 b8 ( d'8 ) c'4 r8 c'8 | }
        { d'8 c'8 b8 ( d'8 ) c'4 r8 g'8 | }
    }
}

melodysectionb = {
    g'4 ( c''4 b'4 ) c''4 |
    aes'2. r8 aes'8 |
    aes'4 ( c''4 ) b'4 c''4 |
    g'2. r8 g'8 |

    g'4 ( c''4 ) b'4 c''4 |
    d''4 ( c''4 aes'2 ) |
    c''4 d''4 c''4 aes'4 |
    g'2. r8 c'8 |
}

melody = {
    \key ees \major
    \melodyintro
    \melodysectiona
    \melodysectionb
}

melodymidi = {
    \preintro
    \melodymidiintro
    \melodysectiona
    \melodysectionb
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
    \new Voice { \key ees \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyintro = {
    \partial 8 s8 |
}

harmonymidiintro = {
    s1 |
}

harmonysectiona = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s2 s4 s8 s8 | }
    }
}

harmonysectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

harmony = {
    \time  4/4
    \harmonyintro
    \harmonysectiona
    \harmonysectionb
}

harmonymidi = {
    \time  4/4
    \preintro
    \harmonymidiintro
    \harmonysectiona
    \harmonysectionb
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    \partial 8 s8 |
}

countermidiintro = {
    s1 |
}

countersectiona = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s2 s4 s8 s8 | }
    }
}

countersectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

counter = {
    \time  4/4
    \counterintro
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key ees \major
    \time 4/4
    \melodyintro
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \melodyintro
}

clarinetmidiintro = {
    \melodymidiintro
}

clarinetsectiona = {
    \melodysectiona
}

clarinetsectionb = {
    \melodysectionb
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key ees \major
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = \transpose c d' {
    \key ees \major
    \time 4/4
    \preintro
    \clarinetmidiintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \melodyintro
}

trumpetmidiintro = {
    \melodymidiintro
}

trumpetsectiona = {
    \melodysectiona
}

trumpetsectionb = {
    \melodysectionb
}

trumpetnotes = \transpose c d {
    \key ees \major
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = \transpose c d {
    \key ees \major
    \time 4/4
    \preintro
    \trumpetmidiintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    \counterintro
}

trombonemidiintro = {
    \countermidiintro
}

trombonesectiona = {
    \countersectiona
}

trombonesectionb = {
    \countersectionb
}

trombonenotes = \transpose c c, {
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
}
trombonenotesmidi = {
    \preintro
    \trombonemidiintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro = {
    \partial 8 s8 |
}

guitarmidiintro = {
    s1 |
}

guitarsectiona = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s2 s4 s8 s8 | }
    }
}

guitarsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarnotes = {
    \time  4/4
    \key ees \major
    \guitarintro
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi = {
    \time  4/4
    \key ees \major
    \preintro
    \guitarmidiintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    \partial 8 s8 |
}

bassmidiintro = {
    s1 |
}

basssectiona = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s2 s4 s8 s8 | }
    }
}

basssectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

bassline = {
    \time  4/4
    \key ees \major
    \bassintro
    \basssectiona
    \basssectionb
}

basslinemidi = {
    \time  4/4
    \key ees \major
    \preintro
    \bassmidiintro
    \basssectiona
    \basssectionb
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 8 s8 |
}

chordlettersmidiintro = \chordmode {
    s1 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        c2:min f2:min |
        c2:min g2:7 |
        aes2 ees2 |
        f1:min |

        f2:min7 bes2:7 | ees2 aes2 | c2:min f2:min |
    }
    \alternative {
        { g2:7 c2:min | }
        { g2:7 c2:min | }
    }
}

chordletterssectionb = \chordmode {
    c1:min | f1:min | bes1:7 | ees2 g2:7 |
    c1:min | f1:min | d1:min7-5 | g2.:7 s8 c8:min |
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

scorechordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

guitarchordletters = {
    \chordlettersintro
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

pianorightuppernotes = {
    \key ees \major
    \time 4/4
}

pianorightlowernotes = {
    \key ees \major
    \time 4/4
}

pianoleftuppernotes = {
    \key ees \major
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
    \key ees \major
    \time 4/4
    \melody
}
flutenotesmidi = \transpose c c' {
    \melodymidi
}

altosaxnotes = \transpose c a {
    \key ees \major
    \time 4/4
    \melody
}
altosaxnotesmidi = \transpose c a {
    \time 4/4
    \melodymidi
}

tenorsaxnotes = \transpose c d' {
    \key ees \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d' {
    \time 4/4
    \harmonymidi
}
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key ees \major
    \time 4/4
    \melody
}
violinnotesmidi = {
    \time 4/4
    \melodymidi
}

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key ees \major
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
    \partial 8 s8 |
    \bar ".|:"
    c2:min f2:min |
    c2:min g2:7 |
    aes2 ees2 |
    f1:min |
}

previewnotes = {
    \key ees \major
    \time 4/4
    \tempo \tempostring
    \markA \positionA
    \bar ".|:"
    \partial 8 c'8 |
    c'8 ( g8 ) ees'8. ees'16 ees'8 d'4 c'8 |
    c'8 ( g8 ) ees'4 ees'8 d'4 c'8 |
    c'8 ( d'8 ) ees'8. ees'16 ees'8 ( f'8 ) g'8. g'16 |
    f'8 g'8 aes'8 ( g'8 ) f'4 r4 |
}

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
    \repeat volta 2 {
        \markA \positionA
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 | \breakAfor
        s1 | \breakAfiv
        s1 | \breakAsix
        s1 | \breakAsev
    }
    \alternative {
        { s1 | \breakAeit \markFN \positionFN }
        { s1 | \breakA }
    }
    \bar ".|:-||"
}

bandmsectionb = {
    \repeat volta 2 {
        \markB \positionB
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
    }
    \alternative {
        { s1 | \breakBfor }
        { s1 | \breakB }
    }
    \markDCAF \positionDCAF
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
    Yis- me- chu ha- sha- ma- yim,
    yis- me- chu ha- sha- ma- yim,
    yis- me- chu ha- sha- ma- yim, __
    ve ta- geil __ ha- a- retz. (a-) retz.

    Yir- am ha- yam,
    yir- am ha- yam,
    yir- am ha- yam __ u- me- lo- o.  lo- o.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

melodysectionb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
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
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

harmonysectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
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
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
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
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
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
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
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

trombonesectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
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
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
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
    \repeat volta 2 {
        a,4 d4 a,4 cis4 | % d2:min a2:7
        a,4 d4 a,4 d4 | % d1:min
        a,4 d4 g,4 c4 | % d2:min c2:7
        f,4 c4 f,4 r4 | % f2 s2

        f,4 c4 d4 a,4 | % f2 d2:7
        g,4 bes,4 b,4 c4 | % g1:min
        cis4 a,4 e4 a,4 | % a1:7
    }
    \alternative {
        { cis4 a,4 a,4 r4 | } % a1:7
        { d4 a,4 d4 r4 | } % d1:min
    }
}

basssectionb = {
    \repeat volta 2 {
        bes,4 c4 d4 r4 | % bes4 c4 d4:min s4
        bes,4 c4 d4 r4 | % bes4 c4 d4:min s4
        bes,4 c4 d4 g,4 | % g1:min7
    }
    \alternative {
        {
            a,4 cis4 d4 a,4 | % a2:7 d2:min |
        }
        {
            a,4 cis4 d4 r4 | % a2:7 d2:min |
        }
    }
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
    \repeat volta 2 {
        d2:min a2:7 |
        d1:min |
        d2:min c2:7 |
        f2 s2 |

        f2 d2:7 |
        g1:min |
        a1:7 |
    }
    \alternative {
        { a1:7 | }
        { d1:min | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        bes4 c4 d4:min s4 |
        bes4 c4 d4:min s4 |
        g1:min7 |
    }
    \alternative {
        { a2:7 d2:min | }
        { a2:7 d2:min | }
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

pianorightuppernotes = {
    \key f \major
    \time 4/4
}

pianorightlowernotes = {
    \key f \major
    \time 4/4
}

pianoleftuppernotes = {
    \key f \major
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
    \key f \major
    \time 4/4
    \melody
}
flutenotesmidi = { \preintro \flutenotes }

altosaxnotes = \transpose c a {
    \key f \major
    \time 4/4
    \melody
}
altosaxnotesmidi = { \preintro \altosaxnotes }

tenorsaxnotes = \transpose c d' {
    \key f \major
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
    d2:min a2:7 |
    d1:min |
    d2:min c2:7 |
    f2 s2 |
}

previewnotes = {
    \key f \major
    \time 4/4
    \tempo \tempostring
    \markA \positionA
    \bar ".|:"
    d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
    d'2. r4 |
    f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
    f'2. r4 |
}

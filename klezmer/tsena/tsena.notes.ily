\version "2.18.0"

melody =  { }
harmony =  { }
counter =  { }

bandmintro =  {
    \tempo \tempostring
    s1*4 |
    \bar ".|:-||" \breakIN
}

bandmsectiona =  {
    \markA \positionA
    \repeat volta 2 {
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 |
    }
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
    }
    \alternative {
        {
            s1 | \breakBfor
        }
        {
            s1 |
        }
    }
    \bar ".|:-||" \breakB
}

bandmsectionc =  {
    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone
        s1 | \breakCtwo
        s1 | \breakCtre
    }
    \alternative {
        {
            s1 | \breakCfor
        }
        {
            s1 | \breakCfiv
            s1 |
        }
    }
}

bandmNV =  {
    \time  4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro =  { s1 | }
metronomeintro =  { s1 | s1 | s1 | s1 | }
metronomesectiona =  { \repeat volta 2 { s1 | s1 | s1 | s1 | } }

metronomesectionb =  {
    \repeat volta 2 { s1 | s1 | s1 | }
    \alternative { { s1 | } { s1 | } }
}

metronomesectionc =  {
    \repeat volta 2 { s1 | s1 | s1 | }
    \alternative { { s1 | } { s1 | s1 } }
}

metronome =  \context Voice = "metronome" {
    \time  4/4
    \preintro
    \tempo 4 = 130
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
   tse- na tse- na tse- na tse- na ha ba- not  ur'- e- na cha- ya- lim __ ba- mos sha- va
   tse- na tse- na ha ba- not ur'- e- na cha- ya- lim ba- mo- sha va va
   tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na tse- na
}
textlb = \lyricmode {
   al na al na al na al na al na tit- cha- be- na mi- ben cha- yil ish tsa- va
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% melodyintro =  { r1 | r1 | r1 | r1 | }

melodysectiona =  {
    \repeat volta 2 {
        c'8 c'8 e'8 g'8 f'8 e'8 d'8 c'8 |
        f'8. f'16 f'8 f'8 f'8 e'8 d'8 c'8 |
        g'2 ~ g'8 e'8 f'8 d'8 |
        c'2. r4 |
    }
}

melodysectionb =  {
    \repeat volta 2 {
        c''4. b'8 a'4 g'4 |
        a'8. a'16 a'8 a'8 a'8 a'4. |
        b'4 b'4 b'8 g'8 a'8 b'8 |
    }
    \alternative
    {
        { c''4 ( b'4 a'4 g'4 ) | }
        { c''2. r4 | }
    }
}

melodysectionc =  {
    \repeat volta 2 {
        c''4 c''4 c''4 c''4 |
        r8 d''4 c''8 b'8 c''8 b'8 a'8 |
        g'4 f'4 e'4 d'4 |
    }
    \alternative
    {
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | }
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | c''8 c''8 r4 r2 }
    }
}

melody =  {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

melodymidi =  {
    \preintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%--------------------------------------------------

melodystaff =  \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \key c \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% harmonyintro =  { r1 | r1 | r1 | r1 | }

harmonysectiona =  {
    \repeat volta 2 {
        c'8 e8 e'8 c'8 f'8 bes8 d'8  e8 |
        f'8 a16 f'16 f'8 a8 f'8 a8 d'8 a8 |
        r8 b8 r8 c'8 r8 e'8 f'8 f8 |
        r8 e8 r8 f8 r8 e8 r8 d8 |
    }
}

harmonysectionb =  {
    \repeat volta 2 {
        r8 c'8 r8 b8 a'8 a8 g'8 g8 |
        a'8 c'16 a'16 a'8 c'8 a'8 c'8 ( a'8 ) c'8 |
        r8 d'8 b'8 d'8 b'8 d'8 fis'8 f'8 |
    }
    \alternative {
        { r8 e'8 r8 e'8 r8 c'8 g'8 b8 | }
        { r8 e'8 r8 f'8 e'16 c'16 d'16 e'16 f'16 g'16 a'16 b'16 | }
    }
}

harmonysectionc =  {
    \repeat volta 2 {
        c'8 e'8 c'8 e'8 c''8 e'8 c''8 c'8 |
        r8 d'4 f'8 b'8 c''8 ees'8 a'8 |
        r8 a8 r8 a8 r8 g8 d'8 f8 |
    }
    \alternative {
        {
            c'8 e8 e'8 g8
            g'8 c'8 b'8 b8 |
        }
        {
            c'8 e8 e'8 g8 g'8 c'8 b'8 b8 |
            c'8 c'8 r16 \startOctVA g''16 ( a''16 b''16 c'''4-. ) \stopOctVA r4 |
        }
    }
}

harmony =  {
    \time  4/4
    \harmonyintro
    \harmonysectiona
    \harmonysectionb
    \harmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% counterintro =  { r1 | r1 | r1 | r1 | }

countersectiona =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

countersectionb =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }
        {
            s1 |
        }
    }
}

countersectionc =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }
        {
            s1 |
            s1
        }
    }
}

counter =  {
    \time  4/4
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \key c \major
    \time 4/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% clarinetintro =  { r1 | r1 | r1 | r1 | }

clarinetsectiona =  {
    \repeat volta 2 {
        c'8 c'8 e'8 g'8 f'8 e'8 d'8 c'8 |
        f'8. f'16 f'8 f'8 f'8 e'8 d'8 c'8 |
        g'2 ~ g'8 e'8 f'8 d'8 |
        c'2. r4 |
    }
}

clarinetsectionb =  {
    \repeat volta 2 {
        c''4. b'8 a'4 g'4 |
        a'8. a'16 a'8 a'8 a'8 a'4. |
        b'4 b'4 b'8 g'8 a'8 b'8
    }
    \alternative
    {
        { c''4 ( b'4 a'4 g'4 ) | }
        { c''2. r4 | }
    }
}

clarinetsectionc =  {
    \repeat volta 2 {
        c''4 c''4 c''4 c''4 |
        r8 d''4 c''8 b'8 c''8 b'8 a'8 |
        g'4 f'4 e'4 d'4 |
    }
    \alternative
    {
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | }
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | c''8 c''8 r4 r2 }
    }
}

%-------------------------------------------------

clarinetnotes =  \transpose c d' {
    \key c \major
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

clarinetnotesmidi =  \transpose c d' {
    \key c \major
    \time 4/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% trumpetintro =  { r1 | r1 | r1 | r1 | }

trumpetsectiona =  {
    \repeat volta 2 {
        c'8 c'8 e'8 g'8 f'8 e'8 d'8 c'8 |
        f'8. f'16 f'8 f'8 f'8 e'8 d'8 c'8 |
        g'2 ~ g'8 e'8 f'8 d'8 |
        c'2. r4 |
    }
}

trumpetsectionb =  {
    \repeat volta 2 {
        c''4. b'8 a'4 g'4 |
        a'8. a'16 a'8 a'8 a'8 a'4. |
        b'4 b'4 b'8 g'8 a'8 b'8
    }
    \alternative
    {
        { c''4 ( b'4 a'4 g'4 ) | }
        { c''2. r4 | }
    }
}

trumpetsectionc =  {
    \repeat volta 2 {
        c''4 c''4 c''4 c''4 |
        r8 d''4 c''8 b'8 c''8 b'8 a'8 |
        g'4 f'4 e'4 d'4 |
    }
    \alternative
    {
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | }
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | c''8 c''8 r4 r2 }
    }
}

trumpetnotes =  \transpose c d {
    \key c \major
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

trumpetnotesmidi =  \transpose c d {
    \key c \major
    \time 4/4
    \preintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% melodyintro =  { r1 | r1 | r1 | r1 | }

trombonesectiona =  {
    \repeat volta 2 {
        c''4. b'8 a'4 g'4 |
        a'8. a'16 a'8 a'8 a'8 a'4. |
        b'4 b'4 b'8 g'8 a'8 b'8 |
        c'2. r4 |
    }
}

trombonesectionb =  {
    \repeat volta 2 {
        c''4 c''4 c''4 c''4 |
        r8 d''4 c''8 b'8 c''8 b'8 a'8 |
        g'4 f'4 e'4 d'4 |
    }
    \alternative
    {
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | }
        { c'8 d'8 e'8 f'8 g'8 a'8 b'8 g'8 | }
    }
}

trombonesectionc =  {
    \repeat volta 2 {
        c'8 c'8 e'8 g'8 f'8 e'8 d'8 c'8 |
        f'8. f'16 f'8 f'8 f'8 e'8 d'8 c'8 |
        g'2 ~ g'8 e'8 f'8 d'8 |
    }
    \alternative
    {
        { c''4 ( b'4 a'4 g'4 ) | }
        { c''2. r4 | c''8 c''8 r4 r2 }
    }
}

trombonenotes = \transpose c c, {
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}
trombonenotesmidi = { \preintro \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro =  {
    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectiona =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarsectionb =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }
        {
            s1 |
        }
    }
}

guitarsectionc =  {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }
        {
            s1 |
            s1
        }
    }
}

guitarnotes =  {
    \time  4/4
    \key c \major
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarnotesmidi =  {
    \time  4/4
    \key c \major
    \preintro
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro =  { R1*4 }
% turn this on if we want to see ambitus in score.
% bassintro =  { r1 | r1 | r1 | r1 | }

basssectiona =  {
    \repeat volta 2 {
        c4 g,4 c4 c4 |
        f,4 c4 d4 a,4 |
        g,4 a,4 b,4 g,4 |
        c4 g,4 c4 g,4 |
    }
}

basssectionb =  {
    \repeat volta 2 {
        c4 g,4 c4 g,4 |
        f4 c4 d4 g,4 |
        g,4 d4 g,4 d8 g,8 |
    }
    \alternative
    {
        {
            c4 e4 f4 g4 |
        }
        {
            c4 g,4 c4 r4 |
        }
    }
}

basssectionc =  {
    \repeat volta 2 {
        c4 g,4 e2 |
        f,4 f4 f,4 fis,4 |
        g,4 d4 g,4 g,4 |
    }
    \alternative
    {
        {
            c4 g,4 d4 g,4 |
        }
        {
            c4 g,4 d4 g,4 |
            c8 c8 r4 c'4 c4
        }
    }
}

bassline =  {
    \time  4/4
    \key c \major
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
}

basslinemidi =  {
    \time  4/4
    \key c \major
    \preintro
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode { c1 | f1 | g1:7 | c1 | }

emptychordsintro = \chordmode { s1*4 | }

chordletterssectiona = \chordmode { \repeat volta 2 { c1 | f1 | g1:7 | c1 | } }

chordletterssectionb = \chordmode {
    \repeat volta 2 { c1 | f1 | g1:7 | }
    \alternative { { c1 | } { \chordChangesOff c1 \chordChangesOn | } }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { c1 | f1 | g1:7 }
    \alternative { { c1 | } { \chordChangesOff c1 \chordChangesOn | c1 | } }
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

scorechordletters = \chordmode {
    \time 4/4
    \bandmintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

guitarchordletters = {
    \time 4/4
    \emptychordsintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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

basschordletters = \chordmode {
    \time 4/4
    \emptychordsintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotes =  {
    \key c \major
    \time 4/4

    \stemDown
    < c'' e'' g'' c''' >4-> < c'' e'' g'' c''' >4 < c'' e'' gis'' c''' >4-> < c'' e'' gis'' c''' >4  |
    r8 < d''( f'' a'' d''' >4-> < c'' c''') >8 < b'( b'' >8 < c'' c''') >8 < b' ees''( fis'' b'' >8  < a' a'') > |
    < g' c'' f'' g'' >4 < f' a' c'' f'' >4 \stemUp < e' e'' >4 < d' f' b' d'' >4 |
    < c' e' g' c'' >2 r4 < d' f' g' b' >4 |

    \repeat volta 2 {
        \stemUp c'8 < e g c' >8 e'8 < c' e' g' >8 f'8 < bes e' >8 d'8  < e bes c' >8 |
        f'8 < a c' >16 f'16 f'8 < a c' f' >8 f'8 < a c' e' >8 d'8 < a c' >8 |
        \stemDown r8 < b f' >8 r8 < c' f' >8 r8 e'8 f'8 < f b d' >8 |
        \stemUp r8 < e g >8 r8 < f a >8 r8 < e g >8 r8 < d f >8 |
    }

    \repeat volta 2 {
        \stemDown r8 < c' e' g' >8 r8 < b e' g' b' >8 \stemUp a'8 < a c' e' >8 g'8 < g c' e' >8 |
        a'8 < c' f' >16 a'16 a'8 < c' f' a' >8 a'8 < c' f' a' >8 ~ a'8 < c' f' >8 |
        \stemDown r8 < d' f' g' >8   b'8[ < d' f' g' >8 ]   b'8[ < d' f' g' >8 < fis' a' >8 < f' b' >8 ] |
    }
    \alternative
    {
        { r8 < e' g' >8 r8 < e' g' >8 r8 < c' f' >8   g'8[ < b f' >8 ] | }
        { r8 < e' g' >8 r8 < f' a' >8 < e' g' >16 c'16 d'16 e'16 f'16 g'16 a'16 b'16 | }
    }

    \repeat volta 2 {
        \stemUp < c' c'' >8[ < e' g' >8 < c' c'' >8 < e' g' >8 ]   c''8[ < e' gis' >8 ]   c''8[ < c' e' gis' >8 ] |
        r8 < d' f' a' d'' >4 < f' a' c'' >8 b'8 c''8 < ees' fis' b' >8 a'8 |
        \stemDown r8 < a c' >8 r8 < a c' >8 r8 < g b >8 \stemUp   d'8[ < f b >8 ] |
    }
    \alternative
    {
        {
            c'8 < e g d' >8 e'8 < g c' f' >8
            g'8 < c' f' a' >8 b'8 < b f' g' >8 |
        }
        {
            c'8 < e g d' >8 e'8 < g c' f' >8
            g'8 < c' f' a' >8 b'8 < b f' g' >8 |
            < c' e' g' c'' >8[ < c' e' g' c'' >8 ]
            r16 \stemDown g''16 [ ( a''16 b''16 ]
            < c'' e'' g'' c''' >4-. ) r4
        }
    }
}

pianorightlowernotes =  {
    \key c \major
    \time 4/4

    s1 s1 s1 |
    s1

    \repeat volta 2 {
        s1 s1
        \stemUp g'2. r4 | c'1
    }

    \repeat volta 2 {
        c''2 r2 | s1
        b'4 r4 r2 |
    }
    \alternative
    {
        { c''4 b'4 a'4 r4 }
        { < c' c'' >2. r4 }
    }

    \repeat volta 2 {
        s1 s1 |
    g'4 f'4 e'4 r4 |
    }
    \alternative
    {
        { s1 }
        { s1 s1 }
    }
}

pianoleftuppernotes =  {
    \key c \major
    \time 4/4

    < c, c >4. < c, c >8 e,4. e,8 |
    f,4 f2 < gis, gis >4 |
    < g, g >2. < g, g >4 |
    c8. c16 b,8 a,8 g,8 f,8 e,8 d,8 |

    \repeat volta 2 {
        c,4 g,4 c4 c,4 |
        f,4 c4 d4 a,4 |
        g,4 a,4 b,4 g,4 |
        c4 g,4 c,4 g,4 |
    }

    \repeat volta 2 {
        < c, c >4 g,4 < c, c >4 g,4 |
        < f, f >4 c4 d4 g,4 |
        g,4 d4 g,4 d8 g,8 |
    }
    \alternative
    {
        {
            < c, c >4 < e, e >4 < f, f >4 g,4 |
        }
        {
            < c, c >4 g,4 < c, c >4 r4 |
        }
    }

    \repeat volta 2 {
        < c, c >4 g,4 < e, e >4 ~ < e, e >4 |
        f,4 f4 f,4 < fis, fis>4 |
        < g, g >4 d4 < g, g >4 g,4 |
    }
    \alternative
    {
        {
            < c, c >4 g,4 < d, d >4 g,4 |
        }
        {
            < c, c >4 g,4 < d, d >4 g,4 |
            < c, c >8 < c, c >8 r4 < c c' >4 < c, c >4
        }
    }
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

flutenotes =  \transpose c c' { \melody }
flutenotesmidi =  { \preintro \flutenotes }

altosaxnotes = \transpose c a {
    \key c \major
    \time 4/4
    \harmony
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

violinnotes =  { \melody }
violinnotesmidi =  { \preintro \violinnotes }

bassnotes =  { \bassline }
bassnotesmidi =  { \basslinemidi }

euphoniumnotes =  { \bassline }
euphoniumnotesmidi =  { \preintro \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

combinenotes =  <<
    { \melody } \\ {  \transpose c' c { \harmony } }
>>

altocombinenotes =  \transpose c' a <<
    { \melody } \\ {  \transpose c' c { \harmony } }
>>

tenorcombinenotes =  \transpose c d <<
    { \melody } \\ {  \transpose c' c { \harmony } }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% put the instrument Voices into staves for printing and for
% midi

combinestaff =  \context Staff = "combinestaff" <<
    \clef violin
    \bandm
    \new Voice << \combinenotes >>
>>

altocombinestaff =  \context Staff = "altocombinestaff" <<
    \clef violin
    \bandm
    \new Voice <<  \altocombinenotes >>
>>

tenorcombinestaff =  \context Staff = "tenorcombinestaff" <<
    \clef violin
    \bandm
    \new Voice << \tenorcombinenotes >>
>>

tenorharmony =  \transpose c' bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \repeat volta 2 {
        c2 c2:7 | f2 d2:7 |
        g1:7 | c1 |
    }
}

previewnotes = \transpose c c' {
    \key c \major
    \time 4/4
    \repeat volta 2 {
        c'8 c'8 e'8 g'8 f'8 e'8 d'8 c'8 |
        f'8. f'16 f'8 f'8 f'8 e'8 d'8 c'8 |
        g'2 ~ g'8 e'8 f'8 d'8 |
        c'2. r4 |
    }
}

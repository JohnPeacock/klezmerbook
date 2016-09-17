\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmsectiona = {
    \markA \positionA
    s1*8 |
    \bar "||"
    \breakA
}

bandmsectionb = {
    \markB \positionB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \bar ".|:-||"
    \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmsectiona
    \tempo "Faster and faster..."
    \bandmsectionb
    \bandmsectionc
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
    \tempo 4 = 100
    \bandmsectiona
    \bandmsectionb
    \tempo 4 = 110
    \bandmsectionc
    \tempo 4 = 120
    \bandmsectionb
    \tempo 4 = 130
    \bandmsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Od yi- sha- ma
    b'- a- rei y'- hu- dah __
    u- v'- chu- tzot __
    Y- ru- sha- la- yim.

    Od yi- sha- ma
    b'- a- rei y'- hu- dah __
    u- v'- chu- tzot __
    u- v'- chu- tzot __
    Y- ru- sha- la- yim.

    Kol __ sa- son v'- kol sim- chah, __
    Kol __ cha- tan v'- kol ka- lah. __

    Kol __ sa- son v'- kol sim- chah, __
    Kol __ cha- tan v'- kol ka- lah.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    c''2. d''8 c''8 |
    b'2. c''8 b'8 |
    a'2. b'8 a'8 |
    e'2 ~ e'8 e'8 d'8 e'8 |

    f'1 ~ |
    f'4 a'4 a'4 a'4 |
    a'1 |
    e'2. r4 |
}

melodysectionb = {
    a8 ( e'8 d'8 e'8 ) f'4 d'4 |
    e'2. ~ e'8 e'8 |
    a8 ( e'8 ) d'8 ( e'8 ) f'4 d'4 |
    e'1 |

    a'8 ( c''8 b'8 ) a'8 c''4 a'4 |
    r8 c''8 ( b'8 ) a'8 g'4 f'4 |
    r8 g'8 f'8 g'8 a'4 ( f'4 ) |
    e'2. r4 |
}

melodysectionc = {
    \repeat volta 2 {
        a'8 ( c''4 ) c''8 c''4 b'8 ( c''8 ) |
        d''4 c''4 c''4 ( b'4 ) |
        e'8 ( b'4 ) b'8 b'4 a'8 ( b'8 ) |
        c''4 b'4 b'4 ( a'4 ) |

        a'8 ( c''4 ) c''8 c''4 b'8 ( c''8 ) |
        d''4 c''4 c''4 ( b'4 ) |
        e'8 ( b'4 ) b'8 b'4 a'8 ( b'8 ) |
        c''4 b'4 a'2 |
    }
}

melody = {
    \key c \major
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

melodymidi = {
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectionb
    \melodysectionc
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
    R1*8 |
}

harmonysectionb = {
    a'4. e'8 a'8. b'32 a'32 g'8 f'8 |
    e'2 ~ e'8 c'8 b8 d'8 |
    a'4. e'8 a'8-\prall g'8 g'8-\prall f'8 |
    e'2 g'2 |

    d''2 c''8 b'8 c''8 cis''8 |
    d''2 e''4 d''4 |
    r8 e'8 d'8 e'8 f'4 a'4 |
    gis'2. r4 |
}

harmonysectionc = {
    \repeat volta 2 {
        c''8 e''4 e''8 e''4 d''8 e''8 |
        f''4 e''4 e''4 d''4 |
        b'8 d''4 d''8 d''4 c''8 d''8 |
        e''4 d''4 d''4 c''4 |

        f'8 a'4 a'8 a'4 gis'8 a'8 |
        b'4. c''8 b'8 a'8 gis'8 f'8 |
        d'8 e'4 gis'8 b'4 c''8 b'8 |
        a'4 gis'4 a'4 r4 |
    }
}

harmony = {
    \time  4/4
    \harmonysectiona
    \harmonysectionb
    \harmonysectionc
}

harmonymidi = {
    \time 4/4
    \preintro
    \harmonysectiona
    \harmonysectionb
    \harmonysectionc
    \harmonysectionb
    \harmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    R1*8 |
}

countersectionb = {
    a4. c'8 d'4. b8 |
    a8 b8 c'8 d'8 e'8 a'8 b'8 gis'8 |
    a'4. c''8 d''4. g'8 |
    c''8 r8 d''8 r8 e''4 \tuplet 3/2 { c''8 d''8 e''8 } |

    f''8 a''8 g''8 f''8 a''4 e''4 |
    r8 a''8 g''8 f''8 e''8 d''8 c''8 b'8 |
    r8 c''8 c''8 g'8 a'8 f'8 a'8 c''8 |
    b'4. e'8 gis'8 f'8 e'8 d'8 |
}

countersectionc = {
    \repeat volta 2 {
        r4 r8 c'8 a'8 g'8 f'8 e'8 |
        d'4 e'8 f'8 ~ f'8 g'8 a'4 |
        r4 r8 b8 gis'8 f'8 e'8 d'8 |
        e'4 f'8 e'8 ~ e'8 d'8 c'8 b8 |

        a4 r8 f''8 f''8 f''8 f''8 g''8 |
        f''4 e''4 d''4 r4 |
        r4 r8 f''8 e''8 d''8 c''8 d''8 |
        fis''4 e''4 c''4 r4 |
    }
}

counter = {
    \time  4/4
    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key c \major
    \time 4/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \melodysectiona
}

clarinetsectionb = {
    \melodysectionb
}

clarinetsectionc = {
    \melodysectionc
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key c \major
    \time 4/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

clarinetnotesmidi = \transpose c d' {
    \key c \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionb
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \melodysectiona
}

trumpetsectionb = {
    \melodysectionb
}

trumpetsectionc = {
    \melodysectionc
}

trumpetnotes = \transpose c d {
    \key c \major
    \time 4/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

trumpetnotesmidi = \transpose c d {
    \key c \major
    \time 4/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionb
    \trumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \countersectiona
}

trombonesectionb = {
    \countersectionb
}

trombonesectionc = {
    \countersectionc
}

trombonenotes = \transpose c c, {
    \key c \major
    \time 4/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}
trombonenotesmidi = {
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionb
    \trombonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarsectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

guitarnotes = {
    \time  4/4
    \key c \major
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarnotesmidi = {
    \time  4/4
    \key c \major
    \preintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectionb
    \guitarsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    R1*8 |
}

basssectionb = {
    a,4 r4 d4 r4 |
    a,4 r4 e,4 r4 |
    a,4 r4 g,4 r4 |
    c4 r4 r4 \tuplet 3/2 { a,8 b,8 c8 } |

    d4 r4 a,4 r4 |
    d4 r4 g,4 r4 |
    c4 r4 d4 r4 |
    e4 r4 e,4 r4 |
}

basssectionc = {
    \repeat volta 2 {
        a,4 r4 e4 r4 |
        f,4 r4 d4 r4 |
        e4 r4 e,4 r4 |
        e4 r4 a,4 r4 |

        f4 r4 f,4 r4 |
        d4 r4 a,4 r4 |
        e4 r4 d4 r4 |
        a,8 r8 e8 r8 a,4 r4 |
    }
}

bassline = {
    \time  4/4
    \key c \major
    \basssectiona
    \basssectionb
    \basssectionc
}

basslinemidi = {
    \time  4/4
    \key c \major
    \preintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionb
    \basssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

skipchordssectiona = \context ChordNames = "skipchordnames" {
    s1*8 |
}

chordletterssectiona = \chordmode {
    a1:min | e1 | f1 | a1:min |
    d1:min | d1:min/b | e1:sus4 | e2.:7 s4 |
}

chordletterssectionb = \chordmode {
    a2:min d2:min | a1:min | a2:min d4:min g4:7 | c2 e2:7 |
    a1:min | a2:min d2:min | f2 d2:min/b | e2.:7 s4 |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        a1:min | d2:min e2:7 | e1:7 | a1:min |
        a1:min | d2:min e2:7 | e1:7 | a4:min e4:7 a2:min |
    }
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

scorechordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

guitarchordletters = {
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}
clarinetchordletters = \transpose bes, c \scorechordletters
tenorsaxchordletters = \transpose bes, c \scorechordletters
trumpetchordletters = \transpose bes, c \scorechordletters
altosaxchordletters = \transpose ees c {
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}
%guitarchordletters = \chordletters
flutechordletters = \scorechordletters
violinchordletters = \scorechordletters
trombonechordletters = \scorechordletters
leadsheetchordletters = \chordletters
pianochordletters = \context ChordNames = "pianochords" {
    \skipchordssectiona
    \chordletterssectionb
    \chordletterssectionc
}
melodychordletters = \chordletters

basschordletters = \chordmode {
    \skipchordssectiona
    \chordletterssectionb
    \chordletterssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    R1*8 |
}

pianorightuppersectionb = {
    r4 < a c' >8 < a c' >8 r4 < f a d' >4 |
    r4 < a c' >8 < a c' >8 r4 < gis d' e' >4 |
    r4 < a c' >8 < a c' >8 r4 < b f' g' >4 |
    r4 < g c' e' >8 < g c' e' >8 r4 \tuplet 3/2 { a'8 b'8 c''8 } |

    r4 < a d' f' >8 < a d' f' >8 r4 < a c' e' >4 |
    r4 < a d' f' >8 < a d' f' >8 r4 < d' f' g' >4 |
    r4 < c' e' g' >8 < c' e' g' >8 r4 < a d' f' >4 |
    r8 e'8 gis'8 b'8 e''8 d''8 c''8 b'8 |
}

pianorightuppersectionc = {
    \repeat volta 2 {
        r4 < a c' e' >4 r4 < a c' e' >8 < a c' e' >8 |
        r4 < a d' f' >4 r4 < a d' f' >8 < a d' f' >8 |
        r4 < gis d' e' >4 r4 < gis d' e' >8 < gis d' e' >8 |
        r4 < gis d' e' >4 r4 < a c' e' >8 < a c' e' >8 |

        r4 < a c' f' >8 < a c' f' >8 r4 < a c' f' >8 < a c' f' >8 |
        r4 < a d' f' >4 r4 < a d' f' >8 < a d' f' >8 |
        r4 < gis d' e' >4 r4 < a d' f' >8 < a d' f' >8 |
        < a dis' fis' >8 r8 < gis b d' e' >8 r8 < a c' e' a' >4 r4 |
    }
}

pianorightuppernotes = {
    \key c \major
    \time 4/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

pianorightlowersectiona = {
    s1*8 |
}

pianorightlowersectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightlowersectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

pianorightlowernotes = {
    \key c \major
    \time 4/4
    \pianorightlowersectiona
    \pianorightlowersectionb
    \pianorightlowersectionc
}

pianoleftuppersectiona = {
    R1*8 |
}

pianoleftuppersectionb = {
    a,2 d,2 |
    a,2 e,2 |
    a,2 g,2 |
    c2. \tuplet 3/2 { a,8 b,8 c8 } |

    d2 a,2 |
    d2 g,2 |
    c2 d2 |
    e2 e,2 |
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        < a,, a, >2 < a,, a, >2 |
        < f,, f, >2 < d, d >2 |
        < e, e >2 < e,, e, >2 |
        < e, e >2 < a,, a, >2 |

        < f, f >2 < f, f >2 |
        < d, d >2 < d, d >2 |
        < e, e >2 < d, d >2 |
        < b,, e, b, >8 r8 e8 r8 < a,, a, >4 r4 |
    }
}

pianoleftuppernotes = {
    \key c \major
    \time 4/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
}

pianorightnotesmidi = {
    \preintro
    <<
        {
            \pianorightuppersectiona
            \pianorightuppersectionb
            \pianorightuppersectionc
            \pianorightuppersectionb
            \pianorightuppersectionc
        }
        {
            \pianorightlowersectiona
            \pianorightlowersectionb
            \pianorightlowersectionc
            \pianorightlowersectionb
            \pianorightlowersectionc
        }
    >>
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectionb
    \pianoleftuppersectionc
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

altosaxmelody = \transpose c a, {
    \key c \major
    \time 4/4
    \melody
}

altosaxnotes = \transpose c a, {
    \key c \major
    \time 4/4
    \harmony
}
altosaxnotesmidi = \transpose c a, { \harmonymidi }

tenorsaxnotes = \transpose c d {
    \key c \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d { \harmonymidi }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }
trombonefortrumpetnotes = \transpose c d' { \trombonenotes }

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
    d2:min a2:7 |
    d1:min |
    d2:min c2:7 |
    f2 s2 |
}

previewnotes = {
    \key c \major
    \time 4/4
    \tempo \tempostring
    \markA \positionA
    c''2. d''8 c''8 |
    b'2. c''8 b'8 |
    a'2. b'8 a'8 |
    e'2 ~ e'8 e'8 d'8 e'8 |
}

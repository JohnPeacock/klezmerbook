\version "2.18.2"

bandmNV = {
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    \time 2/4
    s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 |

    \tempo \tempostring
    \time 2/4
    s2 |
    \markA \positionA
    \break
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |

        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }

    \bar ".|:-||"
    \pageBreak
    \markB \positionB

    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |

        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }

    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm =  \context Voice = "bandmv" {
    \bandmNV
}

metronome =  \context Voice = "metronome" {
    \time 4/4
    s1 |
    \tempo 4 = 100
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    \time 2/4
    s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 |

    \tempo 4 = 135
    \time 2/4
    s2 |
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |

        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes =  {
    \key c \minor
    \time 4/4
    g2 ~ \tuplet 3/2 { g8 a8 b8 } \tuplet 3/2 { c'8 d'8 ees'8 } |
    \tuplet 3/2 { fis'8 \grace { a'16 } g'8 g'8 } g'8 g'8 g'8 g'8 ~ g'4\fermata |
    g'2 ~ \tuplet 3/2 { g'8 a'8 b'8 } \tuplet 3/2 { c''8 d''8 ees''8 } |
    e''8 \grace { g''16 } f''8 f''8 f''8 ~ f''2 |

    \tuplet 3/2 { fis''8 ees''8 d''8 } \tuplet 3/2 { fis''8 ees''8 d''8 }
        \grace { d'' } \tuplet 3/2 { g''8 fis''8 ees''8 }
        \tuplet 3/2 { ees''8 d''8 c''8 } |
    \tuplet 3/2 { c''8 c''8 c''8 } \tuplet 3/2 { c''8 g'8 g'8 } c''2 ~ |
    c''2. r4 |
    R1 |

    \time 2/4
    c'''2 |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    aes''8 aes''8 aes''4 ~ |
    aes''2  |

    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''8 f''8 } |
    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''4 } |
    \grace { f''16 } g''8 g''8 ~ g''4 ~ |
    g''2 |

    fis''4. ees''8 |
    d''8 c''8 \tuplet 3/2 { c''8 d''8 ees''8 } |
    g''2 ~ |
    g''2 |

    fis''2 |
    \tuplet 3/2 { ees''8 d''8 c''8 } \tuplet 3/2 { c''8 g'8 c''8 ( ~ } |
    c''2 ~ |
    c''2 |
    c'''2\fermata ) |

    \key d \minor
    \time 2/4

    r4 c'4 (

    \repeat volta 2 {
        f'2 ~ |
        f'2 ) |
        r8 f'8 g'8 [ f'8 ] |
        g'8 [ f'8 ] g'8 [ f'8 ] |

        g'8 [ f'8 ] a'4 ~ |
        a'2 | \break
        r8 a'8 bes'8 [ a'8 ] |
        bes'8 [ a'8 ] bes'8 [ a'8 ] |

        bes'8 [ a'8 ] c''4 ~ |
        c''2 | \break
        r8 c''8 d''8 [ c''8 ] |
        d''8 [ c''8 ] d''8 [ c''8 ] |

        d''8 [ c''8 ] ees''4 ~ |
        ees''2 | \break
	r2 |
        r8 f'8 bes'8 [ c''8 ] |

        des''4. bes'8 ~ |
        bes'2 |
        r8 des''8   c''8 [ bes'8 ] |
        des''8 [ des''8 ]   c''8 [ bes'8 ] |

        c''4. a'8 ~ |
        a'2 |
        r8 c''8   bes'8 [ a'8 ] |
        c''8 [ c''8 ]   bes'8 [ a'8 ] |

        bes'4. g'8 ~ |
        g'2 |
        r8 d''8   c''8 [ bes'8 ] | 
        a'8 [ f'8 ]   g'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 ~ |
            f'4 c'4 |
        }
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
    }

    \key f \minor

    \repeat volta 2 {
        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

        \tuplet 3/2 { aes'4 g'4 f'4 } |
        aes'8 g'4 f'8 |
        e'2 ~ |
        e'2 |

        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        fis'8 g'4. ~ |
        g'4. g'8 |

        g'4 f'8 e'8 |
        e'8 d'4 c'8 |
        f'2 ~ |
        f'4. c'8 |

        c'2 ~ |
        c'8 [ des'8 ] e'8 [ f'8 ] |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

	\tuplet 3/2 { aes'4 g'4 f'4 }
	\tuplet 3/2 { aes'4 g'4 f'4 }
        bes'2 ~ |
	bes'2 |

        r8 bes'8 g'8 aes'8 |
        bes'8 aes'8 aes'8 g'8 |
        r8 f'8 f'8 g'8 |
        aes'8 g'8 g'8 f'8 |

        r8 e'8 e'8 f'8 |
        g'8 e'8 d'8 cis'8 |

%%        r8 bes8 des'8 [ f'8 ] |
%%        bes'4 f'8 [ bes'8 ~ ] |
%%        bes'8 [ g'16 bes'16 ] \tuplet 3/2 { aes'8 [ g'8 f'8 ] } |
%%        aes'4 f'8 [ aes'8 ~ ] |
%%        aes'8 [ aes'8 ] g'8 [ f'8 ] |
%%        g'4 c'8 [ g'8 ~ ] |
%%        g'8 [ g'8 ] f'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 |
            r8 e'16 [ g'16 ] f'16 [ e'16 des'8 ] |
        }
        {
            f'2 ~ |
            f'2 |
        }
    }
}

rangeadjustednotes =  {
    \key c \minor
    \time 4/4
    g2 ~ \tuplet 3/2 { g8 a8 b8 } \tuplet 3/2 { c'8 d'8 ees'8 } |
    \tuplet 3/2 { fis'8 \grace { a'16 } g'8 g'8 } g'8 g'8 g'8 g'8 ~ g'4\fermata |
    \transpose c c, {
    g'2 ~ \tuplet 3/2 { g'8 a'8 b'8 } \tuplet 3/2 { c''8 d''8 ees''8 } |
    e''8 \grace { g''16 } f''8 f''8 f''8 ~ f''2 |

    \tuplet 3/2 { fis''8 ees''8 d''8 } \tuplet 3/2 { fis''8 ees''8 d''8 }
        \grace { d'' } \tuplet 3/2 { g''8 fis''8 ees''8 }
        \tuplet 3/2 { ees''8 d''8 c''8 } |
    \tuplet 3/2 { c''8 c''8 c''8 } \tuplet 3/2 { c''8 g'8 g'8 } c''2 ~ |
    c''2. r4 |
    R1 |

    \time 2/4
    c'''2 |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    aes''8 aes''8 aes''4 ~ |
    aes''2  |

    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''8 f''8 } |
    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''4 } |
    \grace { f''16 } g''8 g''8 ~ g''4 ~ |
    g''2 |

    fis''4. ees''8 |
    d''8 c''8 \tuplet 3/2 { c''8 d''8 ees''8 } |
    g''2 ~ |
    g''2 |

    fis''2 |
    \tuplet 3/2 { ees''8 d''8 c''8 } \tuplet 3/2 { c''8 g'8 c''8 ( ~ } |
    c''2 ~ |
    c''2 |
    c'''2\fermata ) |
    }
    \key d \minor
    \time 2/4

    r4 c'4 (

    \repeat volta 2 {
        f'2 ~ |
        f'2 ) |
        r8 f'8 g'8 [ f'8 ] |
        g'8 [ f'8 ] g'8 [ f'8 ] |

        g'8 [ f'8 ] a'4 ~ |
        a'2 | \break
        r8 a'8 bes'8 [ a'8 ] |
        bes'8 [ a'8 ] bes'8 [ a'8 ] |

        bes'8 [ a'8 ] c''4 ~ |
        c''2 | \break
        r8 c''8 d''8 [ c''8 ] |
        d''8 [ c''8 ] d''8 [ c''8 ] |

        d''8 [ c''8 ] ees''4 ~ |
        ees''2 | \break
	r2 |
        r8 f'8 bes'8 [ c''8 ] |

        des''4. bes'8 ~ |
        bes'2 |
        r8 des''8   c''8 [ bes'8 ] |
        des''8 [ des''8 ]   c''8 [ bes'8 ] |

        c''4. a'8 ~ |
        a'2 |
        r8 c''8   bes'8 [ a'8 ] |
        c''8 [ c''8 ]   bes'8 [ a'8 ] |

        bes'4. g'8 ~ |
        g'2 |
        r8 d''8   c''8 [ bes'8 ] | 
        a'8 [ f'8 ]   g'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 ~ |
            f'4 c'4 |
        }
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
    }

    \key f \minor

    \repeat volta 2 {
        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

        \tuplet 3/2 { aes'4 g'4 f'4 } |
        aes'8 g'4 f'8 |
        e'2 ~ |
        e'2 |

        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        fis'8 g'4. ~ |
        g'4. g'8 |

        g'4 f'8 e'8 |
        e'8 d'4 c'8 |
        f'2 ~ |
        f'4. c'8 |

        c'2 ~ |
        c'8 [ des'8 ] e'8 [ f'8 ] |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

	\tuplet 3/2 { aes'4 g'4 f'4 }
	\tuplet 3/2 { aes'4 g'4 f'4 }
        bes'2 ~ |
	bes'2 |

        r8 bes'8 g'8 aes'8 |
        bes'8 aes'8 aes'8 g'8 |
        r8 f'8 f'8 g'8 |
        aes'8 g'8 g'8 f'8 |

        r8 e'8 e'8 f'8 |
        g'8 e'8 d'8 cis'8 |

%%        r8 bes8 des'8 [ f'8 ] |
%%        bes'4 f'8 [ bes'8 ~ ] |
%%        bes'8 [ g'16 bes'16 ] \tuplet 3/2 { aes'8 [ g'8 f'8 ] } |
%%        aes'4 f'8 [ aes'8 ~ ] |
%%        aes'8 [ aes'8 ] g'8 [ f'8 ] |
%%        g'4 c'8 [ g'8 ~ ] |
%%        g'8 [ g'8 ] f'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 |
            r8 e'16 [ g'16 ] f'16 [ e'16 des'8 ] |
        }
        {
            f'2 ~ |
            f'2 |
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony =  {
}

tenorharmonymidi =  {
}

counter =  {
}

countermidi =  {
}

bassline =  {
}

basslinemidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  \transpose c c' {
    \rangeadjustednotes
}

flutenotesmidi =  {
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes =  \transpose c d {
    \melodynotes
}

clarinetnotesmidi = {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \rangeadjustednotes
}

altosaxnotesmidi =  {
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes =  {
    \key d \minor
    \time 2/4
}

tenorsaxnotesmidi =  {
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes =  \transpose c d {
    \melodynotes
}

trumpetnotesmidi =  {
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
    \rangeadjustednotes
}

trombonenotesmidi =  {
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
}

euphoniumnotesmidi =  {
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes =  {
    \melodynotes
}

violinnotesmidi =  {
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    \time 2/4
    s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 |

    s2 |
    \repeat volta 2 {
        f2 | f2 | f2 | f2 |
        f2 | f2 | f2 | f2 |
        f2 | f2 | f2 | f2 |
        f2:7 | f2:7 | f2:7 | f2:7 |

        bes2:min | bes2:min | bes2:min | bes2:min |
        f2 | f2 | f2 | f2 |
        c2:7 | c2:7 | c2:7 | c2:7 |
    }
    \alternative {
        {
            \chordChangesOff
            f2
            \chordChangesOn
	    f2 |
        }
        {
            \chordChangesOff
            f2
            \chordChangesOn
	    f2 |
        }
    }
    \repeat volta 2 {
        f2:min | f2:min | f2:min | f2:min |
        f2:min | f2:min | c2:7 | c2:7 |
        c2:7 | c2:7 | c2:7 | c2:7 |
        c2:7 | c2:7 | f2:min | f2:min |

        f2:min | f2:min | f2:min | f2:min |
        f2:min | f2:min | bes2:min | bes2:min |
        bes2:min | bes2:min | f2:min | f2:min |
        c2:7 | c2:7 |
    }
    \alternative {
        {
            \chordChangesOff
            f2:min
            \chordChangesOn
            f2:min
        }
        {
            \chordChangesOff
            f2:min
            \chordChangesOn
            f2:min
        }
    }
}

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
altosaxchordletters = \transpose ees c \chordletters
guitarchordletters = \chordletters
flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
}

guitarnotesmidi =  {
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
}

bassnotesmidi =  {
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes =  {
}

pianorightuppernotes =  {
    \pianorightnotes
}

pianorightlowernotes =  {
}

pianorightnotesmidi =  {
    \pianorightnotes
}

pianoleftnotes =  {
}

pianoleftuppernotes =  {
    \pianoleftnotes
}

pianoleftlowernotes =  {
}

pianoleftnotesmidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
}

drumslow = \drummode {
    \stemDown
}

drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \key c \minor
    \time 4/4
    g2 ~ \tuplet 3/2 { g8 a8 b8 } \tuplet 3/2 { c'8 d'8 ees'8 } |
    \tuplet 3/2 { fis'8 \grace { a'16 } g'8 g'8 } g'8 g'8 g'8 g'8 ~ g'4\fermata |
    g'2 ~ \tuplet 3/2 { g'8 a'8 b'8 } \tuplet 3/2 { c''8 d''8 ees''8 } |
    e''8 \grace { g''16 } f''8 f''8 f''8 ~ f''2 |

    \tuplet 3/2 { fis''8 ees''8 d''8 } \tuplet 3/2 { fis''8 ees''8 d''8 }
        \grace { d'' } \tuplet 3/2 { g''8 fis''8 ees''8 }
        \tuplet 3/2 { ees''8 d''8 c''8 } |
    \tuplet 3/2 { c''8 c''8 c''8 } \tuplet 3/2 { c''8 g'8 g'8 } c''2 ~ |
    c''2. r4 |
    R1 |

    \time 2/4
    c'''2 |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { c'''8 bes''8 a''8 } |
    aes''8 aes''8 aes''4 ~ |
    aes''2  |

    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''8 f''8 } |
    \tuplet 3/2 { aes''8 g''8 f''8 } \tuplet 3/2 { aes''8 g''4 } |
    \grace { f''16 } g''8 g''8 ~ g''4 ~ |
    g''2 |

    fis''4. ees''8 |
    d''8 c''8 \tuplet 3/2 { c''8 d''8 ees''8 } |
    g''2 ~ |
    g''2 |

    fis''2 |
    \tuplet 3/2 { ees''8 d''8 c''8 } \tuplet 3/2 { c''8 g'8 c''8 \( ~ } |
    c''2 ~ |
    c''2 |
    c'''2\fermata \) |

    \key d \minor
    \time 2/4

    r4 c'4 (

    \repeat volta 2 {
        f'2 ~ |
        f'2 ) |
        r8 f'8 g'8 [ f'8 ] |
        g'8 [ f'8 ] g'8 [ f'8 ] |

        g'8 [ f'8 ] a'4 ~ |
        a'2 | \break
        r4 bes'8 [ a'8 ] |
        bes'8 [ a'8 ] bes'8 [ a'8 ] |

        bes'8 [ a'8 ] c''4 ~ |
        c''2 | \break
        r8 c''8 d''8 [ c''8 ] |
        d''8 [ c''8 ] d''8 [ c''8 ] |

        d''8 [ c''8 ] ees''4 ~ |
        ees''2 | \break
	r2 |
        r4 bes'8 [ c''8 ] |

        des''4. bes'8 ~ |
        bes'2 |
        r8 des''8   c''8 [ bes'8 ] |
        des''8 [ des''8 ]   c''8 [ bes'8 ] |

        c''4. a'8 ~ |
        a'2 |
        r8 c''8   bes'8 [ a'8 ] |
        c''8 [ c''8 ]   bes'8 [ a'8 ] |

        bes'4. g'8 ~ |
        g'2 |
        r8 d''8   c''8 [ bes'8 ] | 
        a'8 [ f'8 ]   g'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 ~ |
            f'4 r8 c'8 |
        }
        {
            f'2 |
            r4 r8 c'8 |
        }
    }

    \key f \minor

    \repeat volta 2 {
        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

        \tuplet 3/2 { aes'4 g'4 f'4 } |
        aes'8 g'4 f'8 |
        e'2 ~ |
        e'2 |

        c'2 ~ |
        c'8 d'8 e'8 f'8 |
        fis'8 g'4. ~ |
        g'4. g'8 |

        g'4 f'8 e'8 |
        e'8 d'4 c'8 |
        f'2 ~ |
        f'4. c'8 |

        c'2 ~ |
        c'8 [ des'8 ] e'8 [ f'8 ] |
        g'8 aes'4. ~ |
	aes'4. aes'8 |

	\tuplet 3/2 { aes'4 g'4 f'4 }
	\tuplet 3/2 { aes'4 g'4 f'4 }
        bes'2 ~ |
        bes'2 |

        r8 bes'8 g'8 aes'8 |
        bes'8 aes'8 aes'8 g'8 |
        r8 f'8 f'8 g'8 |
        aes'8 g'8 g'8 f'8 |

        r8 e'8 e'8 f'8 |
        g'8 e'8 d'8 cis'8 |

%%        r8 bes8 des'8 [ f'8 ] |
%%        bes'4 f'8 [ bes'8 ~ ] |
%%        bes'8 [ g'16 bes'16 ] \tuplet 3/2 { aes'8 [ g'8 f'8 ] } |
%%        aes'4 f'8 [ aes'8 ~ ] |
%%        aes'8 [ aes'8 ] g'8 [ f'8 ] |
%%        g'4 c'8 [ g'8 ~ ] |
%%        g'8 [ g'8 ] f'8 [ e'8 ] |
    }
    \alternative {
        {
            f'2 | r2 |
        }
        {
            f'2 ~ | f'2 |
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {

    Dort oyf a berg- e- le un- ter dem fray- en him- l,
    Vayt fun dem rash- ik- n shtots ge- rum- l
    Shteyt zikh a khat- ke- le a- leyn oyf an ort,
    An al- ter tsi- gay- ner voynt dort.

    dort her- n zikh ten- er zey- er zi- se,
    vos veyn- en in mi- nor,
    ven af zayn fidl far- geyt zikh
    der alt- er tsi- gay- ner,
    mit zayn gants- n fay- er un bren,
    nor vi a tsi- gayn- er ken. __

    _ a tsi- gay- ner mel- o- die iz a- zoy sheyn.
    hert ir zikh, far- gest ir zikh nit, neyn,
    vayl zi iz var- em, harts- ik, ful mit kheyn,
    a mod- ne kraft.
    zi git aykh lib- e un oykh laydn- shaft.
    hert ir es nor eyn mol, git_es keyn ru.
    s’far- kish- eft aykh di mel- o- die. ven

    _

    ven der tsi- gayn- er shpilt zikh zayn lid- l,
    in harts git a bri.
    fun zayn fid- l der klang
    der- vekt dayn ne- shom- es fa- lang.
    dayn blut es kokht un es tsit,
    zayn fid- l dem boyg- n er tsit.

    nemt in di him- len shveb- n,
    es glust zikh nor tsum leb- n
    dos leb- n vert dan a- zoy gut
    dos iz dem alt- n tsi- gayn- ers lid.
}
textlb = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _

    _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _
    _ _ _ _ _ _ _
    _ _ _ _ _ _
    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _

    _ _ ir hert es, dakht zikh aykh,
    s’iz prost na- iv,
    un ir hot dan gorn- it keyn ba- grif,
    _ vi es rirt on di ne- sho- me tif.
    fun ye- der zayt
    zi filt aykh on_mit lust un frey- lekh- kayt.
    on- haltn vilt ir ey- bik ot a di
    di klang- en fun di mel- o- _ _ die.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s4 s4

    f2 |
    s2*7 |
}

previewnotes = \transpose c c' {
    \key d \minor
    \time 2/4
    s4 c'4 |
    \bar ".|:"
    f'2 ~ |
    f'2 |
    r8 f'8 g'8 f'8 |
    g'8 f'8 g'8 f'8 |
    a'2 ~ |
    a'2 |
    r8 a'8 bes'8 a'8 |
    bes'8 a'8 bes'8 a'8 |
}

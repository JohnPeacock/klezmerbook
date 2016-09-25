\version "2.18.2"

bandmNV = {
    \time 2/4

    \tempo \tempostring
    s2 | \breakIN
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        \grace { s8 } s2 | \breakAtht s2 | \breakAfrt
        s2 | \breakAfft s2 | \breakAsxt
        s2 | \breakAsvt s2 | \breakAett s2 | \breakAnnt s2 | \breakAtwy
        \grace { s8 } s2 | \breakAttone s2 | \breakAtttwo s2 | \breakAtttre
    }
    \alternative { { s2 | \breakAttfor } { s2 | } }
    \breakA \bar ".|:-||"

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft
        \markFN \positionFN \bar "||"
    }
    \alternative { { s2 | \breakBsxt } { s2 | } }
    \breakB \bar "||"

    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre
    \repeat volta 2 {
        s2 | \breakCfor s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
	s2 | \breakCeit
    }
    \alternative {
        { s2 | \breakCnin s2 | \breakCten s2 | \breakCelv }
        { s2 | \breakCtwl s2 | \breakCtht s2 | \breakCfrt }
    }
    s2 |
    \markDSFN \positionDSFN
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    s2 |
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \tempo 4 = 123
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \tempo 4 = 126
    s2 | s2 | s2 |
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
	s2 | 
    }
    \alternative { { s2 | s2 | s2 | } { s2 | s2 | s2 | } }
% one more once
    \tempo 4 = 129
    s2 |
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \tempo 4 = 132
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \tempo 4 = 136
    s2 | s2 | s2 |
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
	s2 | 
    }
    \alternative { { s2 | s2 | s2 | } { s2 | s2 | s2 | } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
    s8 b8 e'8 fis'8 |
}

melodymiddle = {
    \repeat volta 2 {
        \tuplet 3/2 { g'16 a'16 g'16 } e'4. |
        r8 b8 e'8 fis'8 |
        \tuplet 3/2 { g'16 a'16 g'16 } e'4. |
        r8 b8 e'8 fis'8 |

        g'8 a'8 g'8 a'8 |
        g'8 a'8 \tuplet 3/2 { g'16 a'16 g'16 } e'8 |
        a'8 b'4. |
        r8 e'16 dis'16 e'16 fis'16 g'16 a'16 |

        b'8. b'16 g'8. g'16 |
        a'4. g'8 |
        \tuplet 3/2 { b'16 c''16 b'16 } a'8 \tuplet 3/2 { g'16 a'16 g'16 } fis'8 |
        e'4 d'4-> |

        \acciaccatura { e'16 [ fis'16 ] } g'8 a'8 b'8 g'8 |
        \tuplet 3/2 { a'16 b'16 a'16 } b'8 \tuplet 3/2 { g'16 b'16 g'16 } fis'8 |
        \tuplet 3/2 { a'16 b'16 a'16 } e'4. |
        r8 e'16 dis'16 e'16 fis'16 g'16 a'16 |

        b'4 g'8. g'16 |
        a'4 ~ \tuplet 3/2 { a'16 b'16 a'16 } g'8 |
        \tuplet 3/2 { b'16 c''16 b'16 } a'8 \tuplet 3/2 { g'16 a'16 g'16 } fis'8 |
        e'8 ~ \tuplet 3/2 { e'16 fis'16 e'16 } d'4 |

        \acciaccatura { e'16 [ fis'16 ] } g'8 a'8 b'8 a'8 |
        \tuplet 3/2 { a'16 b'16 a'16 } e'8 \tuplet 3/2 { g'16 a'16 g'16 } fis'8 |
        \tuplet 3/2 { a'16 b'16 a'16 } e'4. ~ |
    }
    \alternative {
        { e'8 b8 e'8 fis'8 | }
        { r8 e'16 dis'16 e'16 fis'16 b'16 g'16 | }
    }

    \repeat volta 2 {
        a'8. gis'16 a'4 |
        r8 \tuplet 3/2 { c''16 d''16 c''16 } b'8 a'8 |
        b'4 g'4 |
        r8 b'8 \tuplet 3/2 { a'16 b'16 a'16 } g'8 |

        a'4 d''4 |
        d''4 c''16 b'16 c''16 a'16 |
        b'2 |
        r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 |

        a'8. gis'16 a'4 |
        r8 \tuplet 3/2 { c''16 d''16 c''16 } b'8 a'8 |
        e''4 b'4 |
        r8 \tuplet 3/2 { c''16 d''16 c''16 } b'8 a'8 |

        g'4 a'8 g'16 a'16 |
        b'16 c''16 b'8 a'16 b'16 a'8 |
        e'2 |

    }
    \alternative {
        { r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 | }
        { r8 e'8 g'8 b'8 | }
    }

    e''2 |
    e''2 |
    e''4-> e''4-> |
    \repeat volta 2 {
        e''4.-> e''8 ~ |
        e''16 fis''16 e''8 b'8 e''8 |
        g''8 fis''8 e''8. b'16 |
        d''16 e''16 d''8 g'8 b'8 |

	d''8-. c''8-. b'8.-\trill a'16 |
    }
    \alternative {
        {
            g'16 b'16 a'4 g'8 |
            d''8. d''16 c''16 b'16 c''16 a'16 |
            b'2 |
        }
        {
            g'16 b'16 a'4 g'8 |
            \tuplet 3/2 { b'16 a'16 b'16 } g'8 \tuplet 3/2 { g'16 fis'16 g'16 } e'8 |
            e'2 |
        }
    }
}

melodytrailer = {
    r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 |
}

melodynotes = {
    \time 2/4
    \key g \major
    \melodyintro
    \melodymiddle
    \melodytrailer
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysimpleintro = {
    s8 b8 e'8 fis'8 |
}

melodysimplemiddle = {
    \repeat volta 2 {
        g'8 e'4. |
        r8 b8 e'8 fis'8 |
        g'8 e'4. |
        r8 b8 e'8 fis'8 |

        g'8 a'8 g'8 a'8 |
        g'8 a'8 g'8 e'8 |
        a'8 g'4. |
        r8 e'16 dis'16 e'16 fis'16 g'16 a'16 |

        b'4 g'4 |
        a'4. g'8 |
        b'8 a'8 g'8 fis'8 |
        e'4 d'4-> |

        \grace { s16 s16 } g'8 a'8 b'8 g'8 |
        a'8 e'8 g'8 fis'8 |
        a'8 e'4. |
        r8 e'16 dis'16 e'16 fis'16 g'16 a'16 |

        b'4 g'4 |
        a'4. g'8 |
        b'8 a'8 g'8 fis'8 |
        e'4 d'4 |

        \grace { s8 } g'8 a'8 b'8 a'8 |
        a'8 e'8 g'8 fis'8 |
        a'8 e'4. ~ |
    }
    \alternative {
        { e'8 b8 e'8 fis'8 | }
        { r8 e'16 dis'16 e'16 fis'16 b'16 g'16 | }
    }

    \repeat volta 2 {
        a'4 a'4 |
        r8 c''8 b'8 a'8 |
        b'4 g'4 |
        r8 b'8 a'8 g'8 |

        a'4 d''4 |
        d''8 c''8 b'8 a'8 |
        b'2 |
        r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 |

        a'4 a'4 |
        r8 c''8 b'8 a'8 |
        e''4 b'4 |
        r8 c''8 b'8 a'8 |

        g'4 a'4 |
        b'16 c''16 b'8 a'16 b'16 a'8 |
        e'2 |

    }
    \alternative {
        { r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 | }
        { r8 e'8 g'8 b'8 | }
    }

    e''2 |
    e''2 |
    e''4-> e''4-> |
    \repeat volta 2 {
        e''4.-> e''8 ~ |
        e''8 e''8 b'8 e''8 |
        g''8 fis''8 e''4 |
        d''8 d''8 g'8 b'8 |

	d''8-. c''8-. b'4-\trill |
    }
    \alternative {
        {
            b'8 a'4 g'8 |
            d''8. d''16 c''8 a'8 |
            b'2 |
        }
        {
            b'8 a'4 g'8 |
            b'8 b'8 a'8 a'8 |
            e'2 |
        }
    }
}

melodysimpletrailer = {
    r8 e'16 dis'16 e'16 fis'16 g'16 gis'16 |
}

melodysimplenotes = {
    \time 2/4
    \key g \major
    \melodysimpleintro
    \melodysimplemiddle
    \melodysimpletrailer
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    s2 |
}

tenorharmonymiddle = {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

tenorharmonytrailer = {
    s2 |
}

tenorharmony = {
    \time 2/4
    \key g \major
    \tenorharmonyintro
    \tenorharmonymiddle
    \tenorharmonytrailer
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmonymiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    s2 |
}

countermiddle = {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

countertrailer = {
    s2 |
}

counter = {
    \time 2/4
    \key g \major
    \counterintro
    \countermiddle
    \countertrailer
}

countermidi = {
    \preintro
    \counter
    \countermiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    s8 r8 r4 |
}

basslinemiddle = {
    \repeat volta 2 {
        e4 b,4 | e4 b,4 | e4 b,4 | e4 b,4 |
        e4 b,4 | e4 b,4 | e4 b,4 | e4 b,4 |
        e4 b,4 | a,4 e4 | b,4 fis4 | e4 d4 |
        \grace { s8 } g,4 d4 | a,4 b,4 | e4 b,4 | e4 b,4 |
        e4 b,4 | a,4 e4 | b,4 fis4 | e4 d4 |

        \grace { s8 } g,4 d4 | a,4 b,4 | e4 b,4 |
    }
    \alternative {
        { e4 b,4 | }
        { e4 b,4 | }
    }

    \repeat volta 2 {
        a,4 e4 | a,4 e4 | g,4 d4 | g,4 b,4 |
        d4 a,4 | d4 a,4 | g,4 d4 | g,4 d4 |
        a,4 e4 | a,4 c4 | e4 b,4 | e4 b,4 |
        e4 b4 | b,4 fis4 | e4 b,4 |
    }
    \alternative { { e4 b,4 | } { e4 b,4 | } }

    e2 |
    e2 |
    e4-> e4-> |
    \repeat volta 2 { e2 | e4 b,4 | e4 b,4 | g,4 d4 | g,4 d4 | }
    \alternative {
        {
            d4 a,4 |
            d4 a,4 |
            g,4 d4 |
        }
        {
            b,4 fis4 |
            b,4 fis4 |
            e4 b,4 |
        }
    }
}

basslinetrailer = {
    e4 b,4 |
}

bassline = {
    \time 2/4
    \key g \major
    \basslineintro
    \basslinemiddle
    \basslinetrailer
}

basslinemidi = {
    \preintro
    \bassline
    \basslinemiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \preintro
    \melodynotes
    \melodymiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c' {
    \preintro
    \melodynotes
    \melodymiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \time 2/4
    \key g \major
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \preintro
    \melodynotes
    \melodymiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = \transpose bes c' {
    \preintro
    \tenorharmony
    \tenorharmonymiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \time 2/4
    \key g \major
    \melodysimplenotes
}

trumpetnotesmidi = \transpose bes c' {
    \preintro
    \melodysimplenotes
    \melodysimplemiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \preintro
    \counter
    \countermiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \preintro
    \bassline
    \basslinemiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodysimplenotes
}

violinnotesmidi = {
    \preintro
    \melodysimplenotes
    \melodysimplemiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 2/4

    s2 |
    \repeat volta 2 {
        e2:min | e2:min | e2:min | e2:min |
        e2:min | e2:min | e2:min | e2:min |
        e2:min | a2:min | b2:7 | e4:min d4 |
        \grace { g8 } g2 | a4:min b4:7 | e2:min | e2:min |
        e2:min | a2:min | b2:7 | e4:min d4 |
        \grace { g8 } g2 | a4:min b4:7 | e2:min |
    }
    \alternative {
        { \chordChangesOff e2:min \chordChangesOn | }
        { \chordChangesOff e2:min \chordChangesOn | }
    }

    \repeat volta 2 {
        a2:min | a2:min | g2 | g2 |
        d2 | d2 | g2 | g2 |
        a2:min | a2:min | e2:min | e2:min |
        e2:min | b2:7 | e2:min |
    }
    \alternative {
        { e2:7 | }
        { e2:min | }
    }

    \chordChangesOff e2:min \chordChangesOn | e2:min | e2:min |
    \repeat volta 2 {
        \chordChangesOff e2:min \chordChangesOn | e2:min | e2:min | g2 |
	g2 | 
    }
    \alternative {
        {
            d2:7 | d2:7 | g2 |
        }
        {
            b2:7 | b2:7 | e2:min |
        }
    }
    e2:7 |
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
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotesintro = {
    s2 |
}

guitarnotesmiddle = {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

guitarnotestrailer = {
    s2 |
}

guitarnotes = {
    \time 2/4
    \key g \major
    \guitarnotesintro
    \guitarnotesmiddle
    \guitarnotestrailer
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotesmiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \preintro
    \bassline
    \basslinemiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotesintro = {
    s2 |
}

pianorightnotesmiddle = {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

pianorightnotestrailer = {
    s2 |
}

pianorightnotes = {
    \time 2/4
    \key g \major
    \pianorightnotesintro
    \pianorightnotesmiddle
    \pianorightnotestrailer
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotesmiddle
}

pianoleftnotesintro = {
    s2 |
}

pianoleftnotesmiddle = {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

pianoleftnotestrailer = {
    s2 |
}

pianoleftnotes = {
    \time 2/4
    \key g \major
    \pianoleftnotesintro
    \pianoleftnotesmiddle
    \pianoleftnotestrailer
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotesmiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    s2 |
}

drumshighmiddle = \drummode {
    \repeat volta 2 {
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

        \grace { s8 } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        \grace { s8 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }

    \repeat volta 2 {
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
    \alternative {
        { s2 | }
        { s2 | }
    }

    s2 |
    s2 |
    s2 |
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

	s2 | 
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
        }
    }
}

drumshightrailer = \drummode {
    s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighmiddle
    \drumshightrailer
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshighmiddle
}

drumslowintro = \drummode {
    s8 r8 r4 |
}

drumslowmiddle = \drummode {
    \repeat volta 2 {
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        \grace { s8 } bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        \grace { s8 } bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
    }
    \alternative {
        { bda4 bda4 | }
        { bda4 bda4 | }
    }

    \repeat volta 2 {
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
    }
    \alternative {
        { bda4 bda4 | }
        { bda4 bda4 | }
    }

    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    \repeat volta 2 {
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |

	bda4 bda4 | 
    }
    \alternative {
        {
            bda4 bda4 |
            bda4 bda4 |
            bda4 bda4 |
        }
        {
            bda4 bda4 |
            bda4 bda4 |
            bda4 bda4 |
        }
    }
}

drumslowtrailer = \drummode {
    bda4 bda4 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowmiddle
    \drumslowtrailer
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslowmiddle
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodysimplenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | e2:min | s2 | s2 | s2 |
}

previewnotes = {
    \time 2/4
    \key g \major
    s8 b8 e'8 fis'8 |
    \bar ".|:"
    \tuplet 3/2 { g'16 a'16 g'16 } e'4. |
    r8 b8 e'8 fis'8 |
    \tuplet 3/2 { g'16 a'16 g'16 } e'4. |
    r8 b8 e'8 fis'8 |
}

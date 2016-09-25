\version "2.18.2"

bandmNVbody = {
    \time 2/4
    \repeat volta 2 {
        s2 | \breakAone
        s2 | \breakAtwo
        s2 | \breakAtre
        s2 | \breakAfor
        s2 | \breakAfiv
        s2 | \breakAsix
        s2 | \breakAsev
        s2 |
    }
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone
        s2 | \breakBtwo
        s2 | \breakBtre
        s2 | \breakBfor
        \grace { s16 } s2 | \breakBfiv
        \grace { s16 } s2 | \breakBsix
        s2 | \breakBsev
        s2 | \breakBeit
        \grace { s16 } s2 | \breakBnin
        s2 | \breakBten
        s2 | \breakBelv
    }
    \alternative { { s2 | \breakBtwl } { s2 | } }
    \breakB \bar ".|:-||"

    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone
        s2 | \breakCtwo
        s2 | \breakCtre
        s2 | \breakCfor
        s2 | \breakCfiv
        s2 | \breakCsix
        s2 | \breakCsev
        s2 |
    }
    \breakC

    \markD \positionD
    \repeat volta 2 {
        s2 | \breakDone
        s2 | \breakDtwo
        s2 | \breakDtre
        s2 | \breakDfor
        s2 | \breakDfiv
        s2 | \breakDsix
        s2 | \breakDsev
    }
    \alternative { { s2 | \breakDeit } { s2 | } }
    \breakD \bar ".|:-||"

    \markE \positionE
    \repeat volta 2 {
        s2 | \breakEone
        s2 | \breakEtwo
        s2 | \breakEtre
        s2 | \breakEfor
        s2 | \breakEfiv
        s2 | \breakEsix
        s2 | \breakEsev
        s2 |
    }
    \breakE

    \markF \positionF
    \repeat volta 2 {
        s2 | \breakFone
        s2 | \breakFtwo
        s2 | \breakFtre
        s2 | \breakFfor
        s2 | \breakFfiv
        s2 | \breakFsix
        s2 | \breakFsev
        s2 | \breakFeit
        s2 | \breakFnin
        s2 | \breakFten
        s2 | \breakFelv
        s2 |
    }
}

bandmNV = {
    \markA \positionA
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 2/4
    \key c \major

    \repeat volta 2 {
        a'8 a''8 \tuplet 3/2 { e''16 f''16 e''16 } d''8 |
        \tuplet 3/2 { d''16 e''16 d''16 } c''4 \tuplet 3/2 { b'16 c''16 b'16 } |
        a'8 a''8 \tuplet 3/2 { e''16 f''16 e''16 } d''8 |
        \tuplet 3/2 { d''16 e''16 d''16 } c''4 a'8 |

        g''8. a''16 bes''16 a''16 g''16 a''16 |
        bes''16 a''16 g''16 f''16 e''8 d''8 |
        c''16 d''16 e''16 c''16 d''8 c''16 b'16 |
        a'2 |
    }

    \repeat volta 2 {
        \repeat unfold 2 { a''4 ~ a''16 e''16 dis''16 e''16 | }
        a''16 e''16 dis''16 e''16 a''16 e''16 dis''16 e''16 |
        a''16 e''16 dis''16 e''16 a''4 |

        \grace { b''16 } c'''8 c'''8 \tuplet 3/2 { b''16 c'''16 b''16 } a''8 |
        \grace { b''16 } c'''8 c'''8 \tuplet 3/2 { b''16 c'''16 b''16 } a''8 |
        e'''4 \tuplet 3/2 { d'''16 e'''16 d'''16 } c'''8 |
        b''16 c'''16 d'''16 c'''16 \tuplet 3/2 { b''16 c'''16 b''16 } a''8 |

        \grace { b''16 } c'''8 c'''8 \tuplet 3/2 { b''16 c'''16 b''16 } a''8 |
        gis''16 a''16 b''16 a''16 \tuplet 3/2 { gis''16 a''16 gis''16 } f''8 |
        e''16 dis''16 e''16 f''16 e''16 d''16 c''16 b'16 |
    }
    \alternative {
        {
            a'8. b'16 c''16 d''16 \tuplet 3/2 { e''16 f''16 gis''16 } |
        }
        {
            a'2 |
        }
    }

    \repeat volta 2 {
        c''4 d''4 |
        e''8 c''4 c''8 |
        f''8. e''16 f''8 a''8 |
        a''16 g''16 g''4. |

        g''16 fis''16 g''16 a''16 bes''16 a''16 g''16 a''16 |
        bes''16 a''16 g''16 f''16 \tuplet 3/2 { e''16 f''16 e''16 } d''16 c''16 |
        c''16 d''16 e''16 c''16 d''8 c''16 b'16 |
        a'2 |
    }

    \repeat volta 2 {
        a''4 ~ a''16 g''16 fis''16 g''16 |
        a''4. e''8 |
        a''16 e''16 a''16 e''16 c'''8 b''16 a''16 |
        a''4-. r4 |

        g''16 a''16 a''16 g''16 g''16 a''16 g''8 |
        c'''16 b''16 a''16 g''16 f''16 e''16 d''16 c''16 |
        c''32 ( d''16. ) d''32 ( c''16. ) c''32 ( b'16. ) b'32 ( a'16. ) |
    }
    \alternative {
        {
            c''2 |
        }
        {
            a'2 |
        }
    }

    \repeat volta 2 {
        d'''16 ( a''16 ) a''16 ( d'''16 ) d'''16 ( c'''16 ) c'''16 ( b''16 ) |
        c'''16 ( g''16 ) g''16 ( c'''16 ) c'''16 ( b''16 ) b''16 ( a''16 ) |
        a''16 b''16 c'''16 d'''16 c'''16 b''16 a''16 b''16 |
        c'''4 r4 |

        d'''16 ( a''16 ) a''16 ( d'''16 ) d'''16 ( c'''16 ) c'''16 ( b''16 ) |
        c'''16 ( g''16 ) g''16 ( c'''16 ) c'''16 ( b''16 ) b''16 ( a''16 ) |
        a''16 b''16 c'''16 d'''16 c'''16 b''16 b''16 a''16 |
        a''2 |
    }

    \repeat volta 2 {
        a''4 ~ a''16 g''16 fis''16 g''16 |
        a''4 ~ a''16 g''16 fis''16 g''16 |
        a''16 g''16 fis''16 g''16 a''16 g''16 fis''16 g''16 |
        a''16 g''16 fis''16 g''16 a''4 |

        g''16 a''16 bes''16 a''16 g''16 f''16 e''16 d''16 |
        d''16 ( g''16 ) d''16 ( g''16 ) d''4 |
        c''16 d''16 e''16 c''16 d''8 c''16 b'16 |
        c''4 c'''4-> |

        g''16 a''16 bes''16 a''16 g''16 f''16 e''16 d''16 |
        d''16 ( g''16 ) d''16 ( g''16 ) d''4 |
        e''16 ( d''16 ) d''16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) |
        a'2 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key c \major

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | \grace { s16 } s2 | \grace { s16 } s2 |
        s2 | s2 | \grace { s16 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key c \major

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | \grace { s16 } s2 | \grace { s16 } s2 |
        s2 | s2 | \grace { s16 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key c \major

    \repeat volta 2 {
        c4 a,4 | e4 a,4 | c4 a,4 | e4 a,4 | c4 g,4 | c4 d4 | e4 b,4 | e4 a,4 |
    }

    \repeat volta 2 {
        a4. e8 | a4. e8 | a8. e16 a8. e16 | a8. e16 a4 |
        \grace { s16 } a,4 c4 | \grace { s16 } a,4 e4 |
        e4 c4 | c4 a,4 | \grace { s16 } a,4 c4 | d4 a,4 | e4 b,4 |
    }
    \alternative { { a,4 c4 | } { a,4 r4 | } }

    \repeat volta 2 {
        c4 g,4 | c4 g,4 | c4 f4 | c4 g,4 | c4 g,4 | c4 g4 | e4 b,4 | a,4 e4 |
    }

    \repeat volta 2 {
        a4. e8 | a4. e8 | a,4 e4 | r4 a,4-> | c4 g,4 | c4 g,4 | e,4 e,4 |
    }
    \alternative { { a,4-. a4-> | } { a,8 bes,8 b,8 cis8 | } }

    \repeat volta 2 {
        d4 a,4 | c4 a,4 | d4 g,4 | r4 c'-> |
        d4 a,4 | c4 a,4 | e4 b,4 | a,4 a4 |
    }

    \repeat volta 2 {
        a4. e8 | a4. e8 | a8. e16 a8. e16 | a8. e16 a4 |
        c4 g,4 | d4 a,4 | d4 g,4 | c4 c'4-> |
        c4 g,4 | d4 a,4 | e4 b,4 | a,4 a4 |
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melodynotes
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \melodynotes
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c {
    \melodynotes
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \preintro
    \euphoniumnotes
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 2/4

    \repeat volta 2 {
        a2:min | a2:min | a2:min | a2:min |
        c2 | c4 d4:min | e2:7 | a2:min |
    }

    \repeat volta 2 {
        \chordChangesOff a2:min \chordChangesOn | a2:min | a2:min | a2:min |
        \grace { a16:min } a2:min | \grace { a16:min } a2:min |
        a2:min | a2:min | \grace { a16:min } a2:min | d2:min | e2:7 |
    }
    \alternative { { a2:min | } { \chordChangesOff a2:min \chordChangesOn | } }

    \repeat volta 2 {
        c2 | c2 | f2 | c2 | c2 | c2 | e2:7 | a2:min |
    }

    \repeat volta 2 {
        \chordChangesOff a2:min \chordChangesOn | a2:min |
        a2:min | a2:min | c2 | c2 | e2:7 |
    }
    \alternative { { a2:min | } { \chordChangesOff a2:min \chordChangesOn | } }

    \repeat volta 2 {
        d2:min | a2:min/c | g2:7 | c2 | d2:min | a2:min/c | e2:7 | a2:min |
    }

    \repeat volta 2 {
        \chordChangesOff a2:min \chordChangesOn | a2:min |
        a2:min | a2:min | c2 | d2:min |
        d4:min g4 | c2 | c2 | d2:min | e2:7 | a2:min |
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
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 2/4
    \key c \major
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 2/4
    \key c \major
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 2/4
    \key c \major
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | \grace { s16 } s2 | \grace { s16 } s2 |
        s2 | s2 | \grace { s16 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | \grace { s16 } s2 | \grace { s16 } s2 |
        s2 | s2 | \grace { s16 } s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    a2:min | s2 | s2 | s2 |
}

previewnotes = {
    \time 2/4
    \key c \major
    a'8 a''8 \tuplet 3/2 { e''16 f''16 e''16 } d''8 |
    \tuplet 3/2 { d''16 e''16 d''16 } c''4 \tuplet 3/2 { b'16 c''16 b''16 } |
    a'8 a''8 \tuplet 3/2 { e''16 f''16 e''16 } d''8 |
    \tuplet 3/2 { d''16 e''16 d''16 } c''4 a'8 |
}

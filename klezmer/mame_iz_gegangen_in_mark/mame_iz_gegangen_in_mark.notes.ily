\version "2.18.0"

bandmmain = {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    }
    \alternative { { s2 | \breakAsxt } { s2 | } }
    \breakA
    \bar ".|:-||"
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
    }
    \alternative { { s2 \breakBeit } { s2 | } }
    \breakB
    \bar "|."
    \markDC \positionDC
}

bandmNV = {
    \tempo \tempostring
    \time 2/4
    \bandmmain
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \bandmmain
    \bandmmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceonemain = {
    \key d \minor
    \repeat volta 2 {
        a'8 d''4 ( f''8 ) |
        gis''16 ( b''16 ) a''8 \tuplet 3/2 { a''8 ( gis''8 ) f''8 } |
        gis''16 ( g''16 ) a''8 a''4 |
        a''2 |

        cis'''16 ( d'''16 ) r8 \grace { d'''8 } \tuplet 3/2 { c'''8 ( b''8 a''8 ) } |
        gis''4 \tuplet 3/2 { f''8 ( e''8 f''8 ) } |
        gis''16 ( b''16 ) a''8 a''4 |
        a''2 |

        a'8 d''4 ( f''8 ) |
        gis''16 ( b''16 ) a''8 \tuplet 3/2 { a''8 ( gis''8 ) f''8 } |
        fis''16 ( a''16 ) g''8 g''4 |
        g''2 |

        gis''16 ( a''16 ) d''8 e''8 f''8 |
        \tuplet 3/2 { a''8 ( gis''8 ) f''8 } \tuplet 3/2 { f''8 ( e''8 ) d''8 } |
        d''2 ~ |
    }
    \alternative { { d''4 r4 | } { d''8 a'8 d''8 e''8 | } }

    \key d \major
    \repeat volta 2 {
        fis''4. e''8 |
        d''4 e''8 fis''8 |
        fis''16 ( a''16 ) g''4 fis''8 |
        e''2 |

        e''8 fis''8 g''8 a''8 |
        a''8 b''8 \tuplet 3/2 { b''8 ( a''8 ) g''8 } |
        fis''8 d''8 e''8 c''8 |
    }
    \alternative { { d''8 fis''8 a''8 g''8 | } { d''4 d'4 | } }
}

voiceone = {
    \time 2/4
    \voiceonemain
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \time 2/4
    \preintro
    \voiceonemain
    \voiceonemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonymain = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

tenorharmony = {
    \time 2/4
    \tenorharmonymain
}

tenorharmonymidi = {
    \time 2/4
    \preintro
    \tenorharmonymain
    \tenorharmonymain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countermain = {
    \key c \minor
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 } { s2 | } }
}

counter = {
    \time 2/4
    \countermain
}

countermidi = {
    \time 2/4
    \preintro
    \countermain
    \countermain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinemain = {
    \repeat volta 2 {
        d4 a,4 | d4 a4 | d4 a,4 | d4 a,4 |
        d4 a,4 | d4 a4 | d4 a,4 | d4 a,4 |
        d4 a,4 | d8 dis8 e8 f8 | g4 d4 | g4 d4 |
        f4 d4 | d4 a,4 | d4 f4 |
    }
    \alternative { { d8 a,8 d8 r8 | } { d8 a,8 d8 d'8 | } }

    \repeat volta 2 {
        d4 a,4 | d4 a,4 | cis4 a,4 | e4 a,4 |
        cis4 a,4 | e4 a,4 | d4 cis4 |
    }
    \alternative { { d8 a,8 d8 r8 | } { d8 a,8 d8 d'8 | } }
}

bassline = {
    \time 2/4
    \basslinemain
}

basslinemidi = {
    \time 2/4
    \preintro
    \basslinemain
    \basslinemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melodynotes
}

flutenotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c {
    \tenorharmony
}

tenorsaxnotesmidi = \transpose bes c {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetmain = {
    \key d \minor
    \repeat volta 2 {
        a'8 d''4 ( f''8 ) |
        gis''16 ( b''16 ) a''8 \tuplet 3/2 { a''8 ( gis''8 ) f''8 } |
        gis''16 ( g''16 ) a''8 a''4 |
        a''2 |

        cis'''16 ( d'''16 ) r8 \grace { d'''8 } \tuplet 3/2 { c'''8 ( b''8 a''8 ) } |
        gis''4 \tuplet 3/2 { f''8 ( e''8 f''8 ) } |
        gis''16 ( b''16 ) a''8 a''4 |
        a''2 |

        a'8 d''4 ( f''8 ) |
        gis''16 ( b''16 ) a''8 \tuplet 3/2 { a''8 ( gis''8 ) f''8 } |
        fis''16 ( a''16 ) g''8 g''4 |
        g''2 |

        gis''16 ( a''16 ) d''8 e''8 f''8 |
        \tuplet 3/2 { a''8 ( gis''8 ) f''8 } \tuplet 3/2 { f''8 ( e''8 ) d''8 } |
        d''2 ~ |
    }
    \alternative { { d''4 r4 | } { d''8 a'8 d''8 e''8 | } }

    \key d \major
    \repeat volta 2 {
        fis''4. e''8 |
        d''4 e''8 fis''8 |
        fis''16 ( a''16 ) g''4 fis''8 |
        e''2 |

        e''8 fis''8 g''8 a''8 |
        a''8 b''8 \tuplet 3/2 { b''8 ( a''8 ) g''8 } |
        fis''8 d''8 e''8 c''8 |
    }
    \alternative { { d''8 fis''8 a''8 g''8 | } { d''4 d'''4 | } }
}

trumpetnotes = \transpose bes c {
    \time 2/4
    \trumpetmain
}

trumpetnotesmidi = \transpose bes c {
    \time 2/4
    \preintro
    \trumpetmain
    \trumpetmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersmain = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | g2:min | g2:min |
        d2:min | d4:min a4 | d2:min |
    }
    \alternative { { d2:min | } { d2:min | } }

    \repeat volta 2 {
        d2 | d2 | a2 | a2 |
        a2 | a2 | d4 a4 |
    }
    \alternative { { d2 | } { d2 | } }
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersmain
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
    \key c \minor
}

guitarnotesmidi = {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 2/4
    \key c \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
}

pianoleftnotes = {
    \time 2/4
    \key c \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
}

drumslow = \drummode {
    \time 2/4
    \stemDown

}

drumslowmidi = \drummode {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | d2:min | d2:min | d2:min |
}

previewnotes = {
    \time 2/4
    \key c \minor
    \bar ".|:"
    a'8 d''4 ( f''8 ) |
    gis''16 ( b''16 ) a''8 \tuplet 3/2 { a''8 ( gis''8 ) f''8 } |
    gis''16 ( g''16 ) a''8 a''4 |
    a''2 |
}

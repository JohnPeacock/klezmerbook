\version "2.18.2"

bandmNVbody = {
    \time 2/4

    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    }
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 |
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 |
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

voiceone = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        d'8 fis'16 fis'16 fis'8 fis'8 |
        fis'8 d'16 fis'16 a'8 g'8 |
        fis'16 g'16 a'8 fis'16 g'16 a'8 |
        fis'8 ees'8 ees'8 d'8 |

        d'8 fis'16 fis'16 fis'8 fis'8 |
        fis'8 d'16 fis'16 a'8 g'8 |
        fis'8 c'8 d'8 ees'8 |
        d'2 |
    }

    \repeat volta 2 {
        fis'4 g'4 |
        a'8 g'8 bes'8 a'8 |
        g'2 ~ |
        g'4. g'8 |

        a'4 g'4 |
        fis'8 ees'8 d'8 ees'8 |
        fis'2 ~ |
        fis'2 |

        fis'4 g'4 |
        a'8 g'8 bes'8 a'8 |
        g'2 ~ |
        g'2 |

        c''8 bes'8 a'8 g'8 |
        fis'8 c'8 d'8 ees'8 |
        d'2 ~ |
        d'2 |
    }
}

melodynotes = {
    \time 2/4
    \key g \minor

    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key g \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key g \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        d4 a,4 |
        d4 a4 |
        d4 a,4 |
        d4 a4 |

        d4 a,4 |
        d4 a4 |
        c4 g,4 |
        a,8 bes,8 b,8 c8 |
    }
    \repeat volta 2 {
        a4 d4 |
        a,4 d4 |
        g,4 d4 |
        g4 d4 |

        a4 d4 |
        a,4 d4 |
        a4 d4 |
        a,4 d4 |

        a4 d4 |
        a,4 d4 |
        g,4 d4 |
        g4 d4 |

        g4 c4 |
        g,4 c4 |
        a,4 d4 |
        d8 a,8 d8 r8 |
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
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

trumpetnotes = \transpose bes c' {
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
        d2 | d2 | d2 | d2 |
        d2 | d2 | c2:min | d2 |
    }
    \repeat volta 2 {
        \chordChangesOff d2 \chordChangesOn | d2 | g2:min | g2:min |
        d2 | d2 | d2 | d2 |
        d2 | d2 | g2:min | g2:min |
        c2:min | c2:min | d2 | d2 |
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
    \key g \minor
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
    \key g \minor
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
    \key g \minor
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

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown

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
    d2:min | s2 | c2:min | s2 |
}

previewnotes = {
    \time 2/4
    \key g \minor
    d'4 ~ d'16 c'16 b16 c'16 |
    ees'8 d'8 d'8 d'8 |
    c'8 fis'8 c'8 fis'8 |
    c'8 fis'16 ees'16 d'8 c'8 |
}

\version "2.18.2"

bandmNVbody = {
    \time 4/4

    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
        s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
        s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft
    }
    \alternative {
        { s1 | \breakAsxt }
        { s1 | }
    }
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 |
    }
    \breakB

    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
        s1 | \breakCfiv
        s1 | \breakCsix s1 | \breakCsev s1 | \breakCeit s1 | \breakCnin
        s1 | \breakCten s1 | \breakCelv s1 | \breakCtht s1 |
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
    \time 4/4
    \preintro
    \tempo 4 = 130
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceone = {
    \time 4/4
    \key d \minor
    \repeat volta 2 {
        d'4. a'8 a'4 a'4 |
        bes'8. a'16 bes'8. d''16 a'2 |
        g'8 g'4 g'8 f'4 g'4 |
        \tuplet 3/2 { a'8 bes'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } f'8 e'8 d'8 a8 |

        d'4. a'8 a'4 a'4 |
        bes'8. a'16 bes'8. d''16 a'2 |
        g'8 g'4 g'8 f'4 g'4 |
        \tuplet 3/2 { a'8 bes'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } f'8 e'8 d'8 a8 |

        d'4. e'8 f'4 g'4 |
        a'8 bes'8 a'8 g'8 f'8 e'8 d'4 |
        e'8 f'8 f'8 e'8 g'16 f'16 e'16 d'16 cis'8 d'8 |
        e'8 f'8 g'16 f'16 e'16 d'16 cis'8 bes8 a4 |

        d'4. e'8 f'4 g'4 |
        a'8 bes'8 a'8 g'8 f'8 e'8 d'4 |
        e'8 f'4 e'8 e'8 d'8 d'8 cis'8 |
    }
    \alternative {
        { d'1 | }
        { d'2. r8 d'8 | }
    }

    \repeat volta 2 {
        a'8 bes'8 a'8 g'8 f'8 e'8 f'8 g'8 |
        a'8 bes'8 a'8 g'8 f'8 e'8 d'4 |
        e'8 f'8 f'8 e'8 g'16 f'16 e'16 d'16 cis'8 d'8 |
        e'8 f'8 g'16 f'16 e'16 d'16 cis'8 bes8 a4 |

        a'8 bes'8 a'8 g'8 f'8 e'8 f'8 g'8 |
        a'8 bes'8 a'8 g'8 f'8 e'8 d'4 |
        e'8 f'4 e'8 e'8 d'8 d'8 cis'8 |
        d'2. r8 d'8 |
    }

    \repeat volta 2 {
        d''4. c''8 c''8 bes'8 bes'8 a'8 |
        a'1 ~ |
        a'8 d'16 f'16 a'8 c''8 bes'8  a'8 g'4 ~ |
        g'8 d''8 d''8 c''8 c''8 bes'16 c''16 bes'8 a'8 |

        a'2. c'4 |

        f'8 g'8 a'4 a'4 a'4 |
        a'8. g'16 a'8 bes'8 a'8 g'8 f'4 ~ |
        f'16 c'16 d'16 e'16 f'16 g'16 a'16 bes'16 c''8 bes'8 bes'8 a'8 |
        a'8. g'16 a'8 bes'8 a'8 g'8 f'4 |

        fis'8 g'4. fis'8 ees'8 ees'8 d'8 |
        d'4 d''16 ees''16 d''16 c''16 bes'16 c''16 bes'16 a'16 g'16 a'16 g'16 fis'16 |
        fis'8 g'4. fis'8 ees'8 ees'8 d'8 |
        d'2. d'4 |
    }
}

melodynotes = {
    \time 4/4
    \key d \minor

    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key d \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key d \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key d \minor
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
       
        s1 |
        s1 |
        s1 |
        s1 |
       
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

    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
       
        s1 |
        s1 |
        s1 |
        s1 |
    }

    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
       
        s1 |
        s1 |
        s1 |
        s1 |
       
        s1 |
        s1 |
        s1 |
        s1 |
       
        s1 |
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

altoflutenotes = \transpose g c {
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
    \time 4/4
    \repeat volta 2 {
        d1:min | g2:min d2:min | g1:min | d1:min |
        d1:min | g2:min d2:min | g1:min | d1:min |
        d1:min | d1:min | a1 | a1 |
        d1:min | d1:min | a1 |
    }
    \alternative {
        { d1:min | }
        { d1:min | }
    }

    \repeat volta 2 {
        d1:min | d1:min | a1 | a1 |
        d1:min | d1:min | a1 | d1:min |
    }

    \repeat volta 2 {
        d1:min | d1:min | d1:min | g1:min |
        d2.:min c4 |
        f1 | f1 | f1 | f1 |
        c1:min | d1 | c1:min | d1 |
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 4/4
    \key d \minor
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
    \time 4/4
    \key d \minor
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
    \time 4/4
    \key d \minor
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
    \time 4/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 4/4
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
    d1:min | g2:min d2:min | g1:min | d1:min |
}

previewnotes = {
    \time 4/4
    \key d \minor
    d'4. a'8 a'4 a'4 |
    bes'8. a'16 bes'8. d''16 a'2 |
    g'8 g'4 g'8 f'4 g'4 |
    \tuplet 3/2 { a'8 bes'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } f'8 e'8 d'8 a8 |
}

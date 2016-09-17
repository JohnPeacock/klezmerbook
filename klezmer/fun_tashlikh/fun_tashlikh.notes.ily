\version "2.18.0"

bandmNVbody = {
    \time 4/4
    \markA \positionA
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 |
    }
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 |
    }
    \breakB

    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 |
    }
}

bandmNV = {
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 110
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 4/4
    \key e \minor
    \repeat volta 2 {
        e'8 e'8 bes'16 a'16 g'8 fis'16 g'16 a'16 fis'16 g'4 |
        fis'16 g'16 ais'16 b'16 cis''16 d''16 e''16 d''16 e''16 d''16 cis''16 b'16  ais'16 g'16 fis'16 d'16 |
        e'8 e'8 bes'16 a'16 g'8 fis'16 g'16 a'16 fis'16 g'4 |
        g'16 d'16 e'16 f'16 g'16 e'16 f'16 d'16 e'2 |
    }

    \repeat volta 2 {
        g''8 g''8 f''16 e''16 d''16 c''16 b'16 d''16 d''16 b'16 c''16 b'16 a'16 g'16 |
        b'16 d''16 d''16 b'16 c''16 b'16 a'16 g'16 cis''16 e''16 d''4. |
        fis''16 g''16 g''8 f''16 e''16 d''16 c''16 b'16 d''16 d''16 b'16 c''16 b'16 a'16 g'16 |
        a'16 b'16 c''16 d''16 b'16 g'16 a'16 fis'16 g'2 |
    }

    \repeat volta 2 {
        bes'8 bes'8 bes'16 d''8 bes'16 a'8 a'8 a'8 a'8 |
        g'16 fis'16 a'16 g'16 g'16 f'16 f'16 e'16 e'8 g'8 b'8 e''8 |
        a'4 f''16 e''16 d''16 cis''16 d''16 cis''16 bes'16 a'16 bes'16 a'16 g'16 fis'16 |
        g'16 d'16 e'16 f'16 g'16 e'16 f'16 d'16 e'2 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key e \minor
    \repeat volta 2 {
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
    }

    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key e \minor
    \repeat volta 2 {
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
    }

    \repeat volta 2 {
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
    \repeat volta 2 { e1:min | e1:min | e1:min | d2:min e2:min | }
    \repeat volta 2 { g1 | g1 | g1 | g1 | }
    \repeat volta 2 { g2:min a2 | e1:min | g1:min | e4:min d4:min e2:min | }
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
    \time 4/4
    \key e \minor
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
    \key e \minor
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
    \key e \minor
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
    \repeat volta 2 { e1:min | e1:min | e1:min | d2:min e2:min | }
}

previewnotes = {
    \time 4/4
    \key e \minor
    \repeat volta 2 {
        e'8 e'8 bes'16 a'16 g'8 fis'16 g'16 a'16 fis'16 g'4 |
        fis'16 g'16 ais'16 b'16 cis''16 d''16 e''16 d''16 e''16 d''16 cis''16 b'16  ais'16 g'16 fis'16 d'16 |
        e'8 e'8 bes'16 a'16 g'8 fis'16 g'16 a'16 fis'16 g'4 |
        g'16 d'16 e'16 f'16 g'16 e'16 f'16 d'16 e'2 |
    }
}

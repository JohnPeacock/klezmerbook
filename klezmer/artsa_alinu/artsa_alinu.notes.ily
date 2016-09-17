\version "2.18.0"

bandmNVbody = {
    \time 4/4
    \repeat volta 2 { s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | }
    \breakA

    \markB \positionB
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 |
    \markDC \positionDC
    \bar "|."
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
    \tempo 4 = 120
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 4/4
    \key f \major
    \repeat volta 2 {
        d'8 a'4 g'8 a'4 g'4 |
        f'8 g'4 f'8 g'4 f'4 |
        d'8 d'4 c'8 f'4 ( e'4 ) |
        d'2. r4 |
    }
    a'4. bes'8 c''4 d''4 |
    a'8 a'4 g'8 a'8 ( g'8 ) f'4 |
    a'4. bes'8 c''4 d''4 |
    a'8 a'4 g'8 a'8 ( g'8 ) f'4 |

    f'8 g'4 f'8 g'4 f'4 |
    d'2 d'2 |
    c'8 d'4 c'8 f'4 e'4 |
    d'2 d'2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key f \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

tenorharmonymidi = {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key f \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

countermidi = {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key f \major
    \repeat volta 2 {
        d8 d4 a,8 d4 g4 |
        g8 g4 d8 g4 f4 |
        d8 d4 a,8 f4 e4 |
        d2. r4 |
    }
    f4 c4 f4 c4 |
    d4 a,4 d4 a,4 |
    f4 c4 f4 c4 |
    d4 a,4 d4 a,4 |

    g,4 g4 d4 bes,4 |
    d4 a,4 d4 f4 |
    a,4 a4 e4 cis4 |
    d4 a,4 d4 r4 |
}

basslinemidi = {
    \preintro
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

clarinetnotes = \transpose bes c' {
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
        d1:min | g1:min | d2:min a2:7 | d1:min |
    }
    f1 | d1:min | f1 | d1:min | g1:min | d1:min | a2:min a2:7 | d1:min |
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

guitarnotes = {
    \time 4/4
    \key f \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
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
    \key f \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
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
    \key f \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
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
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
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
    \repeat volta 2 { d1:min | g1:min | d2:min a2:7 | d1:min | }
}

previewnotes = {
    \time 4/4
    \key f \major
    \repeat volta 2 {
        d'8 a'4 g'8 a'4 g'4 |
        f'8 g'4 f'8 g'4 f'4 |
        d'8 d'4 c'8 f'4 ( e'4 ) |
        d'2. r4 |
    }
}

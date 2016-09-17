\version "2.18.0"

bandmNV = {
    \time 4/4

    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
    }
    \alternative { { s1 | \breakAfor } { s1 | } }
    \bar ".|:-||"
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
        s1 | \breakBfor
        s1 | \breakBfiv
        s1 | \breakBsix
        s1 | \breakBsev
    }
    \alternative { { s1 | \breakBeit } { s1 | } }
    \bar "|."
    \markDC \positionDC
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro

    \tempo 4 = 80
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \bandmNV

    \tempo 4 = 90
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 100
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 110
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 120
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 130
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 140
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \tempo 4 = 145
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 4/4
    \key f \major

    \repeat volta 2 {
        d'16 d'16 d'16 d'16 a8 d'8 a8 d'8 a8 d'8 |
        f'16 f'16 f'16 f'16 d'8 f'8 d'8 f'8 d'8 f'8 |
        a'16 a'16 a'16 a'16 f'8 a'8 g'16 g'16 g'16 g'16 d'8 g'8 |
    }
    \alternative {
        { f'8 g'8 f'8 e'8 d'8 e'8 f'4 | } { f'8 g'8 f'8 e'8 d'4 c'4 | }
    }

    \repeat volta 2 {
        r8 a'8 bes'8 c''8 bes'8 a'8 g'8 f'8 |
        r8 a'8 bes'8 c''8 bes'8 a'8 g'8 f'8 |
        r8 a'8 bes'8 c''8 d''8 c''8 bes'8 a'8 |
        g'4. a'16 bes'16 g'4 r4 |

        r8 g'8 a'8 bes'8 c''8 bes'8 a'8 g'8 |
        f'4 g'8 a'8 g'8 f'4 f'8 |
        f'8 c'8 c'8 f'8 f'8 ees'16 f'16 ees'16 d'16 c'8 |
    }
    \alternative { { d'2. c'4 | } { d'1 | } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key f \major

    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
    \tenorharmony
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key f \major
}

countermidi = {
    \preintro
    \counter
    \counter
    \counter
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key f \major

    \repeat volta 2 {
        d4 a,4 d4 a,4 |
        f4 d4 f4 d4 |
        a4 f4 g4 d4 |
    }
    \alternative { { d4 a,4 d8 a,8 b,8 cis8 | } { d4 a,4 d4 c4 | } }

    \repeat volta 2 {
        f4 c4 f4 c4 |
        f4 c4 f4 c4 |
        f4 c4 dis4 d4 |
        g4 d4 g4 d4 |

        c4 g,4 c4 g4 |
        f4 c4 f4 c4 |
        f4 c4 g4 c4 |
    }
    \alternative { { d4 a,4 d4 c4 | } { d4 a,4 d8 a,8 b,8 cis8 | } }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
    \bassline
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
    \flutenotes
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
    \clarinetnotes
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \time 4/4
    \key f \major
    \melodynotes
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
    \altosaxnotes
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
    \tenorsaxnotes
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \time 4/4
    \key f \major
    \melodynotes
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
    \trumpetnotes
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
    \melodynotes
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
    \trombonenotes
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
    \bassnotes
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
    \violinnotes
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 4/4

    \repeat volta 2 {
        d1:min | d1:min | d2:min g2:min |
    }
    \alternative {
        { d1:min | }
        {
            \chordChangesOff
            d4:min
            \chordChangesOn
            a4 d4:min c4 | }
    }

    \repeat volta 2 {
        f1 | f1 | f1 | g1:min |
        c1 | f1 | f2 c2:min |
    }
    \alternative { { d2.:min c4 | } { d1:min | } }
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
    \key f \major
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
    \guitarnotes
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
    \bassnotes
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 4/4
    \key f \major
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
    \pianorightnotes
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 4/4
    \key f \major
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
    \pianoleftnotes
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp

    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
    \drumshigh
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 4/4
    \stemDown

    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
    \drumslow
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \repeat volta 2 {
        d1:min | d1:min | d2:min g2:min |
    }
    \alternative { { d1:min | } { d4:min a4 d4:min c4 | } }
}

previewnotes = {
  \time 4/4
  \key f \major
  \repeat volta 2 {
    d'16 d'16 d'16 d'16 a8 d'8 a8 d'8 a8 d'8 | \noBreak
    f'16 f'16 f'16 f'16 d'8 f'8 d'8 f'8 d'8 f'8 | \noBreak
    a'16 a'16 a'16 a'16 f'8 a'8 g'16 g'16 g'16 g'16 d'8 g'8 | \noBreak
  }
  \alternative {
    { f'8 g'8 f'8 e'8 d'8 e'8 f'4 | \noBreak } { f'8 g'8 f'8 e'8 d'4 c'4 | }
  }
}

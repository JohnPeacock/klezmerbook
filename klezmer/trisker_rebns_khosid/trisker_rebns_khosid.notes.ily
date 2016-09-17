\version "2.18.0"

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
    }
    \breakB

    \markC \positionC
    \repeat volta 2 {
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
 \key d \minor
 \repeat volta 2 {
  d'8 a'16 g'16 f'8 f'8 |
  f'16 g'16 f'16 e'16 d'4 |
  d'8 f'8 a'8 d''8 |
  d''8 c''16 bes'16 a'4 |
  a'16 g'16 c''16 bes'16 a'8 g'16 f'16 |
  g'16 aes'16 g'16 aes'16 g'4 |
  f'16 e'16 e'16 f'16 f'16 ees'16 ees'16 d'16 |
  d'2
 }

 \repeat volta 2 {
  c'8 f'16 g'16 a'4 |
  a'8 g'16 a'16 g'8 f'8 |
  c''4 bes'4 |
  a'8 g'16 a'16 g'8 f'8 |
  r16 c'16 d'16 e'16 f'16 g'16 a'16 bes'16 |
  c''16 d''16 ees''16 d''16 c''16 bes'16 a'16 g'16 |
  f'16 e'16 e'16 f'16 f'16 ees'16 ees'16 d'16 |
  d'2
 }

 \repeat volta 2 {
  f'2 |
  g'8 ees'8 d'4 |
  f'2 |
  g'8 ees'8 d'4 |
  ees''16 d''16 c''16 bes'16 a'16 g'16 f'16 e'16 |
  f'16 e'16 f'16 a'16 g'4 |
  f'16 e'16 e'16 f'16 f'16 ees'16 ees'16 d'16 |
  d'2
 }
}

melodynotes = {
    \time 2/4
    \key d \minor

    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key d \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key d \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key d \minor
    \repeat volta 2 {
        d4 a,4 |
        d4 a,4 |
        d4 a,4 |
        d4 a,4 |

        f4 c4 |
        g,4 d4 |
        d4 c4 |
        d8 a,8 d8 r8 |
    }
    \repeat volta 2 {
        f4 c4 |
        f4 c4 |
        f4 c4 |
        f4 c4 |

        f4 c4 |
        f4 c4 |
        d4 c4 |
        d8 a,8 d8 r8 |
    }
    \repeat volta 2 {
        d2 |
        c4-> d4-> |
        d2 |
        c4-> d4-> |

        f4 c4 |
        f4 g4 |
        d4 c4 |
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
    \time 2/4
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        f2 | g2:min | d4:min c4:min | d2:min |
    }
    \repeat volta 2 {
        f2 | f2 | f4 c4:7 | f2 |
        f2 | f2 | d4:min c4:min | d2:min |
    }
    \repeat volta 2 {
        \chordChangesOff d2:min \chordChangesOn | c4:min d4:min |
        d2:min | c4:min d4:min |
        f2 | f4 g4:min | d4:min c4:min | d2:min |
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
    \time 2/4
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
    \time 2/4
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
    d2:min | s2 | s2 | s2 |
}

previewnotes = {
    \time 2/4
    \key d \minor
  d'8 a'16 g'16 f'8 f'8 |
  f'16 g'16 f'16 e'16 d'4 |
  d'8 f'8 a'8 d''8 |
  d''8 c''16 bes'16 a'4 |
}

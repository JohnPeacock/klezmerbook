\version "2.18.2"

bandmNVbody = {
    \time 4/4
    \repeat volta 2 {
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 | \breakA
    }
    \markB \positionB
    s1 | \breakBone
    s1 | \breakBtwo
    s1 | \breakBtre
    s1 | \breakBfor
    s1 | \breakBfiv
    s1 | \breakBsix
    s1 | \breakBsev
    s1 | \markDC \positionDC
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

voiceone = {
    \time 4/4
    \key g \major
    << { \stemUp \dynamicUp
        \repeat volta 2 {
            b'8\f b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'4 d''4 b'4 b'4 |
        }
        d''2\p b'4 g'4 | g'2. r4      | a'8 a'4 a'8 b'4 c''4 | g'2. r4 |
        d''2 b'4 g'4 | g'2 c''4 b'4 | a'8 a'4 a'8 b'4 c''4 | b'2. r4 |
    } \\ { \stemDown \dynamicDown
        \repeat volta 2 {
            g'8\f g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
            g'8 g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
            g'8 g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
            g'4 b'4 g'4 g'4 |
        }
        b'2\mf g'4 d'4 | e'2. r4 | fis'4 fis'4 g'4 a'4 | d'2. r4 |
        b'2 g'4 d'4 | e'2. r4 | fis'4 fis'4 g'4 a'4 | g'2. r4 |
    } >>
}

melodynotes = {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% similar to voiceone but with embellishment in melody line

voicetwo = {
    \time 4/4
    \key g \major
    << { \stemUp \dynamicUp
        \repeat volta 2 {
            b'8\f b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
            b'4 d''4 b'4 b'4 |
        }
        d''2\p b'4 g'4 | g'2. r4      | a'8 a'4 a'8 b'4 c''4 | g'2. r4 |
        d''2 b'4 g'4 | g'2 c''4 b'4 | a'8 a'4 a'8 b'4 c''4 | b'2. r4 |
    } \\ { \stemDown \dynamicDown
        \repeat volta 2 {
            g'8\f g'4 g'8 \tuplet 3/2 { g'8 [ fis'8 g'8 ] } \tuplet 3/2 { a'8 [ g'8 fis'8 ] } |
            g'8 g'4 g'8 \tuplet 3/2 { g'8 [ fis'8 g'8 ] } \tuplet 3/2 { a'8 [ g'8 fis'8 ] } |
            g'8 g'4 g'8 \tuplet 3/2 { g'8 [ fis'8 g'8 ] } \tuplet 3/2 { a'8 [ g'8 fis'8 ] } |
            g'4 b'4 g'4 g'4 |
        }
        b'2\mf g'4 d'4 | e'2. r4     | fis'8 fis'4 fis'8 g'4 a'4 | d'2. r4 |
        b'2 g'4 d'4 | e'2 a'4 g'4 | fis'8 fis'4 fis'8 g'4 a'4 | g'2. r4 |
    } >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone without the harmony voice

voicethree = {
    \time 4/4
    \key g \major
    \repeat volta 2 {
        g'8\f g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
        g'8 g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
        g'8 g'4 g'8 fis'8 [ g'8 a'8 fis'8 ] |
        g'4 b'4 g'4 g'4 |
    }
    b'2\mf g'4 d'4 | e'2. r4 | fis'4 fis'4 g'4 a'4 | d'2. r4 |
    b'2 g'4 d'4 | e'2. r4 | fis'4 fis'4 g'4 a'4 | g'2. r4 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicefour = {
    \time 4/4
    \key g \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key g \major
    \repeat volta 2 {
        b'8\f b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
        b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
        b'8 b'4 b'8 a'8 [ b'8 c''8 a'8 ] |
        b'4 d''4 b'4 b'4 |
    }
    d''2\p b'4 g'4 | g'2. r4      | a'8 a'4 a'8 b'4 c''4 | g'2. r4 |
    d''2 b'4 g'4 | g'2 c''4 b'4 | a'8 a'4 a'8 b'4 c''4 | b'2. r4 |
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key g \major
    \repeat volta 2 {
        b8\mf b4 b8 a8 [ b8 c'8 a8 ] |
        b8 b4 b8 a8 [ b8 c'8 a8 ] |
        b8 b4 b8 a8 [ b8 c'8 a8 ] |
        b4 d'4 b4 b4 |
    }
    g4\p g4 a4 b4 | r4 b4\mf \tuplet 3/2 { a8 b8 a8 } g4 |
    d4\p d4 e4 fis4 | g4\mf g4 d4 b,4 |
    g4\p g4 a4 b4 | r4 b4\mf \tuplet 3/2 { a8 b8 a8 } g4 |
    d4\p d4 e4 fis4 | g4\mf g4 g4 r4 |
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key g \major
    \repeat volta 2 {
        g,8\mf g,4 g,8 fis,8 [ g,8 a,8 fis,8 ] |
        g,8 g,4 g,8 fis,8 [ g,8 a,8 fis,8 ] |
        g,8 g,4 g,8 fis,8 [ g,8 a,8 fis,8 ] |
        g,4 g,4 g,4 g,4 |
    }
    g4\p d4 g4 d4 | c4 g,4 c4 g,4 | d4 a,4 d4 a,4 | g4 d4 g4 d4 |
    g4 d4 g4 d4 | c4 g,4 c4 g,4 | d4 a,4 d4 fis4 | g4 d4 g4 r4 |
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \voicetwo
}

flutenotesmidi = \transpose c c' {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \voicetwo
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \voiceone
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \voiceone
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \voicethree
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
    \voiceone
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 4/4
    \repeat volta 2 { g1 | g1 | g1 | g1 | }
    g1 | c1 | d1:7 | g1 | g1 | c1 | d1:7 | g1 |
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
    \key g \major
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
    \key g \major
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
    \key g \major
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
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \voicethree
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    g1 | s1 | s1 | s1 |
}

previewnotes = {
    \time 4/4
    \key g \major
    \repeat volta 2 {
        g'8 g'4 g'8 fis'8 [ g'8 a'8 g' ] |
        g'8 g'4 g'8 fis'8 [ g'8 a'8 g' ] |
        g'8 g'4 g'8 fis'8 [ g'8 a'8 g' ] |
        g'4 g'4 g'4 g'4 |
    }
}

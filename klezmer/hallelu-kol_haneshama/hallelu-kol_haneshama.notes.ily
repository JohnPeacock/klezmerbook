\version "2.18.2"

bandmsectiona = {
    \positionSA \markSA
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        { s1 }
        { s2 \bar "|." \positionFN \markFN \noBreak s2 }
    }
    \bar "||"
}

bandmsectionb = {
    \positionB \markB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \bar "||"
    \positionDS \markDS
}

bandm = {
    \time 4/4
    \partial 4 s4 |
    \bandmsectiona
    \bandmsectionb
}

bandmNV = {
    \tempo \tempostring
    \partial 4 s4 |
    \bandmsectiona
    \bandmsectionb
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 104
    s1 |
    \bandmsectiona
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    \repeat volta 2 {
        c'4 c'8 bes8 c'4 c'8 bes8 |
        d'2 ~ d'8 r8 c'8 bes8 |
        c'4 g'8 f'8 ees'8 ( d'8 ) c'8 bes8 |
    }
    \alternative {
        { c'2 ~ c'8 r8 c'8 bes8 }
        { c'2 r8 g'8 g'8 g'8 }
    }
}

voiceonesectionb = {
    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 f'8 f'8 |
    f'4. f'8 f'4 f'8 ( g'8 ) |
    g'2 r8 g'8 g'8 g'8 |

    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 ees'8 d'8 |
    ees'4. f'8 d'4 bes4 |
    c'2 ~ c'8 r8 c'8 bes8 |
}

melodynotes = {
    \time 4/4
    \key ees \major
    \partial 4 c'8 bes8 |
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 4/4
    \key ees \major
    \preintro
    s2. c'8 bes8 |
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
}

voicetwosectionb = {
}

tenorharmony = {
    \time 4/4
    \key ees \major
    \partial 4 s4 |
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \voicetwosectiona
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
}

voicethreesectionb = {
}

counter = {
    \time 4/4
    \key ees \major
    \partial 4 s4 |
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \voicethreesectiona
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \repeat volta 2 {
        c4 g,4 c4 g,4 |
        bes,4 f,4 bes,4 f,4 |
        c4 g,4 d4 g,4 |
    }
    \alternative {
        { c4 g,4 c4 g,4 }
        { c4 g,4 c4 r4 }
    }
}

basslinesectionb = {
    c4 g4 c4 g,4 | bes,4 f4 bes,4 f,4 | bes,4 f4 bes,4 b4 | c4 g4 c4 g,4 |
    c4 g4 c4 g,4 | bes,4 f4 bes,4 f,4 | aes,4 ees4 g,4 d4 | c4 g,4 c4 r4 |
}

bassline = {
    \time 4/4
    \key ees \major
    \partial 4 r4 |
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \basslinesectiona
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c'' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = \transpose bes c' {
    \melodynotesmidi
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

chordletterssectiona = \chordmode {
    \partial 4 s4 |
    \repeat volta 2 { c1:min | bes1 | c2:min g2:min | }
    \alternative { { c1:min } { c1:min } }
}

chordletterssectionb = \chordmode {
    c1:min | bes1 | bes1 | c1:min |
    c1:min | bes1 | aes2 g2:min | c1:min |
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 4/4
    \preintro
    s1 |
    \chordletterssectiona
    \chordletterssectionb
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

guitarnotessectiona = {
}

guitarnotessectionb = {
}

guitarnotes = {
    \time 4/4
    \key ees \major
    \partial 4 s4 |
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \guitarnotessectiona
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotessectiona = {
}

pianorightnotessectionb = {
}

pianorightnotes = {
    \time 4/4
    \key ees \major
    \partial 4 s4 |
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
}

pianoleftnotessectionb = {
}

pianoleftnotes = {
    \time 4/4
    \key ees \major
    \partial 4 s4 |
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 4/4
    \key ees \major
    \preintro
    s1 |
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = {
}

drumshighsectionb = {
}

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    \partial 4 s4 |
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    s1 |
    \drumshighsectiona
    \drumshighsectionb
}

drumslowsectiona = {
}

drumslowsectionb = {
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \partial 4 s4 |
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    s1 |
    \drumslowsectiona
    \drumslowsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

leadsheetnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ha- le- lu, ha- le- lu, ha- le- lu, __
    Ha- le- lu, ha- le- lu, ha- le- lu. __ Ha- le- lu. __
    Kol ha- n'sha- mah t'- ha- leil Yah. __
    Ha- le- lu, ha- le- lu- yah.
    Kol ha- n'sha- mah t'- ha- leil Yah. __
    Ha- le- lu, ha- le- lu- yah.  Ha- le-
}
textlb = \lyricmode {
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 4/4
    \partial 4 s4 |
    \repeat volta 2 { c1:min | bes1 | c2:min g2:min | }
    \alternative { { c1:min } { c1:min } }
}

previewnotes = {
    \time 4/4
    \key ees \major
    \partial 4 c'8 bes8 |
    \repeat volta 2 {
        c'4 c'8 bes8 c'4 c'8 bes8 |
        d'2 ~ d'8 r8 c'8 bes8 |
        c'4 g'8 f'8 ees'8 ( d'8 ) c'8 bes8 |
    }
    \alternative {
        { c'2 ~ c'8 r8 c'8 bes8 }
        { c'2 r8 g'8 g'8 g'8 }
    }
}

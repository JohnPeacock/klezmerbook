\version "2.18.2"

bandmsectiona = {
    \positionSA \markSA
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s2. \bar "" \positionFN \markFN s4 |
    \bar "||"
}

bandmsectionb = {
    \positionB \markB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \positionDS \markDSFN
    \bar "||"
}

bandm = {
    \time 4/4
    \partial 4. s4. |
    \bandmsectiona
    \bandmsectionb
}

bandmNV = {
    \tempo \tempostring
    \partial 4. s4. |
    \bandmsectiona
    \bandmsectionb
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 120
    s1 |
    \bandmsectiona
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    f'4 e'4 d'4 e'4 |
    f'2 ~ f'8 a8 d'8 e'8 |
    f'4 e'4 d'4 cis'4 |
    d'2 ~ d'8 a8 d'8 e'8 |

    f'4 e'4 d'4 e'4 |
    f'2 ~ f'8 a8 d'8 e'8 |
    f'4 e'4 d'4 cis'4 |
    d'2. r4 |
}

voiceonesectionb = {
    a'4 a'8 a'8 a'4 a'4 |
    bes'4 a'4 g'2 |
    g'4 g'8 g'8 g'4 a'4 |
    f'4 g'4 a'2 |

    a'4 a'8 a'8 a'4 a'4 |
    bes'4 a'4 g'2 |
    g'4 g'8 g'8 g'4 a'4 |
    f'4 e'4 d'8 a8 d'8 e'8 |
}

melodynotes = {
    \time 4/4
    \key f \major
    \partial 4. a8 d'8 e'8 |
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 4/4
    \key f \major
    \preintro
    s2 s8 a8 d'8 e'8 |
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
    \key f \major
    \partial 4. s4. |
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 4/4
    \key f \major
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
    \key f \major
    \partial 4. s4. |
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 4/4
    \key f \major
    \preintro
    s1 |
    \voicethreesectiona
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
}

basslinesectionb = {
}

bassline = {
    \time 4/4
    \key f \major
    \partial 4. s4. |
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 4/4
    \key f \major
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

clarinetnotesmidi = \transpose bes c' {
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
}

chordletterssectionb = \chordmode {
}

chordletters = \chordmode {
    \time 4/4
    \partial 4. s4.
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
    \key f \major
    \partial 4. s4.
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 4/4
    \key f \major
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
    \key f \major
    \partial 4. s4.
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 4/4
    \key f \major
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
    \key f \major
    \partial 4. s4.
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 4/4
    \key f \major
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
    \partial 4. s4.
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
    \partial 4. s4.
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
    Lo yi- sa goy el goy che- rev, __
    lo yil- m'- du od mil- cha- mah. __
    Lo yi- sa goy el goy che- rev, __
    lo yil- m'- du od mil- cha- mah. __
    Lo yi- sa goy el goy che- rev, __
    lo yil- m'- du od mil- cha- mah. __
    Lo yi- sa goy el goy che- rev, __
    lo yil- m'- du od mil- cha- mah. __
    Lo yi- sa
}
textlb = \lyricmode {
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 4/4
    \partial 4. s4.
}

previewnotes = {
    \time 4/4
    \key f \major

    \partial 4. a8 d'8 e'8 |
    f'4 e'4 d'4 e'4 |
    f'2 ~ f'8 a8 d'8 e'8 |
    f'4 e'4 d'4 cis'4 |
    d'2 ~ d'8 a8 d'8 e'8 |
}

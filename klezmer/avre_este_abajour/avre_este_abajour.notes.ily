\version "2.18.2"

bandmsectiona = {
    \tempo \tempostring
    s2. | \breakAone s2. | \breakAtwo s2. | \breakAtre s2. | \breakAfor
    \repeat volta 2 {
        s2. | \breakAfiv s2. | \breakAsix s2. | \breakAsev
    }
    \alternative {
        { s2. | \breakAeit }
        { s2. | \breakAnin }
    }
    \bar "||"
    s2. | \breakAten s2. | \breakAelv s2. | \breakAtwl s2. | \breakAtht
    \repeat volta 2 {
        s2. | \breakAfrt s2. | \breakAfft s2. | \breakAsxt
    }
    \alternative {
        { s2. | \breakAsvt }
        { s2. | \breakAett }
    }
    \markDC \positionDC
    \bar "|."
}

bandm = {
    \time 6/8
    \bandmsectiona
}

bandmNV = {
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2. }

metronome = {
    \time 6/8
    \preintro
    \tempo 4. = 76
    \bandmsectiona
    \bandmsectiona
}

% ----------------------------------------

voiceonesectiona = {
    \key d \major
    \tempo \tempostring
    a'4 a'8 a'8 g'8 a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
    a'8 a'8 a'8 a'8 ( g'8 ) a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
}

melodynotes = {
    \time 6/8
    \voiceonesectiona
}

melodynotesmidi = {
    \time 6/8
    \preintro
    \voiceonesectiona
    \voiceonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
% currently identical to voiceone
    \key d \major
    \tempo \tempostring
    a'4 a'8 a'8 g'8 a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
    a'8 a'8 a'8 a'8 ( g'8 ) a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
}

tenorharmony = {
    \time 6/8
    \voicetwosectiona
}

tenorharmonymidi = {
    \time 6/8
    \preintro
    \voicetwosectiona
    \voicetwosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
% currently identical to voiceone
    \key d \major
    \tempo \tempostring
    a'4 a'8 a'8 g'8 a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
    a'8 a'8 a'8 a'8 ( g'8 ) a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
}

counter = {
    \time 6/8
    \voicethreesectiona
}

countermidi = {
    \time 6/8
    \preintro
    \voicethreesectiona
    \voicethreesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \key d \major
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
}

bassline = {
    \time 6/8
    \basslinesectiona
}

basslinemidi = {
    \time 6/8
    \preintro
    \basslinesectiona
    \basslinesectiona
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

trombonenotes = \transpose c c, {
    \counter
}

trombonenotesmidi = \transpose c c, {
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
    d2. |
    a4.:7 d4. |
    d4. b4.:min |
    e4.:min a4.:7 |
    \repeat volta 2 {
        fis4.:7 b4.:min |
        cis4.:7 fis4.:min |
        d4. g4. |
    }
    \alternative {
        { a4.:7 d4. | }
        { a4.:7 d4. | }
    }
    d2. |
    a4.:7 d4. |
    d4. b4.:min |
    e4.:min a4.:7 |
    \repeat volta 2 {
        fis4.:7 b4.:min |
        cis4.:7 fis4.:min |
        d4. g4. |
    }
    \alternative {
        { a4.:7 d4. | }
        { a4.:7 d4. | }
    }
}

chordletters = \chordmode {
    \time 6/8
    \chordletterssectiona
}

chordlettersmidi = \chordmode {
    \time 6/8
    \preintro
    \chordletterssectiona
    \chordletterssectiona
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
    \key d \major
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
}

guitarnotes = {
    \time 6/8
    \guitarnotessectiona
}

guitarnotesmidi = {
    \time 6/8
    \preintro
    \guitarnotessectiona
    \guitarnotessectiona
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
    \key d \major
    \key d \major
    \tempo \tempostring
    a'4 a'8 a'8 g'8 a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
    a'8 a'8 a'8 a'8 ( g'8 ) a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
    \repeat volta 2 {
        e''8 ( d''8 ) cis''8 d''8 ( b'8 ) cis''8 |
        d''8 ( cis''8 ) b'8 a'4. |
        fis'8 g'8 a'8 b'4 b'8 |
    }
    \alternative {
        { a'4 ( g'8 ) fis'4 cis''8 | }
        { a'4 ( g'8 ) fis'4. | }
    }
}

pianorightnotes = {
    \time 6/8
    \pianorightnotessectiona
}

pianorightnotesmidi = {
    \time 6/8
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectiona
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    \key d \major
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
}

pianoleftnotes = {
    \time 6/8
    \pianoleftnotessectiona
}

pianoleftnotesmidi = {
    \time 6/8
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectiona
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
}

drumshigh = \drummode {
    \time 6/8
    \stemUp
    \dynamicUp
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 6/8
    \preintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowsectiona = \drummode {
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
    s2. |
    s2. |
    s2. |
    s2. |
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
    }
    \alternative {
        { s2. | }
        { s2. | }
    }
}

drumslow = \drummode {
    \time 6/8
    \stemDown
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 6/8
    \preintro
    \drumslowsectiona
    \drumslowsectiona
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
    A- vrees- te a- ba-
    jour __ bi- jou.
    a- vre la tu ven-
    ta- __ na por
    ver __ tu ca- ra
    mo- re- na
    ai Dio da- re mi
    al- ma por
    al- ma

    por la tu puer- ta
    yo __ pa- si
    yo la to- pi ce-
    rra- da la
    lla- ve- du- ra
    yo __ be- si
    co- mo be- sar tu
    ca- ra la
    ca- ra
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 6/8
    d2. |
    a4.:7 d4. |
    d4. b4.:min |
    e4.:min a4.:7 |
}

previewnotes = {
    \time 6/8
    \key d \major
    \tempo \tempostring
    a'4 a'8 a'8 g'8 a'8 |
    b'8 ( a'8 ) g'8 fis'4. |
    a'8 b'8 cis''8 d''4 a'8 |
    b'8 ( g'8 b'8 ) a'4 cis''8 |
}

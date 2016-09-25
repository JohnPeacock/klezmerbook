\version "2.18.2"

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix
    }
    \alternative {
        { s2 | \breakAsev s2 | \breakAeit } { s2 | \breakAnin s2 | }
    }
    \breakA \bar ".|:"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 { s2 | \breakBone s2 | \breakBtwo }
    \alternative {
        { s2 | \breakBtre s2 | \breakBfor s2 | \breakBfiv s2 | \breakBsix }
        { s2 | \breakBsev s2 | \breakBeit s2 | \breakBnin s2 | }
    }
    \breakB \bar ".|:"
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 |
    }
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

metronome = \context Voice = "metronome" {
    \time 2/4
    s1 |
    \tempo 4=140
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \tempo 4=145
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

melodysectiona = {
    \repeat volta 2 {
        d'4 a'4 | a'8 bes'8 a'8 g'8 |
        fis'4 fis'4 ~ | fis'2 |
        fis'4 fis'4 | fis'8 g'8 fis'8 ees'8 |
    }
    \alternative {
        { e'4 d'4 ~ | d'2 | }
        { e'4 fis'4 | g'4 c''4 | }
    }
}

melodysectionb = \transpose c c' {
    \repeat volta 2 {
        \tuplet 3/2 { d'8 ees'8 c'8 } \tuplet 3/2 { ees'8 fis'8 d'8 }
        \tuplet 3/2 { d'8 ees'8 fis'8 } \tuplet 3/2 { fis'8 g'8 a'8 }
    }
    \alternative {
        { a'8 d''8 d''8 c''8 | c''8 bes'8 bes'8 a'8 | a'2 ~ | a'2 | }
        { g'8 c''8 c''8 bes'8 | bes'8 a'8 a'8 g'8 | a'4 fis'4 | d'4 a4 | }
    }
}

melodysectionc = {
    \repeat volta 2 {
        d'8 ees'8 fis'8 g'8 |
        a'8 bes'8 a'8-\trill g'8 |
        d''8 fis'8 d''8 fis'8 |
        c''8 bes'8 a'8 g'8

        c''8 bes'8 a'8 g'8 |
        fis'8 ees'8 d'8 c'8 |
        c'8 d'8 ees'8 d'8 |
        d'2 |
    }
}

melody = {
    \time 2/4
    \key g \minor
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

altoharmony = {
}

tenorharmony = {
}

counter = {
}

counterslur = {
}

basslinesectiona = {
    \repeat volta 2 {
        d4 a,4 |
        d4 a4 |
        d4 a,4 |
        d4 a4 |

        c4 g,4 |
        c4 g,4 |
    }
    \alternative {
        { c4 d4 | d4 a,4 | } { c4 d4 | d4 a4 | }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        c4 d4 |
        d4 a,4 |
    }
    \alternative {
        {
            d4 a,4 | d4 a4 | d4 a,4 | d4 a4 |
        }
        {
            c4 g,4 | c4 g,4 | d4 a,4 | d8 d8 a8 fis8 |
        }
    }
}

basslinesectionc = {
    \repeat volta 2 {
        fis4 d4 | a4 d4 | fis4 d4 | a4 d4 | ees4 c4 | g4 c4 | ees4 c4 | g4 c4 |
    }
}

bassline = {
    \key g \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 { d2 | d2 | d2 | d2 | c2:min | c2:min | }
    \alternative {
        { \chordChangesOff c4:min \chordChangesOn d4 | d2 | }
        { c4:min d4 | d4 c4:min | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordChangesOff c4:min \chordChangesOn d4 | d2 | }
    \alternative {
        { \chordChangesOff d2 \chordChangesOn | d2 | d2 | d2 | }
        { \chordChangesOff c2 \chordChangesOn | c2 | d2 | d2 | }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d2 \chordChangesOn | d2 | d2 | d2 |
        c2:min | c2:min | c2:min | c2:min |
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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

pianochordsalt = \chordmode {
    \time 2/4
}

pianochordletterssectiona = \chordmode {
    \chordletterssectiona
}

pianochordletterssectionb = \chordmode {
    \chordletterssectionb
}

pianochordletterssectionc = \chordmode {
    \chordletterssectionc
}

pianochords = \chordmode {
    \time 2/4
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = \transpose c c' {
    s1 |
    \melody
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose c d {
    \melody
}

clarinetnotesmidi = \transpose c d {
    s1 |
    \melody
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose c a {
    \time 2/4
    \key g \minor
    \melodysectiona
    \transpose c c, { \melodysectionb }
    \melodysectionc
}

altosaxnotesmidi = \transpose c a {
    \time 2/4
    s1 |
    \melodysectiona
    \transpose c c, { \melodysectionb }
    \melodysectionc
    \melodysectiona
    \transpose c c, { \melodysectionb }
    \melodysectionc
}

altosaxmelodynotes = \transpose c a {
    \time 2/4
    \key g \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose c d' {
    \counterslur
}

tenorsaxnotesmidi = \transpose c d' {
    s1 |
    \counterslur
    \counterslur
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose c d {
    \time 2/4
    \melody
}

trumpetnotesmidi = {
    s1 |
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \time 2/4
    \key g \minor
    \counter
}

trombonenotesmidi = {
    \time 2/4
    \key g \minor
    s1 |
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \time 2/4
    \key g \minor
    \bassline
}

euphoniumnotesmidi = {
    \time 2/4
    \key g \minor
    s1 |
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \time 2/4
    \key g \minor
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = \transpose c c {
    \melody
}

violinnotesmidi = \transpose c c {
    s1 |
    \melody
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \leadsheetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \key g \minor
    \time 2/4
}

guitarnotesmidi = {
    \key g \minor
    \time 2/4
    s1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    s1 |
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    \repeat volta 2 {
        < a d' >4 < d' a' >4 | a'8 bes'8 a'8 g'8 |
        < a d' fis' >4 < a d' fis' >4 ~ | < a d' fis' >2 |
        < d' fis' >4 < d' fis' >4 | fis'8 g'8 fis'8 ees'8 |
    }
    \alternative {
        { e'4 d'4 ~ | d'2 | }
        { e'4 fis'4 | g'4 c''4 | }
    }
}

pianorightuppersectionb = \transpose c c' {
    \repeat volta 2 {
        \tuplet 3/2 { d'8 ees'8 c'8 } \tuplet 3/2 { ees'8 fis'8 d'8 }
        \tuplet 3/2 { d'8 ees'8 fis'8 } \tuplet 3/2 { fis'8 g'8 a'8 }
    }
    \alternative {
        { a'8 d''8 d''8 c''8 | c''8 bes'8 bes'8 a'8 | a'2 ~ | a'2 | }
        { g'8 c''8 c''8 bes'8 | bes'8 a'8 a'8 g'8 | a'4 fis'4 | d'4 a4 | }
    }
}

pianorightuppersectionc = {
    \repeat volta 2 {
        d'8 ees'8 fis'8 g'8 |
        a'8 bes'8 a'8-\trill g'8 |
        d''8 fis'8 d''8 fis'8 |
        c''8 bes'8 a'8 g'8

        c''8 bes'8 a'8 g'8 |
        fis'8 ees'8 d'8 c'8 |
        c'8 d'8 ees'8 d'8 |
        d'2 |
    }
}

pianorightnotes = {
    \key g \minor
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

pianorightuppernotes = { \pianorightnotes }
pianorightlowernotes = { }

pianoleftnotessectiona = {
    \repeat volta 2 {
        d8\pp a,8 d8 a8 |
        d8 a,8 d8 a8 |
        d8 a,8 d8 a8 |
        d8 a,8 d8 a8 |

        c8 g,8 c8 g,8 |
        c8 g,8 c8 g,8 |
    }
    \alternative {
        { c8 g,8 d8 a,8 | d8 a,8 d8 a,8 | } { c8 g,8 d8 a,8 | d8 a,8 d8 a,8 | }
    }
}

pianoleftnotessectionb = {
    \repeat volta 2 {
        c8 g,8 d8 a,8 |
        d8 d'8 a8 d8 |
    }
    \alternative {
        {
            d8 d'8 a8 d'8 | d8 d'8 a8 d'8 | d8 d'8 a8 d'8 | d8 d'8 a8 d'8 |
        }
        {
            c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | d8 d'8 a8 d'8 | d8 d'8 a8 d'8 |
        }
    }
}

pianoleftnotessectionc = {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
    }
}

pianoleftnotes = {
    \key g \minor
    \time 2/4
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
}

pianoleftuppernotes = { \pianoleftnotes }
pianoleftlowernotes = { }

pianorightnotesmidi = {
    \key g \minor
    \time 2/4
    s1 |
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotesmidi = {
    \key g \minor
    \time 2/4
    s1 |
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \repeat volta 2 { d2 | d2 | d2 | d2 | c2:min | c2:min | }
    \alternative { { c4:min d4 | d2 | } { c4:min d4 | d4 c4:min | } }
}

previewnotes = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        d'4 a'4 | a'8 bes'8 a'8 g'8 |
        fis'4 fis'4 ~ | fis'2 |
        fis'4 fis'4 | fis'8 g'8 fis'8 ees'8 |
    }
    \alternative {
        { e'4 d'4 ~ | d'2 | }
        { e'4 fis'4 | g'4 c''4 | }
    }
}

\version "2.18.2"

bandmNVbody = {
    \time 2/4
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakA
    }
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix
    }
    \alternative {
        { s2 | \breakBsev s2 | \breakBeit }
        { s2 | \breakBnin s2 | }
    }
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

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 105
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceone = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        e'4 e'4 |
        g'8 g'8 g'4 |
        fis'8 g'8 fis'8 d'8 |
        e'2 |
        e'4 e'4 |
        fis'8 g'8 fis'8 d'8 |
        e'2 ~ |
        e'2 |
    }
    \markB \positionB
    \repeat volta 2 {
        b'2 |
        b'8 c''8 b'4 |
        a'2 ~ |
        a'2 |
        a'4 a'4 |
        a'8 b'8 a'8 g'8 |
    }
    \alternative {
        {
            a'8 g'8 a'8 g'8 |
            b'2 |
        }
        {
            e'2 ~ |
            e'2 |
        }
    }
}

melodynotes = {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% similar to voiceone but with embellishment in melody line
% right now, no different

voicetwo = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        e'4 e'4 |
        g'8 g'8 g'4 |
        fis'8 g'8 fis'8 d'8 |
        e'2 |
        e'4 e'4 |
        fis'8 g'8 fis'8 d'8 |
        e'2 ~ |
        e'2 |
    }
    \markB \positionB
    \repeat volta 2 {
        b'2 |
        b'8 c''8 b'4 |
        a'2 ~ |
        a'2 |
        a'4 a'4 |
        a'8 b'8 a'8 g'8 |
    }
    \alternative {
        {
            a'8 g'8 a'8 g'8 |
            b'2 |
        }
        {
            e'2 ~ |
            e'2 ~ |
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone without the harmony voice
% right now, the same as voice one.

voicethree = {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicefour = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        b4 b4 |
        d'8 b8 d'8 b8 |
        d'8 e'8 d'8 a8 |
        r8 b8 r8 b8 |
        r8 b8 r8 b8 |
        d'8 e'8 d'8 a8 |
        b2 ~ |
        b4 g8 b8 |
    }
    \markB \positionB
    \repeat volta 2 {
        g'4 g'4 |
        g'8 a'8 g'4 |
        fis'4 fis'8 fis'8 |
        fis'4 fis'8 fis'8 |
        e'4 e'4 |
        e'8 fis'8 e'8 d'8 |
    }
    \alternative {
        {
            e'8 d'8 e'8 d'8 |
            g'2 |
        }
        {
            b4 b8 b8 |
            b4 r8 g8 |
        }
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        e4-.\ff b,8 e8 |
        g4-. d8 g8 |
        d4-. a,8 d8 |
        e4-. a,8 a8 |

        e4-. g8 e8 |
        d4-. a8 d8 |
        e4-. b,4-. |
        e4. r8 |
    }
    \markB \positionB
    \repeat volta 2 {
        g,8. g,16 a,8 b,8 |
        b,8 c8 b,4-. |
        d4 r4 |
        d8 e8 fis8 g8 |

        a4 a4 |
        a,4 b,4 |
    }
    \alternative {
        {
            c4 g,4 |
            d4 r4 |
        }
        {
            e4 r4 |
            e4 b,8 d8 |
        }
    }
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

clarinetnotes = \transpose bes c'' {
    \voicetwo
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \voiceone
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c'' {
    \tenorharmony
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = \transpose c c, { \tenorsaxnotes }
tenorforflutenotes = \transpose c c' { \tenorharmony }

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

violinnotes = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        e'4 e'4 |
        g'4 g'4 |
        fis'4 fis'4 |
        e'2 |

        e'4 e'4 |
        fis'4 fis'4 |
        e'2 ~ |
        e'2 |
    }
    \markB \positionB
    \repeat volta 2 {
        b'2 |
        b'4 b'4 |
        a'2 ~ |
        a'2 |

        a'4 a'4 |
        a'4 a'4 |
    }
    \alternative {
        {
            a'4 a'4 |
            b'2 |
        }
        {
            e'2 ~ |
            e'2 ~ |
        }
    }
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \transpose e d \chordmode {
    \time 2/4
    \repeat volta 2 {
        e2:min | g2 | d2 | e2:min |
        e2:min | d2 | e2:min | e2:min |
    }
    \repeat volta 2 {
        g2 | g2 | d2 | d2 | a2:min | a2:min |
    }
    \alternative {
        { c2 | g2 | }
        { e2:min | e2:min | }
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
    \key g \major
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

pianorightnotes = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
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

pianoleftnotes = \transpose e d {
    \time 2/4
    \key g \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
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
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \markB \positionB
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
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

previewchordletters = \transpose e d \chordmode {
    \time 2/4
    e2:min | g2 | d2 | c2 |
}

previewnotes = \transpose e d {
    \time 2/4
    \key g \major
    \markA \positionA
    \tempo \tempostring
    \bar ".|:"
    e'4 e'4 |
    g'8 g'8 g'4 |
    fis'8 g'8 fis'8 d'8 |
    e'2 |
}

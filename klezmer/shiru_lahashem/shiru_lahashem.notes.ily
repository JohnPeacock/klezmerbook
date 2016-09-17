\version "2.18.0"

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
    s1 | \breakB
    \bar "||"

    \markC \positionC
    s1 | \breakCone
    s1 | \breakCtwo
    s1 | \breakCtre
    s1 | \breakCfor

    s1 | \breakCfiv
    s1 | \breakCsix
    s1 | \breakCsev
    s1 |

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

voiceone = {
    \time 4/4
    \key d \major
    << { \stemUp \dynamicUp
        \repeat volta 2 {
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'4 e'4 e'4 d'4 |
        }

        e'4. e'8 fis'4 e'4 |
        fis'4 e'4 fis'4 e'4 |
        d'4. d'8 e'4 d'4 |
        fis'8 e'8 d'8 e'8 d'2 |

        a'2 g'4 fis'4 |
        e'1 |
        g'2 fis'4 e'4 |
        d'8 ( fis'4. ~ fis'2 ) |

        a'2 g'4 fis'4 |
        e'1 |
        g'8 g'4 g'8 fis'4 e'4 |
        d'1 |
    } \\ { \stemDown \dynamicDown
    } >>
}

melodynotes = {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% similar to voiceone but with embellishment in melody line

voicetwo = {
    \time 4/4
    \key d \major
    << { \stemUp \dynamicUp
        \repeat volta 2 {
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'8 fis'4 e'8 g'4 fis'4 |
            fis'4 e'4 e'4 d'4 |
        }

        e'4. e'8 fis'4 e'4 |
        fis'4 e'4 fis'4 e'4 |
        d'4. d'8 e'4 d'4 |
        fis'8 e'8 d'8 e'8 d'2 |

        a'2 g'4 fis'4 |
        e'1 |
        g'2 fis'4 e'4 |
        d'8 ( fis'4. ~ fis'2 ) |

        a'2 g'4 fis'4 |
        e'1 |
        g'8 g'4 g'8 fis'4 e'4 |
        d'1 |
    } \\ { \stemDown \dynamicDown
    } >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone without the harmony voice

voicethree = {
    \time 4/4
    \key d \major
    \repeat volta 2 {
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'4 e'4 e'4 d'4 |
    }

    e'4. e'8 fis'4 e'4 |
    fis'4 e'4 fis'4 e'4 |
    d'4. d'8 e'4 d'4 |
    fis'8 e'8 d'8 e'8 d'2 |

    a'2 g'4 fis'4 |
    e'1 |
    g'2 fis'4 e'4 |
    d'8 ( fis'4. ~ fis'2 ) |

    a'2 g'4 fis'4 |
    e'1 |
    g'8 g'4 g'8 fis'4 e'4 |
    d'1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicefour = {
    \time 4/4
    \key d \major
    \repeat volta 2 { s1 | s1 | s1 | s1 | }
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key d \major
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key d \major
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key d \major
    \repeat volta 2 {
        d8\f d4 d8 a,4-. d4-. | d8 d4 d8 a,4-. d4-. |
        d8 d4 d8 a,4-. d4-. | d4-. a,4-. d4-. a,4-. |
    }
    e4.\mf e8 b,4-. e4-. | e4-. b,4-. e4-. b,4-. |
    d4. d8 a,4-. d4-. | d4-. a,4-. d4-. r4 |
    a,8 a,4 a,8 cis4-. d4-. | e4-. b,4-. e4-. b,4-. |
    g,8 g,4 g,8 b,4-. c4-. | d4-. a,4-. d4-. a,4-. |
    a,8 a,4 a,8 cis4-. d4-. | e4-. b,4-. e4-. b,4-. |
    g,8 g,4 g,8 b,4-. c4-. | d4\f d'4 a4 fis4 |
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

altosaxnotes = \transpose ees c' {
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
    \voicetwo
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 4/4

    \repeat volta 2 { d1 | d1 | d1 | d1 | }
    e1:min7 | e1:min7 | d1 | d1 |
    a1:7 | e1:min7 | g1 | d1 |
    a1:7 | e1:min7 | g1 | d1 |
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
    \key d \major
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
    \key d \major
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
    \key d \major
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
    \repeat volta 2 { d1 | d1 | d1 | d1 | }
}

previewnotes = {
    \time 4/4
    \key d \major
    \repeat volta 2 {
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'8 fis'4 e'8 g'4 fis'4 |
        fis'4 e'4 e'4 d'4 |
    }
}

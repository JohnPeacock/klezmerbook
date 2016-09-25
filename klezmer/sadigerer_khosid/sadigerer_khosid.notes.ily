\version "2.18.2"

bandmNVbody = {
    \time 2/4
    s2 | \breakIN
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    }
    \alternative { { s2 | \breakAsxt } { s2 | } }
    \breakA \bar ".|:-||"

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
    }
    \alternative { { s2 | \breakBeit } { s2 | } }
    \breakB \bar ".|:-||"

    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 |
    }
}

bandmNV = {
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 2/4
    \key g \minor

    s4 s8 d'8 |
    \repeat volta 2 {
        bes'8. a'16  g'8 g'8 |
        r8 bes'16 a'16 g'16 bes'16 a'16 g'16 |
        a'8. g'16 fis'8 fis'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |

        fis'16 d'16 fis'16 a'16 g'16 d'16 g'16 bes'16 |
        a'16 d'16 a'16 c''16 bes'16 g'16 bes'16 d''16 |
        c''8 c''8 c''16 d''16 ees''16 c''16 |
        d''4 d''16 c''16 bes'16 a'16 |

        bes'8. a'16 g'8 g'8 |
        r8 bes'16 a'16 g'16 bes'16 a'16 g'16 |
        a'8. g'16 fis'8 fis'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |

        d''4 c''4 |
        bes'4 a'4 |
        g'8 g'8 bes'16 a'16 g'16 fis'16 |
    }
    \alternative { { g'4 r8 d'8 | } { g'4 r16 d'16 g'16 a'16 | } }
    \bar ".|:-||"

    \key g \major
    \repeat volta 2 {
        b'16 c''16 b'16 c''16 b'8 a'16 g'16 |
        a'8 b'8 r4 |
        b'16 c''16 b'16 c''16 b'8 a'16 g'16 |
        a'16 b'16 g'8 r4 |
        b'16 c''16 b'16 c''16 b'8 a'16 g'16 |
        a'8 b'8 r4 |
        a'8 a'8 g'16 fis'16 e'16 fis'16 
    }
    \alternative { { g'4 r16 d'16 g'16 a'16 | } { g'4 r4 } }
    \bar ".|:-||"

    \key g \minor 
    \repeat volta 2 {
        d''2 |
        d''2 |
        d''4 d''4 |
        d''4 d''4 |
        r8 d''8 d''8 d''8 |
        c''8 r8 c''4 |
        bes'16 c''16 bes'16 a'16 g'16 fis'16 g'16 a'16 |
        bes'8 r8 d''4 |
        r8 d''8 d''8 d''8 |
        c''8 r8 c''4 |
        bes'16 f'16 f'16 bes'16 bes'16 aes'16 aes'16 g'16 |
        g'4 r4 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key g \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key g \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key g \minor

    s4 s8 r8 |
    \repeat volta 2 {
        g,8 r8 d8 r8 | g,8 r8 d8 r8 |
        a,8 r8 d8 r8 | c8 r8 d8 r8 |
        d8 r8 g,8 r8 | d8 r8 g8 r8 |
        c8 r8 g,8 r8 | d8 r8 a,8 r8 |
        g,8 r8 d8 r8 | g,8 r8 d8 r8 |
        a,8 r8 d8 r8 | c8 r8 d8 r8 |
        d8 r8 a,8 r8 | d8 r8 a8 r8 |
        g8 r8 d8 r8 |
    }
    \alternative { { g,8 r8 d8 r8 | } { g,8 r8 d8 r8 | } }

    \key g \major
    \repeat volta 2 {
        b,8 r8 g,8 r8 | d8 r8 g,8 r8 |
        b,8 r8 g,8 r8 | d8 r8 g,8 r8 |
        b,8 r8 g,8 r8 | d8 r8 g,8 r8 |
        d8 r8 a,8 r8 |
    }
    \alternative { { g,8 r8 r4 | } { g,8 r8 g8 r8 | } }

    \repeat volta 2 {
        g,2 | g,2 |
        g,4 g,4 | g,4 g,4 |
        g8 r8 d8 r8 | g,8 r8 c8 r8 |
        g,8 r8 d8 r8 | g,8 r8 d8 r8 |
        g,8 r8 d8 r8 | g,8 r8 c8 r8 |
        bes,8 r8 aes,8 r8 | g,8 r8 r4 |
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
    s2 |
    \repeat volta 2 {
        g2:min | g2:min |
        d2 | c4:min d4 |

        d4:7 g4:min | d4:7 g4:min |
        c2:min | d2:7 |

        g2:min | g2:min |
        d2 | c4:min d |

        d2:7 | d2:7 |
        g4:min d4:7 |
    }
    \alternative { { g2:min | } { \chordChangesOff g2:min \chordChangesOn | } }

    \repeat volta 2 {
        g2 | g2 | g2 | g2 | g2 | g2 | d2:7 |
    }
    \alternative { { g2 | } { g2:min } }

    \repeat volta 2 {
        \chordChangesOff g2:min \chordChangesOn | g2:min | g2:min | g2:min |
        g2:min | c2:min | g2:min | g2:min |
        g2:min | c2:min | bes4 aes4 | g2:min |
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
    \key g \minor
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
    \key g \minor
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
    \key g \minor
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
    s2 | g2:min | g2:min | d2 | c4:min d4 |
}

previewnotes = {
    \time 2/4
    \key g \minor
    s4 s8 d'8 |
    \bar ".|:"
    bes'8. a'16  g'8 g'8 |
    r8 bes'16 a'16 g'16 bes'16 a'16 g'16 |
    a'8. g'16 fis'8 fis'8 |
    fis'16 g'16 fis'16 ees'16 d'4 |
}

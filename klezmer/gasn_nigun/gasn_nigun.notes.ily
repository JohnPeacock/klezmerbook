\version "2.18.0"

bandmNVbody = {
    \time 3/8
    s4. |
    \markA \positionA
    \repeat volta 2 {
        s4. | \breakAone s4. | \breakAtwo
        s4. | \breakAtre s4. | \breakAfor
        s4. | \breakAfiv s4. | \breakAsix
        s4. | \breakAsev s4. | \breakAeit
        s4. | \breakAnin s4. | \breakAten
        s4. | \breakAelv s4. | \breakAtwl
        s4. | \breakAtht s4. | \breakAfrt
        s4. | \breakAfft
    }
    \alternative { { s4. | \breakAsxt } { s4. | } }
    \breakA
    \bar ".|:-||"

    \markB \positionB
    \repeat volta 2 {
        s4. | \breakBone s4. | \breakBtwo
        s4. | \breakBtre s4. | \breakBfor
        s4. | \breakBfiv s4. | \breakBsix
        s4. | \breakBsev s4. | \breakBeit
        s4. | \breakBnin s4. | \breakBten
        s4. | \breakBelv s4. | \breakBtwl
        s4. | \breakBtht s4. | \breakBfrt
        s4. | \breakBfft
    }
    \alternative { { s4. | \breakBsxt } { s8 \bar "|." \markFN \positionFN s8 s8 | } }
    \bar "||"
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
    \tempo 4 = 60 
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 3/8
    \key d \minor

    s4 f'8 |
    \repeat volta 2 {
        f'16 g'8. g'8 |
        g'4-\trill f'8 |
        f'16 d'16 ~ d'4 ~ |
        d'8 r8 f'8 |
        f'16 g'8. g'8 |
        g'8.-\trill f'16 a'16 g'16 |
        f'8. c'16 a'16 c'16 |
        f'8 r8 c'8 |

        c'8. f'16 e'16 f'16 |
        g'8. aes'16 b'16 c''16 |
        d''8. ees''16 d''16 c''16 |
        b'8. -\trill aes'16 g'16 f'16 |
        f'8. e'16 g'16 e'16 |
        f'8. d'16 \tuplet 3/2 { ees'16 d'16 c'16 } |
        d'8. d''16 a'16 f'16 |
    }
    \alternative {
        { d'8 r8 f'8 | }
        { d'8 r16 a16 d'16 f'16 | }
    }

    \repeat volta 2 {
        a'4. ~ |
        a'8. a'16 \tuplet 3/2 { c''16 b'16 a'16 } |
        gis'16 b'16 a'4 ~ |
        a'8. d'16 f'16 a'16 |
        c''8. b'16 \tuplet 3/2 { c''16 b'16 a'16 } |
        c''8. b'16 \tuplet 3/2 { c''16 b'16 a'16 } |
        gis'16 b'16 a'4 ~ |
        a'8. a16 d'16 f'16 |

        a'8. gis'16 \tuplet 3/2 { a'16 gis'16 f'16 } |
        a'8. gis'16 \tuplet 3/2 { a'16 gis'16 f'16 } |
        e'16 g'!16 f'4 ~ |
        f'8. a16 d'16 e'16 |
        f'8. e'16 \tuplet 3/2 { f'16 e'16 d'16 } |
        f'8. e'16 \tuplet 3/2 { f'16 e'16 d'16 } |
        cis'16 e'16 d'4 ~ |
    }
    \alternative {
        { d'8 r16 a16 d'16 f'16 | }
        { d'8 r8 f'8 | }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 3/8
    \key d \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 3/8
    \key d \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 3/8
    \key d \minor

    s4 r8 |
    \repeat volta 2 {
        g,8 r8 g,8 |
        g,8 r8 g,8 |
        d8 r8 d8 |
        d8 r8 d8 |
        g,8 r8 g,8 |
        c8 r8 c8 |
        f,8 r8 f,8 |
        f,8 r8 f,8 |
        f,8 r8 f,8 |
        f,8 r8 f,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |
        d8 r8 g,8 |
        d8 r8 c8 |
        d8 r8 d8 |
    }
    \alternative { { d8 r4 | } { d8 r8 a,8 | } }

    \repeat volta 2 {
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
        d8 r8 a8 |
        d8 r8 f8 |
    }
    \alternative { { d8 r8 a8 } { d8 r8 r8 | } }
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
    \time 3/8
    s4. |
    \repeat volta 2 {
        g4.:min | g4.:min | d4.:min | d4.:min |
        g4.:min | c4.:7 | f4. | f4. |
	f4.:min | f4.:min | g4. | g4. |
        d4:min g8:min | d4:min c8:min | d4.:min |
    }
    \alternative {
        {
            \chordChangesOff
            d4.:min |
            \chordChangesOn
        }
        {
            \chordChangesOff
            d4.:min |
            \chordChangesOn
        }
    }

    \repeat volta 2 {
        \chordChangesOff
        d4.:min |
        \chordChangesOn
        d4.:min | d4.:min | d4.:min |
        d4.:min | d4.:min | d4.:min | d4.:min |
        d4.:min | d4.:min | d4.:min | d4.:min |
        d4.:min | d4.:min | d4.:min |
    }
    \alternative {
        {
            \chordChangesOff
            d4.:min |
            \chordChangesOn
        }
        {
            \chordChangesOff
            d4.:min |
            \chordChangesOn
        }
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
    \time 3/8
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
    \time 3/8
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
    \time 3/8
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
    \time 3/8
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 3/8
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
    \time 3/8
    s4. |
    g4.:min |
    s4. |
    d4.:min |
    s4. |
}

previewnotes = {
    \time 3/8
    \key d \minor
    s4 f'8 |
    \bar ".|:"
    f'16 g'8. g'8 |
    g'4-\trill f'8 |
    f'16 d'16 ~ d'4 ~ |
    d'8 r8 f'8 |
}

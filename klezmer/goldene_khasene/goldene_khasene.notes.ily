\version "2.18.0"

bandmNV = {
    \time 2/4

    \tempo \tempostring
    s2 | \breakIN
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    }
    \alternative { { s2 | \breakAsxt } { s2 | } }
    \bar "||"
    \breakA

    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo
    \grace { s8 } s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |
    \bar "||" 
    \breakB

    \markAI \positionAI
    s2 | \breakAIone s2 | \breakAItwo s2 | \breakAItre s2 | \breakAIfor
    s2 | \breakAIfiv s2 | \breakAIsix s2 | \breakAIsev s2 | \breakAIeit
    s2 | \breakAInin s2 | \breakAIten s2 | \breakAIelv s2 | \breakAItwl
    s2 | \breakAItht s2 | \breakAIfrt s2 | \breakAIfft s2 |
    \bar ".|:-||"
    \breakAI

    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix
    }
    \alternative {
        { s2 | \breakCsev s2 | \breakCeit } { s2 | \breakCnin s2 | }
    }
    \bar ".|:-||"
    \breakC

    \markD \positionD
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
        s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
        s2 | \breakDtht s2 | \breakDfrt
    }
    \alternative {
        { s2 | \breakDfft s2 | \breakDsxt } { s2 | \breakDsvt s2 | }
    }
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 130
    \bandmNV
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = \transpose c' bes {
    \time 2/4
    \key e \dorian

    s8 e'8 g'8 b'8 |

    \repeat volta 2 {
        e''4 b'8 e''8 ~ |
        e''8 b'16 e''16 d''16 cis''16 b'8 |
        e''8 b'4. ~ |
        b'4 \tuplet 3/2 { d''8 cis''8 b'8 } |

        \tuplet 3/2 { ais'8 b'8 cis''8 } \tuplet 3/2 { d''8 cis''8 b'8  } |
        \tuplet 3/2 { b'8 ais'8 g'8 } \tuplet 3/2 { g'8 fis'8 e'8 } |
        ais'8 b'4. ~ |
        b'8 e'8 g'8 b'8 |

        e''4 b'8 e''8 ~ |
        e''8 d''8 cis''8 b'8 |
        e''8 a'4. |
        c''4. b'8 |

        \tuplet 3/2 { ais'8 b'8 cis''8 } \tuplet 3/2 { d''8 cis''8 b'8 } |
        \tuplet 3/2 { b'8 ais'8 g'8 } \tuplet 3/2 { g'8 fis'8 e'8 } |
        e'2 ~ |
    }
    \alternative { { e'8 e'8 g'8 b'8 } { e'8 e'8 a'8 cis''8 } }

    e''2 ~ |
    e''8 ees''8 d''8 c''8 |
    \acciaccatura { dis''16 [ fis''16 ] } e''4 e''8 e''8 ~ |
    e''2 |

    fis''8 ^"~" e''8 fis''8 ^"~" e''8 |
    fis''8 ^"~" e''8 fis''8 ^"~" e''8 |
    g''2 ~ |
    g''2 |

    fis''8  e''8 e''8 dis''8 |
    dis''8 c''8 c''8 b'8 |
    dis''2  ~ |
    dis''4. b'8 |

    b'8 c''8 dis''8 e''8 |
    dis''8 c''16 dis''16 c''16 b'16 a'8 |
    b'2  ~ |
    b'8  ais'16 b'16 b'!16 cis''16 d''16 dis''16 |

    % begin A1
    e''4 b'8 e''8 ~ |
    e''8 b'16 e''16 d''16 cis''16 b'8 |
    e''8 b'4. ~ |
    b'4 \tuplet 3/2 { d''8 cis''8 b'8 } |

    \tuplet 3/2 { ais'8 b'8 cis''8 } \tuplet 3/2 { d''8 cis''8 b'8 } |
    \tuplet 3/2 { b'8 ais'8 g'8 } \tuplet 3/2 { g'8 fis'8 e'8 }  |
    ais'8 b'4. ~ |
    b'8 e'8 g'8 b'8 |

    e''4 b'8 e''8 ~ |
    e''8 d''8 cis''8 b'8 |
    e''8 a'4. |
    c''4. b'8 |

    \tuplet 3/2 { ais'8 b'8 cis''8 } \tuplet 3/2 { d''8 cis''8 b'8 } |
    \tuplet 3/2 { b'8 ais'8 g'8 } \tuplet 3/2 { g'8 fis'8 e'8 } |
    e'2 ~ |
    e'2 |

    \key e \minor 
    \repeat volta 2 {
        e'8 g'16 g'16 g'8 g'8 |
        fis'8 ^"~" e'8 g'8 b'8 |
        ais'8 ^"~" g'8 ais'8 g'8 |
        ais'8 g'8 fis'8 e'8 |

        dis'8 fis'8 b8 dis'8 |
        fis'8 a'8 g'8 fis'8
    }
    \alternative { { e'8 fis'8 g'8 a'8 | b'2 } { e'2 ~ | e'4 e''4 } }

    \repeat volta 2 {
        c''2 ~ |
        c''4 e''4 |
        b'2 ~ |
        b'8 b'8 a'8 g'8 |

        fis'4. g'8 |
        a'8 fis'8 g'8 a'8 |
        b'2 ~ |
        b'4 e''4 |

        c''2 ~ |
        c''4 e''4 |
        b'2 ~ |
        b'8 b'8 a'8 g'8 |

        fis'8 g'8 ais'8 b'8  |
        b'16 ais'16 g'16 ais'16 g'16 fis'16 e'8 
    }
    \alternative {{ e'2 ~ | e'8 e'8 a'8 b'8 } { e'2 ~ | e'2 } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key d \dorian
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key d \dorian
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = \transpose c bes {
    \time 2/4
    \key e \dorian

    s8 r8 r4 |
    % A
    \repeat volta 2 {
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |

        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |

        e,4 r8 g,8 ~ |
        g,4. r8 |
        a,4 r8 c8 ~ |
        c4. r8 |

        b,8 r8 a,8 r8 |
        g,8 r8 fis,8 r8 |
        e,8 r8 b,8 r8 |
    }
    \alternative { { e,8-> r8 r4 | } { cis8 r8 a,8 r8 | } }

    % B
    e4 a,8 e8 ~ |
    e8 a,8 e4 |
    \grace { s8 } e4 a,8 e8 ~ |
    e8 a,8 e4 |

    e4 a,8 e8 ~ |
    e8 a,8 e4 |
    e4 a,8 e8 ~ |
    e8 a,8 e4 |

    e4 a,8 e8 ~ |
    e8 a,8 e4 |
    fis4 b,8 fis8 ~ |
    fis8 b,8 fis4 |

    fis4 b,8 fis8 ~ |
    fis8 b,8 fis4 |
    e4 b,8 e8 ~ |
    e8 r8 b,4 |

    % A2
    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |

    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |
    e,8 r8 b,8 r8 |

    e,4 r8 g,8 ~ |
    g,4. r8 |
    a,4 r8 c8 ~ |
    c4. r8 |

    b,8 r8 a,8 r8 |
    g,8 r8 fis,8 r8 |
    e,8 r8 b,8 r8 |
    e,8-> r8 r4 |

    % C
    \repeat volta 2 {
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        e,8 r8 b,8 r8 |
        fis,8 r8 b,8 r8 |
        fis,8 r8 b,8 r8 |
    }
    \alternative {
        { e,8 r8 b,8 r8 | e,8 r8 b,8 r8 | }
        { e,8 r8 b,8 r8 | cis8 r8 dis8 r8 | }
    }

    % D
    \repeat volta 2 {
        a,4 e4 |
        a,4 e4 |
        e4 b,4 |
        e4 b,4 |

        b,4 fis4 |
        b,4 fis4 |
        e4 b,4 |
        e8 b,8 cis8 dis8 |

        a,4 e4 |
        a,4 e4 |
        e4 b,4 |
        e4 b,4 |
        b,4 fis4 |
        b,4 fis4 |
    }
    \alternative {
        { e4 b,4 | e4 b,4 | }
        { e,8 r8 b,8 r8 | cis8 r8 dis8 r8 | }
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

chordletters = \transpose c' bes \chordmode {
    \time 2/4
    s2 |
    \repeat volta 2 {
        e2:min | e2:min | e2:min | e2:min |
        e2:min | e2:min | e2:min | e2:min |

        e2:min | e2:min | a2:min | a2:min |
        e2:min | e2:min | e2:min |
    }
    \alternative {
        {
            \chordChangesOff
            e2:min
            \chordChangesOn
        }
        { a2 }
    }

    a2 |
    a2 |
    \grace { a8:min } a2:min |
    a2:min |

    a2:min |
    a2:min |
    a2:min |
    a2:min |

    a2:min |
    a2:min |
    b2 |
    b2 |

    b2 |
    b2 |
    e2:min |
    e2:min |

    \chordChangesOff
    e2:min |
    \chordChangesOn
    e2:min | e2:min | e2:min |
    e2:min | e2:min | e2:min | e2:min |
    e2:min | e2:min | a2:min | a2:min |
    e2:min | e2:min | e2:min | e2:min |

    \repeat volta 2 {
        \chordChangesOff
        e2:min |
        \chordChangesOn
        e2:min |
        e2:min |
        e2:min |
        b2:7 |
        b2:7 |
    }
    \alternative {
        { e2:min | e2:min }
        {
            \chordChangesOff
            e2:min |
            \chordChangesOn
            e4:min e4:7
        }
    }

    \repeat volta 2 {
        a2:min | a2:min | e2:min | e2:min |
        b2:7 | b2:7 | e2:min | e4:min e4:7 |
        a2:min | a2:min | e2:min | e2:min |
        b2:7 | b2:7 |
    }
    \alternative {{ e2 | e2 } { e2:min | e2:min } }
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
    \key d \dorian
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
    \key d \dorian
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
    \key d \dorian
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

leadsheetnotes = {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
}

previewnotes = \transpose c' bes {
    \time 2/4
    \key e \dorian

    s8 e'8 g'8 b'8 |

    \bar ".|:"
    e''4 b'8 e''8 ~ |
    e''8 b'16 e''16 d''16 cis''16 b'8 |
    e''8 b'4. ~ |
    b'4 \tuplet 3/2 { d''8 cis''8 b'8 } |
}

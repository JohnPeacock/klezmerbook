\version "2.18.2"

bandmintro = {
    \time 4/4
    s1*6 | \breakIN \bar "||"
}

bandmsectiona = {
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakAsxt
    s1 | \breakA \bar ".|:-||"
}

bandmsectionbc = {
    \time 2/4
    \repeat volta 2 {
        s2*2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 | \breakBsxt
        s2 | \breakBsvt s2 | \breakB
    }
    \repeat volta 3 {
        \grace { s8. } s2*2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
        s2 | \breakCtht s2 | \breakCfrt s2 | \breakCfft s2 | \breakCsxt
        s2 | \breakCsvt s2 | \breakCett s2 | \breakCnnt s2 | \breakCtwy
        s2 | \breakCtwone s2 | \breakCtwtwo s2 | \breakCtwtre s2 | \breakCtwfor
    }
    \alternative {
        { s2 | \breakCtwfiv s2 | \breakCtwsix }
        { s2 | \breakCtwsev s2 | }
    }
    \bar "|."
}

bandm = {
    \bandmintro
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionbc
}

bandmNV = { \bandm }
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 | }

metronomeintro = {
    \time 4/4
    s1*6 |
}

metronomesectionbc = {
    \tempo 4 = 120
    \time 2/4
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \tempo 4 = 140
    \repeat volta 3 {
        \grace { s8. } s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
    \bar "|."
}

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 100
    \metronomeintro
    \bandmsectiona
    \metronomesectionbc
}

voiceoneintro = {
    \key e \minor
    \time 4/4
    % 1
    R1*5 |
    % 6
    r2.-\fermata g'8. b'16 |
}

voiceonesectiona = {
    % 7
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    g''8-\fermata d''16 f''16 \tuplet 3/2 { e''8 d''8 d''8 } |
    % 8
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d'8 g'8 b'8 } |
    % 9
    a'4. g'8 a'8. g'16 \tuplet 3/2 { a'8 g'8 g'8 } |
    % 10
    g'8 g'4. ~ g'8 r8 r4 |
    % 11
    R1 |
    % 12
    r2 r4 g'8. b'16 |

    % 13
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    g''8-\fermata d''16 f''16 \tuplet 3/2 { e''8 d''8 d''8 } |
    % 14
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d'8 g'8 b'8 } |
    % 15
    a'4. g'8 a'8. g'16 \tuplet 3/2 { a'8 g'8 g'8 } |
    % 16
    g'8 g'4. ~ g'8 r8 r4 |
    % 17
    R1 |
    % 18
    r2 r4 d''8.-\fermata e''16 |
    % 19
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 r4 d''8. e''16 |
    % 20
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 r4 \tuplet 3/2 { b'8 d''8 d''8 } |
    % 21
    \tuplet 3/2 { c''8. b'16 a'8 } r8 a'16 c''16 b'8. a'16 g'8 a'16 a'16 |
    % 22
    \tuplet 3/2 { g'8. fis'16 e'8 } r8 fis'16 fis'16 \tuplet 3/2 { a'8 g'8 g'8 } g'8 g'8 |
    % 23
    g''1-\fermata |
}

voiceonesectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        R2*2 |
        d''8 cis''8 bes'8 d''8 |
        cis''8-\trill bes'8 bes'4 |

        d''8 cis''8 bes'8 a'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        d''8 ( cis''8 ) bes'8 d''8 |
        cis''8 bes'8 f''8. ( e''16 ) |

        f''16 ( e''16 ) d''8 d''16 ( cis''16 ) bes'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } R2*2 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 c''8 b'16 b'16 |

        d''8 d''8 f''8 e''8 |
        d''8 d''8 c''8 b'16 b'16 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 d''8 |

        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 b'8 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |

        r8 a'4 c''8 |
        b'8 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |
    }
    \alternative {
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
    }
}

voiceone = {
    \time 4/4
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionbc
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \time 4/4
    \preintro
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionbc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    \key e \minor
    \time 4/4
    s1*6 |
}

tenorharmonysectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

tenorharmonysectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

tenorharmony = {
    \time 4/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionbc
}

tenorharmonymidi = {
    \time 4/4
    \preintro
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionbc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    \key e \minor
    \time 4/4
    s1*6 |
}

countersectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

countersectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

counter = {
    \time 4/4
    \counterintro
    \countersectiona
    \countersectionbc
}

countermidi = {
    \time 4/4
    \preintro
    \counterintro
    \countersectiona
    \countersectionbc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key e \minor
    \time 4/4
    % 1
    R1*5 |
    % 6
    g,2.-\fermata r4 |
}

basslinesectiona = {
    % 7
    g,1-> ~ |
    % 8
    g,2. r4 |
    % 9
    c4 d4 g,4 d4 |
    % 10
    g,2.-> r4 |
    % 11
    c2 ees4 d4 |
    % 12
    g2-\fermata r2 |
    % 13
    g,1-> ~ |
    % 14
    g,2. r4 |
    % 15
    c4 d4 g,4 d4 |
    % 16
    g2.-> r4 |
    % 17
    c2 ees4 d4 |
    % 18
    d4 b,4 g,8-> r8 r4 |
    % 19
    r2 g,8-> r8 r4 |
    % 20
    r2 g,8-> r8 r4 |
    % 21
    r4 r8 d8-> r4 r8 g,8-> |
    % 22
    r4 r8 c8-> d2 |
    % 23
    g1-\fermata |
}

basslinesectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        g8 r8 b8 r8 |

        g8 r8 ees8 r8 |
        d8 c8 g8 r8 |
        g8 r8 d8 r8 |
        g8 r8 b8 r8 |

        g8 r8 ees8 r8 |
        d8 c8 g8 r8 |
        g,8 r8 d8 r8 |
        ees4 ( d4 ) |

        g8 r8 d8 r8 |
        fis16 ees16 d8 g8-> r8 |
        g8 r8 d8 r8 |
        ees4 ( d4 ) |

        g8 r8 d8 r8 |
        fis16 ees16 d8 g8-> r8 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } g8\mf r8 d8 r8 |
        g,8 r8 d8 r8 |
        g,8 r8 g,8 r8 |
        g,8 r8 g,8 r8 |

        g,8 r8 g,8 r8 |
        g,8 r8 g,8 r8 |
        d'8 cis'8 c'8 b8 |
        a8 g8 fis8 e8 |

        d8 c8 b,8 a,8 |
        g,8 d8 g8\< d8\! |
        g,8->\f g,8-> r8 d8 |
        g,8\p r8 g,8 r8 |

        g,8->\f g,8-> r8 d8 |
        d8\p r8 g,8 r8 |
        g,8->\f g,8-> r8 d8 |
        g,8\p r8 g,8 r8 |

        g,8->\f g,8-> r8 d8 |
        d8\p r8 g8 r8 |
        r8\f d'4 d'8 |
        g8 r8 d8 r8 |

        r8 d4 d8 |
        g8 d8 g4 |
        r8 d'4 d'8 |
        g8 r8 d8 r8 |
    }
    \alternative {
        { r8 d4 d8 | g8 d8 g4 | }
        { r8 d4 d8 | g8 d8 g4 | }
    }
}

bassline = {
    \time 4/4
    \basslineintro
    \basslinesectiona
    \basslinesectionbc
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslineintro
    \basslinesectiona
    \basslinesectionbc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' { \transpose g c {
    \melodynotes
} }

flutenotesmidi = \transpose c c' { \transpose g c {
    \melodynotesmidi
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \key e \minor
    \time 4/4
    % 1
    g''2.-\fermata g'8. b'16 |
    % 2
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] } g''16. d''32 d''16 f''16 |
    % 3
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d''8 g''8 b''8 } |
    % 4
    a''4. g''8 a''8. g''16 \tuplet 3/2 { a''8 g''8 g''8 } |
    % 5
    g''8 g''4.-\fermata r2 |
    % 6
    g''2.-\fermata r4 |
}

clarinetsectiona = {
    % 7
    R1*4 |
    % 11
    a''4. g''8 a''8. g''16 b''16 ( a''16 ) g''8 |
    % 12
    g''2.-\fermata r4 |
    % 13
    R1*6 |
    % 19
    r2 g''8-^-\sf r8 r4 |
    % 20
    r2 g''8-^-\sf r8 r4 |
    % 21
    r4 r8 a'8-^-\sf r4 r8 g'8-^-\sf |
    % 22
    r4 r8 e'8-^-\sf g'2-\trill |
    % 23
    g''1-\fermata |
}

clarinetsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        R2*2 |
        d''8 cis''8 bes'8 d''8 |
        cis''8-\trill bes'8 bes'4 |

        d''8 cis''8 bes'8 a'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        d''8 ( cis''8 ) bes'8 d''8 |
        cis''8 bes'8 f''8. ( e''16 ) |

        f''16 ( e''16 ) d''8 d''16 ( cis''16 ) bes'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } R2*2 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 c''8 b'16 b'16 |

        d''8 d''8 f''8 e''8 |
        d''8 d''8 c''8 b'16 b'16 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 d''8 |

        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 b'8 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |

        r8 a'4 c''8 |
        b'8 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |
    }
    \alternative {
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
    }
}

clarinetnotes = \transpose bes c' { \transpose g c' {
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionbc
} }

clarinetnotesmidi = \transpose bes c' { \transpose g c' {
    \time 4/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    \key e \minor
    \time 4/4
    % 1
    b'2.-\fermata r4 |
    % 2
    R1*4 |
    % 6
    b'2.-\fermata r4 |
}

altosaxsectiona = {
    % 7
    R1*5 |
    % 12
    b'2.-\fermata r4 |
    % 13
    R1*6 |
    % 19
    r2 b'8-^-\sf r8 r4 |
    % 20
    r2 b'8-^-\sf r8 r4 |
    % 21
    r4 r8 fis'8-^-\sf r4 r8 d'8-^-\sf |
    % 22
    r4 r8 e'8-^-\sf \tuplet 3/2 { a'8 g'8 g'8 } g'8 g'8 |
    % 23
    b'2-\fermata b'2-\fermata |
}

altosaxsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

altosaxnotes = \transpose ees c' { \transpose g c {
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionbc
} }

altosaxnotesmidi = \transpose ees c' { \transpose g c {
    \time 4/4
    \preintro
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    \key e \minor
    \time 4/4
    % 1
    b'2.-\fermata r4 |
    % 2
    R1*4 |
    % 6
    b'2.-\fermata r4 |
}

tenorsaxsectiona = {
    % 7
    R1*5 |
    % 12
    b'2.-\fermata r4 |
    % 13
    R1*6 |
    % 19
    r2 g'8-^-\sf r8 r4 |
    % 20
    r2 g'8-^-\sf r8 r4 |
    % 21
    r4 r8 c'8-^-\sf r4 r8 b8-^-\sf |
    % 22
    r4 r8 c'8-^-\sf c'2 |

    g'2-\fermata g'2-\fermata |
}

tenorsaxsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

tenorsaxnotes = \transpose bes c' { \transpose g c {
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionbc
} }

tenorsaxnotesmidi = \transpose bes c' { \transpose g c {
    \time 4/4
    \preintro
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \key e \minor
    \time 4/4
    % 1
    d''2. r4 |
    % 2
    R1*4 |
    % 6
    d''2. r4 |
}

trumpetsectiona = {
    % 7
    R1*5 |
    % 12
    d''2. r4 |
    % 13
    R1*6 |
    % 19
    r2 b'8-^-\sf r8 r4 |
    % 20
    r2 b'8-^-\sf r8 r4 |
    % 21
    r4 r8 fis'8-^-\sf r4 r8 d'8-^-\sf |
    % 22
    r4 r8 e'8-^-\sf \tuplet 3/2 { a'8 g'8 g'8 } g'8 g'8 |
    % 23
    b'2-\fermata b'2-\fermata |
}

trumpetsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        R2*2 |
        d''8 cis''8 bes'8 d''8 |
        cis''8-\trill bes'8 bes'4 |

        d''8 cis''8 bes'8 a'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        d''8 ( cis''8 ) bes'8 d''8 |
        cis''8 bes'8 f''8. ( e''16 ) |

        f''16 ( e''16 ) d''8 d''16 ( cis''16 ) bes'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } R2*2 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 c''8 b'16 b'16 |

        d''8 d''8 f''8 e''8 |
        d''8 d''8 c''8 b'16 b'16 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 d''8 |

        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 b'8 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |

        r8 a'4 c''8 |
        b'8 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |
    }
    \alternative {
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
    }
}

trumpetnotes = \transpose bes c' { \transpose g c {
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionbc
} }

trumpetnotesmidi = \transpose bes c' { \transpose g c {
    \time 4/4
    \preintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    \key e \minor
    \time 4/4
    % 1
    g'2.-\fermata r4 |
    % 2
    R1*4 |
    % 6
    g'2.-\fermata r4 |
}

trombonesectiona = {
    % 7
    R1*5 |
    % 12
    g'2.-\fermata r4 |
    % 13
    R1*6 |
    % 19
    r2 g'8-^-\sf r8 r4 |
    % 20
    r2 g'8-^-\sf r8 r4 |
    % 21
    r4 r8 c'8-^-\sf r4 r8 b8-^-\sf |
    % 22
    r4 r8 c'8-^-\sf c'2 |
    % 23
    g'2-\fermata g'2-\fermata |
}

trombonesectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

trombonenotes = { \transpose g c {
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionbc
} }

trombonenotesmidi = { \transpose g c {
    \time 4/4
    \preintro
    \tromboneintro
    \trombonesectiona
    \trombonesectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { \transpose g c {
    \bassline
} }

euphoniumnotesmidi = { \transpose g c {
    \basslinemidi
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    \key e \minor
    \time 4/4
    % 1
    g''2.-\fermata g'8. b'16 |
    % 2
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] } g''16. d''32 d''16 f''16 |
    % 3
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d''8 g''8 b''8 } |
    % 4
    a''4. g''8 a''8. g''16 \tuplet 3/2 { a''8 g''8 g''8 } |
    % 5
    g''8 g''4.-\fermata r2 |
    % 6
    g''2.-\fermata r4 |
}

violinsectiona = {
    % 7
    R1*5 |
    % 12
    g''2.-\fermata r4 |
    % 13
    R1*4 |
    % 17
    a''4. g''8 a''8. g''16 b''16 ( a''16 ) g''8 |
    % 18
    g''2 r2 |
    % 19
    r2 g''8-^-\sf r8 r4 |
    % 20
    r2 g''8-^-\sf r8 r4 |
    % 21
    r4 r8 a'8-^-\sf r4 r8 g'8-^-\sf |
    % 22
    r4 r8 e'8-^-\sf g'2-\trill |
    % 23
    g''1-\fermata |
}

violinnotes = { \transpose g c' {
    \time 4/4
    \violinintro
    \violinsectiona
    \voiceonesectionbc
} }

violinnotesmidi = { \transpose g c' {
    \time 4/4
    \preintro
    \violinintro
    \violinsectiona
    \voiceonesectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \time 4/4
    g1*6 |
}

chordletterssectiona = \chordmode {
    % 7
    g1 | g1 | c4:6 d4:7 g2 | g1 |
    % 11
    c2:6 c4:min6 d4:7 | g1 |
    % 13
    g1 | g1 | c4:6 d4:7 g2 | g1 |
    % 17
    c2:6 c4:min6 d4:7 |
    % 18
    g2. \noChordStringOn g4:maj7 \noChordStringOff |
    % 19
    s2 g4 \noChordStringOn g4:maj7 \noChordStringOff |
    % 20
    s2 g4 \noChordStringOn g4:maj7 \noChordStringOff |
    % 21
    s4 d8:7 \noChordStringOn g4.:maj7 \noChordStringOff g8 \noChordStringOn g8:maj7 \noChordStringOff |
    % 22
    s4 c4 d2:7 |
    % 23
    g1 |
}

chordletterssectionbc = \chordmode {
    \time 2/4
    \repeat volta 2 {
        g2*4:min |
        % first eflat-7 should be eflat-7-flat5 (how to do)
        g4:min ees4:7 | d8:7 c8:min g4:min | g2*2:min |
        g4:min ees4:7 | d8:7 c8:min/ees g4:min | g2:min | c8:min6/ees ees8:7 d4 |
        g2:min | d4:7 g4:min | g2:min | c8:min6/ees ees8:7 d4:7 |
        g2:min | d4:7 g4:min |
    }
    \repeat volta 3 {
        \grace { s8. } g2*4 |
        g2*4 |
        d2:7 | g2*3 |
        g2 | d4:7 g4 | g2*2 |
        g2 | d4:7 g4 | d2:7 | g2 |
        d2:7 | g8 d8:7 g4 | d2:7 | g2 |
    }
    \alternative {
        { d2:7 | g8 d8:7 g4 | }
        { d2:7 | g8 d8:7 g4 | }
    }
}

chordletters =  \transpose g c {\chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionbc
} }

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

guitarnotesintro = {
    \key e \minor
    \time 4/4
    s1*6 |
}

guitarnotessectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

guitarnotessectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \key g \major
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

guitarnotes = { \transpose g c {
    \time 4/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionbc
} }

guitarnotesmidi = { \transpose g c {
    \time 4/4
    \preintro
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = { \transpose g c' {
    \bassline
} }

bassnotesmidi = { \transpose g c' {
    \basslinemidi
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightintro = {
    \key e \minor
    \time 4/4
    % 1
    < g' b' d'' g'' >2.\arpeggio-\fermata r4 |
    % 2
    R1*3 |
    % 5
    r2. \tuplet 3/2 { g'8 b' d'' } |
    % 6
    < g' b' d'' g'' >2.\arpeggio-\fermata r4 |
}

pianorightsectiona = {
    % 7
    R1*5 |
    % 12
    <<
     { g''8 g''4. } \\
     { < b' d'' >2 }
    >> < g' b' d'' g'' >8\arpeggio r8 g'8.-\fermata b'16 |
    % 13
    R1*5 |
    % 18
    <<
     { g''8 g''4. } \\
     { < b' d'' >2 }
    >> < g' b' d'' g'' >8\arpeggio r8 g'8.-\fermata b'16 |
    % 19
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 < g' b' g'' >8-^_\sf r8 d''8. e''16 |
    % 20
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 < g' b' g'' >8-^_\sf\arpeggio r8 \tuplet 3/2 { b'8 d''8 d''8 } |
    % 21
    \tuplet 3/2 { c''8. [ b'16 a'8 ] } < c' fis' a' >8-^_\sf a'16 c''16 b'8. a'16 < b d' g' >8-^_\sf a'16 a'16 |
    % 22
    \tuplet 3/2 { g'8. [ fis'16 e'8 ] } < c' e' >8-^_\sf fis'16 fis'16 << { \tuplet 3/2 { a'8 [ g'8 g'8 ] } g'8 g'8 } \\ { c'2_\markup \italic { "poco rit." }  } >> |
    % 23
    << { g''1-\fermata } \\ { < g' b' >2 < g' b' >2^\fermata } >> |
}

pianorightsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        % 21
        r8_\f < bes d' g' >8 [ r8 < bes d' g' >8 ] |
        % 22
        r8 < bes d' g' >8 [ r8 < bes d' g' >8 ] |
        % 23
        d''8 cis''8 bes'8 d''8 |
        % 24
        cis''8-\trill bes'8 bes'4 |
        % 25
        d''8 cis''8 bes'8 a'8 |
        % 26
        bes'16 a'16 < ees' g' >8 < d' g' >4 |
        % 27
        d''8 ( cis''8 ) bes'8 d''8 |
        % 28
        cis''8 bes'8 f''8 [ r16 e''16 ] |
        % 29
        < bes ' f'' >16 ( e''16 ) d''8 < ees' g' d'' >16 ( cis''16 ) bes'8 |
        % 30
        < c' fis' bes' >16 a'16 < c' g' >8 < bes d' g' >4 |
        % 31
        < bes d' g' >8 < bes g' >16 < bes g' >16 < bes g' >16 < bes g' >16 < d' bes' >8 |
        % 32
        << { a'16 a'16 g'16 g'16 < d' fis' >16 < e' g' >16 < fis' a' >8 } \\
           { c'8 des'8 s4 } >> |
        % 33
        < bes d' g' >8 < bes g' >16 < bes g' >16 < bes g' >16 < c' a' >16 < d' bes' >16 < d' bes' >16 |
        % 34
        < c' a' >16 < bes g' >16 < a fis' >16 < a fis' >16 < bes d' g' >8 < d' d'' >8-> |
        % 35
        < g' bes' g'' >8 < g' bes' g'' >16 < g' bes' g'' >16 < g' bes' g'' >16 < g' bes' g'' >16 < bes' d'' bes'' >8 |
        % 36
        < a' c'' a'' >16 < a' c'' a'' >16 < g' des'' g'' >16 < g' des'' g'' >16 < fis' c'' fis'' >16 < g' c'' g'' >16 < a' c'' a'' >8 |
        % 37
        < g' bes' g'' >8 < g' bes' g'' >16 < g' bes' g'' >16 < g' bes' g'' >16 < a' a'' >16 < bes' d'' bes'' >16 < bes' d'' bes'' >16 |
        % 38
        < a' c'' a'' >16 < g' g'' >16 < fis' c'' fis'' >16 < fis' c'' fis'' >16 < g' bes' d'' g'' >4 |
    }
    \key g \major
    \repeat volta 3 {
        % 39
        \grace { s8. } r8-\mf < d' g' b' >8 r8 < g' b' d'' >8 |
        r8 < d' g' b' >8 r8 < b d' g' >8 |
        < b' d'' >16 ( d'16 ) < b' d'' >8 < b' d'' >16 ( d'16 ) < b' d'' >8 |
        < b' d'' >8 < b' d'' >8 < a' c'' >8 < g' b' >16 < g' b' >16 |

        % 43
        < b' d'' >16 ( d'16 ) < b' d'' >8 < d'' f'' >8 < c'' e'' >8 |
        < b' d'' >8 < b' d'' >8 < a' c'' >8 < g' b' >16 b'16 |
        < g' b' d'' >8 < g' b' d'' >8 < g' b' d'' >8 < g' b' d'' >8 |
        < g' b' d'' >8 < g' b' d'' >8 < g' b' d'' >8 < g' b' d'' >8 |

        % 47
        < fis' c'' d'' >8 < fis' c'' d'' >8 < fis' c'' d'' >8 < fis' c'' d'' >8 |
        < g' b' d'' >8 < g' b' d'' >8 < g' b' d'' >8 \< < g' b' >8 \! |
        < g' b' d'' >8_\f-> < g' b' d'' >8-> r8 < d' g' b' >8 |
        < g' b' d'' >16_\p d''16 < g' b' d'' >8 < g' b' d'' >4 |

        % 51
        < g' b' d'' >8_\f-> < g' b' d'' >8-> r8 < d' g' b' >8 |
        c''16_\p b'16 < c' fis' a' >8 < b d' g' >4 |
        < g' b' d'' >8_\f-> < g' b' d'' >8-> r8 < d' g' b' >8 |
        < g' b' d'' >16_\p d''16 < g' b' d'' >8 < g' b' d'' >4 |

        % 55
        < g' b' d'' >8_\f-> < g' b' d'' >8-> r8 < d' g' b' >8 |
        c''16_\p b'16 < c' fis' a' >8 < b d' g' >4 |
        r8_\f < c' fis' a' >4-> < d' fis' c'' >8 |
        < g' b' >8 a'8 g'8 < b' d'' >8 |

        r8 < c' fis' a' >4-> < d' fis' c'' >8 |
        < d' g' b' >8 < c' fis' a' >8 < b d' g' >4 |
        r8 < c' fis' a' >4-> < d' fis' c'' >8 |
        < g' b' >8 a'8 g'8 < b' d'' >8 |
    }
    \alternative {
        {
            < c' fis' a' >8 < c' fis' a' >4 < d' fis' c'' >8 |
            < d' g' b' >8-> < c' fis' a' >8-> < b d' g' >4-> |
        }
        {
            < c' fis' a' >8 < c' fis' a' >4 < d' fis' c'' >8 |
            < d' g' b' >8-> < c' fis' a' >8-> < b d' g' >4-> |
        }
    }
}

pianorightnotes = {
    \time 4/4
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionbc
}

pianorightuppernotes = { \transpose g c {
    \pianorightnotes
} }

pianorightlowernotes = { \transpose g c {
    \time 4/4
} }

pianorightnotesmidi = { \transpose g c {
    \time 4/4
    \preintro
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionbc
} }

pianoleftintro = {
    \key e \minor
    \time 4/4
    % 1
    < g, d b >2.\arpeggio-\fermata r4 |
    % 2
    \repeat "tremolo" 16 { < g b >32 d'32 } |
%    \repeat "tremolo" 16 { g 32 d'32 } |
    % 3
    < g b d' >2. r4 |
    % 4
    < c e >4 < d fis >4 < g, g >4 d4 |
    % 5
    g4 d4 < g, d b >8\arpeggio r8 \tuplet 3/2 { b8 g8 d8 } |
    % 6
    < g, d b >2.\arpeggio-\fermata r4 |
}

pianoleftsectiona = {
    % 7
    \repeat "tremolo" 8 { < g b >32 d'32 } < g b d' >2-\fermata |
    % 8
    < g b d' >2. r4 |
    % 9
    < c e >4 < d fis >4 < g, g >4 d4 |
    % 10
    g4 d4 < g, d b >8\arpeggio r8 r4 |
    % 11
    << { g4 ( a4 ) < c g >4 < d fis c' >4 } \\ { c2 } >> |
    % 12
    < g b >4 d4 < g, d b >8\arpeggio r8 r4 |
    % 13
    \repeat "tremolo" 8 { < g b >32 d'32 } < g b d' >2-\fermata |
    % 14
    < g b d' >2. r4 |
    % 15
    < c e >4 < d fis >4 < g, g >4 d4 |
    % 16
    g4 d4 < g, d b >8\arpeggio r8 r4 |
    % 17
    << { g4 ( a4 ) < c g >4 < d fis c' >4 } \\ { c2 } >> |
    % 18
    < g b >4 d4 < g, d b >8\arpeggio r8 b8.-\fermata c'16 |
    % 19
    d'16. c'32 c'16. b32 b16. a32 a16. g32 < g, d b >8-^ r8 b8. c'16 |
    % 20
    d'16. c'32 c'16. b32 b16. a32 a16. g32 < g, d b >8\arpeggio-^ r8 \tuplet 3/2 { g8 b b } |
    % 21
    \tuplet 3/2 { a8. [ g16 fis8 ] } < d, d >8-^ fis16 a16 g8. d16 < g, g >8-^ d8 |
    % 22
    \tuplet 3/2 { e8. [ d16 c8 ] } < c g >8-^ d16 d16 < d fis >2 |
    % 23
    < g, g >4 d4 < g, d g >2-\fermata |
}

pianoleftsectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        % 21
        < g, g >8 [ r8 < d, d >8 ] r8 |
        % 22
        < g, g >8 [ r8 < d, d >8 ] r8 |
        % 23
        g8 < bes d' >8 bes8 < g bes >8 |
        % 24
        g8 < bes d' >8 bes8 < bes d' >8 |
        % 25
        g8 < bes d' >8 ees8 < g a cis' >8 |
        % 26
        d8 c'8 < g bes >8 d8 |
        % 27
        g8 < bes d' >8 d8 < bes d' >8 |
        % 28
        g8 < bes d' >8 < bes d' >8 r8 |
        % 29
        g16 ( a16 ) bes8 bes16 ( a16 ) g8 |
        % 30
        d8 ees8 < g, g >4 |
        % 31
        g,8 g8 d8 g8 |
        % 32
        ees4 ( d4 ) |
        % 33
        g,8 g8 d8 g8 |
        % 34
        fis16 ees16 d8 g8 d8-> |
        % 35
        g,8 g8 d8 g8 |
        % 36
        ees4 d16 e16 fis8 |
        % 37
        g,8 g8 d8 g8 |
        % 38
        fis16 ees16 d8 < g, g >4 |
    }
    \key g \major
    \repeat volta 3 {
        % 39
        \acciaccatura { d16 [ e fis ] } g8 [ r8 d8 ] r8 |
        < g, g >8 [ r8 < d, d >8 ] r8 |
        g,8 < d g >8 g,8 < d g >8 |
        g,8 < d g >8 g,8 < d g >8 |
        % 43
        g,8 < d g >8 g,8 < d g >8 |
        g,8 < d g >8 g,8 < d g >8 |
        d'8 cis'8 c'8 b8 |
        a8 g8 fis8 e8 |
        % 47
        d8 c8 b,8 a,8 |
        g,8 d8 g8 d8 |
        < g, g >8-> < g, g >8-> r8 d8 |
        < g, g >8 d8 < g, g >8 d8 |
        % 51
        < g, g >8-> < g, g >8-> r8 d8 |
        d,8 d8 g,8 d8 |
        < g, g >8-> < g, g >8-> r8 d8 |
        < g, g >8 d8 < g, g >8 d8 |
        % 55
        < g, g >8-> < g, g >8-> r8 d8 |
        d,8 d8 g,8 g8 |
        d8 a8 a,8 d8 |
        g8 a8 b8 g8 |
        % 59
        d8 a8 a,8 d8 |
        g8 d8 g,4 |
        d8 a8 a,8 d8 |
        g8 a8 b8 g8 |
    }
    \alternative {
        { d8 a8 a,8 d8 | g8-> d8-> < g, g >4-> | }
        { d8 a8 a,8 d8 | g8-> d8-> < g, g >4-> | }
    }
}

pianoleftnotes = {
    \time 4/4
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionbc
}

pianoleftuppernotes = { \transpose g c {
    \pianoleftnotes
} }

pianoleftlowernotes = { \transpose g c {
    \time 4/4
} }

pianoleftnotesmidi = { \transpose g c {
    \time 4/4
    \preintro
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    \time 4/4
    s1*6 |
}

drumshighsectiona = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumshighsectionbc = \drummode {
    \time 2/4
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \repeat volta 3 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumshigh = \drummode {
    \time 4/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionbc
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionbc
}

drumslowintro = \drummode {
    \time 4/4
    s1*6 |
}

drumslowsectiona = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumslowsectionbc = \drummode {
    \time 2/4
    \repeat volta 2 {
        s2*2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \repeat volta 3 {
        \grace { s8. } s2
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumslow = \drummode {
    \time 4/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionbc
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionbc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vocalsintro = {
    \key e \minor
    \time 4/4
    % 1
    R1*5 |
    % 6
    r2 r4-\fermata g'8. b'16 |
}

vocalssectiona = {
    % 7
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    g''8-\fermata d''16 f''16 \tuplet 3/2 { e''8 d''8 d''8 } |
    % 8
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d'8 g'8 b'8 } |
    % 9
    a'4. g'8 a'8. g'16 \tuplet 3/2 { a'8 g'8 g'8 } |
    % 10
    g'8 g'4. ~ g'8 r8 r4 |
    % 11
    R1 |
    % 12
    r2 r4 g'8. b'16 |
    % 13
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    \tuplet 6/4 { d''16 [ c''16 b'16 d''16 c''16 b'16 ] }
    g''8-\fermata d''16 f''16 \tuplet 3/2 { e''8 d''8 d''8 } |
    % 14
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d'8 g'8 b'8 } |
    % 15
    a'4. g'8 a'8. g'16 \tuplet 3/2 { a'8 g'8 g'8 } |
    % 16
    g'8 g'4. ~ g'8 r8 r4 |
    % 17
    R1 |
    % 18
    r2 r4 d''8.-\fermata e''16 |
    % 19
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 r4 d''8. e''16 |
    % 20
    f''16. e''32 e''16. d''32 d''16. c''32 c''16. b'32 r4 \tuplet 3/2 { b'8 d''8 d''8 } |
    % 21
    \tuplet 3/2 { c''8. b'16 a'8 } r8 a'16 c''16 b'8. a'16 g'8 a'16 a'16 |
    % 22
    \tuplet 3/2 { g'8. fis'16 e'8 } r8 fis'16 fis'16 \tuplet 3/2 { a'8 g'8 g'8 } g'8 g'8 |
    % 23
    g''1-\fermata |
}

vocalssectionbc = {
    \time 2/4
    \key g \minor
    \repeat volta 2 {
        R2*2 |
        d''8 cis''8 bes'8 d''8 |
        cis''8-\trill bes'8 bes'4 |

        d''8 cis''8 bes'8 a'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        d''8 ( cis''8 ) bes'8 d''8 |
        cis''8 bes'8 f''8. ( e''16 ) |

        f''16 ( e''16 ) d''8 d''16 ( cis''16 ) bes'8 |
        bes'16 ( a'16 ) g'8 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
        g'8 g'16 g'16 g'16 g'16 bes'8 |
        a'16 a'16 g'16 g'16 fis'16 g'16 a'8 |

        g'8 g'16 g'16 g'16 a'16 bes'16 bes'16 |
        a'16 g'16 fis'16 fis'16 g'4 |
    }
    \key g \major
    \new Voice = "verse" \repeat volta 3 {
        \grace { s8. } R2*2 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 c''8 b'16 b'16 |

        d''8 d''8 f''8 e''8 |
        d''8 d''8 c''8 b'16 b'16 |
        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 d''8 |

        d''8 d''8 d''8 d''8 |
        d''8 d''8 d''8 b'8 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        d''8 d''8 r8 b'8 |
        d''16 d''16 d''8 d''4 |

        d''8 d''8 r8 b'8 |
        c''16 b'16 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |

        r8 a'4 c''8 |
        b'8 a'8 g'4 |
        r8 a'4 c''8 |
        b'8 a'8 g'8 d''8 |
    }
    \alternative {
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
        { a'8 a'4 c''8 | b'8 a'8 g'4 | }
    }
}

leadsheetnotes =  { \transpose g c {
    \time 4/4
    \vocalsintro
    \vocalssectiona
    \vocalssectionbc
} }

leadsheetmidinotes =  { \transpose g c {
    \time 4/4
    \preintro
    \vocalsintro
    \vocalssectiona
    \vocalssectionbc
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ekh, Ru- mey- nye, Ru- mey- nye, Ru- mey- nye,
    Ru- mey- nye, Ru- mey- nye, Ru- mey- nye, Ru- mey- nye,
    Ge- ven a- mol a land a zi- se, a shey- ne.
    Ekh, Ru- mey- nye, Ru- mey- nye, Ru- mey- nye,
    Ru- mey- nye, Ru- mey- nye, Ru- mey- nye, Ru- mey- nye,
    Ge- ven a- mol a land a zi- se, a fay- ne.
    Dort tsu voy- nen iz a far- ge- nig- en.
    Vos dos harts glust dir, do kenst du kri- gn.
    A ma- me- li- ge- le, a pas- tra- me- le,
    a kar- nats- e- le, un a gle- ze- le vayn, a- ha!

    In Ru- mey- nye iz doch gut, fun kayn day- ges veyst men nit.
    Vayn trinkt men i- ber- al, men far- bayst mit kash- ter- al.
    Hay di- gi di- gi dam, di- gi di- gi di- gi dam.
    Hay di- gi di- gi di- gi di- gi di- gi dam.
    Hay di- gi di- gi dam, di- gi di- gi di- gi dam.
    Hay di- gi di- gi di- gi di- gi di- gi dam.
}

textlb = \lyricmode {
    Oy vey, g'valt ikh ver me- shi- ge! Ikh
    lib nor bri- nze, ma- me- li- ge. Ikh
    tants un frey zikh biz der stel- ye,
    Ven ikh es a pat- lo- zhel- ye.
    Dzing- ma. tay ti- di di dam.
    Dzing- ma. tay ti- di di dam.
    Dzing- ma. tay ti- di di dam.
    Dzing- ma. tay ti- di di dam.
    Ay, siz a me- khay- ye, be- ser ken nit zayn.
    Ay, a far- ge- ni- gn iz nor Ru- mey- nish vayn.
    iz nor Ru- mey- nish vayn.
}

textlc = \lyricmode {
    Di Ru- mey- ner trink- en vayn un _ es- en ma- me- li- ge. _ _ _
    Ver es kusht zayn ey- gen vayb, oy, yen- er iz me- shi- ge.
}

textld = \lyricmode {
    Yo- kum pur- kom, min- she- may- e, _ shtet un kusht a kekh- ne, Khay- e. _
    On ge- ton in alt- e shkrab- es, makht a ku- gel l'kov- ed Shab- is.
}





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters =  \transpose g c { \chordmode {
  \time 4/4
  \partial 4 s4 |
    g1 | g1 | c4:6 d4:7 g2 | g1 |
} }

previewnotes = { \transpose g c {
  \time 4/4
  \key e \minor
  \tempo \tempostring
  \partial 4 g'8. b'16 |
    \tuplet 6/4 { d''16 c''16 b'16 d''16 c''16 b'16 }
    \tuplet 6/4 { d''16 c''16 b'16 d''16 c''16 b'16 }
    g''8-\fermata d''16 f''16 \tuplet 3/2 { e''8 d''8 d''8 } |
    d''8 d''4. ~ d''8 r8 \tuplet 3/2 { d'8 g'8 b'8 } |
    a'4. g'8 a'8. g'16 \tuplet 3/2 { a'8 g'8 g'8 } |
    g'8 g'4. ~ g'8 r8 r4 |
} }

\version "2.18.0"

bandmsectiona = {
    s1*9 |
    \repeat volta 2 {
        \RightMarkOnce
        \BarAlignMark
        \mark \markup { \bold \huge "Chorus" }
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | s1 }
        { s1 | s1 }
    }
    \bar "||"
    \breakCone
    \mark \markup { \box \bold \huge "1" }
    s1*9 |
    \breakOne
    \repeat volta 2 {
        \RightMarkOnce
        \BarAlignMark
        \mark \markup { \bold \huge "Chorus" }
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | s1 }
        { s1 | s1 }
    }
    \bar "||"
    \breakCtwo
    \mark \markup { \box \bold \huge "2" }
    s1*7 |
    \breakTwo
    \repeat volta 2 {
        \RightMarkOnce
        \BarAlignMark
        \mark \markup { \bold \huge "Chorus" }
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | s1 }
        { s1 | s1 }
    }
    \bar "||"
    \breakCtre
    \mark \markup { \box \bold \huge "3" }
    s1*9 |
    \breakTre
    \repeat volta 2 {
        \RightMarkOnce
        \BarAlignMark
        \mark \markup { \bold \huge "Chorus" }
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        {
            \RightMarkOnce
            \BarAlignMark
            \mark \markup { \italic \huge "Rit." }
            s1 | s1
        }
    }
    \bar "|."
}

bandmsectionb = {
}

bandm = {
    \time 4/4
    \partial 4 s4 |
    \bandmsectiona
    \bandmsectionb
}

bandmNV = {
    \partial 4 s4 |
    \tempo \tempostring
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
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    R1*8 |
    r2 r4 cis''4 |
    \repeat volta 2 {
        a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
        e'8 e'8 e'8 gis'8 fis'2 |
        r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
        cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |

        r4 cis''8 cis''8 a'8 ( gis'8 ) fis'4 |
        e'4 e'8. gis'16 fis'4. fis'8 |
        gis'4. e'8 e'4 ( gis'4 ) |
    }
    \alternative {
        { fis'1 ~ | fis'2 r4 cis''4 | }
        { fis'1 ~ | fis'2 r8 cis'8 cis'8 d'8 | }
    }

    % measure 11
    e'2 gis'4. gis'8 |
    fis'4 cis''8. cis''16 b'2 |
    r8 fis'8 fis'8 gis'8 a'8 fis'8 ~ fis'4 |
    r4 cis'8. d'16 e'4. gis'8 |
    % measure 15
    gis'8 fis'4 gis'8 fis'4 a'4 |
    gis'2 fis'2 |
    gis'8 fis'8 fis'8 gis'8 fis'4. gis'16 a'16 |
    gis'2 a'2 ~ |
    a'2 r4 cis''4 |
    % measure 20
    \repeat volta 2 {
        a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
        e'8 e'8 e'8 gis'8 fis'2 |
        r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
        cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |
        % measure 24
        r4 cis''8 cis''8 a'8 ( gis'8 ) fis'4 |
        e'4 e'8. gis'16 fis'4. fis'8 |
        gis'4. e'8 e'4 ( gis'4 ) |
    }
    \alternative {
        { fis'1 ~ | fis'2 r4 cis''4 | }
        { fis'1 ~ | fis'2 r4 cis'8 d'8 | }
    }

    e'2 ~ e'8 gis'8 gis'8 gis'8 |
    % measure 31
    fis'8 fis'8 cis''4 cis''8 b'8 ~ b'4 |
    r4 fis'8. gis'16 a'8 ( fis'8 ~ fis'4 ) |
    r4 cis'4 e'4 gis'8. gis'16 |
    gis'8 ( fis'4 gis'8 fis'4 ) a'4 |
    % measure 35
    gis'2 ( a'2 ~ |
    a'2 ) r4 cis''4 |

    \repeat volta 2 {
        a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
        e'8 e'8 e'8 gis'8 fis'2 |
        r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
        cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |

        r4 cis''8 cis''8 a'8 ( gis'8 ) fis'4 |
        e'4 e'8. gis'16 fis'4. fis'8 |
        gis'4. e'8 e'4 ( gis'4 ) |
    }
    \alternative {
        { fis'1 ~ | fis'2 r4 cis''4 | }
        { fis'1 ~ | fis'2 r4 cis'8 d'8 | }
    }

    e'2 ~ e'8 gis'8 gis'8 gis'8 |

    fis'4 cis''4 b'2 |
    r4 fis'8. gis'16 a'8 ( fis'8 ~ fis'4 ) |
    r4 cis'8 d'8 e'4 gis'8. gis'16 |
    gis'8 ( fis'4 ) gis'8 fis'4 a'4 |

    gis'2 fis'4 r8 gis'8 |
    gis'8 fis'8 fis'8 gis'8 fis'4 a'4 |
    gis'2 a'2 ~ |
    a'2 r4 cis''4 |

    \repeat volta 2 {
        a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
        e'8 e'8 e'8 gis'8 fis'2 |
        r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
        cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |

        r4 cis''8 cis''8 a'8 ( gis'8 ) fis'4 |
        e'4 e'8. gis'16 fis'4. fis'8 |
        gis'4. e'8 e'4 ( gis'4 ) |
    }
    \alternative {
        { fis'1 ~ | fis'2 r4 cis''4 | }
        { fis'1 ~ | fis'2. r4 | }
    }
}

voiceonesectionb = {
}

melodynotes = \transpose fis d {
    \time 4/4
    \key fis \minor
    \partial 4 r4 |
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = \transpose fis d {
    \time 4/4
    \key fis \minor
    \preintro
    r1 |
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
    R1*8 | r2 r4 a'4 |

    \repeat volta 2 {
        f'4 ( a'8 ) a'4. a'8. a'16 |
        c''8 c''8 c''8 c''8 a'2 |
        r4 g'8. g'16 g'16 g'16 g'4. |
        a'4 g'4 a'2 |

        r4 a'8 a'8 c''8 a'4 a'8 |
        g'4 g'8. g'16 f'4. f'8 |
        g'4. c'8 c'4 ( e'4 ) |
    }
    \alternative {
        { d'1 ~ | d'2 r4 a'4 }
        { d'1 ~ | d'2 r2  }
    }

    R1*8 | r2 r4 a'4 |

    \repeat volta 2 {
        f'4 ( a'8 ) a'4. a'8. a'16 |
        c''8 c''8 c''8 c''8 a'2 |
        r4 g'8. g'16 g'16 g'16 g'4. |
        a'4 g'4 a'2 |

        r4 a'8 a'8 c''8 a'4 a'8 |
        g'4 g'8. g'16 f'4. f'8 |
        g'4. c'8 c'4 ( e'4 ) |
    }
    \alternative {
        { d'1 ~ | d'2 r4 a'4 }
        { d'1 ~ | d'2 r2  }
    }

    R1*6 | r2 r4 a'4 |

    \repeat volta 2 {
        f'4 ( a'8 ) a'4. a'8. a'16 |
        c''8 c''8 c''8 c''8 a'2 |
        r4 g'8. g'16 g'16 g'16 g'4. |
        a'4 g'4 a'2 |

        r4 a'8 a'8 c''8 a'4 a'8 |
        g'4 g'8. g'16 f'4. f'8 |
        g'4. c'8 c'4 ( e'4 ) |
    }
    \alternative {
        { d'1 ~ | d'2 r4 a'4 }
        { d'1 ~ | d'2 r2  }
    }

    R1*8 | r2 r4 a'4 |

    \repeat volta 2 {
        f'4 ( a'8 ) a'4. a'8. a'16 |
        c''8 c''8 c''8 c''8 a'2 |
        r4 g'8. g'16 g'16 g'16 g'4. |
        a'4 g'4 a'2 |

        r4 a'8 a'8 c''8 a'4 a'8 |
        g'4 g'8. g'16 f'4. f'8 |
        g'4. c'8 c'4 ( e'4 ) |
    }
    \alternative {
        { d'1 ~ | d'2 r4 a'4 }
        { d'1 ~ | d'2. r4  }
    }
}

voicetwosectionb = {
}

tenorharmony = {
    \time 4/4
    \key d \minor
    \partial 4 r4 |
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 4/4
    \key d \minor
    \preintro
    s1 |
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
}

voicethreesectionb = {
}

counter = {
    \time 4/4
    \key fis \minor
    \partial 4 s4 |
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 4/4
    \key fis \minor
    \preintro
    s1 |
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    d4\ppp a,4 d4 a,4 |
    c4 g,4 d4 a,4 |
    c4 g,4 c4 g,4 |
    f,4 c4 a,4 e4 |

    d4 a,4 d4 a,4 |
    c4 g,4 d4 a,4 |
    c4 g,4 c4 g4 |
    d4 a,4 d4 a,4 |
    d4 g,4 r8 a,8 b,8 cis8 |
    \repeat volta 2 {
        d4\mf a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g,4 |
        f,4 c4 a,4 e4 |

        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g4 |
    }
    \alternative {
        { d4 a,4 d4 a,4 | d4 g,4 r8 a,8 b,8 cis8 }
        { d4 a,4 d4 a,4 | d4 g,4 d8 a,8 bes,8 b,8 | }
    }

    c4 g,4 c4 g,4 |
    d4 a,4 c4 g,4 |
    bes,4 f,4 bes,4 d4 |
    f4 d4 c4 g,4 |
    d4 a,4 d4 a,8 bes,8 |

    c4 g,4 d4 a,4 |
    c4 g,4 d4 a,4 |
    c4 g,4 bes,4 f,4 |
    bes,8 f,8 fis,8 g,8 a,4 cis4 |

    \repeat volta 2 {
        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g,4 |
        f,4 c4 a,4 e4 |

        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g4 |
    }
    \alternative {
        { d4 a,4 d4 a,4 | d4 g,4 r8 a,8 b,8 cis8 }
        { d4 a,4 d4 a,4 | d4 g,4 d8 a,8 bes,8 b,8 | }
    }

    c4 g,4 c4 g,4 |
    d4 a,4 c4 g,4 |
    bes,4 f,4 bes,4 d4 |
    f4 d4 c4 g,4 |
    d4 a,4 d4 a,8 bes,8 |

%    c4 g,4 d4 a,4 |
%    c4 g,4 d4 a,4 |
    c4 g,4 bes,4 f,4 |
    bes,8 f,8 fis,8 g,8 a,4 cis4 |

    \repeat volta 2 {
        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g,4 |
        f,4 c4 a,4 e4 |

        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g4 |
    }
    \alternative {
        { d4 a,4 d4 a,4 | d4 g,4 r8 a,8 b,8 cis8 }
        { d4 a,4 d4 a,4 | d4 g,4 d8 a,8 bes,8 b,8 | }
    }

    c4 g,4 c4 g,4 |
    d4 a,4 c4 g,4 |
    bes,4 f,4 bes,4 d4 |
    f4 d4 c4 g,4 |
    d4 a,4 d4 a,8 bes,8 |

    c4 g,4 d4 a,4 |
    c4 g,4 d4 a,4 |
    c4 g,4 bes,4 f,4 |
    bes,8 f,8 fis,8 g,8 a,4 cis4 |

    \repeat volta 2 {
        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g,4 |
        f,4 c4 a,4 e4 |

        d4 a,4 d4 a,4 |
        c4 g,4 d4 a,4 |
        c4 g,4 c4 g4 |
    }
    \alternative {
        { d4 a,4 d4 a,4 | d4 g,4 r8 a,8 b,8 cis8 }
        { d2 g,2 | d2 r2 }
    }
}

basslinesectionb = {
}

bassline = {
    \time 4/4
    \key d \minor
    \partial 4 r4 |
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 4/4
    \key d \minor
    \preintro
    r1 |
    \basslinesectiona
    \basslinesectionb
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutesectiona = {
    \transpose fis d' {
        a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
        e'8 e'8 e'8 gis'8 fis'2 |
        r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
        cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |

        r4 cis''8 cis''8 a'8 ( gis'8 ) fis'4 |
        e'4 e'8. gis'16 fis'4. fis'8 |
        gis'4. e'8 e'4 ( gis'4 ) |
        fis'1 ~ |
        fis'2 r4 cis''4 |
    }
    \repeat volta 2 {
        f''4. ( e''8 ) d''4 d''8. d''16 |
        c''8 c''8 c''8 e''8 d''4 ( f''4 ) |
        g''4 ( e''4 ) g''4 ( bes''4 ) |
        a''2 a''8 ( g''8 f''8 e''8 ) |

        d''1 |
        e''2 ( f''2 ) |
        g''4. ( e''8 ) e''4 ( g''4 ) |
    }
    \alternative {
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 bes''4 a''8 ( g''8 ) a''4 }
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 ( g''4 ) f''2 | }
    }

    R1*3 |
    r4 a'8. bes'16 c''4. e''8 |
    e''8 d''4 e''8 d''4 f''4 |

    e''2 ( f''2 ) |
    g''2 ( a''2 ) |
    c'''2 d'''2 ~ |
    d'''4 bes''4 a''8 ( g''8 ) a''4 |

    \repeat volta 2 {
        f''4. ( e''8 ) d''4 d''8. d''16 |
        c''8 c''8 c''8 e''8 d''4 ( f''4 ) |
        g''4 ( e''4 ) g''4 ( bes''4 ) |
        a''2 a''8 ( g''8 f''8 e''8 ) |

        d''1 |
        e''2 ( f''2 ) |
        g''4. ( e''8 ) e''4 ( g''4 ) |
    }
    \alternative {
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 bes''4 a''8 ( g''8 ) a''4 }
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 ( g''4 ) f''2 | }
    }

    R1*3 |
    r4 a'8. bes'16 c''4. e''8 |
    e''8 d''4 e''8 d''4 f''4 |

    c'''2 d'''2 ~ |
    d'''4 bes''4 a''8 ( g''8 ) a''4 |

    \repeat volta 2 {
        f''4. ( e''8 ) d''4 d''8. d''16 |
        c''8 c''8 c''8 e''8 d''4 ( f''4 ) |
        g''4 ( e''4 ) g''4 ( bes''4 ) |
        a''2 a''8 ( g''8 f''8 e''8 ) |

        d''1 |
        e''2 ( f''2 ) |
        g''4. ( e''8 ) e''4 ( g''4 ) |
    }
    \alternative {
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 bes''4 a''8 ( g''8 ) a''4 }
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 ( g''4 ) f''2 | }
    }

    R1*3 |
    r4 a'8. bes'16 c''4. e''8 |
    e''8 d''4 e''8 d''4 f''4 |

    e''2 ( f''2 ) |
    g''2 ( a''2 ) |
    c'''2 d'''2 ~ |
    d'''4 bes''4 a''8 ( g''8 ) a''4 |

    \repeat volta 2 {
        f''4. ( e''8 ) d''4 d''8. d''16 |
        c''8 c''8 c''8 e''8 d''4 ( f''4 ) |
        g''4 ( e''4 ) g''4 ( bes''4 ) |
        a''2 a''8 ( g''8 f''8 e''8 ) |

        d''1 |
        e''2 ( f''2 ) |
        g''4. ( e''8 ) e''4 ( g''4 ) |
    }
    \alternative {
        { f''4 ( a'4 ) a''4 d'''4 ~ | d'''4 bes''4 a''8 ( g''8 ) a''4 }
        { f''2 ( g''2 ) | f''2. r4 }
    }
}

flutesectionb = {
}

flutenotes = {
    \time 4/4
    \key d \minor
    \transpose fis d' {
        \partial 4 cis''4 |
    }
    \flutesectiona
    \flutesectionb
}

flutenotesmidi = {
    \time 4/4
    \key d \minor
    \preintro
    \transpose fis d' {
        r2 r4 cis''4 |
    }
    \flutesectiona
    \flutesectionb
    \flutesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    R1*9 |
    \repeat volta 2 {
        R1 |
        d'16 ( e' fis' g' a' b' c'' d'' e'' fis'' g'' a'' g''4 ) |
        r4 fis''16 fis''16 fis''8 a''8 ( fis''8 ~ fis''4 ) |
        b'4 ( a'4 ) b'8 ( a'8 g'8 fis'8 ) |

        e'16 ( fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' a''4 ) |
        fis''2 ( e''2 |
        d''2. ) fis''4 ( |
    }
    \alternative {
        { e''1-\prall ~ | e''4 ) r4 r2 }
        { e''1-\prall | r2 r8 b8 b8 c'8 | }
    }

    d'2 fis'4. fis'8 |
    e'4 b'8. b'16 a'2 |
    c''2 e''2 |
    r4 d''8. e''16 fis''4. a''8 |
    d''8 b'4 b'8 g'4 e''4 |

    d''2 ( e''2 ) |
    fis''2 ( g'' 2 ) |
    fis''2 ( e''2 |
    c''2 b'4 ) r4 |

    \repeat volta 2 {
        R1 |
        d'16 ( e' fis' g' a' b' c'' d'' e'' fis'' g'' a'' g''4 ) |
        r4 fis''16 fis''16 fis''8 a''8 ( fis''8 ~ fis''4 ) |
        b'4 ( a'4 ) b'8 ( a'8 g'8 fis'8 ) |

        e'16 ( fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' a''4 ) |
        fis''2 ( e''2 |
        d''2. ) fis''4 ( |
    }
    \alternative {
        { e''1-\prall ~ | e''4 ) r4 r2 }
        { e''1-\prall | r2 r8 b8 b8 c'8 | }
    }

    d'2 fis'4. fis'8 |
    e'4 b'8. b'16 a'2 |
    c''2 e''2 |
    r4 d''8. e''16 fis''4. a''8 |
    d''8 b'4 b'8 g'4 e''4 |

%    d''2 ( e''2 ) |
%    fis''2 ( g'' 2 ) |
    fis''2 ( e''2 |
    c''2 b'4 ) r4 |

    \repeat volta 2 {
        R1 |
        d'16 ( e' fis' g' a' b' c'' d'' e'' fis'' g'' a'' g''4 ) |
        r4 fis''16 fis''16 fis''8 a''8 ( fis''8 ~ fis''4 ) |
        b'4 ( a'4 ) b'8 ( a'8 g'8 fis'8 ) |

        e'16 ( fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' a''4 ) |
        fis''2 ( e''2 |
        d''2. ) fis''4 ( |
    }
    \alternative {
        { e''1-\prall ~ | e''4 ) r4 r2 }
        { e''1-\prall | r2 r8 b8 b8 c'8 | }
    }

    d'2 fis'4. fis'8 |
    e'4 b'8. b'16 a'2 |
    c''2 e''2 |
    r4 d''8. e''16 fis''4. a''8 |
    d''8 b'4 b'8 g'4 e''4 |

    d''2 ( e''2 ) |
    fis''2 ( g'' 2 ) |
    fis''2 ( e''2 |
    c''2 b'4 ) r4 |

    \repeat volta 2 {
        R1 |
        d'16 ( e' fis' g' a' b' c'' d'' e'' fis'' g'' a'' g''4 ) |
        r4 fis''16 fis''16 fis''8 a''8 ( fis''8 ~ fis''4 ) |
        b'4 ( a'4 ) b'8 ( a'8 g'8 fis'8 ) |

        e'16 ( fis' g' a' b' c'' d'' e'' fis'' g'' a'' b'' a''4 ) |
        fis''2 ( e''2 |
        d''2. ) fis''4 ( |
    }
    \alternative {
        { e''1-\prall ~ | e''4 ) r4 r2 }
        { e''2 ( a'2 ) | e'2.-\prall r4 }
    }
}

clarinetsectionb = {
}

clarinetnotes = {
    \time 4/4
    \key e \minor
    \partial 4 r4 |
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = {
    \time 4/4
    \key e \minor
    \preintro
    r1 |
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoclarinetnotes = \transpose ees c' {
    \tenorharmony
}

altoclarinetnotesmidi = \transpose ees c' {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \tenorharmony
}

altosaxnotesmidi = \transpose ees c' {
    \tenorharmonymidi
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

trumpetsectiona = {
    R1*9 |
    \repeat volta 2 {
        r2 r4 b'4 |
        g'4. ( fis'8 ) e'4 r4 |
        r4 a'4 fis'4. ( fis'8 |
        g'4 ) fis'4 ( b'2 ) |

        r4 b'8 b'8 g'8 ( fis'8 ) e'4 |
        d'4 d'8. fis'16 e'4. e'8 |
        fis'4. d'8 d'4 ( fis'4 ) |
    }
    \alternative {
        { g'1-\trill | b'4 a'8 ( c''8 ) b'4 r4 }
        { g'1-\trill | e'2 r2 | }
    }

    r8 d'8 d'8 ( fis'8 a'2 ) |
    r8 e'8 e'8 ( g'8 a'2 ) |
    r8 e'8 e'8 ( fis'8 g'2 ) |
    r2. r8 fis'8 |
    fis'8 e'4 fis'8 e'4 g'4 |

    fis'2 e'2 |
    fis'8 e'8 e'8 fis'8 e'4. fis'16 ( g'16 |
    fis'2 ) g'2 ~ |
    g'4 g'8 ( c''8 ) b'4 r4 |

    \repeat volta 2 {
        r2 r4 b'4 |
        g'4. ( fis'8 ) e'4 r4 |
        r4 a'4 fis'4. ( fis'8 |
        g'4 ) fis'4 ( b'2 ) |

        r4 b'8 b'8 g'8 ( fis'8 ) e'4 |
        d'4 d'8. fis'16 e'4. e'8 |
        fis'4. d'8 d'4 ( fis'4 ) |
    }
    \alternative {
        { g'1-\trill | b'4 a'8 ( c''8 ) b'4 r4 }
        { g'1-\trill | e'2 r2 | }
    }

    r8 d'8 d'8 ( fis'8 a'2 ) |
    r8 e'8 e'8 ( g'8 a'2 ) |
    r8 e'8 e'8 ( fis'8 g'2 ) |
    r2. r8 fis'8 |
    fis'8 e'4 fis'8 e'4 g'4 |

%    fis'2 e'2 |
%    fis'8 e'8 e'8 fis'8 e'4. fis'16 ( g'16 |
    fis'2 g'2 ~ |
    g'4 g'8 ( c''8 ) b'4 r4 |

    \repeat volta 2 {
        r2 r4 b'4 |
        g'4. ( fis'8 ) e'4 r4 |
        r4 a'4 fis'4. ( fis'8 |
        g'4 ) fis'4 ( b'2 ) |

        r4 b'8 b'8 g'8 ( fis'8 ) e'4 |
        d'4 d'8. fis'16 e'4. e'8 |
        fis'4. d'8 d'4 ( fis'4 ) |
    }
    \alternative {
        { g'1-\trill | b'4 a'8 ( c''8 ) b'4 r4 }
        { g'1-\trill | e'2 r2 | }
    }

    r8 d'8 d'8 ( fis'8 a'2 ) |
    r8 e'8 e'8 ( g'8 a'2 ) |
    r8 e'8 e'8 ( fis'8 g'2 ) |
    r2. r8 fis'8 |
    fis'8 e'4 fis'8 e'4 g'4 |

    fis'2 e'2 |
    fis'8 e'8 e'8 fis'8 e'4. fis'16 ( g'16 |
    fis'2 ) g'2 ~ |
    g'4 g'8 ( c''8 ) b'4 r4 |

    \repeat volta 2 {
        r2 r4 b'4 |
        g'4. ( fis'8 ) e'4 r4 |
        r4 a'4 fis'4. ( fis'8 |
        g'4 ) fis'4 ( b'2 ) |

        r4 b'8 b'8 g'8 ( fis'8 ) e'4 |
        d'4 d'8. fis'16 e'4. e'8 |
        fis'4. d'8 d'4 ( fis'4 ) |
    }
    \alternative {
        { g'1-\trill | b'4 a'8 ( c''8 ) b'4 r4 }
        { fis'1-\trill ~ | fis'2. r4 | }
    }
}

trumpetsectionb = {
}

trumpetnotes = {
    \time 4/4
    \key e \minor
    \partial 4 r4 |
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = {
    \time 4/4
    \key e \minor
    \preintro
    r1 |
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionb
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
%    \melodynotes
}

violinnotesmidi = {
%    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutechordletterssectiona = \transpose fis d \chordmode {
    fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
    fis1:min | e2 fis2:min | e1 |
    fis1:min | fis4:min b4:min cis2:7 |
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    % measure 11
    e1 | fis2:min e2 | d1 | a2 e2 |
    % measure 15
    fis1:min | e2 fis2:min | e2 fis2:min | e2 d2 | d2 cis2:7 |

    % measure 20
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        % measure 24
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        % measure 29
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    e1 |
    % measure 31
    fis2:min e2 | d1 | a2 e2 | fis1:min |
    % measure 35
    e2 d2 | d2 cis2:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    e1 | fis2:min e2 | d1 | a2 e2 | fis1:min |
    e2 fis2:min | e2 fis2:min | e2 d2 | d2 cis2:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis2:min b2:min | fis1:min | }
    }

}

flutechordletterssectionb = \transpose fis d \chordmode {
}

flutechordletters = \chordmode {
    \time 4/4
    \partial 4 a4:7
    \flutechordletterssectiona
    \flutechordletterssectionb
}

chordletterssectiona = \transpose fis d \chordmode {
    s1*8 | s2 s4 cis4:7 |
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    % measure 11
    e1 | fis2:min e2 | d1 | a2 e2 |
    % measure 15
    fis1:min | e2 fis2:min | e2 fis2:min | e2 d2 | d2 cis2:7 |

    % measure 20
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        % measure 24
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        % measure 29
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    e1 |
    % measure 31
    fis2:min e2 | d1 | a2 e2 | fis1:min |
    % measure 35
    e2 d2 | d2 cis2:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    e1 | fis2:min e2 | d1 | a2 e2 | fis1:min |
    e2 fis2:min | e2 fis2:min | e2 d2 | d2 cis2:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis2:min b2:min | fis1:min | }
    }

}

chordletterssectionb = \transpose fis d \chordmode {
}

chordletters = \chordmode {
    \time 4/4
    \partial 4 s4
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 4/4
    \preintro
    s1
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorchordletterssectiona = \transpose fis d \chordmode {
    s1*8 | s2 s4 cis4:7 |
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    s1*8 | s2 s4 cis4:7 |

    % measure 20
    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        % measure 24
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        % measure 29
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    s1*6 | s2 s4 cis4:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis1:min | fis4:min b4:min fis2:min | }
    }

    s1*8 | s2 s4 cis4:7 |

    \repeat volta 2 {
        fis1:min | e2 fis2:min | e1 | a2 cis2:7 |
        fis1:min | e2 fis2:min | e1 |
    }
    \alternative {
        { fis1:min | fis4:min b4:min cis2:7 | }
        { fis2:min b2:min | fis1:min | }
    }

}

tenorchordletters = \chordmode {
    \time 4/4
    \partial 4 s4
    \tenorchordletterssectiona
    \chordletterssectionb
}

%%%%%%%%%%%%%%%%%%%%%

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
guitarchordletters = \flutechordletters
%flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
altosaxchordletters = \transpose ees c \tenorchordletters
altoclarinetchordletters = \transpose ees c \tenorchordletters
basschordletters = \flutechordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectiona = {
}

guitarnotessectionb = {
}

guitarnotes = {
    \time 4/4
    \key d \minor
    \partial 4 s4 |
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 4/4
    \key d \minor
    \preintro
    s1 |
    \guitarnotessectiona
    \guitarnotessectionb
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
    \key d \minor
    \partial 4 s4 |
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 4/4
    \key d \minor
    \preintro
    s1 |
    \pianorightnotessectiona
    \pianorightnotessectionb
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
    \key d \minor
    \partial 4 s4 |
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 4/4
    \key d \minor
    \preintro
    s1 |
    \pianoleftnotessectiona
    \pianoleftnotessectionb
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
    Mah to- vu o- ha- le- cha Ya- a- kov,
    mish- k'- no- te- cha __ Yis- ra- el. __
    Va- a- ni __ b'- rov chas- d'- cha a- vo vei- te- cha, __ Mah cha.

    Esh- ta- cha- veh el hei- chal kaud- sh'- cha b'- yi- ra- te- cha. __
    A- do- nai, a- hav- ti m'- on bei- te- cha, u- m'- kom mish- kan k'- vo-
    de- cha. __

    Mah to- vu o- ha- le- cha Ya- a- kov,
    mish- k'- no- te- cha __ Yis- ra- el. __
    Va- a- ni __ b'- rov chas- d'- cha a- vo vei- te- cha, __ Mah cha.

    Va- a- ni __ esh- ta- cha-
    veh v'- ech- ra- ah, __ ev- r'- cha __ lif- nei A- do- nai __ o-
    si. __

    Mah to- vu o- ha- le- cha Ya- a- kov,
    mish- k'- no- te- cha __ Yis- ra- el. __
    Va- a- ni __ b'- rov chas- d'- cha a- vo vei- te- cha, __ Mah cha.

    Va- a- ni __ t'- fi- la-
    ti- l'- cha, A- do- nai, __ eit ra- tzon.  E- lo- him, __ b'- rauv chas-
    de- cha.  A- nei- ni be- e- met yish- e- cha. __

    Mah to- vu o- ha- le- cha Ya- a- kov,
    mish- k'- no- te- cha __ Yis- ra- el. __
    Va- a- ni __ b'- rov chas- d'- cha a- vo vei- te- cha, __ Mah cha. __
}
textlb = \lyricmode {
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose fis d \chordmode {
    \time 4/4
    \partial 4 cis4:7 fis1:min e2 fis2:min e1 a2 cis2:7 |
}

previewnotes = \transpose fis d {
    \time 4/4
    \key fis \minor

    \partial 4 cis''4 |
    a'4. ( gis'8 ) fis'4 fis'8. fis'16 |
    e'8 e'8 e'8 gis'8 fis'2 |
    r4 gis'16 gis'16 gis'8 b'8 gis'8 ~ gis'4 |
    cis''4 b'4 cis''8 ( b'8 a'8 gis'8 ) |
}

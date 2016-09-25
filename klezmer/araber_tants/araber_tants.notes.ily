\version "2.18.2"

bandmintro = {
    s1 | \bar "||"
}

bandmsectiona = {
    \markSA \positionSA
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    \repeat volta 2 {
        s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 |
    }
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev
    }
    \alternative {
        { s1 | \breakBeit }
        { s1 | }
    }
    \bar ".|:-||"
    \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre
    }
    \alternative {
        {
            \set Score.repeatCommands = #'((volta "1,3."))
            s1 | \breakCfor
        }
        {
            \set Score.repeatCommands = #'((volta "2,4."))
            s1 |
        }
    }
    \bar "||"
    \breakC \markDS \positionDS
}

bandmvamp = {
    s2*2 | \breakV \bar "||"
}

bandmsectiond = {
    \markD \positionD
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
    \grace { s16 } s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
    s2 |
    \bar "||"
    \breakD
}

bandmsectionea = {
    \markE \positionE
    s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
    s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev s2 | \breakEeit
    s2 | \breakEnin s2 | \breakEten s2 | \breakEelv s2 | \breakEtwl
    \markTC \positionTC
}

bandmsectioneb = {
    s2 | \breakEtht s2 | \breakEfrt s2 |
}

bandmsectione = {
    \bandmsectionea \bandmsectioneb \breakE \markToD \positionToD \bar "||"
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC
    s2 | \breakCCone s2 | \breakCCtwo s2 | \breakCCtre s2 | \breakCCfor
    s2 | \breakCCfiv s2 |
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \time 2/4
    \bandmvamp
    \bandmsectiond
    \bandmsectione
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronomeextra = { s1 | s1 | }

metronome =  \context Voice = "metronomev" {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \metronomeextra
    \bandmintro

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectionc

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectionc

    \tempo 4 = 130
    \time 2/4
    \bandmvamp
    \bandmsectiond
    \bandmsectione
    \bandmsectiond
    \bandmsectionea
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
    \key c \major
    s2. e'4 |
}

melodysectiona = {
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |

    gis'8 a'8 b'4 b'4 b'4 |
    d''2 ~ d''8 c'' b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r2 |
    \repeat volta 2 {
        e'8 e''4 dis''8 e''4 b'4 |
        c''4. d''8 e''4 d''16 c''16 b'16 a'16 |
        gis'8 a'4. ~ a'8 gis'8 f'8 gis'8 |
        f'8 e'4. r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
    }
}

melodysectionb = {
    \repeat volta 2 {
        gis'1 |
        a'1 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
        e'8 f'8 gis'8 a'8 b'8 e''8 b'8 a'8 |

        gis'1 |
        a'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
    }
    \alternative {
        {
            e'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        }
        {
            e'2 r8 e''8 d''16 c''16 b'16 a'16 |
        }
    }
}

melodysectionc = {
    \repeat volta 2 {
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
        e'8 f'8 gis'8 a'8 b'8 e''8 d''16 c''16 b'16 a'16 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
    }
    \alternative {
        {
            e'8 e'4 b8 e'8 b8 e'4 |
        }
        {
            e'2. r4 |
        }
    }
}

melodyvamp = {
    \key e \major
    R2*2 |
}

melodysectiond = {
    r8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |
    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8 |
    a'16 b'16 gis'8 r16 e'16 f'16 gis'16 |

    a'16-\prall gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16 gis'16-\prall f'16 |
    e'8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |

    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8
    a'16 b'16 gis'8 r16 gis'16 a'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |

    r16 e'16 f'16 gis'16 a'16 b'16 c''16 cis''16 |
}

melodysectionea = {
    cis''8 d''8 d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'8 c''8 c''8 c''8 ~ |
    c''8.\glissando b'16\glissando c''16 \once \override Flag.stroke-style = #"grace" \afterGrace b'16 ( d''16 ) c''16 a'16 |

    b'8 gis'8 r16 e'16 f'16 gis'16 |
    \once \override Flag.stroke-style = #"grace" \grace { b'16 } a'16 gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16-\prall gis'16 f'16 |
    e'2 |

    cis''16 d''8. d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'16 c''8. c''8 c''8 ~ |
    c''8.\glissando b'16\glissando \tuplet 3/2 { c''8 b'8 a'8 } |
}

melodysectioneb = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |
}

melodysectione = { \melodysectionea \melodysectioneb }

melodycoda = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    \tuplet 12/8 { r16 e'16 f'16 fis'16 g'16 gis'16 a'16 b'16 c''16 cis''16 d''16 dis''16 } |
    e''4 r4 |
    b'4 r4 |
    e'2-\fermata |
}

melodynotes = {
    \time 4/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \time 2/4
    \melodyvamp
    \melodysectiond
    \melodysectione
    \blankmeasure
    \melodycoda
}

melody = {
    \melodynotes
}

melodymidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \melodyintro

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectionc

    \time 2/4
    \melodyvamp
    \melodysectiond
    \melodysectione
    \melodysectiond
    \melodysectionea
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    \key c \major
    s1 |
}

tenorharmonysectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

tenorharmonysectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

tenorharmonyvamp = {
    \key e \major
    s2*2 |
}

tenorharmonysectiond = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

tenorharmonysectionea = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

tenorharmonysectioneb = {
    s2 | s2 | s2 |
}

tenorharmonysectione = { \tenorharmonysectionea \tenorharmonysectioneb }

tenorharmonycoda = {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

tenorharmonynotes = {
    \time 4/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \time 2/4
    \tenorharmonyvamp
    \tenorharmonysectiond
    \tenorharmonysectione
    \blankmeasure
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyintro = {
    \key c \major
    s1 |
}

altoharmonysectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

altoharmonysectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

altoharmonyvamp = {
    \key e \major
    s2*2 |
}

altoharmonysectiond = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

altoharmonysectionea = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

altoharmonysectioneb = {
    s2 | s2 | s2 |
}

altoharmonysectione = { \altoharmonysectionea \altoharmonysectioneb }

altoharmonycoda = {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

altoharmonynotes = {
    \time 4/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \time 2/4
    \altoharmonyvamp
    \altoharmonysectiond
    \altoharmonysectione
    \blankmeasure
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteintro = {
    \key c \major
    s2. e'4 |
}

flutesectiona = {
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |

    gis'8 a'8 b'4 b'4 b'4 |
    d''2 ~ d''8 c'' b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r2 |
    \repeat volta 2 {
        e'8 e''4 dis''8 e''4 b'4 |
        c''4. d''8 e''4 d''16 c''16 b'16 a'16 |
        gis'8 a'4. ~ a'8 gis'8 f'8 gis'8 |
        f'8 e'4. r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
    }
}

flutesectionb = {
    \repeat volta 2 {
        gis'1 |
        a'1 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
        e'8 f'8 gis'8 a'8 b'8 e''8 b'8 a'8 |

        gis'1 |
        a'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
    }
    \alternative {
        {
            e'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        }
        {
            e'2 r8 e''8 d''16 c''16 b'16 a'16 |
        }
    }
}

flutesectionc = {
    \repeat volta 2 {
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
        e'8 f'8 gis'8 a'8 b'8 e''8 d''16 c''16 b'16 a'16 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
    }
    \alternative {
        {
            e'8 e'4 b8 e'8 b8 e'4 |
        }
        {
            e'2. r4 |
        }
    }
}

flutevamp = {
    \key e \major
    R2*2 |
}

flutesectiond = {
    r8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |
    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8 |
    a'16 b'16 gis'8 r16 e'16 f'16 gis'16 |

    a'16-\prall gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16 gis'16-\prall f'16 |
    e'8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |

    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8
    a'16 b'16 gis'8 r16 gis'16 a'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |

    r16 e'16 f'16 gis'16 a'16 b'16 c''16 cis''16 |
}

flutesectionea = {
    cis''8 d''8 d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'8 c''8 c''8 c''8 ~ |
    c''8.\glissando b'16\glissando c''16 \once \override Flag.stroke-style = #"grace" \afterGrace b'16 ( d''16 ) c''16 a'16 |

    b'8 gis'8 r16 e'16 f'16 gis'16 |
    \once \override Flag.stroke-style = #"grace" \grace { b'16 } a'16 gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16-\prall gis'16 f'16 |
    e'2 |

    cis''16 d''8. d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'16 c''8. c''8 c''8 ~ |
    c''8.\glissando b'16\glissando \tuplet 3/2 { c''8 b'8 a'8 } |
}

flutesectioneb = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |
}

flutesectione = { \flutesectionea \flutesectioneb }

flutecoda = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    \tuplet 12/8 { r16 e'16 f'16 fis'16 g'16 gis'16 a'16 b'16 c''16 cis''16 d''16 dis''16 } |
    e''4 r4 |
    b'4 r4 |
    e'2-\fermata |
}

flutenotes = \transpose c c' {
    \time 4/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \time 2/4
    \flutevamp
    \flutesectiond
    \flutesectione
    \blankmeasure
    \flutecoda
}

flutenotesmidi = \transpose c c' {
    \time 4/4
    \preintro
    \metronomeextra
    \fluteintro

    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectionc

    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectionc

    \time 2/4
    \flutevamp
    \flutesectiond
    \flutesectione
    \flutesectiond
    \flutesectionea
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \key c \major
    s2. e'4 |
}

clarinetsectiona = {
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |

    gis'8 a'8 b'4 b'4 b'4 |
    d''2 ~ d''8 c'' b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r2 |
    \repeat volta 2 {
        e'8 e''4 dis''8 e''4 b'4 |
        c''4. d''8 e''4 d''16 c''16 b'16 a'16 |
        gis'8 a'4. ~ a'8 gis'8 f'8 gis'8 |
        f'8 e'4. r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        gis'1 |
        a'1 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
        e'8 f'8 gis'8 a'8 b'8 e''8 b'8 a'8 |

        gis'1 |
        a'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
    }
    \alternative {
        {
            e'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        }
        {
            e'2 r8 e''8 d''16 c''16 b'16 a'16 |
        }
    }
}

clarinetsectionc = {
    \repeat volta 2 {
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
        e'8 f'8 gis'8 a'8 b'8 e''8 d''16 c''16 b'16 a'16 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
    }
    \alternative {
        {
            e'8 e'4 b8 e'8 b8 e'4 |
        }
        {
            e'2. r4 |
        }
    }
}

clarinetvamp = {
    \key e \major
    R2*2 |
}

clarinetsectiond = {
    r8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |
    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8 |
    a'16 b'16 gis'8 r16 e'16 f'16 gis'16 |

    a'16-\prall gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16 gis'16-\prall f'16 |
    e'8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |

    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8
    a'16 b'16 gis'8 r16 gis'16 a'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |

    r16 e'16 f'16 gis'16 a'16 b'16 c''16 cis''16 |
}

clarinetsectionea = {
    cis''8 d''8 d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'8 c''8 c''8 c''8 ~ |
    c''8.\glissando b'16\glissando c''16 \once \override Flag.stroke-style = #"grace" \afterGrace b'16 ( d''16 ) c''16 a'16 |

    b'8 gis'8 r16 e'16 f'16 gis'16 |
    \once \override Flag.stroke-style = #"grace" \grace { b'16 } a'16 gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16-\prall gis'16 f'16 |
    e'2 |

    cis''16 d''8. d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'16 c''8. c''8 c''8 ~ |
    c''8.\glissando b'16\glissando \tuplet 3/2 { c''8 b'8 a'8 } |
}

clarinetsectioneb = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |
}

clarinetsectione = { \clarinetsectionea \clarinetsectioneb }

clarinetcoda = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    \tuplet 12/8 { r16 e'16 f'16 fis'16 g'16 gis'16 a'16 b'16 c''16 cis''16 d''16 dis''16 } |
    e''4 r4 |
    b'4 r4 |
    e'2-\fermata |
}

clarinetnotes = \transpose c d' {
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \time 2/4
    \clarinetvamp
    \clarinetsectiond
    \clarinetsectione
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = \transpose c d' {
    \time 4/4
    \preintro
    \metronomeextra
    \clarinetintro

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionc

    \time 2/4
    \clarinetvamp
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectiond
    \clarinetsectionea
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \key c \major
    s2. e'4 |
}

trumpetsectiona = {
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |

    gis'8 a'8 b'4 b'4 b'4 |
    d''2 ~ d''8 c'' b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r2 |
    \repeat volta 2 {
        e'8 e''4 dis''8 e''4 b'4 |
        c''4. d''8 e''4 d''16 c''16 b'16 a'16 |
        gis'8 a'4. ~ a'8 gis'8 f'8 gis'8 |
        f'8 e'4. r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        gis'1 |
        a'1 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
        e'8 f'8 gis'8 a'8 b'8 e''8 b'8 a'8 |

        gis'1 |
        a'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
    }
    \alternative {
        {
            e'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        }
        {
            e'2 r8 e''8 d''16 c''16 b'16 a'16 |
        }
    }
}

trumpetsectionc = {
    \repeat volta 2 {
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
        e'8 f'8 gis'8 a'8 b'8 e''8 d''16 c''16 b'16 a'16 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
    }
    \alternative {
        {
            e'8 e'4 b8 e'8 b8 e'4 |
        }
        {
            e'2. r4 |
        }
    }
}

trumpetvamp = {
    \key e \major
    R2*2 |
}

trumpetsectiond = {
    r8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |
    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8 |
    a'16 b'16 gis'8 r16 e'16 f'16 gis'16 |

    a'16-\prall gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16 gis'16-\prall f'16 |
    e'8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |

    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8
    a'16 b'16 gis'8 r16 gis'16 a'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |

    r16 e'16 f'16 gis'16 a'16 b'16 c''16 cis''16 |
}

trumpetsectionea = {
    cis''8 d''8 d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'8 c''8 c''8 c''8 ~ |
    c''8.\glissando b'16\glissando c''16 \once \override Flag.stroke-style = #"grace" \afterGrace b'16 ( d''16 ) c''16 a'16 |

    b'8 gis'8 r16 e'16 f'16 gis'16 |
    \once \override Flag.stroke-style = #"grace" \grace { b'16 } a'16 gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16-\prall gis'16 f'16 |
    e'2 |

    cis''16 d''8. d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'16 c''8. c''8 c''8 ~ |
    c''8.\glissando b'16\glissando \tuplet 3/2 { c''8 b'8 a'8 } |
}

trumpetsectioneb = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |
}

trumpetsectione = { \trumpetsectionea \trumpetsectioneb }

trumpetcoda = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    \tuplet 12/8 { r16 e'16 f'16 fis'16 g'16 gis'16 a'16 b'16 c''16 cis''16 d''16 dis''16 } |
    e''4 r4 |
    b'4 r4 |
    e'2-\fermata |
}

trumpetnotes = \transpose c d {
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \time 2/4
    \trumpetvamp
    \trumpetsectiond
    \trumpetsectione
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = \transpose c d {
    \time 4/4
    \preintro
    \metronomeextra
    \trumpetintro

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionc

    \time 2/4
    \trumpetvamp
    \trumpetsectiond
    \trumpetsectione
    \trumpetsectiond
    \trumpetsectionea
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = \transpose f c {
    \key d \major
    s2. cis''4 |
}

altosaxsectiona = \transpose f c {
    fis''8 g''8 ais''4 ais''4 ais''4 |
    b''2. ais''8 g''8 |
    fis''8 g''8 ais''4 b''8 ais''8 g''8 ais''8 |
    g''8 fis''4. r4 fis''4 |

    fis''8 g''8 ais''4 ais''4 ais''4 |
    cis'''2 ~ cis'''8 b''8 ais''8 g''8 |
    fis''8 g''8 ais''4 b''8 ais''8 g''8 ais''8 |
    g''8 fis''4. r2 |

    \repeat volta 2 {
        fis''8 ais''4 a''8 ais''4 ais''4 |
        b''4. cis'''8 d'''4 cis'''16 b''16 ais''16 g''16 |
        fis''8 g''4. ~ g''8 fis''8 e''8 fis''8 |
        b'8 ais'4. r8 ais'8 \tuplet 3/2 { b''8 ais''8 g''8 } |
    }
}

altosaxsectionb = \transpose f c {
    \repeat volta 2 {
        fis''1 |
        d''1 |
        fis''8 g''8 ais''8 fis''8 ~ fis''8 ais'8 b'8 g'8 |
        ais'8 b'8 fis''8 g''8 ais''8 ais''8 ais''8 g''8 |

        fis''1
        d''2 r8 ais'8 \tuplet 3/2 { b''8 ais''8 g''8 }
        fis''8 g''8 ais''8 fis''8 ~ fis''8 ais'8 b'8 g'8 |
    }
    \alternative {
        { ais'2 r8 ais'8 \tuplet 3/2 { b''8 ais''8 g''8 } | }
        { ais'2 r8 d''8 cis''16 b'16 ais'16 g'16 | }
    }
}

altosaxsectionc = \transpose f c {
    \repeat volta 2 {
        fis''8 g''8 ais''8 fis''8 ~ fis''8 ais'8 b'16 ais'16 b'16 g'16 |
        ais'8 b'8 fis''8 g''8 ais''8 ais''8 cis'''16 b''16 ais''16 g''16 |
        fis''8 g''8 ais''8 fis''8 ~ fis''8 ais'8 b'16 ais'16 b'16 g'16 |
    }
    \alternative {
        { ais'8 ais'4 ais'8 ais'8 ais'8 ais'8 r8 | }
        { ais'2 r2 | }
    }
}

altosaxvamp = \transpose fis cis {
    \key fis \major
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
}

altosaxsectiond = \transpose fis cis {
    r16 fis''16 fis''8\glissando cis''8 fis''8 |
    r8 fis''8 cis''8 fis''8 |
    r8 fis''8 r8 fis''8 |
    fis'8 cis''8 r8 cis''8\glissando |

    d''16 d''16 d''8 b'8 d''8 |
    r8 cis''8 fis'8 cis''8 ~ |
    cis''16 cis''16 cis''8 fis'8 cis''8 |
    r8 cis''8 fis'8 cis''8 |

    \grace { s16 } cis''16 cis''16 cis''8 fis'8 cis''8 |
    r8 cis''8 fis'8 cis''8 ~ |
    cis''16 cis''16 cis''8 b'8 b'8 |
    r16 cis''16 cis''8 fis'8 cis''8 ~ |

    cis''8 cis''8 fis'8 cis''8\glissando |
}

altosaxsectionea = \transpose fis cis {
    e''8. e''16 b'8 e''8 ~ |
    e''8 e''8 b'8 e''8 |
    d''8. d''16 b'8 d''8 ~ |
    d''8 d''8 b'8 d''8 |

    fis''8. fis''16 cis''8 fis''8 ~ |
    fis''8 fis''8 cis''8 fis''8 |
    fis''8. fis''16 cis''8 fis''8 ~ |
    fis''16 fis''16 fis''8 cis''8 fis''8 |

    e''8. e''16 b'8 e''8 ~ |
    e''16 e''16 e''8 b'8 e''8 |
    d''8. d''16 b'8 d''8 ~ |
    d''16 d''16 d''8 b'8 d''8 |
}

altosaxsectioneb = \transpose fis cis {
    fis''8 fis''16 fis''16 cis''8 fis''8 |
    fis''8 fis''16 fis''16 cis''8 eis''8 |
    fis''8 r8 cis''8 eis''8 |
}

altosaxsectione = { \altosaxsectionea \altosaxsectioneb }

altosaxcoda = \transpose fis cis {
    fis''8 fis''16 fis''16 cis''8 fis''8 |
    fis''8 fis''16 fis''16 cis''8 eis''8 |
    fis''8 r8 cis''8 eis''8 |
    fis''4 r4 |

    e''4 r4 |
    cis''2-\fermata |
}

altosaxnotes = {
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \time 2/4
    \altosaxvamp
    \altosaxsectiond
    \altosaxsectione
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \altosaxintro

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectionc

    \time 2/4
    \altosaxvamp
    \altosaxsectiond
    \altosaxsectione
    \altosaxsectiond
    \altosaxsectionea
    \altosaxcoda
}

altoforflutenotes =  \transpose a c' {
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = \transpose f c' {
    \key g \major
    s2. fis'4 |
}

tenorsaxsectiona = \transpose f c' {
    b'8 c''8 dis''4 dis''4 dis''4 |
    e''2. dis''8 c''8 |
    b'8 c''8 dis''4 e''8 dis''8 c''8 dis''8 |
    c''8 b'4. r4 b'4 |

    b'8 c''8 dis''4 dis''4 dis''4 |
    fis''2 ~ fis''8 e''8 dis''8 c''8 |
    b'8 c''8 dis''4 e''8 dis''8 c''8 dis''8 |
    c''8 b'4. r2 |

    \repeat volta 2 {
        b'8 dis''4 d''8 dis''4 dis''4 |
        e''4. fis''8 g''4 fis''16 e''16 dis''16 c''16 |
        b'8 c''4. ~ c''8 b'8 a'8 b'8 |
        e'8 dis'4. r8 dis'8 \tuplet 3/2 { e''8 dis''8 c''8 } |
    }
}

tenorsaxsectionb = \transpose f c' {
    \repeat volta 2 {
        b'1 |
        g'1 |
        b'8 c''8 dis''8 b'8 ~ b'8 dis'8 e'8 c'8 |
        dis'8 e'8 b'8 c''8 dis''8 dis''8 dis''8 c''8 |

        b'1 |
        g'2 r8 dis'8 \tuplet 3/2 { e''8 dis''8 c''8 } |
        b'8 c''8 dis''8 b'8 ~ b'8 dis'8 e'8 c'8 |
    }
    \alternative {
        { dis'2 r8 dis'8 \tuplet 3/2 { e''8 dis''8 c''8 } | }
        { dis'2 r8 g''8 fis''16 e''16 dis''16 c''16 | }
    }
}

tenorsaxsectionc = \transpose f c' {
    \repeat volta 2 {
        b'8 c''8 dis''8 b'8 ~ b'8 dis'8 e'16 dis'16 e'16 c'16 |
        dis'8 e'8 b'8 c''8 dis''8 dis''8 fis''16 e''16 dis''16 c''16 |
        b'8 c''8 dis''8 b'8 ~ b'8 dis'8 e'16 dis'16 e'16 c'16 |
    }
    \alternative {
        { dis'8 dis'4 dis'8 dis'8 dis'8 dis'8 r8 | }
        { dis'2 r2 | }
    }
}

tenorsaxvamp = {
    \key fis \major
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
}

tenorsaxsectiond = {
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8\glissando |

    d''8 d''16 d''16 d''8 d''8 |
    r16 cis''16 cis''8 cis''8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |

    \grace { s16 } fis'8 cis''8 r8 cis''8 |
    fis'8 cis''8 r8 cis''8 |
    fis'8 r8 b'8 b'8 |
    fis'8 cis''8 r8 cis''8 |

    fis'8 cis''8 r8 cis''8\glissando |
}

tenorsaxsectionea = {
    e''8. e''16 b'8 e''8 ~ |
    e''8 e''8 e''8 e''8 |
    d''8. d''16 b'8 d''8 ~ |
    d''8 b'8 d''8 b'8 |

    fis''8. fis''16 cis''8 fis''8 ~ |
    fis''8 fis''8 c''8 fis''8 |
    fis''8. fis''16 cis''8 fis''8 ~ |
    fis''16 fis''16 fis''8 cis''8 fis''8 |

    e''8. e''16 b'8 e''8 ~ |
    e''16 e''16 e''8 b'8 e''8 |
    d''8. d''16 b'8 d''8 ~ |
    d''16 d''16 d''8 b'8 d''8 |
}

tenorsaxsectioneb = {
    e''4 r8 e''8 ~ |
    e''8 e''8 b'8 e''8 |
    r8 fis''8 cis''8 fis''8 |
}

tenorsaxsectione = { \tenorsaxsectionea \tenorsaxsectioneb }

tenorsaxcoda = {
    fis''8 fis''16 fis''16 cis''8 fis''8 |
    fis''8 fis''16 fis''16 cis''8 eis''8 |
    fis''8 r8 cis''8 eis''8 |
    fis''4 r4 |

    e''4 r4 |
    cis''2-\fermata |
}

tenorsaxnotes = {
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \time 2/4
    \tenorsaxvamp
    \tenorsaxsectiond
    \tenorsaxsectione
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \tenorsaxintro

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectionc

    \time 2/4
    \tenorsaxvamp
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxsectiond
    \tenorsaxsectionea
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes,, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = \transpose f c, {
    \key f \major
    s2. e'4 |
}

trombonesectiona = \transpose f c, {
    a'8 bes'8 cis''4 cis''4 cis''4 |
    d''2. cis''8 bes'8 |
    a'8 bes'8 cis''4 d''8 cis''8 bes'8 cis''8 |
    bes'8 a'4. r4 a'4 |

    a'8 bes'8 cis''4 cis''4 cis''4 |
    e''2 ~ e''8 d''8 cis''8 bes'8 |
    a'8 bes'8 cis''4 d''8 cis''8 bes'8 cis''8 |
    bes'8 a'4. r2 |
    \repeat volta 2 {
        a'8 cis''4 c''8 c''4 c''4 |
        d''4. e''8 f''4 e''8 bes'8 |
        a'8 bes'4. ~ bes'8 a'8 g'8 a'8 |
        d'8 cis'4. r8 cis'8 d''8 bes'8 |
    }
}

trombonesectionb = \transpose f c, {
    \repeat volta 2 {
        a'1 |
        f'1 |
        a'8 bes'8 cis''8 a'8 ~ a'8 cis'8 d'8 bes8 |
        cis'8 d'8 a'8 bes'8 cis''8 cis''8 cis''8 bes'8 |

        a'1 |
        f'2 r8 cis'8 d''8 bes'8 |
        a'8 bes'8 cis''8 a'8 ~ a'8 cis'8 d'8 bes8 |
    }
    \alternative {
        { cis'2 r8 cis'8 d''8 bes'8 | }
        { cis'2 r8 f''8 e''8 bes'8 | }
    }
}

trombonesectionc = \transpose f c, {
    \repeat volta 2 {
        a'8 bes'8 cis''8 a'8 ~ a'8 cis'8 d'8 d'8 |
        cis'8 d'8 a'8 bes'8 cis''8 cis''8 e''8 bes'8 |
        a'8 bes'8 cis''8 a'8 ~ a'8 cis'8 d'8 d'8 |
    }
    \alternative {
        { cis'8 cis'4 cis'8 cis'8 cis'8 cis'8 r8 | }
        { cis'2 r2 | }
    }
}

trombonevamp = {
    \key e \major
    e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8 |
}

trombonesectiond = {
    e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8\glissando |

    a8 a16 a16 a8 a8 |
    r16 gis16 gis8 gis8 gis8 |
    e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8 |

    \grace { s16 } e8 gis8 r8 gis8 |
    e8 gis8 r8 gis8 |
    e8 r8 f8 f8 |
    e8 gis8 r8 gis8 |

    e8 gis8 r8 gis8\glissando |
}

trombonesectionea = {
    a8. a16 a8 a8 ~ |
    a8 a8 a8 a8 |
    a8. a16 e8 a8 ~ |
    a8 a8 a8 a8\glissando |

    b8. b16 e8 b8 ~ |
    b8 b8 b8 b8 |
    b8. b16 e8 b8 ~ |
    b16 b16 b8 e8 b8 |

    a8. a16 a8 a8 ~ |
    a16 a16 a8 a8 a8 |
    a8. a16 e8 a8 ~ |
    a8 a8 a8 a8 |
}

trombonesectioneb = {
    a4 r8 a8 ~ |
    a8 a8 a8 a8 |
    e8 b8 r8 b8 |
}

trombonesectione = { \trombonesectionea \trombonesectioneb }

trombonecoda = {
    b8 b16 b16 gis8 b8 |
    b8 b16 b16 gis8 b8 |
    b8 r8 b,8 dis8 |
    e4 r4 |

    b,4 r4 |
    e2-\fermata |
}

trombonenotes = {
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \time 2/4
    \trombonevamp
    \trombonesectiond
    \trombonesectione
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \tromboneintro

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionc

    \time 2/4
    \trombonevamp
    \trombonesectiond
    \trombonesectione
    \trombonesectiond
    \trombonesectionea
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    \key c \major
    s2. e'4 |
}

violinsectiona = {
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |

    gis'8 a'8 b'4 b'4 b'4 |
    d''2 ~ d''8 c'' b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r2 |
    \repeat volta 2 {
        e'8 e''4 dis''8 e''4 b'4 |
        c''4. d''8 e''4 d''16 c''16 b'16 a'16 |
        gis'8 a'4. ~ a'8 gis'8 f'8 gis'8 |
        f'8 e'4. r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
    }
}

violinsectionb = {
    \repeat volta 2 {
        gis'1 |
        a'1 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
        e'8 f'8 gis'8 a'8 b'8 e''8 b'8 a'8 |

        gis'1 |
        a'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'8 d'8 |
    }
    \alternative {
        {
            e'2 r8 e'8 \tuplet 3/2 { c''8 b'8 a'8 } |
        }
        {
            e'2 r8 e''8 d''16 c''16 b'16 a'16 |
        }
    }
}

violinsectionc = {
    \repeat volta 2 {
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
        e'8 f'8 gis'8 a'8 b'8 e''8 d''16 c''16 b'16 a'16 |
        gis'8 a'8 b'8 gis'8 ~ gis'8 e'8 f'16 e'16 f'16 d'16 |
    }
    \alternative {
        {
            e'8 e'4 b8 e'8 b8 e'4 |
        }
        {
            e'2. r4 |
        }
    }
}

violinvamp = {
    \key e \major
    R2*2 |
}

violinsectiond = {
    r8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |
    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8 |
    a'16 b'16 gis'8 r16 e'16 f'16 gis'16 |

    a'16-\prall gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16 gis'16-\prall f'16 |
    e'8 e'8 gis'8 b'8 |
    \once \override Flag.stroke-style = #"grace" \grace { dis''16 } e''4 b'4 |

    \once \override Flag.stroke-style = #"grace" \grace { d''16 } c''8 b'8 a'32 b'32 a'16 gis'8
    a'16 b'16 gis'8 r16 gis'16 a'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |

    r16 e'16 f'16 gis'16 a'16 b'16 c''16 cis''16 |
}

violinsectionea = {
    cis''8 d''8 d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'8 c''8 c''8 c''8 ~ |
    c''8.\glissando b'16\glissando c''16 \once \override Flag.stroke-style = #"grace" \afterGrace b'16 ( d''16 ) c''16 a'16 |

    b'8 gis'8 r16 e'16 f'16 gis'16 |
    \once \override Flag.stroke-style = #"grace" \grace { b'16 } a'16 gis'16 a'16 b'16 c''16 b'16 a'16 c''16 |
    b'8.\glissando a'16\glissando b'16 a'16-\prall gis'16 f'16 |
    e'2 |

    cis''16 d''8. d''8 d''8 ~ |
    d''8.\glissando cis''16\glissando d''16 c''16 b'16 a'16 |
    b'16 c''8. c''8 c''8 ~ |
    c''8.\glissando b'16\glissando \tuplet 3/2 { c''8 b'8 a'8 } |
}

violinsectioneb = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    e'2 |
}

violinsectione = { \violinsectionea \violinsectioneb }

violincoda = {
    b'8 gis'8 r8 gis'16 b'16 |
    b'16 a'32 b'32 a'16 gis'16 gis'16 f'32 gis'32 f'16 e'16 |
    \tuplet 12/8 { r16 e'16 f'16 fis'16 g'16 gis'16 a'16 b'16 c''16 cis''16 d''16 dis''16 } |
    e''4 r4 |
    b'4 r4 |
    e'2-\fermata |
}

violinnotes = {
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \time 2/4
    \violinvamp
    \violinsectiond
    \violinsectione
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionc

    \time 2/4
    \violinvamp
    \violinsectiond
    \violinsectione
    \violinsectiond
    \violinsectionea
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s1 |
}

chordletterssectiona = \chordmode {
    e1 | a1:min | e2 f2 | e1 |
    e1 | d1:min | e2 f2 | e1 |
    \repeat volta 2 {
        e1 | a1:min | e1 | e1 |
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        e1 | a1:min | e2. d4:min | e1 |
        e1 | a1:min | e2. d4:min |
    }
    \alternative {
        { e1 | }
        { \chordChangesOff e2. \chordChangesOn d4:min | }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        e2. d4:min | e2. d4:min | e2. d4:min |
    }
    \alternative {
        { e1 | }
        { \chordChangesOff e1 | }
    }
}

chordlettersvamp = \chordmode {
    e2 \chordChangesOn | e2 |
}

chordletterssectiond = \chordmode {
    \chordChangesOff e2 \chordChangesOn | e2 | e2 | e2 |
    a2:min/e | e2 | e2 | e2 |
    \grace { e16 } e2 | e2 | e4 d4:min | e2 |
    e2 |
}

chordletterssectionea = \chordmode {
    d2:min | d2:min | a2:min | a2:min |
    e2 | e2 | e2 | e2 |
    d2:min | d2:min | a2:min | a2:min |
}

chordletterssectioneb = \chordmode {
    d2:min | d2:min | e2 |
}

chordletterssectione = \chordmode {
    \chordletterssectionea \chordletterssectioneb
}

chordletterscoda = \chordmode {
    d2:min | d2:min | e2 | e4 s4 |
    d4:min6 s4 | e2 |
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \time 2/4
    \chordlettersvamp
    \chordletterssectiond
    \chordletterssectione
    \blankmeasure
    \chordletterscoda
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

pianorightupperintro = {
    \key c \major
    s1 |
}

pianorightuppersectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianorightuppersectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianorightuppervamp = {
    \key e \major
    s2*2 |
}

pianorightuppersectiond = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

pianorightuppersectionea = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianorightuppersectioneb = {
    s2 | s2 | s2 |
}

pianorightuppersectione = { \pianorightuppersectionea \pianorightuppersectioneb }

pianorightuppercoda = {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

pianorightuppernotes = {
    \time 4/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \time 2/4
    \pianorightuppervamp
    \pianorightuppersectiond
    \pianorightuppersectione
    \blankmeasure
    \pianorightuppercoda
}

%-------------------------------------------------

pianoleftintro = {
    \key c \major
    s1 |
}

pianoleftsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

pianoleftsectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoleftsectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoleftvamp = {
    \key e \major
    s2*2 |
}

pianoleftsectiond = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

pianoleftsectionea = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianoleftsectioneb = {
    s2 | s2 | s2 |
}

pianoleftsectione = { \pianoleftsectionea \pianoleftsectioneb }

pianoleftcoda = {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

pianoleftnotes = {
}

pianoleftuppernotes = {
    \time 4/4
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \time 2/4
    \pianoleftvamp
    \pianoleftsectiond
    \pianoleftsectione
    \blankmeasure
    \pianoleftcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% we don't have a guitar part to expand for midi or specific playing

guitarintro = {
    \key c \major
    s1 |
}

guitarsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarsectionc = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarvamp = {
    \key e \major
    s2*2 |
}

guitarsectiond = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

guitarsectionea = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

guitarsectioneb = {
    s2 | s2 | s2 |
}

guitarsectione = { \guitarsectionea \guitarsectioneb }

guitarcoda = {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

guitarnotes = {
    \time 4/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \time 2/4
    \guitarvamp
    \guitarsectiond
    \guitarsectione
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \guitarintro

    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectionc

    \time 2/4
    \guitarvamp
    \guitarsectiond
    \guitarsectione
    \guitarsectiond
    \guitarsectionea
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = \transpose f c' {
    \key f \major
    s2. r4 |
}

basssectiona = \transpose f c' {
    a,4. cis8 e4 a4 |
    d4. f8 a4 d4 |
    a,4. a8 bes4 bes,4 |
    a,4. cis8 e4 a4 |

    a,4. cis8 e4 a4 |
    g4. a8 bes4 g4 |
    a,4. a8 bes4 bes,4 |
    a,4. cis8 e4 a4 |

    \repeat volta 2 {
        a,4. cis8 e4 a4 |
        d4. f8 a4 d4 |
        a,4. cis8 e4 a4 |
        a,4. cis8 e4 a4 |
    }
}

basssectionb = {
    \repeat volta 2 {
        a,4. cis8 e4 a4 |
        d4. f8 a4 d4 |
        a,4. cis8 e4 g4 |
        a,4. cis8 e4 a4 |

        a,4. cis8 e4 a4 |
        d4. f8 a4 d4 |
        a,4. cis8 e4 g4 |
    }
    \alternative {
        { a,4. cis8 e4 a4 | }
        { a,4. cis8 e4 g4 | }
    }
}

basssectionc = {
    \repeat volta 2 {
        a,4. cis8 e4 g4 |
        a,4. cis8 e4 g4 |
        a,4. cis8 e4 g4 |
    }
    \alternative {
        { e8 e4 b,8 e8 b,8 e4 | }
        { a,2 r2 | }
    }
}

bassvamp = {
    \key e \major
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
}

basssectiond = {
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |

    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |

    \grace { s16 } e8 e8 b,8 e8 |
    e8 e8 b,8 e8 |
    e8 e8 a,8 d8 |
    e8 e8 b,8 e8 |

    e8 e8 b,8 e8 |
}

basssectionea = {
    d8. d16 a,8 d8 ~ |
    d8 d8 d8 d8 |
    a,8. a,16 a,8 a,8 ~ |
    a,8 a,8 a,8 a,8 |

    e8. e16 b,8 e8 ~ |
    e8 e8 b,8 e8 |
    e8. e16 b,8 e8 ~ |
    e16 e16 e8 b,8 e8 |

    d8. d16 d8 d8 ~ |
    d8 d8 d8 d8 |
    a,8. a,16 a,8 a,8 ~ |
    a,8 a,8 a,8 a,8 |
}

basssectioneb = {
    d4 r8 d8 ~ |
    d8 d8 d8 d8 |
    e8. e16 b,8 e8 |
}

basssectione = { \basssectionea \basssectioneb }

basscoda = {
    e8 e16 e16 e8 e8 |
    e8 e8 b,8 e8 |
    e8 r8 b,8 dis8 |
    e4 r4 |

    b,4 r4 |
    e,2-\fermata |
}

bassnotes = {
    \time 4/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \time 2/4
    \bassvamp
    \basssectiond
    \basssectione
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \time 4/4
    \preintro
    \metronomeextra
    \bassintro

    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionc

    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionc

    \time 2/4
    \bassvamp
    \basssectiond
    \basssectione
    \basssectiond
    \basssectionea
    \basscoda
}

euphoniumnotes = { \bassnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    s1 | s1 |
}

drumshighintro = \drummode {
    s1 |
}

drumshighsectiona = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumshighvamp = \drummode {
    s2*2 |
}

drumshighsectiond = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

drumshighsectionea = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

drumshighsectioneb = \drummode {
    s2 | s2 | s2 |
}

drumshighsectione = \drummode { \drumshighsectionea \drumshighsectioneb }

drumshighcoda = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \time 4/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \time 2/4
    \drumshighvamp
    \drumshighsectiond
    \drumshighsectione
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \metronomeextra
    \drumshighintro

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectionc

    \time 2/4
    \drumshighvamp
    \drumshighsectiond
    \drumshighsectione
    \drumshighsectiond
    \drumshighsectionea
    \drumshighcoda
}

%----------------------------------------

drumslowextra = \drummode {
    \set countPercentRepeats = ##t
    s1 | s1 |
}

drumslowintro = \drummode {
    s1 |
}

drumslowsectiona = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumslowvamp = \drummode {
    s2*2 |
}

drumslowsectiond = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
    s2 |
}

drumslowsectionea = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

drumslowsectioneb = \drummode {
    s2 | s2 | s2 |
}

drumslowsectione = \drummode { \drumslowsectionea \drumslowsectioneb }

drumslowcoda = \drummode {
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

drumslow = \drummode {
    \stemDown
    \time 4/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \time 2/4
    \drumslowvamp
    \drumslowsectiond
    \drumslowsectione
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \metronomeextra
    \drumslowintro

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectionc

    \time 2/4
    \drumslowvamp
    \drumslowsectiond
    \drumslowsectione
    \drumslowsectiond
    \drumslowsectionea
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

foobarsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
    }
}

melodystaff = \transpose c c' \context Staff <<
    \clef violin
    \key bes \major
    \time 4/4

    \bandm
    \new Voice {
        \time 4/4
        \melodyintro
%        \foobarsectiona
        \melodysectiona
        \melodysectionb
        \melodysectionc
        \time 2/4
        \melodyvamp
        \melodysectiond
        \melodysectione
        \blankmeasure
        \melodycoda
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

counter = \transpose c c' { \trombonenotes }
tenorharmony = { \tenorharmonynotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 | e1 | a1:min | e2 f2 | e1 |
}

previewnotes = {
    \key c \major
    \time 4/4
    \tempo \tempostring
    s2. e'4 |
    \bar "||"
    \markSA \positionSA
    gis'8 a'8 b'4 b'4 b'4 |
    c''2. b'8 a'8 |
    gis'8 a'8 b'4 c''8 b'8 a'8 b'8 |
    a'8 gis'4. r4 e'4 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }
melodyforaltonotes = { \transpose c a { \violinnotes } }

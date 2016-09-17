\version "2.18.0"

stemUpOnce = \once \override Stem.direction = #UP
stemDownOnce = \once \override Stem.direction = #DOWN

bandmsectiona =  {
    \markA \positionA
    \tempo \tempostring
    s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor
    s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 | \breakAeit
    s2 | \breakAnin
    s2 | \breakAten
    s2 | \breakAelv
    s2 | \breakAtwl
    s2 | \breakAtht
    s2 | \breakAfrt
    s2 | \breakAfft
    s2 |
    \bar "||" \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone
    s2 | \breakBtwo
    s2 | \breakBtre
    s2 | \breakBfor
    s2 | \breakBfiv
    s2 | \breakBsix
    s2 | \breakBsev
    \grace { s16 s16 } s2 | \breakBeit
    s2 | \breakBnin
    s2 | \breakBten
    s2 | \breakBelv
    s2 | \breakBtwl
    s2 | \breakBtht
    s2 | \breakBfrt
    s2 | \breakBfft
    s2 |
    \bar ".|:-||" \breakB
}

bandmsectionc =  {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone
        s2 | \breakCtwo
        s2 | \breakCtre
        s2 | \breakCfor
        \grace { s16 s16 } s2 | \breakCfiv
        s2 | \breakCsix
        s2 | \breakCsev
        s2 | \breakCeit
        \grace { s16 s16 } s2 | \breakCnin
        s2 | \breakCten
        s2 | \breakCelv
        s2 | \breakCtwl
        s2 | \breakCtht
        s2 | \breakCfrt
        s2 | \breakCfft
        s2 | \breakCsxt
        \grace { s16 s16 s16 s16 } s2 | \breakCsvt
        s2 | \breakCett
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
    \markDC \positionDC
}

bandmNV =  {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomeextraintro =  { s2 | s2 | s2 | s2 | }

metronomesectiona =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionb =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
    \alternative {
        { s2 | s2 | s2 | \grace { s16 s16 } s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

metronomesectionc =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

metronome =  \context Voice = "metronome" {
    \time 2/4

    \preintro
    \tempo 4 = 130
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 140
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 130
    \metronomesectiona
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro =  { s2 | s2 | s2 | s2 | }

melodysectiona =  {
    \repeat unfold 2 {
        c''4\ff d''8. c''16 |
        e''8 e''4 e''8 |
        e''4 f''8. e''16 |
        g''8 g''4 g''8 |

        g''16 ( a''16 ) g''8 f''16 ( g''16 ) f''8 |
        e''16 ( f''16 ) e''8 d''16 ( e''16 ) d''8 |
    }
    \alternative {
        { c''8 f''8 e''8 d''8 | c''8 b'8 a'8 g'8 | }
        { c''8 f''8 e''8 d''8 | c''8 r8 < c'' c''' >8^> r8 | }
    }
}

melodysectionb =  {
    \repeat unfold 2 {
        e''8 r8 f''8 r8 |
        e''8 f''16 ( e''16 ) d''8 c''8 |
        e''8 r8 f''8 r8 |
        e''8 f''16 ( e''16 ) d''8 c''8 |
    }
    \alternative {
        {
            e''4 f''4 |
            g''4 a''4 |
            g''2 |
            \grace { s16 s16 } c'''16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 ) |
        }
        {
            c''8 d''4 c''8 | f''8 e''8 d''8 e''8 |
            c''2 ~ | c''8 c''8 e''8 g''8 |
        }
    }
}

melodysectionc =  {
    \repeat volta 2 {
        c'''4.^>\ff g''8^> |
        c'''4.^> g''8^> |
        c'''8.^> g''16^> c'''8.^> g''16^> |
        c'''8.^> g''16^> c'''4^> |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8^\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8^\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        c'''8 g''8 c'''8 bes''8 |
        a''8^\trill g''8 bes''8 a''8 |
        g''8 ( fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 ) |

        \grace { s16 s16 s16 s16 } g''8 r8 e''8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        { c''2 ~ | \grace { s16 } c''8 c''8^> e''8^> g''8^> | }
        { c''2 ~ | c''8 r8 c''8^> r8 | }
    }
}

melody =  {
    \key c \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

melodymidi =  {
    \key c \major
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro =  { s2 | s2 | s2 | s2 | }

tenorharmonysectiona =  {
    fis'4 g'8. fis'16 |
    a'8 a'4 a'8 |
    d''8 a'8 e''8. d''16 |
    fis''8 d''8 a'8 d''8 |

    fis''16 ( g''16 fis''8 ) e''16 ( fis''16 e''8 ) |
    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'8 b'8 a'8 g'8 |
    fis'4 e'8 g'8 |

    fis'4 g'8. g'16 |
    d''8 d''4 a'8 |
    d''8 a'8 e''8. d''16 |
    fis''8 d''8 a'8 d''8 |

    fis''8 d''8 b'16 ( cis''16 b'8 ) |
    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'8 b'8 a'8 g'8 |
    fis'8 r8 fis'8 r8 |
}

tenorharmonysectionb =  {
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |

    d''8 ( a'8 ) e''8 ( a'8 ) |
    fis''8 ( d''8 ) g''8 ( d''8 ) |
    fis''8 d''8 e''8 g''8 |
    \grace { s16 s16 } fis''8 r8 d''8 a'8 |

    d''8 a'8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    d''8 d''8 b'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |

    a'8 a'4 a'8 |
    b'8 a'8 g'8 a'8 |
    fis'8 fis'8 a'8 fis'8 |
    d'8 d'8 fis'8 a'8 |
}

tenorharmonysectionc =  {
    \repeat volta 2 {
        d''8-^\ff a''8 fis''8 e''8-^ |
        fis''8-^ a''8 fis''8 e''8-^ |
        fis''8.-^ e''16 fis''8.-^ e''16 |
        fis''8.-^ e''16 fis''4-^ |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        d''8 a'8 d''8 c''8 |
        b'8 a'8 c''8 b'8 |
        a'8-^ gis'8-^ b'8-^ a'8-^ |
        gis'8-^ f'8-^ e'8-^ d'8-^ |

        \grace { s16 s16 s16 s16 } a'8 ( d''8 ) d''8 ( a'8 ) |
        g'8 fis'8 g'8 a'8 |
    }
    \alternative {
        { fis'8 fis'8 a'8 fis'8 | \grace { s16 } d'8 d'8 fis'8 a'8 | }
        { fis'8 a'8 a'8 a'8 | fis'8 r8 fis''8-^ r8 | }
    }
}

tenorharmony =  \transpose c bes, {
    \key d \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

tenorharmonymidi =  \transpose c bes, {
    \key d \major
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro =  { s2 | s2 | s2 | s2 | }

altoharmonysectiona =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

altoharmonysectionb =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
    \alternative {
        { s2 | s2 | s2 | \grace { s16 s16 } s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

altoharmonysectionc =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

altoharmony =  {
    \key c \major
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
}

altoharmonymidi =  {
    \key c \major
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro =  {
    s2 | s2 | s2 | s2 |
}

countersectiona =  {
    \repeat unfold 2 {
        c8\ff r8 g,8 r8 |
        c8 c4 c8 |
        c4 d4 |
        e8 e4 e8 |

        e4 f4 |
        g4 g,4 |
    }
    \alternative {
        { c8 a8 g8 f8 | e8 d8 c8 b,8 | }
        { c8 g8 a8 b8 | c'8 r8 c8-> r8 | }
    }
}

countersectionb =  {
    \repeat unfold 2 {
        c8 r8 f8 r8 |
        c'4 d'8 c'8 |
        < c c' >8 r8 f8 r8 |
        c'4 d'8 c'8 |
    }
    \alternative {
        {
            < c c' >4 d4 | e4 f4 | e8 e'8 c'8 g8 |
            \grace { s16 s16 } e8 c'8 g8 e8 |
        }
        { g8 r8 g8 r8 | g8 r8 g8 r8 | c'8 c'8 g8 e8 | c8 c8 e8 g8 | }
    }
}

countersectionc =  {
    \repeat volta 2 {
        c'4.->\ff g8-> |
        c'4.-> g8-> |
        c'8.-> g16-> c'8. g16-> |
        c'8.-> g16-> c'4-> |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        c2 ~ |
        c4. f8 |
        g8 fis8 a8 g8 |
        fis8 ees8 d8 c8 |

        \grace { s16 s16 s16 s16 } c8 r8 e8 r8 |
        d8 c8 d8 e8 |
    }
    \alternative {
        { c8 c'8 g8 e8 | \grace { s16 } c8 c8-> e8-> g8-> | }
        { c8 c'8 g8 e8 | c8 r8 c8 r8 | }
    }
}

counter =  {
    \key c \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
}

countermidi =  {
    \key c \major
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro =  {
    c4 g8 c'8 ~ | c'8 g8 c'8 g8 | c4 g8 c'8 ~ | c'8 g8 c'8 g8 |
}

basslinesectiona =  {
    \repeat unfold 2 {
        c4 g8 c'8 ~ |
        c'8 g8 c'8 g8 |
        c4 g8 c'8 ~ |
        c'8 g8 c'8 g8 |

        g4 f4 |
        e4 d4 |
    }
    \alternative {
        { c8 r8 r4 | c2 | }
        { c8 g,8 a,8 b,8 | c8 r8 c8-> r8 | }
    }
}

basslinesectionb =  {
    \repeat unfold 2 {
        c4 f4 |
        c4 g4 |
        c4 f4 |
        c4 g4 |
    }
    \alternative {
        {
            c4 g,4 |
            c4 f4 |
            c4 r4 |
            \grace { s16 s16 } c8 c'8 g8 e8 |
        }
        {
            g,4 d4 |
            g,4 d4 |
            c4 r4 |
            c8 c8 e8 g8 |
        }
    }
}

basslinesectionc =  {
    \repeat volta 2 {
        c4. g,8 |
        c4. g,8 |
        c8. g,16 c8. g,16 |
        c8. g,16 c4 |

        \grace { s16 s16 } c4 g,4 |
        c4 ees4 |
        c4 c4 |
        c8 c'8 g8 e8 |

        \grace { s16 s16 } c4 g,4 |
        c4 ees4 |
        c4 c4 |
        c8 c'8 g8 e8 |

        c4 g,4 |
        c4 ees4 |
        g8 fis8 a8 g8 |
        fis8 ees8 d8 c8 |

        \grace { s16 s16 s16 s16 } c4 e4 |
        g4 d4 |
    }
    \alternative {
        {
            c2 |
            \grace { s16 } c8-> c8-> e8-> g8-> |
        }
        {
            c2 |
            c8 r8 c'8-> r8 |
        }
    }
}

bassline =  {
    \key c \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

basslinemidi =  {
    \key c \major
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro =  { s2 | s2 | s2 | s2 | }

guitarsectiona =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

guitarsectionb =  {
    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
    \alternative {
        { s2 | s2 | s2 | \grace { s16 s16 } s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

guitarsectionc =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

guitarnotes =  {
    \key c \major
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro =  {
    s2 | s2 | s2 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat unfold 2 { c2 | c2 | c2 | c2 | c4 g4:7 | c4 g4:7 | }
    \alternative { { c2 | c4 g4:7 | } { c4 g4:7 | c2 | } }
}

chordletterssectionb = \chordmode {
    \chordChangesOff c4 \chordChangesOn f4 | c2 | c4 f4 | c2 |
    c4 g4:7 | c4 f4 | c2 | \grace { c8 } c2 |
    c4 f4 | c2 | c4 f4 | c2 |
    g2:7 | g2:7 | c2 | c2 |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff c4 \chordChangesOn g4:7 | c4 g4:7 | c2 | c2 |
        \grace { s16 s16 } c2:min | c2:min | c2 | c2 |
        \grace { s16 s16 } c2:min | c2:min | c2 | c2 |
        c2:min | c2:min | g2:7 | c2:min |
        \grace { s16 s16 s16 s16 } c2 | g2:7 |
    }
    \alternative {
        { c2 | \grace { s16 } c2 | }
        { \chordChangesOff c2 \chordChangesOn | c2 | }
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  {
    s2 | s2 | s2 | s2 |
}

clarinetsectiona =  \transpose bes c' {
    \repeat unfold 2 {
        c''4\ff d''8. c''16 |
        e''8 e''4 e''8 |
        e''4 f''8. e''16 |
        g''8 g''4 g''8 |

        g''16 ( a''16 g''8 ) f''16 ( g''16 f''8 ) |
        e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) |
    }
    \alternative {
        {
            c''8 f''8 e''8 d''8 |
            c''8 b'8 a'8 g'8 |
        }
        {
            c''8 f''8 e''8 d''8 |
            c''8 r8 c''8 r8 |
        }
    }
}

clarinetsectionb =  \transpose bes c' {
    e''8 r8 f''8 r8 |
    e''8 f''16 e''16 d''8 c''8 |
    e''8 r8 f''8 r8 |
    e''8 f''16 e''16 d''8 c''8 |

    e''4 f''4 |
    g''4 a''4 |
    g''2 |
    \acciaccatura { a''16 [ b''16 ] } c'''16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 ) |

    e''8 r8 f''8 r8 |
    e''8 f''16 e''16 d''8 c''8 |
    e''8 e''8 f''8 f''8 |
    e''8 f''16 e''16 d''8 c''8 |

    c''8 \acciaccatura { e''16 } d''4 c''8 |
    f''8 e''8 d''8 e''8 |
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

clarinetsectionc =  \transpose bes c' {
    \repeat volta 2 {
        c'''4.^^\ff g''8 |
        c'''4.^^ g''8 |
        c'''8.^^ g''16 c'''8.^^ g''16 |
        c'''8.^^ g''16 c'''4^^ |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        g''2 ( |
        c''4. ) r8 |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        g''2 ( |
        c''4. ) r8 |

        c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        g''8^^ fis''8^^ a''8^^ g''8^^ |
        fis''8^^ ees''8^^ d''8^^ c''8^^ |

        \grace { s16 s16 s16 s16 } g''8 r8 e''8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        { c''2 ~ | \grace { s16 } c''8 c''8 e''8 g''8 | }
        { c''2 ~ | c''8 r8 c'''8^^ r8 | }
    }
}

clarinetnotes =  {
    \key d \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

clarinetnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  {
    s2 | s2 | s2 | s2 |
}

tenorsaxsectiona =  {
    fis'4\ff g'8. fis'16 |
    a'8 a'4 a'8 |
    d''8 a'8 e''8. d''16 |
    fis''8 d''8 a'8 d''8 |

    fis''16 ( g''16 fis''8 ) e''16 ( fis''16 e''8 ) |
    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'8 b'8 a'8 g'8 |
    fis'4 e'8 g'8 |

    fis'4 g'8. g'16 |
    d''8 d''4 a'8 |
    d''8 a'8 e''8. d''16 |
    fis''8 d''8 a'8 d''8 |

    fis''8 d''8 b'16 ( cis''16 b'8 ) |
    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'8 b'8 a'8 g'8 |
    fis'8 r8 fis'8 r8 |
}

tenorsaxsectionb =  {
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |

    d''8 ( a'8 ) e''8 ( a'8 ) |
    fis''8 ( d''8 ) g''8 ( d''8 ) |
    fis''8 d''8 e''8 g''8 |
    \grace { s16 s16 } fis''8 r8 d''8 a'8 |

    d''8 a'8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    d''8 d''8 b'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |

    a'8 a'4 a'8 |
    b'8 a'8 g'8 a'8 |
    fis'8 fis'8 a'8 fis'8 |
    d'8 d'8 fis'8 a'8 |
}

tenorsaxsectionc =  {
    \repeat volta 2 {
        d''8_^\ff a''8 fis''8 e''8_^ |
        fis''8_^ a''8 fis''8 e''8_^ |
        fis''8._^ e''16 fis''8._^ e''16 |
        fis''8._^ e''16 fis''4_^ |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        d''8 a'8 d''8 c''8 |
        b'8 a'8 c''8 b'8 |
        a'8_^ gis'8_^ b'8_^ a'8_^ |
        gis'8_^ f'8_^ e'8_^ d'8_^ |

        \grace { s16 s16 s16 s16 } a'8 ( d''8 ) d''8 ( a'8 ) |
        g'8 fis'8 g'8 a'8 |
    }
    \alternative {
        { fis'8 fis'8 a'8 fis'8 | \grace { s16 } d'8 d'8 fis'8 a'8 | }
        { fis'8 a'8 a'8 a'8 | fis'8 r8 fis''8_^ r8 | }
    }
}

tenorsaxnotes =  {
    \key d \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorsaxnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
}

tenorforaltosectionb =  {
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    a'8 d''8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |

    d''8 ( a'8 ) e''8 ( a'8 ) |
    fis''8 ( d''8 ) g''8 ( d''8 ) |
    fis''8 d''8 e''8 g''8 |
    \grace { s16 s16 } fis''8 r8 d''8 a'8 |

    d''8 a'8 b'8 d''8 |
    a'8 b'16 a'16 g'8 fis'8 |
    d''8 d''8 b'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |

    a'8 a'4 a'8 |
    b'8 a'8 g'8 a'8 |
    fis'8 fis'8 a'8 fis'8 |
    d''8 d''8 fis''8 a''8 |
}

tenorforaltosectionc =  {
    \repeat volta 2 {
        d''8_^\ff a''8 fis''8 e''8_^ |
        fis''8_^ a''8 fis''8 e''8_^ |
        fis''8._^ e''16 fis''8._^ e''16 |
        fis''8._^ e''16 fis''4_^ |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        \acciaccatura { d''16 [ e''16 ] } f''2 ( |
        d''2 ) |
        d''8 a'8 d''8 c''8 |
        b'8 a'8 a'4 |

        d'''8 a''8 d'''8 c'''8 |
        b''8 a''8 c'''8 b''8 |
        a''8_^ gis''8_^ b''8_^ a''8_^ |
        gis''8_^ f''8_^ e''8_^ d''8_^ |

        \grace { s16 s16 s16 s16 } a'8 ( d''8 ) d''8 ( a'8 ) |
        g'8 fis'8 g'8 a'8 |
    }
    \alternative {
        {
            fis'8 fis'8 a'8 fis'8 |
            \grace { s16 } d''8 d''8 fis''8 a''8 |
        }
        {
            fis'8 a'8 a'8 a'8 |
            fis'8 r8 fis''8_^ r8 |
        }
    }
}

tenorforothersnotes = {
    \key d \major
    \time 2/4
    \tenorsaxsectiona
    \tenorforaltosectionb
    \tenorforaltosectionc
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorforothersnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c' {
    \key c \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \transpose c c, { \melodysectionc }
}

tenorforaltoflutesectionc =  {
    \repeat volta 2 {
        d'8_^\ff a'8 fis'8 e'8_^ |
        fis'8_^ a'8 fis'8 e'8_^ |
        fis'8._^ e'16 fis'8._^ e'16 |
        fis'8._^ e'16 fis'4_^ |

        \acciaccatura { d'16 [ e'16 ] } f'2 ( |
        d'2 ) |
        d'8 a8 d'8 c'8 |
        b'8 a'8 a'4 |

        \acciaccatura { d'16 [ e'16 ] } f'2 ( |
        d'2 ) |
        d'8 a8 d'8 c'8 |
        b8 a8 a4 |

        d''8 a'8 d''8 c''8 |
        b'8 a'8 c''8 b'8 |
        a'8_^ gis'8_^ b'8_^ a'8_^ |
        gis'8_^ f'8_^ e'8_^ d'8_^ |

        \grace { s16 s16 s16 s16 } a'8 ( d''8 ) d''8 ( a'8 ) |
        g'8 fis'8 g'8 a'8 |
    }
    \alternative {
        {
            fis'8 fis'8 a'8 fis'8 |
            \grace { s16 } d'8 d'8 fis'8 a'8 |
        }
        {
            fis'8 a'8 a'8 a'8 |
            fis'8 r8 fis''8_^ r8 |
        }
    }
}

tenorforaltoflutenotes = \transpose c bes, {
    \key d \major
    \time 2/4
    \tenorsaxsectiona
    \tenorforaltosectionb
    \tenorforaltoflutesectionc
}

altoflutetenorharmony = \transpose g c' {
    \tenorforaltoflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  \transpose ees c {
    s2 | s2 | s2 | s2 |
}

altosaxsectiona =  \transpose ees c {
    \repeat unfold 2 {
        c''4\ff d''8. c''16 |
        e''8 e''4 e''8 |
        e''4 f''8. e''16 |
        g''8 g''4 g''8 |

        g''16 ( a''16 g''8 ) f''16 ( g''16 f''8 ) |
        e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) |
    }
    \alternative {
        {
            c''8 ( f''8 e''8 d''8 |
            c''8 b'8 a'8 g'8 ) |
        }
        {
            c''8 f''8 e''8 d''8 |
            c''8 r8 c'''8^> r8 |
        }
    }
}

altosaxsectionb =  \transpose ees c {
    \repeat unfold 2 {
        e''8 r8 f''8 r8 |
        e''8 f''16 e''16 d''8 c''8 |
        e''8 r8 f''8 r8 |
        e''8 f''16 e''16 d''8 c''8 |
    }
    \alternative {
        {
            e''8 c''16 ( e''16 f''8 ) d''16 ( f''16 |
            g''8 ) e''16 ( g''16 a''8 ) f''16 ( a''16 |
            g''8 ) c'' e''8 g''8 |
% this represents what was in Kammen.  Bogus.
%            << \grace { s16 s16 } c'''2 \\ { \grace { s16 s16 } c'''16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 ) }  >> |
            \grace { s16 s16 } c'''16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 )
        }
        {
            c''8 d''4 c''8 |
            f''8 e''8 d''8 e''8 |
            c''8 ( e''8 g''8 c'''8 |
            c''8 ) c''8 e''8 g''8 |
        }
    }
}

altosaxsectionc =  \transpose ees c {
    \repeat volta 2 {
        c'''4.^>\ff g''8^> |
        c'''4.^> g''8^> |
        c'''8.^> g''16^> c'''8.^> g''16^> |
        c'''8.^> g''16^> c'''4^> |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''8 fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 |

        \acciaccatura { c''16 [ d'' e'' f'' ] } g''8 r8 e''8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        {
            c''8 \acciaccatura { b''16 } c'''4 \acciaccatura { b''16 } c'''8 |
            \acciaccatura { b''16 } c'''8 c''8 e''8 g''8 |
        }
        {
            c''8 d''16 e''16 f''16 g''16 a''16 b''16 |
            c'''8 r8 c'''8^> r8 |
        }
    }
}

altosaxsectioncMIDI =  \transpose ees c {
    \repeat volta 2 {
        c'''4.^>\ff g''8^> |
        c'''4.^> g''8^> |
        c'''8.^> g''16^> c'''8.^> g''16^> |
        c'''8.^> g''16^> c'''4^> |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''8 fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 |

        \acciaccatura { e''16 [ f'' ] } g''8 r8 e''8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        {
            c''8 \acciaccatura { b''16 } c'''4 \acciaccatura { b''16 } c'''8 |
            \acciaccatura { b''16 } c'''8 c''8 e''8 g''8 |
        }
        {
            c''8 d''16 e''16 f''16 g''16 a''16 b''16 |
            c'''8 r8 c'''8^> r8 |
        }
    }
}

altosaxnotes =  {
    \key a \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altosaxnotesmidi =  {
    \key a \major
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectioncMIDI

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectioncMIDI
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectioncMIDI

    \altosaxsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro =  {
    s2 | s2 | s2 | s2 |
}

trumpetsectiona =  {
    d'4\ff e'8. d'16 |
    fis'8 fis'4 fis'8 |
    fis'4 g'8. fis'16 |
    a'8 a'4 a'8 |

    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'16 ( g'16 fis'8 ) e'16 ( fis'16 e'8 ) |
    d'8 g'8 fis'8 e'8 |
    d'8 cis''8 b'8 a'8 |

    d'4 e'8. d'16 |
    fis'8 fis'4 fis'8 |
    fis'4 g'8. fis'16 |
    a'8 a'4 a'8 |

    a'16 ( b'16 a'8 ) g'16 ( a'16 g'8 ) |
    fis'16 ( g'16 fis'8 ) e'16 ( fis'16 e'8 ) |
    d'8 g'8 fis'8 e'8 |
    d'8 r8 d''8 r8 |
}

trumpetsectionb =  {
    \repeat unfold 2 {
        fis'8 r8 g'8 r8 |
        fis'8 g'16 fis'16 e'8 d'8 |
        fis'8 r8 g'8 r8 |
        fis'8 g'16 fis'16 e'8 d'8 |
    }
    \alternative {
        {
            fis'4 g'4 |
            a'4 b'4 |
            a'2 |
            \grace { s16 s16 } d''2 |
        }
        {
            d'8 e'4 d'8 |
            g'8 fis'8 e'8 fis'8 |
            d'2 ~ |
            d'8 d'8 \< fis'8 a'8 \! |
        }
    }
}

trumpetsectionc =  {
    \repeat volta 2 {
        d''4.->\ff a'8 |
        d''4.-> a'8 |
        d''8.-> a'16 d''8.-> a'16 |
        d''8.-> a'16 d''4->|

        \grace { s16 s16 } d''8 a''8 d''8 c''8 |
        b'8 a'8 c'8 b'8 |
        a'2 ( |
        d'2 ) |

        \grace { s16 s16 } d''8 a'8 d''8 c''8 |
        b'8 a'8 c''8 b'8 |
        a'2 ( |
        d'2 ) |

        d''8 a'8 d''8 c''8 |
        b'8 a'8 c''8 b'8 |
        a'8-> gis'8-> b'8-> a'8-> |
        gis'8-> f'8-> e'8-> d'8-> |

        \grace { s16 s16 s16 s16 } a'8 r8 fis'8 r8 |
        e'8 d'8 e'8 fis'8 |
    }
    \alternative {
        { d'2 ~ | \grace { s16 } d'8 d'8-> fis'8-> a'8-> | }
        { d'2 ~ | d'8 r8 d''8-> r8 | }
    }
}

trumpetnotes =  {
    \key d \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

trumpetnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro =  {
    s2 | s2 | s2 | s2 |
}

trombonesectiona =  {
    \repeat unfold 2 {
        c8\ff r8 < g, g >8 r8 |
        c8 c4 c8 |
        c4 d4 |
        e8 e4 e8 |

        e4 f4 |
        g4 < g, g >4 |
    }
    \alternative {
        {
            c8 a8 g8 f8 |
            e8 d8 c8 b,8 |
        }
        {
            c8 g8 a8 b8 |
            c'8 r8 c8-> r8 |
        }
    }
}

trombonesectionb =  {
    \repeat unfold 2 {
        c8 r8 f8 r8 |
        c'4 d'8 c'8 |
        < c c' >8 r8 f8 r8 |
        c'4 d'8 c'8 |
    }
    \alternative {
        {
            < c c' >4 d4 |
            e4 f4 |
            e8 e'8 c'8 g8 |
            \grace { s16 s16 } e8 c'8 g8 e8 |
        }
        {
            g8 r8 g8 r8 |
            g8 r8 g8 r8 |
            c'8 c'8 g8 e8 |
            c8 c8 e8 g8 |
        }
    }
}

trombonesectionc =  {
    \repeat volta 2 {
        c'4.->\ff g8-> |
        c'4.-> g8-> |
        c'8.-> g16-> c'8. g16-> |
        c'8.-> g16-> c'4-> |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        c2 ~ |
        c4. f8 |
        g8 fis8 a8 g8 |
        fis8 ees8 d8 c8 |

        \grace { s16 s16 s16 s16 } c8 r8 e8 r8 |
        d8 c8 d8 e8 |
    }
    \alternative {
        {
            c8 c'8 g8 e8 |
            \grace { s16 } c8 c8-> e8-> g8-> |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 c8 r8 |
        }
    }
}

trombonenotes =  {
    \key c \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

trombonenotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneforfluteextraintro =  {
    s2 | s2 | s2 | s2 |
}

tromboneforflutesectiona =  {
    \repeat unfold 2 {
        c8\ff r8 g8 r8 |
        c8 c4 c8 |
        c4 d4 |
        e8 e4 e8 |

        e4 f4 |
        g4 g4 |
    }
    \alternative {
        {
            c8 a8 g8 f8 |
            e8 d8 c8 b,8 |
        }
        {
            c8 g8 a8 b8 |
            c'8 r8 c8-> r8 |
        }
    }
}

tromboneforflutesectionb =  {
    \repeat unfold 2 {
        c8 r8 f8 r8 |
        c'4 d'8 c'8 |
        c'8 r8 f8 r8 |
        c'4 d'8 c'8 |
    }
    \alternative {
        {
            c'4 d4 |
            e4 f4 |
            e8 e'8 c'8 g8 |
            \grace { s16 s16 } e8 c'8 g8 e8 |
        }
        {
            g8 r8 g8 r8 |
            g8 r8 g8 r8 |
            c'8 c'8 g8 e8 |
            c8 c8 e8 g8 |
        }
    }
}

tromboneforflutesectionc =  {
    \repeat volta 2 {
        c'4.->\ff g8-> |
        c'4.-> g8-> |
        c'8.-> g16-> c'8. g16-> |
        c'8.-> g16-> c'4-> |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        \grace { s16 s16 } c2 ~ |
        c2 |
        g8 fis8 g8 a8 |
        g8 c8 e8 g8 |

        c2 ~ |
        c4. f8 |
        g8 fis8 a8 g8 |
        fis8 ees8 d8 c8 |

        \grace { s16 s16 s16 s16 } c8 r8 e8 r8 |
        d8 c8 d8 e8 |
    }
    \alternative {
        {
            c8 c'8 g8 e8 |
            \grace { s16 } c8 c8-> e8-> g8-> |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 c8 r8 |
        }
    }
}

tromboneforothersnotes =  {
    \key c \major
    \time 2/4
    \tromboneforflutesectiona
    \tromboneforflutesectionb
    \tromboneforflutesectionc
}

baritoneforflutenotes =  { \transpose c c' { \tromboneforothersnotes } }
baritonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro =  {
    s2 | s2 | s2 | s2 |
}

violinsectiona =  {
    \repeat unfold 2 {
        c''4\ff d''8. c''16 |
        e''8 e''4 e''8 |
        e''4 f''8. e''16 |
        g''8 g''4 g''8 |

        g''16 ( a''16 ) g''8 f''16 ( g''16 ) f''8 |
        e''16 ( f''16 ) e''8 d''16 ( e''16 ) d''8 |
    }
    \alternative {
        {
            c''8 f''8 e''8 d''8 |
            c''8 b'8 a'8 g'8 |
        }
        {
            c''8 f''8 e''8 d''8 |
            c''8 r8 < c'' c''' >8-> r8 |
        }
    }
}

violinsectionb =  {
    \repeat unfold 2 {
        e''8 r8 f''8 r8 |
        e''8 f''16 ( e''16 ) d''8 c''8 |
        e''8 r8 f''8 r8 |
        e''8 f''16 ( e''16 ) d''8 c''8 |
    }
    \alternative {
        {
            e''4 f''4 |
            g''4 a''4 |
            g''2 |
            \grace { s16 s16 } c'''16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 ) |
        }
        {
            c''8 d''4 c''8 |
            f''8 e''8 d''8 e''8 |
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
    }
}

violinsectionc =  {
    \repeat volta 2 {
        c'''4.->\ff g''8-> |
        c'''4.-> g''8-> |
        c'''8.-> g''16-> c'''8.-> g''16-> |
        c'''8.-> g''16-> c'''4-> |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''2 ( |
        c''2 ) |

        c'''8 g''8 c'''8 bes''8 |
        a''8-\trill g''8 bes''8 a''8 |
        g''8 ( fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 ) |

        \grace { s16 s16 s16 s16 } g''8 r8 e''8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        {
            c''2 ~ |
            \grace { s16 } c''8 c''8-> e''8-> g''8-> |
        }
        {
            c''2 ~ |
            c''8 r8 c''8-> r8 |
        }
    }
}

violinnotes =  {
    \key c \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

violinnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro =  {
    s2 | s2 | s2 | s2 |
}

pianorightuppersectiona =  {
    \repeat unfold 2 {
        c''4 d''8. c''16 |
        e''8 e''4 e''8 |
        < c'' e'' >4 < d'' f'' >8. < c'' e'' >16 |
        < e'' g'' >8 < e'' g'' >4 < e'' g'' >8 |

        g''16-4 ( a''16 g''8 ) f''16 ( g''16 f''8 ) |
        e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) |
    }
    \alternative {
        {
            c''8 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
            c''8 b'8 a'8 g'8 |
        }
        {
            c''8 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
            < e' c'' >8 r8 < e'' g'' c''' >8-> r8 |
        }
    }
}

pianorightuppersectionb =  {
    \repeat unfold 2 {
        e''8-3 r8 f''8-4 r8 |
        e''8-3 f''16 e''16 d''8 c''8 |
        e''8 r8 f''8 r8 |
        e''8 f''16 e''16 d''8 c''8 |
    }
    \alternative {
        {
            < c'' e'' >4 < d'' f'' >4 |
            < e'' g'' >4 < f'' a'' >4 |
            < e'' g'' >2 |
            \grace { s16 s16 } c'''16-5 ( b''16 a''16 g''16 f''16-1 e''16-3 d''16-2 c''16-4 ) |
        }
        {
            c''8 d''4 c''8 |
            f''8 e''8 d''8 e''8 |
            < e' c'' >2 ~ |
            < e' c'' >8 c''8 e''8 g''8 |
        }
    }
}

pianorightuppersectionc =  {
    \repeat volta 2 {
        < e'' c''' >4.-> g''8-> |
        < e'' c''' >4.-> g''8-> |
        < e'' c''' >8.-> g''16-> < e'' c''' >8.-> g''16-> |
        < e'' c''' >8.-> g''16-> < e'' c''' >4-> |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        < e'' g'' >2 ( |
        c''2 ) |

        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        < e'' g'' >2 ( |
        c''2 ) |

        c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        g''8 ( fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 ) |

        \grace { s16 s16 s16 s16 } < e'' g'' >8 r8 < c'' e'' >8 r8 |
        d''8 c''8 d''8 e''8 |
    }
    \alternative {
        {
            < e' c'' >2 ~ |
            \grace { s16 } < e' c'' >8 c''8-> e''8-> g''8-> |
        }
        {
            < e' c'' >2 ~ |
            < e' c'' >8 r8 < e'' g'' c''' >8-> r8 |
        }
    }
}

pianorightuppernotes =  {
    \key c \major
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro =  {
    c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 c'8 g8 c'8 |
}

pianoleftuppersectiona =  {
    \repeat unfold 2 {
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |

        e8 < g c' >8 f8 < a d' >8 |
        g8 < c' e' >8 g8 < b f' >8 |
    }
    \alternative {
        {
            < g c' e' >8 r8 r4 |
            < g, g >2-> |
        }
        {
            < c' e' >8 g8 a8 b8 |
            c'8 r8 < c c' >8-> r8 |
        }
    }
}

pianoleftuppersectionb =  {
    \repeat unfold 2 {
        c8 c'8 a8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 a8 c'8 |
        c8 c'8 g8 c'8 |
    }
    \alternative {
        {
            c8 c'8 g8 b8 |
            c8 c'8 a8 c'8 |
            c8 g8 e8 g8 |
            \grace { s16 s16 } c8 ( e8 g8 c'8 ) |
        }
        {
            g8 < b f' >8 g8 < b f' >8 |
            g8 < b f' >8 g8 < b f' >8 |
            c'8 c'8 g8 e8 |
            c8 c8 e8 g8 |
        }
    }
}

pianoleftuppersectionc =  {
    \repeat volta 2 {
        < c c' >4.-> g8-> |
        < c c' >4.-> g8-> |
        < c c' >8.-> g16-> < c c' >8.-> g16-> |
        < c c' >8.-> g16-> < c c' >4-> |

        \grace { s16 s16 } c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 ( c8 e8 g8 ) |

        \grace { s16 s16 } c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 ( c8 e8 g8 ) |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g8 ( fis8 a8 g8 |
        fis8 ees8 d8 c8 ) |

        \grace { s16 s16 s16 s16 } c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
    }
    \alternative {
        {
            c8 ( c'8 g8 e8 ) |
            \grace { s16 } c8 c8-> e8-> g8-> |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 < c c' >8-> r8 |
        }
    }
}

pianoleftuppernotes =  {
    \key c \major
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
}

pianoleftnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro =  {
    s2 | s2 | s2 | s2 |
}

accordionrightuppersectiona =  {
    \repeat unfold 2 {
        c''4 d''8. c''16 |
        e''8 e''4 e''8 |
        e''4 f''8. e''16 |
        g''8 g''4 g''8 |

        g''16-4 ( a''16 g''8 ) f''16 ( g''16 f''8 ) |
        e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) |
    }
    \alternative {
        {
            c''8-2 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
            < e' c'' >8 b'8 a'8 g'8 |
        }
        {
            c''8-2 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
            < e' c'' >8 r8 < e'' g'' c''' >8-> r8 |
        }
    }
}

accordionrightuppersectionb =  {
    \repeat unfold 2 {
        < g' e'' >8 r8 < a' f'' >8 r8 |
        < g' e'' >8 f''16 e''16 d''8 c''8 |
        < g' e'' >8 r8 < a' f'' >8 r8 |
        < g' e'' >8 f''16 e''16 d''8 c''8 |
    }
    \alternative {
        {
            < c'' e'' >4 < d'' f'' >4 |
            < e'' g'' >4 < f'' a'' >4 |
            \slurUp \stemUpOnce g''2 \slurNeutral |
            \grace { s16 s16 } < e'' c''' >16 ( b''16 a''16 g''16 f''16 e''16 d''16 c''16 ) |
        }
        {
            c''8 d''4 c''8 |
            < a' f'' >8 < g' e'' >8 < f' d'' >8 < g' e'' >8 |
            < e' c'' >2 ~ |
            < e' c'' >8 c''8-> \< e''8-> g''8-> \! |
        }
    }
}

accordionrightuppersectionc =  {
    \repeat volta 2 {
        < e'' c''' >4.->\ff g''8-> |
        < e'' c''' >4.-> g''8-> |
        < e'' c''' >8.-> g''16-> < e'' c''' >8.-> g''16-> |
        < e'' c''' >8.-> g''16-> < e'' c''' >4-> |

        \grace { s16 s16 } \stemUp \slurUp c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        < e'' g'' >2 ( |
        c''2 ) |
        \grace { s16 s16 } c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
        < e'' g'' >2 ( |
        c''2 ) |
        c'''8 g''8 c'''8 bes''8 |
        a''8 g''8 bes''8 a''8 |
\revert Stem.direction
\revert Slur.direction
        g''8 ( fis''8 a''8 g''8 |
        fis''8 ees''8 d''8 c''8 ) |

        \grace { s16 s16 s16 s16 } < e'' g'' >8 r8 < g' e'' >8 r8 |
        < f' d'' >8 < e' c'' >8 < f' d'' >8 < g' e'' >8 |
    }
    \alternative {
        {
            < e' c'' >2 ~ |
            \grace { s16 } < e' c'' >8 c''8-> e''8-> g''8-> |
        }
        {
            < e' c'' >2 ~ |
            < e' c'' >8 r8 < e'' g'' c''' >8-> r8 |
        }
    }
}

accordionrightuppernotes =  {
    \key c \major
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
}

%-------------------------------------------------

accordionrightlowersectiona =  {
    \repeat unfold 2 { s2\ff | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

accordionrightlowersectionb =  {
    \repeat unfold 2 {
        s2 | s2 | s2 | s2 |
    }
    \alternative {
        { s2 | s2 | \stemDownOnce e''4 ( \stemDownOnce f''4 ) | \grace { s16 s16 } s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

accordionrightlowersectionc =  {
    \repeat volta 2 {
        \stemDown
        s2 | s2 | s2 | s2 |

        \grace { s16 s16 } ees''2 ~ |
        ees''2 |
        r8 g'8_\markup { \italic "ad lib." } c''8 bes'8 |
        a'8 ( g'8 ) g'4 |
        \grace { s16 s16 } ees''2 ~ | ees''2 |
        r8 g'8_\markup { \italic "ad lib." } c''8 bes'8 |
        a'8 ( g'8 ) g'4 |
        ees''2 ~ |
        ees''2 |

        s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

accordionrightlowernotes =  {
    \key c \major
    \time 2/4
    \accordionrightlowersectiona
    \accordionrightlowersectionb
    \accordionrightlowersectionc
}

%-------------------------------------------------

accordionleftupperextraintro =  {
    c8 c'8^"M" g,8 g8^"7" | c8 c'8^"M" g,8 c'8 |
    c8 c'8^"M" g,8 g8^"7" | c8 c'8^"M" g,8 c'8 |
}

accordionleftuppersectiona =  {
    \repeat unfold 2 {
        c8 c'8^"M" g,8 g8^"7" | c8 c'8^"M" g,8 c'8 |
        c8 c'8^"M" g,8 g8^"7" | c8 c'8^"M" g,8 c'8 |

        e,8_- c'8 d,8 g8^"7" |
        c8 c'8^"M" g,8 g8^"7" |
    }
    \alternative {
        {
            \stemDownOnce < c c' >8^"M" \stemDownOnce g,8^"B.S."_3 a,8_2 b,8_3_- |
            c8_4 r8 < g,_3 g >4^"7" |
        }
        {
            \stemDownOnce < c c' >8^"M" \stemDownOnce g,8^"B.S."_3 a,8_2 b,8_3_- |
            c'8 r8 < c c' >8^"M"_> r8 |
        }
    }
}

accordionleftuppersectionb =  {
    \repeat unfold 2 {
        c8 c'8^"M" f,8 f8^"M" |
        < c c' >8^"M" r8 g,8 c'8 |
        c8 c'8^"M" f,8 f8^"M" |
        < c c' >8^"M" r8 g,8 c'8 |
    }
    \alternative {
        {
            c8 c'8 g,8 g8^"7" |
            c8 c'8^"M" f,8 f8^"M" |
            c8 c'8^"M" g,8 g8^"7" |
            \grace { s16 s16 } < c c' >8^"M" r8 g,4 |
        }
        {
            c8 c'8 g,8 c'8 |
            d,8 g8^"7" g,8 g8 |
            c8 c'8^"M" g,8 c'8 |
            c8 r8 r4
        }
    }
}

accordionleftuppersectionc =  {
    \repeat volta 2 {
        < c c' >4.^"M"_> < g, g >8^"7"_> |
        < c c' >4.^"M"_> < g, g >8^"7"_> |
        \stemDownOnce < c c' >8.^"M"_> \stemDownOnce g,16^"B.S."_> c8._> g,16_> |
        c8._> g,16_> c4_> |

        \grace { s16 s16 } c8 c'8^"m" g,8 c'8 |
        c8 c'8 g,8 c'8 |
        c8 c'8^"M" g,8 c'8 |
        c8 c'8 g,8 c'8 |

        \grace { s16 s16 } c8 c'8^"m" g,8 c'8 |
        c8 c'8 g,8 c'8 |
        c8 c'8^"M" g,8 c'8 |
        c8 c'8 g,8 c'8 |

        c8 c'8^"m" g,8 c'8 |
        c8 c'8 g,8 c'8 |
        d,8 g8^"7" g,8 g8 |
        c8 c'8^"m" g,8 c'8 |

        \grace { s16 s16 s16 s16 } c8 c'8^"M" g,8 c'8 |
        b,8^"B.S."_1_- c8_4 g,8_3 g8^"7" |
    }
    \alternative {
        { c8 c'8^"M" g,8 c'8 | \grace { s16 } c8 r8 r4 | }
        { c8 c'8^"M" g,8 c'8 | c8 r8 < c c' >8-> r8 | }
    }
}

accordionleftuppernotes =  {
    \key c \major
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
}

%-------------------------------------------------

accordionleftlowernotes =  {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
}

accordionleftnotesmidi =  {
    \key c \major
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    r8 << sna8 cymr8 >> << sna4 cymr4 >> |
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    r8 << sna8 cymr8 >> << sna4 cymr4 >> |
}

drumshighsectiona = \drummode {
    \repeat unfold 2 {
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

drumshighsectionb = \drummode {
    \repeat unfold 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            \grace { s16 s16 } s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat unfold 2 {
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

drumslowsectionb = \drummode {
    \repeat unfold 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            \grace { s16 s16 } s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | \grace { s16 } s2 | } { s2 | s2 | } }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode { c2 | s2 | s2 | s2 | }

previewnotes = {
    \key c \major
    \time 2/4
    c''4 d''8. c''16 |
    e''8 e''4 e''8 |
    e''4 f''8. e''16 |
    g''8 g''4 g''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

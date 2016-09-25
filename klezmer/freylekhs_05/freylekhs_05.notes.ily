\version "2.18.2"

bandmintro = { s2 | \breakIN }

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten
        \grace { s16 s16 } s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt
    }
    \alternative {
        { s2 | \breakAfft s2 | \breakAsxt } { s2 | \breakAsvt s2 | }
    }
    \breakA \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
    }
    \alternative { { s2 | \breakBeit } { s2 | } }
    \breakB \bar ".|:-||"

    \markC \positionC
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | \breakCone
        s2 | \breakCtwo
        \grace { s16 s16 s16 } s2 | \breakCtre
        s2 | \breakCfor
        \grace { s16 s16 s16 } s2 | \breakCfiv
        s2 | \breakCsix
        s2 | \breakCsev
        s2 | \breakCeit
        \grace { s16 s16 s16 } s2 | \breakCnin
        s2 | \breakCten
        \grace { s16 s16 s16 } s2 | \breakCelv
        s2 | \breakCtwl
        s2 | \breakCtht
        s2 | \breakCfrt
        \markTC \positionTC
    }
    \alternative {
        { s2 | \breakCfft s2 | \breakCsxt } { s2 | \breakCsvt s2 | }
    }
    \markDS \positionDS
    \breakC \bar "||"
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCCRT \positionCCRT
    \grace { s16 s16 s16 } s2 | \breakCCone s2 | 
}

bandmNV = {
    \tempo \tempostring
    \time 2/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb

    \stopStaff s2 \startStaff \breakBL

    \markCCRT \positionCCRT
    \grace { s16 s16 s16 } s2 | \breakCCone s2 | 

    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = { s2 | }

metronomeextraintro = { s2 | s2 | }

metronomeintro = { s2 | }

metronomesectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | \grace { s16 s16 } s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionb = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronomesectioncb = { s2 | s2 | }

metronomesectioncc = { s2 | s2 | }

metronomesectionc = {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
        \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
        s2 | s2 |
    }
    \alternative { { \metronomesectioncb } { \metronomesectioncc } }
}

metronomebigb = {
    \metronomesectionb
    \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    s2 | s2 |
}

metronomecoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 130
    \metronomesectiona
    \metronomebigb

    \tempo 4 = 100
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = {
    s2 | s2 |
}

melodyintro = {
    s8 d'8\ff g'8 bes'8 |
}

melodysectiona = {
    \repeat volta 2 {
        d''4 g''4 |
        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        d''2 ~ |
        d''8 d'8 g'8 bes'8 |

        d''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''2 ~ |
        c''8 c''8 d''8 ees''8 |

        fis''4 g''4 |
        a''4 bes''4 |
        \grace { s16 s16 } a''8 fis''8 g''4 ~ |
        g''8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative { { g'2 ~ | g'8 d'8 g'8 bes'8 | } { g'2 ~ | g'4 r8 d''8 | } }
}

melodysectionb = {
    \repeat volta 2 {
        bes''4. a''8 |
        g''4. fis''8 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''4. bes'8 |
        a'4. bes'8 |
        c''4. cis''8 |
        \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative { { g'8 bes'8 d''8 g''8 | } { g'8 r8 f'4-> | } }
}

melodysectioncaminusone = {
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4. g''16 a''16 |
    bes''16 ( a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    bes'8 \acciaccatura { d''16 } c''4 bes'8 |
    \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
}

melodysectionca = {
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \melodysectioncaminusone
}

melodysectioncb = {
    g'2 ~ |
    g'8 r8 f'4-> |
}

melodysectioncc = {
    g'2 ~ |
    g'8 d'8 g'8 bes'8 |
}

melodysectionc = {
    \repeat volta 2 { \melodysectionca }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodybigb = {
    \melodysectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
        \melodysectioncaminusone
    }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodycoda = {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 d''8 r8 | g''2-\fermata |
}

melody = {
    \key g \minor
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodybigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 d''8 r8 | g''2-\fermata |
}

melodymidi = {
    \key g \minor
    \time 2/4
    \preintro
    \melodyextraintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionca
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = {
    s2 | s2 |
}

tenorharmonyintro = \transpose bes c' {
    s8 d'8 g'8 bes'8 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        c''4\ff e''4 |
        a''8 e''8 \tuplet 3/2 { e''8 ( d''8 c''8 ) } |
        c''8 b'8 c''8 e''8 |
        c''8 r8 r4 |

        c''4 e''8 d''8 |
        \tuplet 3/2 { cis''8 ( bes'8 a'8 ) } \tuplet 3/2 { a'8 ( g'8 f'8 ) } |
        f'8 e'8 f'8 a'8 |
        f'8 r8 r4 |

        b'8 e'8 c''8 e'8 |
        d''8 e'8 e''8 e'8 |
        \grace { s16 s16 } d''8 b'8 c''8 e''8 |
        c''8 r8 a'8 a'8 |

        gis'8 ( b'8 e'8 ) r8 |
        e''8 r8 e'8 r8 |
    }
    \alternative {
        { a'8 e'8 e'8 e'8 | a'8 e'8 e'8 a'8 | }
        { a'8 e'8 e'8 e'8 | a'8 e'8 a'8 r8 | }
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        e''8 e'8 e''8 d''8 |
        c''8 a'8 c''8 d''8 |
        \tuplet 3/2 { cis''8 ( bes'8 a'8 ) } \tuplet 3/2 { a'8 ( g'8 f'8 ) }  |
        f'8 ( a'8 f'8 ) r8 |
        gis'8 e'8 gis'8 a'8 |
        b'8 e'8 b'8 a'8 |
        \tuplet 3/2 { gis'8 ( f'8 e'8 ) } e'8 r8 |
    }
    \alternative { { e'8 e'8 a'8 c''8 | } { e'8 c''8 b'8-^ ( d''8 ) | } }
}

tenorharmonysectioncaminusone = {
    g'8-\trill ( e'8 ) f'8 e'8 |
    \grace { s16 s16 s16 } c''16 d''16 e''8 g'8-^ a'8 |
    g'4 f'8 e'8 |

    \grace { s16 s16 s16 } c''16 d''16 e''8 g'8-^ d''8 |
    c''4 f''16 e''16 d''16 c''16 |
    b'8 ( d''8 g''8 f''8 ) |
    e''8 r8 a'16 ( g'16 f'16 e'16 ) |

    \grace { s16 s16 s16 } c''8 r8 g'8 a'8 |
    g'8-\trill ( e'8 ) f'8 e'8 |
    \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
    g'4 f'8 e'8 |

    a'8 a'4 a'8 |
    gis'8 r8 \tuplet 3/2 { e''8 ( d''8 c''8 ) } |
}

tenorharmonysectionca = {
    \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
    \tenorharmonysectioncaminusone
}

tenorharmonysectioncb = {
    c''8 e''8 c''8 e''8 |
    c''8 c''8 b'8-^ d''8 |
}

tenorharmonysectioncc = {
    c''8 e''8 c''8 e''8 |
    a'8 r8 e'8 a'8 |
}

tenorharmonysectionc = {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonybigb = {
    \tenorharmonysectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
        \tenorharmonysectioncaminusone
    }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonycoda =  {
    \acciaccatura { a'16 [ b'16 bis'16 ] } c''8-^ r8 d''8 r8 | c''2-\fermata |
}

tenorharmony = \transpose c' bes {
    \key a \minor
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonybigb
    \stopStaff s2 \startStaff
    \acciaccatura { a'16 [ b'16 bis'16 ] } c''8-^ r8 d''8 r8 | c''2-\fermata |
}

tenorharmonymidi = \transpose c' bes {
    \key a \minor
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = { s2 | s2 | }

altoharmonyintro = { s2 | }

altoharmonysectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | \grace { s16 s16 } s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

altoharmonysectionb = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

altoharmonysectioncaminusone = {
    s2 | \grace { s16 s16 s16 } s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    s2 | s2 |
}

altoharmonysectionca = {
    \grace { s16 s16 s16 } s2 |
    \altoharmonysectioncaminusone
}

altoharmonysectioncb = { s2 | s2 | }

altoharmonysectioncc = { s2 | s2 | }

altoharmonysectionc = {
    \repeat volta 2 { \altoharmonysectionca }
    \alternative { { \altoharmonysectioncb } { \altoharmonysectioncc } }
}

altoharmonybigb = {
    \altoharmonysectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \altoharmonysectioncaminusone
    }
    \alternative { { \altoharmonysectioncb } { \altoharmonysectioncc } }
}

altoharmonycoda = { \grace { s16 s16 s16 } s2 | s2 | }

altoharmony = {
    \key g \minor
    \time 2/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonybigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 | s2 |
}

altoharmonymidi = {
    \key g \minor
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionca
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro = {
    s2 | s2 |
}

counterintro = {
    s8 r8 r4 |
}

countersectiona = {
    \repeat volta 2 {
        g8\ff r8 d8 r8 |
        g8 r8 d8 r8 |
        g8 g8 d8 g8 |
        g8 g8 d8 g8 |

        g8 r8 d8 r8 |
        b,8 r8 g,8 r8 |
        c2 ~ |
        c8 g8 ees8 c8 |

        d4 d4 |
        d4 d4 |
        \grace { s16 s16 } g8 g8 g4 ~ |
        g8 d8 ees8 d8 |

        d'4. cis'8 |
        d'4 bes4 |
    }
    \alternative {
        {
            g8 g8 d8 g8 ~ |
            g8 g8 d8 bes,8 |
        }
        {
            g8 g8 d8 g8 ~ |
            g8 d8 g,8 r8 |
        }
    }
}

countersectionb = {
    \repeat volta 2 {
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        b,4 g,4 |
        c8 g8 ees8 c8 |
        d8 r8 d8 r8 |
        fis8 r8 d8 r8 |
        d'4 bes4 |
    }
    \alternative {
        {
            g8 g8 d8 bes,8 |
        }
        {
            g8 r8 f4-> |
        }
    }
}

countersectioncaminusone = {
    bes2 |
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |

    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |
    c'8 r8 f8 r8 |
    bes,8 bes8 f8 d8 |

    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |

    bes8 c'4 bes8 |
    c'4 bes4 |
}

countersectionca = {
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    \countersectioncaminusone
}

countersectioncb = {
    g8 g8 d8 g8 |
    g8 r8 f4-> |
}

countersectioncc = {
    g8 g8 d8 g8 |
    g8 d8 g8 bes8 |
}

countersectionc = {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

counterbigb = {
    \countersectionb
    \repeat volta 2 {
        \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
        \countersectioncaminusone
    }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countercoda = {
    \acciaccatura { d16 [ e16 fis16 ] } g8-> r8 d8-> r8 | g,2->-\fermata | 
}

counter = \transpose c c' {
    \key g \minor
    \time 2/4
    \counterintro
    \countersectiona
    \counterbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d16 [ e16 fis16 ] } g8-> r8 d8-> r8 | g,2->-\fermata | 
}

countermidi = \transpose c c' {
    \key g \minor
    \time 2/4
    \preintro
    \counterextraintro
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionca
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% currently just the piano left hand.  need to fix that.

basslineextraintro = {
    s2 | s2 |
}

basslineintro = {
    s8 r8 r4 |
}

%    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
%    << sna4 cymr4 >> r8 cymc8 |

%    bda4 bda8 bda8 | s8 bda8 bda4 |

basslinesectiona = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        g,8 g8 d8 g8 |
        b,8 g8 g,8 g8 |
        c8 g8 ees8 g8 |
        c8 g8 ees8 c8 |

        d8 d'8 d8 d'8 |
        d8 d'8 d8 d'8 |
        \grace { s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 g8 |
            g,8 g8 d8 bes,8 |
        }
        {
            g,8 g8 d8 g8 |
            g,8 d8 g8 r8 |
        }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        b,8 g8 g,8 g8 |
        c8 g8 ees8 c8 |
        d8 d'8 d8 d'8 |
        fis8 d'8 d8 d'8 |
        fis8 d'8 d8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 bes,8|
        }
        {
            < g bes >8 r8 < f, f >4-> |
        }
    }
}

basslinesectioncaminusone = {
    bes,8 bes8 f8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |

    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |
    c8 a8 f8 a8 |
    bes,8 ( bes8 f8 d8 ) |

    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |

    d8 < fis c' >8 d8 < fis c' >8 |
    d8 < fis c' >8 d8 < fis c' >8 |
}

basslinesectionca = {
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    \basslinesectioncaminusone
}

basslinesectioncb = {
    g,8 g8 d8 g8 |
    g,8 r8 < f, f >4-> |
}

basslinesectioncc = {
    g,8 g8 d8 g8 |
    < g, g >8 r8 r4 |
}

basslinesectionc = {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinebigb = {
    \basslinesectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
        \basslinesectioncaminusone
    }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinecoda = {
    \grace { s16 s16 s16 } < g bes >8 r8 < d d' >8 r8 | < g, g >2-\fermata | 
}

bassline = {
    \key g \minor
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinebigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } < g bes >8 r8 < d d' >8 r8 | < g, g >2-\fermata | 
}

basslinemidi = {
    \key g \minor
    \time 2/4
    \preintro
    \basslineextraintro
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = {
    s2 | s2 |
}

guitarintro = {
    s2 |
}

guitarsectiona = {
    \repeat volta 2 {
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
        \grace { s16 s16 } s2 |
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

guitarsectionb = {
    \repeat volta 2 {
        s2 |
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
        }
        {
            s2 |
        }
    }
}

guitarsectioncaminusone = {
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    s2 |
    s2 |
}

guitarsectionca = {
    \grace { s16 s16 s16 } s2 |
    \guitarsectioncaminusone
}

guitarsectioncb = {
    s2 |
    s2 |
}

guitarsectioncc = {
    s2 |
    s2 |
}

guitarsectionc = {
    \repeat volta 2 { \guitarsectionca }
    \alternative { { \guitarsectioncb } { \guitarsectioncc } }
}

guitarbigb = {
    \guitarsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \guitarsectioncaminusone
    }
    \alternative { { \guitarsectioncb } { \guitarsectioncc } }
}

guitarcoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

guitarnotes = {
    \key g \minor
    \time 2/4
    \guitarintro
    \guitarsectiona
    \guitarbigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 | s2 | 
}

guitarnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionca
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s2 | s2 |
}

chordlettersintro = \chordmode {
    s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        g2:min |
        g2:min |
        g2:min |
        g2:min |

        g2:min |
        g2:7 |
        c2:min |
        c2:min |

        d4 g4:min |
        d4 g4:min |
        \grace { d8 } d4 g4:min |
        g2:min |

        d2 |
        d2 |
    }
    \alternative {
        {
            g2:min |
            g2:min |
        }
        {
            \chordChangesOff
            g2:min |
            \chordChangesOn
            g2:min |
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        g2:min |
        \chordChangesOn
        g2:min |
        g2:7 |
        c2:min |

        d2 |
        d2 |
        d2 |
    }
    \alternative {
        {
            g2:min |
        }
        {
            \chordChangesOff
            g4:min
            \chordChangesOn
            f4:7 |
        }
    }
}

chordletterssectioncaminusone = \chordmode {
    bes2 |
    \grace { bes8. } bes2 |
    bes2 |

    \grace { bes8. } bes2 |
    bes2 |
    f2:7 |
    bes2 |

    \grace { bes8. } bes2 |
    bes2 |
    \grace { bes8. } bes2 |
    bes2 |

    d2:7 |
    d2:7 |
}

chordletterssectionca = \chordmode {
    \grace { bes8. } bes2 |
    \chordletterssectioncaminusone
}

chordletterssectioncb = \chordmode {
    g2:min |
    g4:min f4:7 |
}

chordletterssectioncc = \chordmode {
    \chordChangesOff
    g2:min |
    \chordChangesOn
    g2:min |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordlettersbigb = \chordmode {
    \chordletterssectionb
    \repeat volta 2 {
        \grace { bes8. } bes2 |
        \chordletterssectioncaminusone
    }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { g8.:min }
    \chordChangesOn
    g4:min d4:7 | g2:min | 
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordlettersbigb
    \stopStaff s2 \startStaff
    \chordChangesOff
    \grace { g8.:min }
    \chordChangesOn
    g4:min d4:7 | g2:min | 
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

melodystaff = \context Staff = "melodystaff"  \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c {
    \melody
}

flutenotesmidi = \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = {
    s2 | s2 |
}

clarinetintro = \transpose bes c' {
    s8 d'8 g'8 bes'8 |
}

clarinetsectiona = \transpose bes c' {
    \repeat volta 2 {
        d''4\ff g''4 |
        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        d''2 ~ |
        d''8 d'8 g'8 bes'8 |

        d''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''2 ~ |
        c''8 c''8 d''8 ees''8 |

        fis''4 g''4 |
        a''4 bes''4 |
        \grace { s16 s16 } a''8 fis''8 g''4 ~ |
        g''8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'2 ~ |
            g'8 d'8 g'8 bes'8 |
        }
        {
            g'2 ~ |
            g'4. d''8 |
        }
    }
}

clarinetsectionb = \transpose bes c' {
    \repeat volta 2 {
        bes''4. a''8 |
        g''4. fis''8 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''4. bes'8 |
        a'4. bes'8 |
        c''4. cis''8 |
        \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'8 bes'8 d''8 g''8 |
        }
        {
            g'8 g''8 f''4-^ |
        }
    }
}

clarinetsectioncaminusone = \transpose bes c' {
    d''8-\trill ( bes'8 ) c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill bes'8 c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4. g''16 a''16 |
    bes''16 ( a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill ( bes'8 ) c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill bes'8 c''8 bes'8 |

    bes''8 \grace { s16 } c'''4 bes''8 |
    \tuplet 3/2 { d'''8 ( c'''8 bes''8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
}

clarinetsectionca = \transpose bes c' {
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \clarinetsectioncaminusone
}

clarinetsectioncb = \transpose bes c' {
    g''2 ~ |
    g''8 g''8 f''4-^ |
}

clarinetsectioncc = \transpose bes c' {
    g''2 ( |
    g'8 ) d'8 g'8 bes'8 |
}

clarinetsectionc = {
    \repeat volta 2 { \clarinetsectionca }
    \alternative { { \clarinetsectioncb } { \clarinetsectioncc } }
}

clarinetbigb = {
    \clarinetsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
        \clarinetsectioncaminusone
    }
    \alternative { { \clarinetsectioncb } { \clarinetsectioncc } }
}

clarinetcoda = \transpose bes c' {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8-^ r8 d''8-^ r8 |
    g''2-\fermata | 
}

clarinetnotes = {
    \key a \minor
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8-^ r8 d''8-^ r8 |
    g''2-\fermata | 
}

clarinetnotesmidi = {
    \key a \minor
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = {
    s2 | s2 |
}

tenorsaxintro = \transpose bes c' {
    s8 d'8 g'8 bes'8 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        c''4\ff e''4 |
        a''8 e''8 \tuplet 3/2 { e''8 ( d''8 c''8 ) } |
        c''8 b'8 c''8 e''8 |
        c''8 r8 r4 |

        c''4 e''8 d''8 |
        \tuplet 3/2 { cis''8 ( bes'8 a'8 ) } \tuplet 3/2 { a'8 ( g'8 f'8 ) } |
        f'8 e'8 f'8 a'8 |
        f'8 r8 r4 |

        b'8 e'8 c''8 e'8 |
        d''8 e'8 e''8 e'8 |
        \grace { s16 s16 } d''8 b'8 c''8 e''8 |
        c''8 r8 a'8 a'8 |

        gis'8 ( b'8 e'8 ) r8 |
        e''8 r8 e'8 r8 |
    }
    \alternative {
        {
            a'8 e'8 e'8 e'8 |
            a'8 e'8 e'8 a'8 |
        }
        {
            a'8 e'8 e'8 e'8 |
            a'8 e'8 a'8 r8 |
        }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        e''8 e'8 e''8 d''8 |
        c''8 a'8 c''8 d''8 |
        \tuplet 3/2 { cis''8 ( bes'8 a'8 ) } \tuplet 3/2 { a'8 ( g'8 f'8 ) }  |
        f'8 ( a'8 f'8 ) r8 |
        gis'8 e'8 gis'8 a'8 |
        b'8 e'8 b'8 a'8 |
        \tuplet 3/2 { gis'8 ( f'8 e'8 ) } e'8 r8 |
    }
    \alternative {
        {
            e'8 e'8 a'8 c''8 |
        }
        {
            e'8 c''8 b'8-^ ( d''8 ) |
        }
    }
}

tenorsaxsectioncaminusone = {
    g'8-\trill ( e'8 ) f'8 e'8 |
    \grace { s16 s16 s16 } c''16 d''16 e''8 g'8-^ a'8 |
    g'4 f'8 e'8 |

    \grace { s16 s16 s16 } c''16 d''16 e''8 g'8-^ d''8 |
    c''4 f''16 e''16 d''16 c''16 |
    b'8 ( d''8 g''8 f''8 ) |
    e''8 r8 a'16 ( g'16 f'16 e'16 ) |

    \grace { s16 s16 s16 } c''8 r8 g'8 a'8 |
    g'8-\trill ( e'8 ) f'8 e'8 |
    \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
    g'4 f'8 e'8 |

    a'8 a'4 a'8 |
    gis'8 r8 \tuplet 3/2 { e''8 ( d''8 c''8 ) } |
}

tenorsaxsectionca = {
    \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
    \tenorsaxsectioncaminusone
}

tenorsaxsectioncb = {
    c''8 e''8 c''8 e''8 |
    c''8 c''8 b'8-^ d''8 |
}

tenorsaxsectioncc = {
    c''8 e''8 c''8 e''8 |
    a'8 r8 e'8 a'8 |
}

tenorsaxsectionc = {
    \repeat volta 2 { \tenorsaxsectionca }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxbigb = {
    \tenorsaxsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } c''16 ( d''16 e''8 ) g'8-^ a'8 |
        \tenorsaxsectioncaminusone
    }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxcoda = {
    \acciaccatura { a'16 [ b'16 bis'16 ] } c''8-^ r8 d''8 r8 | c''2-\fermata | 
}

tenorsaxnotes = {
    \key a \minor
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxbigb
    \stopStaff s2 \startStaff
    \acciaccatura { a'16 [ b'16 bis'16 ] } c''8-^ r8 d''8 r8 | c''2-\fermata | 
}

tenorsaxnotesmidi = {
    \key a \minor
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionca
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro = \transpose ees c' {
    s2 | s2 |
}

altosaxintro = \transpose ees c' {
    s8 d'8\ff g'8 bes'8 |
}

altosaxsectiona = \transpose ees c' {
    \repeat volta 2 {
        d''4 g'4 |
        bes'4 \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
        d'2 ~ |
        d'8 d'8 g'8 bes'8 |

        d''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''2 ~ |
        c''8 c'8 d'8 ees'8 |

        fis'8 d'8 g'8 d'8 |
        a'8 d'8 bes'8 d'8 |
        \acciaccatura { a'16 [ bes'16 ] } a'8 fis'8 g'4 ~ |
        g'8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'2 ~ |
            g'8 d'8 g'8 bes'8 |
        }
        {
            g'2 ~ |
            g'8 bes8 d'8 g'8 |
        }
    }
}

altosaxsectionb = \transpose ees c' {
    \repeat volta 2 {
        bes'4. a'8 |
        g'4. fis'8 |
        \tuplet 3/2 { g'8 ( f'8 ees'8 ) } \tuplet 3/2 { ees'8 ( d'8 c'8 ) } |
        c'4. bes8 |

        a4. bes8 |
        c'4. cis'8 |
        \tuplet 3/2 { d'8 ( c'8 bes8 ) } \tuplet 3/2 { bes8 ( a8 g8 ) } |
    }
    \alternative {
        {
            g8 bes8 d'8 g'8 |
        }
        {
            g8 r8 f4-> |
        }
    }
}

altosaxsectioncaminusone = \transpose ees c' {
    \tuplet 3/2 { d'16 ( ees'16 d'16 ) } bes8 c'8 bes8 |
    \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
    \tuplet 3/2 { d'16 ( ees'16 d'16 ) } bes8 c'8 bes8 |

    \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
    d'4 g'4 |
    f'4. g'16 a'16 |
    bes'16 ( a'16 g'16 f'16 ees'16 d'16 c'16 bes16 ) |

    \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
    \tuplet 3/2 { d'16 ( ees'16 d'16 ) } bes8 c'8 bes8 |
    \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
    \tuplet 3/2 { d'16 ( ees'16 d'16 ) } bes8 c'8 bes8 |

    bes8 \acciaccatura { d'16 } c'4 bes8 |
    \tuplet 3/2 { d'8 ( c'8 bes8 ) } \tuplet 3/2 { bes8 ( a8 g8 ) } |
}

altosaxsectionca = \transpose ees c' {
    \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
    \altosaxsectioncaminusone
}

altosaxsectioncb = \transpose ees c' {
    g8 bes8 d'8 g'8 |
    g8 g'8 f'4-> |
}

altosaxsectioncc = \transpose ees c' {
    g8 bes8 d'8 g'8 |
    g8 d'8 g'8 bes'8 |
}

altosaxsectionc = {
    \repeat volta 2 { \altosaxsectionca }
    \alternative { { \altosaxsectioncb } { \altosaxsectioncc } }
}

altosaxbigb = {
    \altosaxsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d'16 ees'16 f'4 ees'8 |
        \altosaxsectioncaminusone
    }
    \alternative { { \altosaxsectioncb } { \altosaxsectioncc } }
}

altosaxcoda = \transpose ees c' {
    \acciaccatura { d'16 [ e'16 fis'16 ] } g'8 r8 d'8 r8 | g'2-\fermata | 
}

altosaxnotes = {
    \key e \minor
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d'16 [ e'16 fis'16 ] } g'8 r8 d'8 r8 | g'2-\fermata | 
}

altosaxnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = {
    s2 | s2 |
}

trumpetintro = \transpose bes c' {
    s8 d'8\ff g'8 bes'8 |
}

trumpetsectiona = \transpose bes c {
    \repeat volta 2 {
        d'''4 g''4 |
        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        d''2 ~ |
        d''8 d''8 g''8 bes''8 |

        d'''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''2 ~ |
        c''8 c''8 d''8 ees''8 |

        fis''4 g''4 |
        a''4 bes''4 |
        \grace { s16 s16 } a''8 fis''8 g''4 ~ |
        g''8 d'''8 \grace { s16 } ees'''8 d'''8 |

        d'''4. cis'''8 |
        \tuplet 3/2 { d'''8 ( cis'''8 bes''8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    }
    \alternative {
        {
            g''2 ~ |
            g''8 d''8 g''8 bes''8 |
        }
        {
            g''2 ~ |
            g''4. d''8 |
        }
    }
}

trumpetsectionb = \transpose bes c {
    \repeat volta 2 {
        bes''4. a''8 |
        g''4. fis''8 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''4. bes'8 |
        a'4. bes'8 |
        c''4. cis''8 |
        \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    }
    \alternative {
        {
            g''8 bes'8 d''8 g''8 |
        }
        {
            g''8 r8 f''4-> |
        }
    }
}

trumpetsectioncaminusone = \transpose bes c {
    d''8-\trill bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill bes'8 c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4. g''16 a''16 |
    bes''16 ( a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''8-\trill bes'8 c''8 bes'8 |

    bes''8 \acciaccatura { d''16 } c'''4 bes''8 |
    \tuplet 3/2 { d'''8 ( c'''8 bes''8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
}

trumpetsectionca = \transpose bes c {
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \trumpetsectioncaminusone
}

trumpetsectioncb = \transpose bes c {
    g''2 ~ |
    g''8 r8 f''4-^ |
}

trumpetsectioncc = \transpose bes c {
    g''2 ~ |
    g''8 d''8 g''8 bes''8 |
}

trumpetsectionc = {
    \repeat volta 2 { \trumpetsectionca }
    \alternative { { \trumpetsectioncb } { \trumpetsectioncc } }
}

trumpetbigb = {
    \trumpetsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
        \trumpetsectioncaminusone
    }
    \alternative { { \trumpetsectioncb } { \trumpetsectioncc } }
}

trumpetcoda = \transpose bes c' {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8-^ r8 d''8-^ r8 |
    g'2-\fermata | 
}

trumpetnotes = {
    \key a \minor
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8-^ r8 d''8-^ r8 |
    g'2-\fermata | 
}

trumpetnotesmidi = {
    \key a \minor
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 |
}

tromboneintro = {
    s8 r8 r4 |
}

trombonesectiona = {
    \repeat volta 2 {
        g8\ff r8 d8 r8 |
        g8 r8 d8 r8 |
        g8 g8 d8 g8 |
        g8 g8 d8 g8 |

        g8 r8 d8 r8 |
        b,8 r8 g,8 r8 |
        c2 ~ |
        c8 g8 ees8 c8 |

        d4 d4 |
        d4 d4 |
        \grace { s16 s16 } g8 g8 g4 ~ |
        g8 d8 ees8 d8 |

        d'4. cis'8 |
        d'4 bes4 |
    }
    \alternative {
        {
            g8 g8 d8 g8 ~ |
            g8 g8 d8 bes,8 |
        }
        {
            g8 g8 d8 g8 ~ |
            g8 d8 g,8 r8 |
        }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        b,4 g,4 |
        c8 g8 ees8 c8 |
        d8 r8 d8 r8 |
        fis8 r8 d8 r8 |
        d'4 bes4 |
    }
    \alternative {
        {
            g8 g8 d8 bes,8 |
        }
        {
            g8 r8 f4-> |
        }
    }
}

trombonesectioncaminusone = {
    bes2 |
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |

    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |
    c'8 r8 f8 r8 |
    bes,8 bes8 f8 d8 |

    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    bes2 |

    bes8 c'4 bes8 |
    c'4 bes4 |
}

trombonesectionca = {
    \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
    \trombonesectioncaminusone
}

trombonesectioncb = {
    g8 g8 d8 g8 |
    g8 r8 f4-> |
}

trombonesectioncc = {
    g8 g8 d8 g8 |
    g8 d8 g8 bes8 |
}

trombonesectionc = {
    \repeat volta 2 { \trombonesectionca }
    \alternative { { \trombonesectioncb } { \trombonesectioncc } }
}

trombonebigb = {
    \trombonesectionb
    \repeat volta 2 {
        \acciaccatura { f16 [ g16 a16 ] } bes2 ~ |
        \trombonesectioncaminusone
    }
    \alternative { { \trombonesectioncb } { \trombonesectioncc } }
}

trombonecoda = {
    \acciaccatura { d16 [ e16 fis16 ] } g8-> r8 d8-> r8 | g,2->-\fermata | 
}

trombonenotes = {
    \key g \minor
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonebigb
    \stopStaff s2 \startStaff
    \acciaccatura { d16 [ e16 fis16 ] } g8-> r8 d8-> r8 | g,2->-\fermata | 
}

trombonenotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \tromboneextraintro
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro = {
    s2 | s2 |
}

violinintro = {
    s8 d'8\ff g'8 bes'8 |
}

violinsectiona = {
    \repeat volta 2 {
        d''4 g''4 |
        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        d''2 ~ |
        d''8 d'8 g'8 bes'8 |

        d''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''2 ~ |
        c''8 c''8 d''8 ees''8 |

        fis''4 g''4 |
        a''4 bes''4 |
        \grace { s16 s16 } a''8 fis''8 g''4 ~ |
        g''8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'2 ~ |
            g'8 d'8 g'8 bes'8 |
        }
        {
            g'2 ~ |
            g'4 r8 d''8 |
        }
    }
}

violinsectionb = {
    \repeat volta 2 {
        bes''4. a''8 |
        g''4. fis''8 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        c''4. bes'8 |
        a'4. bes'8 |
        c''4. cis''8 |
        \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'8 bes'8 d''8 g''8 |
        }
        {
            g'8 r8 f'4-> |
        }
    }
}

violinsectioncaminusone = {
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4. g''16 a''16 |
    bes''16 ( a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    bes'8 \acciaccatura { d''16 } c''4 bes'8 |
    \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
}

violinsectionca = {
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \violinsectioncaminusone
}

violinsectioncb = {
    g'2 ~ |
    g'8 r8 f'4-> |
}

violinsectioncc = {
    g'2 ~ |
    g'8 d'8 g'8 bes'8 |
}

violinsectionc = {
    \repeat volta 2 { \violinsectionca }
    \alternative { { \violinsectioncb } { \violinsectioncc } }
}

violinbigb = {
    \violinsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
        \violinsectioncaminusone
    }
    \alternative { { \violinsectioncb } { \violinsectioncc } }
}

violincoda = {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 d''8 r8 | g''2-\fermata |
}

violinnotes = {
    \key g \minor
    \time 2/4
    \violinintro
    \violinsectiona
    \violinbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 d''8 r8 | g''2-\fermata |
}

violinnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \violinextraintro
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro = {
    s2 | s2 |
}

pianorightupperintro = {
    s8 d'8\ff g'8 bes'8 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        d''4 g''4 |
        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        < bes' d'' >2 ~ |
        < bes' d'' >8 d'8 g'8 bes'8 |

        d''4 g''4 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        < ees' g' c'' >2 ~ |
        < ees' g' c'' >8 c''8 d''8 ees''8 |

        < a' d'' fis'' >4 < bes' d'' g'' >4 |
        < c'' a'' >4 < d'' bes'' >4 |
        \grace { s16 s16 } a''8 fis''8 < bes' g'' >4 ~ |
        < bes' g'' >8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            < bes d' g' >2 ~ |
            < bes d' g' >8 d'8 g'8 bes'8 |
        }
        {
            < bes d' g' >2 ~ |
            < bes d' g' >4 r8 d''8 |
        }
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        bes''4. a''8 |
        g''4. fis''8 |
        \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        < ees' g' c'' >4. bes'8 |
        a'4. bes'8 |
        c''4. cis''8 |
        \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
    }
    \alternative {
        {
            g'8 bes'8 d''8 g''8 |
        }
        {
            g'8 r8 < c' e' f' >4-> |
        }
    }
}

pianorightuppersectioncaminusone = {
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16-3 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4.-1 g''16 a''16 |
    bes''16-4 ( a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16-3 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 ) } bes'8 c''8 bes'8 |

    bes'8 \acciaccatura { d''16 } c''4 bes'8 |
    \tuplet 3/2 { d''8 ( c''8 bes'8 ) } \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
}

pianorightuppersectionca = {
    \grace { s16 s16 s16 } d''16-3 ees''16 f''4 ees''8 |
    \pianorightuppersectioncaminusone
}

pianorightuppersectioncb = {
    < bes d' g' >2 ~ |
    < bes d' g' >8 r8 < a e' f' >4-> |
}

pianorightuppersectioncc = {
    < bes d' g' >2 ~ |
    < bes d' g' >8 d'8 g'8 bes'8 |
}

pianorightuppersectionc = {
    \repeat volta 2 { \pianorightuppersectionca }
    \alternative { { \pianorightuppersectioncb } { \pianorightuppersectioncc } }
}

pianorightupperbigb = {
    \pianorightuppersectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16-3 ees''16 f''4 ees''8 |
        \pianorightuppersectioncaminusone
    }
    \alternative { { \pianorightuppersectioncb } { \pianorightuppersectioncc } }
}

pianorightuppercoda = {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 < fis' c'' d'' >8 r8 |
    < bes' d'' g'' >2-\fermata | 
}

pianorightuppernotes = {
    \key g \minor
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightupperbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 < fis' c'' d'' >8 r8 |
    < bes' d'' g'' >2-\fermata | 
}

%-------------------------------------------------

pianorightlowernotes = {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro = {
    s2 | s2 |
}

pianoleftupperintro = {
    s8 r8 r4 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        g,8 g8 d8 g8 |
        b,8 g8 g,8 g8 |
        c8 g8 ees8 g8 |
        c8 g8 ees8 c8 |

        d8 d'8 d8 d'8 |
        d8 d'8 d8 d'8 |
        \grace { s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 g8 |
            g,8 g8 d8 bes,8 |
        }
        {
            g,8 g8 d8 g8 |
            g,8 d8 g8 r8 |
        }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        b,8 g8 g,8 g8 |
        c8 g8 ees8 c8 |
        d8 d'8 d8 d'8 |
        fis8 d'8 d8 d'8 |
        fis8 d'8 d8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 bes,8|
        }
        {
            < g bes >8 r8 < f, f >4-> |
        }
    }
}

pianoleftuppersectioncaminusone = {
    bes,8 bes8 f8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |

    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |
    c8 a8 f8 a8 |
    bes,8 ( bes8 f8 d8 ) |

    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    bes,8 bes8 f8 bes8 |

    d8 < fis c' >8 d8 < fis c' >8 |
    d8 < fis c' >8 d8 < fis c' >8 |
}

pianoleftuppersectionca = {
    \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
    \pianoleftuppersectioncaminusone
}

pianoleftuppersectioncb = {
    g,8 g8 d8 g8 |
    g,8 r8 < f, f >4-> |
}

pianoleftuppersectioncc = {
    g,8 g8 d8 g8 |
    < g, g >8 r8 r4 |
}

pianoleftuppersectionc = {
    \repeat volta 2 { \pianoleftuppersectionca }
    \alternative { { \pianoleftuppersectioncb } { \pianoleftuppersectioncc } }
}

pianoleftupperbigb = {
    \pianoleftuppersectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } bes,8 bes8 f8 bes8 |
        \pianoleftuppersectioncaminusone
    }
    \alternative { { \pianoleftuppersectioncb } { \pianoleftuppersectioncc } }
}

pianoleftuppercoda = {
    \grace { s16 s16 s16 } < g bes >8 r8 < d d' >8 r8 | < g, g >2-\fermata |
}

pianoleftuppernotes = {
    \key g \minor
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftupperbigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } < g bes >8 r8 < d d' >8 r8 | < g, g >2-\fermata |
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionca
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionca
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = {
    s2 | s2 |
}

accordionrightupperintro = {
    s8 d'8\ff g'8 bes'8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        d''4 < bes' g'' >4 |
        < d'' bes'' >4 \tuplet 3/2 { < d'' bes'' >8 < c'' a'' >8 < bes' g'' >8 } |
        < bes' d'' >2 ~ |
        < bes' d'' >8 d'8 g'8 bes'8 |

        d''4 << { g''4 } \\ { d''8 ( c'' ) } >> |
        \tuplet 3/2 { < b' g'' >8 < aes' f'' >8 < g' ees'' >8 } \tuplet 3/2 { < g' ees'' >8 < f' d'' >8 < ees' c'' >8 } |
        < ees' c'' >2 ~ |
        < ees' c'' >8 c''8 d''8 ees''8 |

        < a' d'' fis'' >4 < bes' d'' g'' >4 |
        < c'' fis'' a'' >4 < d'' g'' bes'' >4 |
        \grace { s16 s16 } < c'' a'' >8 < c'' fis'' >8 < bes' g'' >4 ~ |
        < bes' g'' >8 d''8 \acciaccatura { f''16 } ees''8 d''8 |

        d''4. cis''8 |
        \tuplet 3/2 { d''8 cis''8 bes'8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
    }
    \alternative {
        {
            g'2 ~ |
            g'8 d'8 g'8 bes'8 |
        }
        {
            g'2 ~ |
            g'4 r8 d''8 |
        }
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        < d'' bes'' >4. < c'' a'' >8 |
        < bes' g'' >4. < c'' fis'' >8 |
        \tuplet 3/2 { < b' g'' >8 < aes' f'' >8 < g' ees''>8 } \tuplet 3/2 { < g' ees''>8 < f' d'' >8 < ees' c'' >8 } |
        < ees' c'' >4. < g' bes' >8 |
        < fis' a' >4. < g' bes' >8 |
        < a' c'' >4. < g' cis'' >8 |
        \tuplet 3/2 { < fis' d'' >8 c''8 bes'8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
    }
    \alternative {
        {
            g'8 bes'8 d''8 g''8 |
        }
        {
            g'8 ( < bes' d'' g'' >8 ) < a' e'' f'' >4-> |
        }
    }
}

accordionrightuppersectioncaminusone = {
    \tuplet 3/2 { d''16 ( ees''16 d''16 } bes'8 ) c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 } bes'8 ) c''8 bes'8 |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    d''4 g''4 |
    f''4. g''16 ( a''16 |
    bes''16 a''16 g''16 f''16 ees''16 d''16 c''16 bes'16 ) |

    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 } bes'8 ) c''8 bes'8 |
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \tuplet 3/2 { d''16 ( ees''16 d''16 } bes'8 ) c''8 bes'8 |

    bes'8 \acciaccatura { d''16 } c''4 bes'8 |
    \tuplet 3/2 { d''8 c''8 bes'8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
}

accordionrightuppersectionca = {
    \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
    \accordionrightuppersectioncaminusone
}

accordionrightuppersectioncb = {
    g'2 ~ |
    g'8 < bes' d'' g'' >8 < a' e'' f'' >4-> |
}

accordionrightuppersectioncc = {
    g'2 ~ |
    g'8 d'8 g'8 bes'8 |
}

accordionrightuppersectionc = {
    \repeat volta 2 { \accordionrightuppersectionca }
    \alternative { { \accordionrightuppersectioncb } { \accordionrightuppersectioncc } }
}

accordionrightupperbigb = {
    \accordionrightuppersectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } d''16 ees''16 f''4 ees''8 |
        \accordionrightuppersectioncaminusone
    }
    \alternative { { \accordionrightuppersectioncb } { \accordionrightuppersectioncc } }
}

accordionrightuppercoda = {
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 < fis' c'' d'' >8 r8 |
    < g' bes' d'' g'' >2-\fermata | 
}

accordionrightuppernotes = {
    \key g \minor
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightupperbigb
    \stopStaff s2 \startStaff
    \acciaccatura { d''16 [ e''16 fis''16 ] } g''8 r8 < fis' c'' d'' >8 r8 |
    < g' bes' d'' g'' >2-\fermata | 
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro = {
    s2 | s2 |
}

accordionleftupperintro = {
    s8 r8 r4 |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 d,8 g8 |

        g,8 g8 bes,8_5^"B.S." a,8_2 |
        g,8_3 g8^"7" g,4 |
        c8 c'8^"m" g,8 c'8 |
        c8 c'8 g,8 c'8 |

        d,8 d'8^"M" g,8 g8^"m" |
        d,8 d'8^"M" g,8 g8^"m" |
        \grace { s16 s16 } d,8 d'8^"M" g,8^"B.S." d,8 |
        g,8 g8^"m" g,8 g8 |

        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8^"M" g,8^"B.S." d,8 |
    }
    \alternative {
        {
            g,8^"m" g8 d,8 g8 |
            g,8 g8 d,8 g8 |
        }
        {
            g,8^"m" g8 d,8 g8 |
            g,8^"B.S." d,8 g,8 r8 |
        }
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        g,8 g8^"m" d,8 d'8^"M" |
        g,8 g8^"m" d,8 d'8^"M" |
        g,8 g8^"7" g,4 |
        c8 c'8^"m" g,8 c'8 |

        d,8 d'8^"M" d,8 g8^"m" |
        d,8 d'8^"M" d,8^"B.S." a,8 |
        d,8 d'8^"M" g,8^"B.S." d,8 |
    }
    \alternative {
        {
            g,8 g8^"m" d,8 g8 |
        }
        {
            < g, g >8^"m" r8 < f, f >4_>^"7" |
        }
    }
}

accordionleftuppersectioncaminusone = {
    bes,8 bes8^"M" f,8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f,8 f8^"7" |
    bes,8 bes8^"M" f,8 bes8 |

    \grace { s16 s16 s16 } bes,8 bes8 f,8 f8^"7" |
    bes,8 bes8^"M" f,8 bes8 |
    c8 f8^"7" f,8 f8 |
    bes,8 bes8^"M" f,8 r8 |

    \grace { s16 s16 s16 } bes,8 bes8^"M" f,8 f8^"7" |
    bes,8 bes8^"M" f,8 bes8 |
    \grace { s16 s16 s16 } bes,8 bes8 f,8 f8^"7" |
    bes,8 bes8^"M" f,8 bes8 |

    ees,8 ees8^"M" ees,8 ees8 |
    d,8_4^"B.S." fis,8_2 g,8_3 d,8_2 |
}

accordionleftuppersectionca = {
    \grace { s16 s16 s16 } bes,8 bes8^"M" f,8 f8^"7" |
    \accordionleftuppersectioncaminusone
}

accordionleftuppersectioncb = {
    g,8_3 g8^"m" d,8 g8 |
    < g, g >8^"m" r8 < f, f >4_>^"7" |
}

accordionleftuppersectioncc = {
    g,8_3 g8^"m" d,8 g8 |
    < g, g >8 r8 r4 |
}

accordionleftuppersectionc = {
    \repeat volta 2 { \accordionleftuppersectionca }
    \alternative { { \accordionleftuppersectioncb } { \accordionleftuppersectioncc } }
}

accordionleftupperbigb = {
    \accordionleftuppersectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } bes,8 bes8^"M" f,8 f8^"7" |
        \accordionleftuppersectioncaminusone
    }
    \alternative { { \accordionleftuppersectioncb } { \accordionleftuppersectioncc } }
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < g, g >8^"m"_._> r8 < d, d' >8^"7"_._> r8 |
    < g, g >2_>^\fermata^"m" | 
}

accordionleftuppernotes = {
    \key g \minor
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftupperbigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } < g, g >8^"m"_._> r8 < d, d' >8^"7"_._> r8 |
    < g, g >2_>^\fermata^"m" | 
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionca
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionca
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    s2 | s2 |
}

drumshighintro = \drummode {
    s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
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
        \grace { s16 s16 } s2 |
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
    \repeat volta 2 {
        s2 |
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
        }
        {
            s2 |
        }
    }
}

drumshighsectioncaminusone = \drummode {
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    s2 |
    s2 |
}

drumshighsectionca = \drummode {
    \grace { s16 s16 s16 } s2 |
    \drumshighsectioncaminusone
}

drumshighsectioncb = \drummode {
    s2 |
    s2 |
}

drumshighsectioncc = \drummode {
    s2 |
    s2 |
}

drumshighsectionc = \drummode {
    \repeat volta 2 { \drumshighsectionca }
    \alternative { { \drumshighsectioncb } { \drumshighsectioncc } }
}

drumshighbigb = {
    \drumshighsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \drumshighsectioncaminusone
    }
    \alternative { { \drumshighsectioncb } { \drumshighsectioncc } }
}

drumshighcoda = \drummode {
    \grace { s16 s16 s16 } s2 | s2 | 
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighbigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 | s2 | 
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighextraintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionca
    \drumshighcoda
}

drumslowextraintro = \drummode {
    s2 | s2 |
}

drumslowintro = \drummode {
    s2 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 {
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
        \grace { s16 s16 } s2 |
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
    \repeat volta 2 {
        s2 |
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
        }
        {
            s2 |
        }
    }
}

drumslowsectioncaminusone = {
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 s16 s16 } s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |

    s2 |
    s2 |
}

drumslowsectionca = {
    \grace { s16 s16 s16 } s2 |
    \drumslowsectioncaminusone
}

drumslowsectioncb = {
    s2 |
    s2 |
}

drumslowsectioncc = {
    s2 |
    s2 |
}

drumslowsectionc = {
    \repeat volta 2 { \drumslowsectionca }
    \alternative { { \drumslowsectioncb } { \drumslowsectioncc } }
}

drumslowbigb = {
    \drumslowsectionb
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \drumslowsectioncaminusone
    }
    \alternative { { \drumslowsectioncb } { \drumslowsectioncc } }
}

drumslowcoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowbigb
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 | s2 | 
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowextraintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionca
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 |
    g2:min | s2 | s2 | s2 | s2 | g2:7 | c2:min | s2 |
}

previewnotes = {
    \key g \minor
    \time 2/4

    s8 d'8 g'8 bes'8 |
    \bar ".|:"
    d''4 g''4 |
    bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    d''2 ~ |
    d''8 d'8 g'8 bes'8 |
    d''4 g''4 |
    \tuplet 3/2 { g''8 ( f''8 ees''8 ) } \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
    c''2 ~ |
    c''8 c''8 d''8 ees''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

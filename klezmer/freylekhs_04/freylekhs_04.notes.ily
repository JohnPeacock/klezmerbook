\version "2.18.2"

bandmsectiona =  {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 | \breakAsxt
        s2 | \breakAsvt s2 | \breakAett s2 | \breakAnnt s2 |
    }
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |
    \breakB \bar ".|:-||"
}

bandmsectionca =  {
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt
}

bandmsectioncb =  {
    s2 | \breakCfft s2 |
}

bandmsectionc =  {
    \markC \positionC
    \repeat volta 2 {
        \bandmsectionca
        \bar "||" \markTC \positionTC
        \bandmsectioncb
    }
    \markDC \positionDC
    \breakC
}

bandmNV =  {
    \tempo \tempostring
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \stopStaff s2 \startStaff \breakBL
    \markCCRT \positionCCRT
    \grace { s16 s16 s16 } s2 | \breakCCone s2 |
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomeextraintro =  { s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

metronomesectionb =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionca =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectioncb =  { s2 | s2 | }

metronomesectionc =  {
    \repeat volta 2 { \metronomesectionca \metronomesectioncb }
}

metronomecoda =  { \grace { s16 s16 s16 } s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \metronomesectionca

    \tempo 4 = 100
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro =  {
    s2 | s2 |
}

melodysectiona =  {
    \repeat volta 2 {
        fis''8\ff r8 g''8 r8 |
        fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 ees''8 ) } |
        fis''2 ~ |
        fis''8 d''8 ees''8 d''8 |

        fis''8 r8 g''8 r8 |
        a''8 g''8 bes''8 a''8 |
        g''2 ~ |
        g''8 g''8 a''8 bes''8 |

        a''8 r8 g''8 r8 |
        d'''8 r8 fis''8 r8 |
        g''2 ~ |
        g''8 g''8 a''8 bes''8 |

        a''8 ( g''8 ) g''8 ( fis''8 ) |
        fis''8 ( ees''8 ) ees''8 ( d''8 ) |
        fis''2 ~ |
        fis''8 ees'' ees''8 d''8 |

        c''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        fis''4 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        d''2 ~ |
        d''4 r4 |
    }
}

melodysectionb =  {
    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 r8 fis''8 r8 |
    a''8 r8 d'''8 r8 |

    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''2 |
    d'''2 |

    r8 d'''8 c'''8 bes''8 |
    a''8 g''8 bes''8 a''8 |
    g''2 ~ |
    g''8 r8 g''4-> |
    r8 c'''8 bes''8 a''8 |
    g''8 f''8 a''8 g''8 |
    f''2 ~ |
    f''4 r8 fis''8 |
}

melodysectionca =  {
    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    fis''2 ~ |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    d''4-\trill fis''4-\trill |
    a''4-\trill d'''8-. r8 |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    fis''2 ~ |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |

    c''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
}

melodysectioncb =  {
    d''2 ~ |
    d''4 r4 |
}

melodysectionc =  {
    \repeat volta 2 { \melodysectionca \melodysectioncb }
}

melodycodamidi =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

melody =  {
    \key g \minor
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

melodymidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionca
    \melodycodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro =  {
    s2 | s2 |
}

tenorharmonysectiona =  {
    \repeat volta 2 {
        b'8\ff r8 c''8 r8 |
        b'8 r8 \tuplet 3/2 { a'8 ( gis'8 a'8 ) }  |
        b'8 e''4 e''8 |
        e''8 r8 r4 |

        b'8 r8 c''8 r8 |
        d''8 c''8 e''8 d''8 |
        c''8 e''4 e''16 d''16 |
        c''8 c''8 d''8 e''8 |

        d''8 r8 c''8 r8 |
        b'8 r8 d''8 r8 |
        c''8 e''8 c''8 e''8 |
        c''8 r8 r4 |

        d''8 ( c''8 ) c''8 ( b'8 ) |
        b'8 ( a'8 ) a'8 ( gis'8 ) |
        b'8 e'8 gis'8 b'8 |
        e''8 a'8 a'8 gis'8 |

        f'8 a'8 d''4 |
        e''8 r8 \tuplet 3/2 { a'8 ( a'8 a'8 ) } |
        gis'8 e'8 gis'8 b'8 |
        gis'8 e''16 e''16 e''8 e''8 |
    }
}

tenorharmonysectionb =  {
    b'8. gis'16 b'8. gis'16 |
    \tuplet 3/2 { b'8 ( c''8 d''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
    gis'8-. r8 b'8-. r8 |
    e''8-. r8 gis''8-. r8 |

    b'8. gis'16 b'8. gis'16 |
    \tuplet 3/2 { b'8 ( c''8 d''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
    gis'8 e'8 b'8 e'8 |
    gis'8 e''16 e''16 e''8 e''8 |

    e''2-^ |
    d''8 c''8 e''8 d''8 |
    c''8 a'8 c''8 e''8 |
    c''8 r8 c''8 d''8 |

    b'4.-^ d''8 |
    c''8 b'8 d''8 c''8 |
    b'8 d''8 g''8 d''8 |
    b'8 d''8 b'8 r8 |
}

tenorharmonysectionca =  {
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    b'8 e'8 gis'8 b'8 |
    e'8 ( a'8 ) a'8 ( gis'8 ) |
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    gis'8-. r8 b'8-. r8 |
    e''8-. r8 gis''8-. r8 |
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    b'8 e'8 gis'8 b'8 |
    e''8 a'8 a'8 gis'8 |
    f'8 a'8 d''4 |
    e''8 b'8 a'4 |
}

tenorharmonysectioncb =  {
    gis'8 e'8 gis'8 b'8 |
    gis'8 e''16 e''16 e''8 e''8 |
}

tenorharmonysectionc =  {
    \repeat volta 2 { \tenorharmonysectionca \tenorharmonysectioncb }
}

tenorharmonycodamidi =  {
    \grace { s16 s16 s16 } gis'8-^ r8 a'8-^ r8 |
    gis'2-\fermata |
}

tenorharmony =  \transpose c' bes {
    \key a \minor
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } gis'8-^ r8 a'8-^ r8 |
    gis'2-\fermata |
}

tenorharmonymidi =  \transpose c' bes {
    \key a \minor
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonycodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro =  {
    s2 | s2 |
}

altoharmonysectiona =  {
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
}

altoharmonysectionb =  {
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

altoharmonysectionca =  {
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

altoharmonysectioncb =  {
    s2 |
    s2 |
}

altoharmonysectionc =  {
    \repeat volta 2 { \altoharmonysectionca \altoharmonysectioncb }
}

altoharmonycodamidi =  {
    \grace { s16 s16 s16 } s2 |
    s2 |
}

altoharmony =  {
    \key g \minor
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 |
    s2 |
}

altoharmonymidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionca
    \altoharmonycodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro =  {
    s2 | s2 |
}

countersectiona =  {
    \repeat volta 2 {
        \repeat percent 2 { d8\ff r8 d8 r8 | }
        \repeat percent 2 { d8 d'8 a8 d'8 | }

        \repeat percent 2 { d8 r8 d8 r8 | }
        \repeat percent 2 { g8 g8 d8 g8 | }

        g8 r8 g8 r8 |
        d8 r8 d8 r8 |
        g2 ~ |
        g8 d'8 ( bes8 g8 ) |

        a4 g4 |
        fis4 ees4 |
        d8 d'8 a8 d'8 |
        a8 r8 d8 r8 |

        c8 r8 g,8 r8 |
        c8 r8 c8 r8 |
        d2 |
        d8 d16 d16 a,8 d8 |
    }
}

countersectionb =  {
    d4 d4 |
    fis4 a,4 |
    \repeat percent 2 { d8 r8 d8 r8 | }

    d4 d4 |
    fis4 a,4 |
    d8 d'8 a8 d'8 |
    d8 d'16 d'16 d'8 d'8 |

    g8-> r8 d8 r8 |
    fis8 r8 d8 r8 |
    g8 d'8 bes8 d'8 |
    g8 d'8 bes8 g8 |

    f8-> r8 c8 r8 |
    ees8 r8 c8 r8 |
    f8 c'8 c8 c'8 |
    f8 c8 f8 r8 |
}

countersectionca =  {
    a4 g4 |
    fis4 ees4 |
    d2 ~ |
    d8 d'8 a8 d'8 |
    a4 g4 |
    fis4 ees4 |
    d4 a4 |
    fis4 d8 r8 |
    a4 g4 |
    fis4 ees4 |
    d2 ~ |
    d8 ees8 ees8 d8 |
    c8 r8 \tuplet 3/2 { bes8 ( a8 g8 ) } |
    fis8 r8 \tuplet 3/2 { ees8 ( d8 c8 ) } |
}

countersectioncb =  {
    d2 ~ |
    d8 d16 d16 a,8 d8 |
}

countersectionc =  {
    \repeat volta 2 { \countersectionca \countersectioncb }
}

countercodamidi =  {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->-\fermata |
}

counter =  \transpose c c' {
    \key g \minor
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->-\fermata |
}

countermidi =  \transpose c c' {
    \key g \minor
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionca
    \countercodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% currently just the piano left hand.  need to fix that.

basslineextraintro =  {
    s2 | s2 |
}

%    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
%    << sna4 cymr4 >> r8 cymc8 |

%    bda4 bda8 bda8 | s8 bda8 bda4 |

basslinesectiona =  {
    \repeat volta 2 {
        d8 d'8 bes8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        d8 d'8 bes8 d'8 |
        d8 d'8 a8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        g,8 g8 d8 g8 |
        d8 c'8 d8 c'8 |
        g8 d'8 d8 d'8 |
        g8 ( d'8 bes8 g8 ) |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        d8 d'8 a8 d'8 |
        d8 d'16 d'16 a'8 d'8 |
    }
}

basslinesectionb =  {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    d8 d'8 a8 d'8 |
    d8 d'8 c8 c'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    g8-> d'8 d8 d'8 |
    fis8 d'8 d8 d'8 |
    g8 d'8 d8 d'8 |
    g8 d'8 bes8 g8 |

    f8 c'8 c8 c'8 |
    ees8 c'8 c8 c'8 |
    f8 c'8 c8 c'8 |
    f8 ( c8 f8 ) r8 |
}

basslinesectionca =  {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d4 a4 |
    fis4 d'8 r8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    c8 c'8 g8 c'8 |
    c8 c'8 ees8 c'8 |
}

basslinesectioncb =  {
    d8 d'8 a8 d'8 |
    d8 d'16 d'16 a8 d'8 |
}

basslinesectionc =  {
    \repeat volta 2 { \basslinesectionca \basslinesectioncb }
}

basslinecodamidi =  {
    \grace { s16 s16 s16 } d'8 r8 a8 r8 |
    d2-\fermata |
}

bassline =  {
    \key g \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } d'8 r8 a8 r8 |
    d2-\fermata |
}

basslinemidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinecodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro =  {
    s2 | s2 |
}

guitarsectiona =  {
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
}

guitarsectionb =  {
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

guitarsectionca =  {
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

guitarsectioncb =  {
    s2 |
    s2 |
}

guitarsectionc =  {
    \repeat volta 2 { \guitarsectionca \guitarsectioncb }
}

guitarcodamidi =  {
    \grace { s16 s16 s16 } s2 |
    s2 |
}

guitarnotes =  {
    \key g \minor
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 |
    s2 |
}

guitarnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionca
    \guitarcodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s2 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d4 g4:min |
        d2 |
        d2 |
        d2 |

        d4 g4:min |
        d2 |
        g2:min |
        g2:min |

        g2:min |
        d2:7 |
        g2:min |
        g2:min |

        d2 |
        d2 |
        d2 |
        d2 |

        c2:min |
        c2:min |
        d2 |
        d2 |
    }
}

chordletterssectionb = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
    d2 |
    d2 |

    d2 |
    d2 |
    d2 |
    d2 |

    g2:min |
    d2 |
    g2:min |
    g2:min |

    f2 |
    c2:7 |
    f2 |
    f2 |
}

chordletterssectionca = \chordmode {
    d2 |
    d2 |
    d2 |
    d2 |

    d2 |
    d2 |
    d2 |
    d2 |

    d2 |
    d2 |
    d2 |
    d2 |

    c2:min |
    c2:min |
}

chordletterssectioncb = \chordmode {
    d2 |
    d2 |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca \chordletterssectioncb }
}

chordletterscodamidi = \chordmode {
    \chordChangesOff
    \grace { d8.}
    \chordChangesOn
    d4 a4:7 |
    d2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \stopStaff s2 \startStaff
    \chordChangesOff
    \grace { d8.}
    \chordChangesOn
    d4 a4:7 |
    d2 |
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

melodystaff =  \context Staff = "melodystaff"  \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  \transpose c c {
    \melody
}

flutenotesmidi =  \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  {
    s2 | s2 |
}

clarinetsectiona =  {
    \repeat volta 2 {
        gis''8\ff r8 a''8 r8 |
        gis''8 r8 \tuplet 3/2 { f''8 e''8 f''8 } |
        gis''2 ~ |
        gis''8 e''8 f''8 e''8 |
        gis''8 r8 a''8 r8 |
        b''8 a''8 c'''8 b''8 |
        a''2 ~ |
        a''8 a''8 b''8 c'''8 |
        b''8 r8 a''8 r8 |
        e'''8 r8 gis''8 r8 |
        a''2 ~ |
        a''8 a''8 b''8 c'''8 |
        b''8-\trill ( a''8 ) a''8-\trill ( gis''8 ) |
        gis''8-\trill ( f''8 ) f''8-\trill ( e''8 ) |
        gis''2 ~ |
        gis''8 f''8 f''8 e''8 |
        d''4 \tuplet 3/2 { c'''8 ( b''8 a''8 ) } |
        gis''8 r8 \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        e''2 ~ |
        e''4 r4 |
    }
}

clarinetsectionb =  {
    gis''8. e''16 gis''8. e''16 |
    \tuplet 3/2 { gis''8 ( a''8 b''8 ) } \tuplet 3/2 { a''8 ( gis''8 f''8 ) } |
    e''8 r8 gis''8 r8 |
    b''8 r8 e'''8 r8 |

    gis''8. e''16 gis''8. e''16 |
    \tuplet 3/2 { gis''8 ( a''8 b''8 ) } \tuplet 3/2 { a''8 ( gis''8 f''8 ) } |
    e''2 |
    e'''2 |

    r8 e'''8 d'''8 c'''8 |
    b''8 a''8 c'''8 b''8 |
    a''2 ~ |
    a''8 r8 a''4-^ |
    r8 d'''8 c'''8 b''8 |
    a''8 g''8 b''8 a''8 |
    g''2 ~ |
    g''4 r8 gis''8 |
}

clarinetsectionca =  {
    b''8-\trill ( a''8 ) a''8-\trill ( gis''8 ) |
    gis''8-\trill ( f''8 ) f''8-\trill ( e''8 ) |
    gis''2 ~ |
    gis''8 ( f''8 ) f''8 ( e''8 ) |
    b''8-\trill ( a''8 ) a''8-\trill ( gis''8 ) |
    gis''8-\trill ( f''8 ) f''8 ( e''8 ) |
    e''8 r8 gis''8 r8 |
    b''8 r8 e'''8 r8 |
    b''8-\trill ( a''8 ) a''8-\trill ( gis''8 ) |
    gis''8-\trill ( f''8 ) f''8-\trill ( e''8 ) |
    gis''2 ~ |
    gis''8 ( f''8 ) f''8 ( e''8 ) |
    d''4 \tuplet 3/2 { c'''8 ( b''8 a''8 ) } |
    gis''8 r8 \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
}

clarinetsectioncb =  {
    e''2 ~ |
    e''4 r4 |
}

clarinetsectionc =  {
    \repeat volta 2 { \clarinetsectionca \clarinetsectioncb }
}

clarinetcodamidi =  {
    \acciaccatura { b''16 [ cis'''16 dis'''16 ] } e'''8-^ r8 b''8 r8 |
    e''2-\fermata |
}

clarinetnotes =  {
    \key a \minor
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \stopStaff s2 \startStaff
    \acciaccatura { b''16 [ cis'''16 dis'''16 ] } e'''8-^ r8 b''8 r8 |
    e''2-\fermata |
}

clarinetnotesmidi =  {
    \key a \minor
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  {
    s2 | s2 |
}

tenorsaxsectiona =  {
    \repeat volta 2 {
        b'8\ff r8 c''8 r8 |
        b'8 r8 \tuplet 3/2 { a'8 ( gis'8 a'8 ) }  |
        b'8 e''4 e''8 |
        e''8 r8 r4 |

        b'8 r8 c''8 r8 |
        d''8 c''8 e''8 d''8 |
        c''8 e''4 e''16 d''16 |
        c''8 c''8 d''8 e''8 |

        d''8 r8 c''8 r8 |
        b'8 r8 d''8 r8 |
        c''8 e''8 c''8 e''8 |
        c''8 r8 r4 |

        d''8 ( c''8 ) c''8 ( b'8 ) |
        b'8 ( a'8 ) a'8 ( gis'8 ) |
        b'8 e'8 gis'8 b'8 |
        e''8 a'8 a'8 gis'8 |

        f'8 a'8 d''4 |
        e''8 r8 \tuplet 3/2 { a'8 ( a'8 a'8 ) } |
        gis'8 e'8 gis'8 b'8 |
        gis'8 e''16 e''16 e''8 e''8 |
    }
}

tenorsaxsectionb =  {
    b'8. gis'16 b'8. gis'16 |
    \tuplet 3/2 { b'8 ( c''8 d''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
    gis'8-. r8 b'8-. r8 |
    e''8-. r8 gis''8-. r8 |

    b'8. gis'16 b'8. gis'16 |
    \tuplet 3/2 { b'8 ( c''8 d''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
    gis'8 e'8 b'8 e'8 |
    gis'8 e''16 e''16 e''8 e''8 |

    e''2-^ |
    d''8 c''8 e''8 d''8 |
    c''8 a'8 c''8 e''8 |
    c''8 r8 c''8 d''8 |

    b'4.-^ d''8 |
    c''8 b'8 d''8 c''8 |
    b'8 d''8 g''8 d''8 |
    b'8 d''8 b'8 r8 |
}

tenorsaxsectionca =  {
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    b'8 e'8 gis'8 b'8 |
    e'8 ( a'8 ) a'8 ( gis'8 ) |
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    gis'8-. r8 b'8-. r8 |
    e''8-. r8 gis''8-. r8 |
    d''8 ( c''8 ) c''8 ( b'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    b'8 e'8 gis'8 b'8 |
    e''8 a'8 a'8 gis'8 |
    f'8 a'8 d''4 |
    e''8 b'8 a'4 |
}

tenorsaxsectioncb =  {
    gis'8 e'8 gis'8 b'8 |
    gis'8 e''16 e''16 e''8 e''8 |
}

tenorsaxsectionc =  {
    \repeat volta 2 { \tenorsaxsectionca \tenorsaxsectioncb }
}

tenorsaxcodamidi =  {
    \grace { s16 s16 s16 } gis'8-^ r8 a'8-^ r8 |
    gis'2-\fermata |
}

tenorsaxnotes =  {
    \key a \minor
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } gis'8-^ r8 a'8-^ r8 |
    gis'2-\fermata |
}

tenorsaxnotesmidi =  {
    \key a \minor
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionca
    \tenorsaxcodamidi
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s2 | s2 |
}

altosaxsectiona =  {
    \repeat volta 2 {
        dis''8\ff r8 e''8 r8 |
        dis''8 r8 \tuplet 3/2 { c''8 ( b'8 c''8 ) } |
        dis''2 ~ |
        dis''8 b'8 \acciaccatura { dis''16 } c''8 b'8 |

        dis''8 r8 e''8 r8 |
        fis''8 e''8 g''8 fis''8 |
        e''2 ~ |
        e''8 e''8 fis''8 g''8 |

        fis''8 r8 e''8 r8 |
        b''8 r8 dis''8 r8 |
        e''2 ~ |
        e''8 e''8 fis''8 g''8 |

        fis''8 ( e''8 ) e''8 ( dis''8 ) |
        dis''8 ( c''8 ) c''8 ( b'8 ) |
        dis''2 ~ |
        dis''8 ( c''8 ) c''8 ( b'8 ) |

        a'8 r8 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
        dis''8 r8 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'8 b''4 b''8 |
        r8 b''4 b''8 |
    }
}

altosaxsectionb =  {
    dis''8. b'16 dis''8. b'16 |
    \tuplet 3/2 { dis''8 ( e''8 fis''8 ) } \tuplet 3/2 { e''8 ( dis''8 c''8 ) } |
    b'8 r8 dis''8 r8 |
    fis''8 r8 b''8 r8 |
    dis''8. b'16 dis''8. b'16 |
    \tuplet 3/2 { dis''8 ( e''8 fis''8 ) } \tuplet 3/2 { e''8 ( dis''8 c''8 ) } |
    b'8 b'8 fis''8 dis''8 |
    b'8 b''16 b''16 b''8 b''8 |
    r8 b''8 a''8 g''8 |
    fis''8 e''8 g''8 fis''8 |
    e''8 e''8 b''8 g''8 |
    e''8-. r8 e''4-> |
    r8 a''8 g''8 fis''8 |
    e''8 d''8 fis''8 e''8 |
    d''8 d''8 a''8 fis''8 |
    d''8 a'8 d''8 dis''8 |
}

altosaxsectionca =  {
    fis''8 ( e''8 ) e''8 ( dis''8 ) |
    dis''8 ( c''8 ) c''8 ( b'8 ) |
    dis''2 ~ |
    dis''8 ( c''8 ) c''8 ( b'8 ) |

    fis''8 ( e''8 ) e''8 ( dis''8 ) |
    dis''8 ( c''8 ) c''8 ( b'8 ) |
    \tuplet 3/2 { b'8 ( fis'8 b'8 ) } \tuplet 3/2 { dis''8 ( b'8 dis''8 ) } |
    \tuplet 3/2 { fis''8 ( dis''8 fis''8 ) } b''8 r8 |

    fis''8 ( e''8 ) e''8 ( dis''8 ) |
    dis''8 ( c''8 ) c''8 ( b'8 ) |
    dis''2 ~ |
    dis''8 ( c''8 ) c''8 ( b'8 ) |

    a'8 r8 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
    dis''8 r8 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
}

altosaxsectioncb =  {
    b'8 b''16 b''16 fis''8 b''8 |
    b'8 b''16 b''16 fis''8 b''8 |
}

altosaxsectionc =  {
    \repeat volta 2 { \altosaxsectionca \altosaxsectioncb }
}

altosaxcodamidi =  {
    \acciaccatura { fis''16 [ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2-\fermata |
}

altosaxnotes =  {
    \key e \minor
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \stopStaff s2 \startStaff
    \acciaccatura { fis''16 [ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2-\fermata |
}

altosaxnotesmidi =  {
    \key e \minor
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxcodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro =  {
    s2 | s2 |
}

trumpetsectiona =  {
    \repeat volta 2 {
        gis'8\ff r8 a'8 r8 |
        gis'8 r8 \tuplet 3/2 { f'8 ( e'8 f'8 ) } |
        gis'2 ~ |
        gis'8 e'8 f'8 e'8 |
        gis'8 r8 a'8 r8 |
        b'8 a'8 c''8 b'8 |
        a'2 ~ |
        a'8 a'8 b'8 c''8 |
        b'8 r8 a'8 r8 |
        e''8 r8 gis'8 r8 |
        a'2 ~ |
        a'8 a'8 b'8 c''8 |
        b'8 ( a'8 ) a'8 ( gis'8 ) |
        gis'8 ( f'8 ) f'8 ( e'8 ) |
        gis'2 ~ |
        gis'8 f'8 f'8 e'8 |
        d'4 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        gis'8 r8 \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
        e'2 ~ |
        e'4 r4 |
    }
}

trumpetsectionb =  {
    gis'8. e'16 gis'8. e'16 |
    \tuplet 3/2 { gis'8 ( a'8 b'8 ) } \tuplet 3/2 { a'8 ( gis'8 f'8 ) } |
    e'8 r8 gis'8 r8 |
    b'8 r8 e''8 r8 |

    gis'8. e'16 gis'8. e'16 |
    \tuplet 3/2 { gis'8 ( a'8 b'8 ) } \tuplet 3/2 { a'8 ( gis'8 f'8 ) } |
    e'2 |
    e''2 |
    r8 e''8 d''8 c''8 |
    b'8 a'8 c''8 b'8 |
    a'2 ~ |
    a'8 r8 a'4-> |
    r8 d''8 c''8 b'8 |
    a'8 g'8 b'8 a'8 |
    g'2 ~ |
    g'4 r8 gis'8 |
}

trumpetsectionca =  {
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    gis'8 ( f'8 ) f'8 ( e'8 ) |
    gis'2 ~ |
    gis'8 ( f'8 ) f'8 ( e'8 ) |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    gis'8 ( f'8 ) f'8 ( e'8 ) |
    e'4 gis'4 |
    b'4 e''4 |
    b'8 ( a'8 ) a'8 ( gis'8 ) |
    gis'8 ( f'8 ) f'8 ( e'8 ) |
    gis'2 ~ |
    gis'8 ( f'8 ) f'8 ( e'8 ) |
    d'4 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
    gis'4 \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
}

trumpetsectioncb =  {
    e'2 |
    e'4 r4 |
}

trumpetsectionc =  {
    \repeat volta 2 { \trumpetsectionca \trumpetsectioncb }
}

trumpetcodamidi =  {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    << e''2\fermata \\ e'2 >> |
}

trumpetnotes =  {
    \key a \minor
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \stopStaff s2 \startStaff
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    << e''2\fermata \\ e'2 >> |
}

trumpetnotesmidi =  {
    \key a \minor
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro =  {
    s2 | s2 |
}

trombonesectiona =  {
    \repeat volta 2 {
        \repeat percent 2 { d8\ff r8 d8 r8 | }
        \repeat percent 2 { d8 d'8 a8 d'8 | }

        \repeat percent 2 { d8 r8 d8 r8 | }
        \repeat percent 2 { g8 g8 d8 g8 | }

        g8 r8 g8 r8 |
        d8 r8 d8 r8 |
        g2 ~ |
        g8 d'8 ( bes8 g8 ) |

        a4 g4 |
        fis4 ees4 |
        d8 d'8 a8 d'8 |
        a8 r8 d8 r8 |

        c8 r8 g,8 r8 |
        c8 r8 c8 r8 |
        d2 |
        d8 d16 d16 a,8 d8 |
    }
}

trombonesectionb =  {
    d4 d4 |
    fis4 a,4 |
    \repeat percent 2 { d8 r8 d8 r8 | }

    d4 d4 |
    fis4 a,4 |
    d8 d'8 a8 d'8 |
    d8 d'16 d'16 d'8 d'8 |

    g8-> r8 d8 r8 |
    fis8 r8 d8 r8 |
    g8 d'8 bes8 d'8 |
    g8 d'8 bes8 g8 |

    f8-> r8 c8 r8 |
    ees8 r8 c8 r8 |
    f8 c'8 c8 c'8 |
    f8 c8 f8 r8 |
}

trombonesectionca =  {
    a4 g4 |
    fis4 ees4 |
    d2 ~ |
    d8 d'8 a8 d'8 |
    a4 g4 |
    fis4 ees4 |
    d4 a4 |
    fis4 d8 r8 |
    a4 g4 |
    fis4 ees4 |
    d2 ~ |
    d8 ees8 ees8 d8 |
    c8 r8 \tuplet 3/2 { bes8 ( a8 g8 ) } |
    fis8 r8 \tuplet 3/2 { ees8 ( d8 c8 ) } |
}

trombonesectioncb =  {
    d2 ~ |
    d8 d16 d16 a,8 d8 |
}

trombonesectionc =  {
    \repeat volta 2 { \trombonesectionca \trombonesectioncb }
}

trombonecodamidi =  {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->-\fermata |
}

trombonenotes =  {
    \key g \minor
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->-\fermata |
}

trombonenotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonecodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro =  {
    s2 | s2 |
}

violinsectiona =  {
    \repeat volta 2 {
        fis''8\ff r8 g''8 r8 |
        fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 ees''8 ) } |
        fis''2 ~ |
        fis''8 d''8 ees''8 d''8 |

        fis''8 r8 g''8 r8 |
        a''8 g''8 bes''8 a''8 |
        g''2 ~ |
        g''8 g''8 a''8 bes''8 |

        a''8 r8 g''8 r8 |
        d'''8 r8 fis''8 r8 |
        g''2 ~ |
        g''8 g''8 a''8 bes''8 |

        a''8 ( g''8 ) g''8 ( fis''8 ) |
        fis''8 ( ees''8 ) ees''8 ( d''8 ) |
        fis''2 ~ |
        fis''8 ees'' ees''8 d''8 |

        c''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        fis''4 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        d''2 ~ |
        d''4 r4 |
    }
}

violinsectionb =  {
    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 r8 fis''8 r8 |
    a''8 r8 d'''8 r8 |

    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''2 |
    d'''2 |

    r8 d'''8 c'''8 bes''8 |
    a''8 g''8 bes''8 a''8 |
    g''2 ~ |
    g''8 r8 g''4-> |
    r8 c'''8 bes''8 a''8 |
    g''8 f''8 a''8 g''8 |
    f''2 ~ |
    f''4 r8 fis''8 |
}

violinsectionca =  {
    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    fis''2 ~ |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    << { d''4 fis''4 } \\ { \tuplet 3/2 { d''8 ( a'8 d''8 ) } \tuplet 3/2 { fis''8 ( d''8 fis''8 ) } } >> |
    << { a''4 } \\ { \tuplet 3/2 { a''8 ( fis''8 a''8 ) } } >> d'''8 r8 |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    fis''2 ~ |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |

    c''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
}

violinsectioncb =  {
    d''2 ~ |
    d''4 r4 |
}

violinsectionc =  {
    \repeat volta 2 { \violinsectionca \violinsectioncb }
}

violincodamidi =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

violinnotes =  {
    \key g \minor
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

violinnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violincodamidi
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
    s2 | s2 |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        < a' d'' fis'' >8\ff r8 < bes' d'' g'' >8 r8 |
        < a' d'' fis'' >8 r8 \tuplet 3/2 { ees''8 ( d''8 ees''8 ) } |
        < a' d'' fis'' >2 ~ |
        < a' d'' fis'' >8 d''8 \acciaccatura { fis''16 } ees''8 d''8 |

        < a' d'' fis'' >8 r8 < bes' d'' g'' >8 r8 |
        << { a''8 g''8 bes''8 a''8 } \\ { c''2 } >> |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >8 g''8 a''8 bes''8 |

        a''8 r8 g''8 r8 |
        d'''8 r8 < c'' d'' fis'' >8 r8 |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >8 g''8 a''8 bes''8 |

        a''8 ( g''8 ) g''8 ( fis''8 ) |
        fis''8 ( ees''8 ) ees''8 ( d''8 ) |
        < a' d'' fis'' >2 ~ |
        < a' d'' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

        c''8 r8 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
        < fis' a' d'' >2 ~ |
        < fis' a' d'' >4 r4 |
    }
}

pianorightuppersectionb =  {
    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    d''8 r8 < d'' fis'' >8-. r8 |
    < fis'' a'' >8-. r8 < fis'' a'' d''' >8-. r8 |

    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    < fis' a' d'' >2 |
    r8 < d'' d''' >16 < d'' d''' >16 < d'' d''' >8 < d'' d''' >8 |

    r8 d'''8 c'''8 bes''8 |
    a''8 g''8 bes''8 a''8 |
    < bes' d'' g'' >2 ~ |
    < bes' d'' g'' >8 r8 g''4-> |

    r8 c'''8 bes''8 a''8 |
    g''8 f''8 a''8 g''8 |
    < a' c'' f'' >2 ~ |
    < a' c'' f'' >4 r8 fis''8 |
}

pianorightuppersectionca =  {
    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    < a' d'' fis'' >2 ~ |
    < a' d'' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    \tuplet 3/2 { d''8 ( a'8 d'' ) } \tuplet 3/2 { fis''8 ( d'' fis''8 ) } |
    \tuplet 3/2 { a''8 ( fis''8 a''8 ) } d'''8 r8 |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    < a' d'' fis'' >2 ~ |
    < a' d'' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

    c''8 r8 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 c''8 ) } |
}

pianorightuppersectioncb =  {
    < fis' a' d'' >2 ~ |
    < fis' a' d'' >4 r4 |
}

pianorightuppersectionc =  {
    \repeat volta 2 { \pianorightuppersectionca \pianorightuppersectioncb }
}

pianorightuppercodamidi =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } < fis'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    < fis' a' d'' >2-\fermata |
}

pianorightuppernotes =  {
    \key g \minor
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } < fis'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    < fis' a' d'' >2-\fermata |
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro =  {
    s2 | s2 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        d8 d'8 bes8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        d8 d'8 bes8 d'8 |
        d8 d'8 a8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        g,8 g8 d8 g8 |
        d8 < fis c' >8 d8 < fis c' >8 |
        g8 < bes d' >8 d8 < bes d' >8 |
        g8 ( d'8 bes8 g8 ) |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        d8 d'8 a8 d'8 |
        d8 d'16 d'16 a'8 d'8 |
    }
}

pianoleftuppersectionb =  {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    d8 d'8 a8 d'8 |
    d8 < a d' >8 c8 < g c' >8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    g8-> < bes d' >8 d8 < bes d' >8 |
    fis8 < a d' >8 d8 d'8 |
    g8 < bes d' >8 d8 < bes d' >8 |
    g8 d'8 bes8 g8 |

    f8 < a c' >8 c8 c'8 |
    ees8 < g bes c' >8 c8 c'8 |
    f8 < a c' >8 c8 < a c' >8 |
    f8 ( c8 f8 ) r8 |
}

pianoleftuppersectionca =  {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d4 a4 |
    fis4 < d d' >8 r8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    c8 c'8 g8 c'8 |
    c8 c'8 ees8 c'8 |
}

pianoleftuppersectioncb =  {
    d8 d'8 a8 d'8 |
    d8 d'16 d'16 a8 d'8 |
}

pianoleftuppersectionc =  {
    \repeat volta 2 { \pianoleftuppersectionca \pianoleftuppersectioncb }
}

pianoleftuppercodamidi =  {
    \grace { s16 s16 s16 } < d d' >8 r8 < a, a >8 r8 |
    < d, d >2-\fermata |
}

pianoleftuppernotes =  {
    \key g \minor
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } < d d' >8 r8 < a, a >8 r8 |
    < d, d >2-\fermata |
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionca
    \pianorightuppercodamidi
}

pianoleftnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionca
    \pianoleftuppercodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro =  {
    s2 | s2 |
}

accordionrightuppersectiona =  {
    \repeat volta 2 {
        < a' d'' fis'' >8\ff r8 < bes' d'' g'' >8 r8 |
        < a' d'' fis'' >8 r8 \tuplet 3/2 { ees''8 d''8 ees''8 } |
        < a' d'' fis'' >2 ~ |
        < a' d'' fis'' >8 d''8 \acciaccatura { fis''16 } ees''8 d''8 |

        < a' d'' fis'' >8 r8 < bes' d'' g'' >8 r8 |
        < c'' a'' >8 < bes' g'' >8 < d'' bes'' >8 < c'' a'' >8 |
        < bes' g'' >2 ~ |
        < bes' g'' >8 < bes' g'' >8 < c'' a'' >8 < d'' bes'' >8 |

        < c'' a'' >8 r8 < bes' g'' >8 r8 |
        < d'' d''' >8 r8 < c'' d'' fis'' >8 r8 |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >8 g''8 a''8 bes''8 |

        a''8 ( g''8 ) g''8 ( fis''8 ) |
        fis''8 ( ees''8 ) ees''8 ( d''8 ) |
        < a' fis'' >2 ~ |
        < a' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

        c''8 r8 \tuplet 3/2 { bes''8 a''8 g''8 } |
        fis''8 r8 \tuplet 3/2 { ees''8 d''8 c''8 } |
        d''2 ~ |
        d''4 r4 |
    }
}

accordionrightuppersectionb =  {
    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 g''8 a''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    d''8 r8 < a' d'' fis'' >8 r8 |
    < d'' fis'' a'' >8-. r8 < fis'' a'' d''' >8-. r8 |

    fis''8. d''16 fis''8. d''16 |
    \tuplet 3/2 { fis''8 g''8 a''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    d''2 ~ |
    d''8 < d'' d''' >16 < d'' d''' >16 < d'' d''' >8 < d'' d''' >8 |

    r8 < d'' d''' >8 < d'' c''' >8 < d'' bes'' >8 |
    < c'' a'' >8 < bes' g'' >8 < d'' bes'' >8 < c'' a'' >8 |
    < bes' g'' >2 ~ |
    < bes' g'' >8 r8 < bes' e'' g'' >4 |

    << { r8 < a'' c''' >8 < g'' bes'' >8 < f'' a'' >8 } \\ { c''2 } >> |
    < bes' g'' >8 < a' f'' >8 < c'' a'' >8 < bes' g'' >8 |
    < a' f'' >2 ~ |
    < a' f'' >4. fis''8 |
}

accordionrightuppersectionca =  {
    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    < a' fis'' >2 ~ |
    < a' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    \tuplet 3/2 { d''8 a'8 d'' } \tuplet 3/2 { fis''8 d'' fis''8 } |
    \tuplet 3/2 { a''8 fis''8 a''8 } < fis'' d''' >8 r8 |

    a''8 ( g''8 ) g''8 ( fis''8 ) |
    fis''8 ( ees''8 ) ees''8 ( d''8 ) |
    < a' fis'' >2 ~ |
    < a' fis'' >8 ( ees''8 ) ees''8 ( d''8 ) |

    c''8 r8 \tuplet 3/2 { bes''8 a''8 g''8 } |
    fis''8 r8 \tuplet 3/2 { ees''8 d''8 c''8 } |
}

accordionrightuppersectioncb =  {
    d''2 ~ |
    d''4 r4 |
}

accordionrightuppersectionc =  {
    \repeat volta 2 { \accordionrightuppersectionca \accordionrightuppersectioncb }
}

accordionrightuppercodamidi =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8^.^> r8 < a' cis'' g'' a'' >8^.^> r8 |
    < fis' a' d'' >2_>^\fermata |
}

accordionrightuppernotes =  {
    \key g \minor
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8^.^> r8 < a' cis'' g'' a'' >8^.^> r8 |
    < fis' a' d'' >2_>^\fermata |
}

%-------------------------------------------------

accordionrightlowernotes =  {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro =  {
    s2 | s2 |
}

accordionleftuppersectiona =  {
    \repeat volta 2 {
        d,8 d'8^"M" g,8 g8^"m" |
        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |

        d,8 d'8 g,8 g8^"m" |
        fis,8_3_-^"B.S." g,8_4 d,8_2 fis,8_3_- |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |

        d,8 d'8^"7" g,8 g8^"m" |
        d,8 d'8^"7" d,8 d'8 |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |

        g,8 g8 d,8 d'8^"M" |
        d,8_3 c'8_5^"m" a,8 d'8^"M" |
        d,8 d'8 a,8 d'8 |
        d,8^"B.S." a,8 d,8 d'8^"M" |

        a,8 c'8^"m" c8 c'8 |
        d,8 d'8^"M" a,8_3 c'8_5^"m" |
        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
    }
}

accordionleftuppersectionb =  {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 d,8^"B.S." a,8 |
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |

    d,8 d'8 a,8 d'8 |
    d,8 d'8 d,8^"B.S." a,8 |
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8^"M" a,8 d'8 |

    g,8 g8^"m" d,8 g8 |
    g,8 g8 d,8 d'8^"M" |
    g,8 g8^"m" d,8 g8 |
    g,8 g8 c8 c'8^"7" |

    f,8 f8^"M" c8 f8 |
    f,8 f8 c8 c'8^"7" |
    f,8 f8^"M" c8 f8 |
    f,8_3^"B.S." c,8_2 f,8_3 d,8_4_- |
}

accordionleftuppersectionca =  {
    g,8 g8^"m" d,8 d'8^"M" |
    a,8_3 c'8_5^"m" a,8 d'8^"M" |
    d,8 d'8 a,8 d'8 |
    d,8^"B.S." a,8 d,8 d'8^"M" |

    g,8 g8^"m" d,8 d'8^"M" |
    a,8_3 c'8_5^"m" a,8 d'8^"M" |
    d,8 d'8 a,8 d'8 |
    d,8 d'8 < d, d' >8 r8 |

    g,8 g8^"m" d,8 d'8^"M" |
    a,8_3 c'8_3^"m" a,8 d'8^"M" |
    d,8 d'8 a,8 d'8 |
    d,8^"B.S." a,8 d,8 d'8^"M" |

    a,8 c'8^"m" c8 c'8 |
    d,8 d'8^"M" a,8_3 c'8_5^"m" |
}

accordionleftuppersectioncb =  {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectionc =  {
    \repeat volta 2 { \accordionleftuppersectionca \accordionleftuppersectioncb }
}

accordionleftuppercodamidi =  {
    \grace { s16 s16 s16 } < d, d' >8^.^>^"M" r8 < a, a >8^.^>^"7" r8 |
    < d, d' >2^>^"M"_\fermata |
}

accordionleftuppernotes =  {
    \key g \minor
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } < d, d' >8^.^>^"M" r8 < a, a >8^.^>^"7" r8 |
    < d, d' >2^>^"M"_\fermata |
}

%-------------------------------------------------

accordionleftlowernotes =  {
    \key g \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionca
    \accordionrightuppercodamidi
}

accordionleftnotesmidi =  {
    \key g \minor
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionca
    \accordionleftuppercodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    s2 | s2 |
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
}

drumshighsectionb = \drummode {
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

drumshighsectionca = \drummode {
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

drumshighsectioncb = \drummode {
    s2 |
    s2 |
}

drumshighsectionc = \drummode {
    \repeat volta 2 { \drumshighsectionca \drumshighsectioncb }
}

drumshighcodamidi = \drummode {
    \grace { s16 s16 s16 } s2 |
    s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 |
    s2 |
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionca
    \drumshighcodamidi
}

drumslowextraintro = \drummode {
    s2 | s2 |
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
}

drumslowsectionb = \drummode {
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

drumslowsectionca =  {
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

drumslowsectioncb =  {
    s2 |
    s2 |
}

drumslowsectionc =  {
    \repeat volta 2 { \drumslowsectionca \drumslowsectioncb }
}

drumslowcodamidi =  {
    \grace { s16 s16 s16 } s2 |
    s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \stopStaff s2 \startStaff
    \grace { s16 s16 s16 } s2 |
    s2 |
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionca
    \drumslowcodamidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d4 g4:min | d2 | s2 | s2 | d4 g4:min | d2 | g2:min | s2 |
}

previewnotes = {
    \key g \minor
    \time 2/4
    fis''8 r8 g''8 r8 |
    fis''8 r8 \tuplet 3/2 { ees''8 ( d''8 ees''8 ) } |
    fis''2 ~ |
    fis''8 d''8 ees''8 d''8 |
    fis''8 r8 g''8 r8 |
    a''8 g''8 bes''8 a''8 |
    g''2 ~ |
    g''8 g''8 a''8 bes''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

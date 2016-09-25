\version "2.18.2"

bandmintro = { s2 | \breakIN }

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
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
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 | \breakBsxt
        s2 | \breakBsvt s2 |
    }
    \breakB
}

bandmsectionca = {
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix
}

bandmsectioncb = { s2 | \breakCsev }

bandmsectioncc = { s2 | \breakCeit }

bandmsectioncd = { s2 | }

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        \bandmsectionca
        \bar "||" \markTC \positionTC
        \bandmsectioncb
    }
    \alternative { { \bandmsectioncc } { \bandmsectioncd } }
    \markDS \positionDS
    \breakC
}

blankmeasure = {
    \stopStaff s2 \startStaff \breakBL
}

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
    \bandmsectionc
    \stopStaff s2 \startStaff \breakBL
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

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
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

metronomesectionca = { s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectioncb = { s2 | }

metronomesectioncc = { s2 | }

metronomesectioncd = { s2 | }

metronomesectionc = {
    \repeat volta 2 {
        \metronomesectionca
        \metronomesectioncb
    }
    \alternative { { \metronomesectioncc } { \metronomesectioncd } }
}

metronomecoda = { \grace { s16 s16 s16 } s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 130
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionca

    \tempo 4 = 100
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = {
    s2 | s2 |
}

melodyintro = {
    r8 d''8\ff ( g'' a'' ) |
}

melodysectiona = {
    \repeat volta 2 {
        bes''2 ~ |
        bes''8 d'' ( g'' a'' ) |
        bes''2 ~ |
        bes''8 d'' ( g'' a'' ) |

        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        a''4 \tuplet 3/2 { a''8 ( g''8 fis''8 ) } |
        fis''2 ~ |
        fis''8 d''8 fis''8 g''8 |
        a''2 ~ |
        a''8 d''8 ( fis''8 g''8 ) |
        a''2 ~ |
        a''8 d''8 ( fis''8 g''8 ) |
        a''4 c'''4 |
        \tuplet 3/2 { c'''8 ( bes'' a'' ) } \tuplet 3/2 { bes'' ( a'' g'' ) } |
    }
    \alternative {
        {
            g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
            d''8 d''8 ( g''8 a''8 ) |
        }
        {
            g''2 ~ |
            g''2 |
        }
    }
}

melodysectionb = {
    \repeat volta 2 {
        d'8 \< ees'8 fis'8 g'8 |
        a'8 bes'8 c''8 d''8 \! |
        ees''2 ~ |
        ees''2 |
        d''2 ~ |
        d''2 |
        c''2 ~ |
        c''2 |
        bes'2 ~ |
        bes'2 |
        a''8 r8 fis''8 r8 |
        g''4 r4 |
        a''8 r8 fis''8 r8 |
        g''4 r4 |
        \tuplet 3/2 { c'''8 ( bes'' a'' ) } \tuplet 3/2 { bes'' ( a'' g'' ) } |
        \tuplet 3/2 { a''8 ( g'' fis'' ) } \tuplet 3/2 { g'' ( fis'' ees'' ) } |
        d''2 ~ |
        d''4 r4 |
    }
}

melodysectionca = {
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
    r8 d''8 fis''8 a''8 |
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
}

melodysectioncb = {
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
}

melodysectioncc = {
    d''8 r8 d''8 r8 |
}

melodysectioncd = {
    d''8 r8 d''8 r8 |
}

melodysectionc = {
    \repeat volta 2 {
        \melodysectionca
        \melodysectioncb
    }
    \alternative { { \melodysectioncc } { \melodysectioncd } }
}

melodycoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8-> r8 a''8 r8 | d''2-\fermata | 
}

melody = {
    \key g \minor
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \stopStaff s2 \startStaff
    \melodycoda
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

    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionca
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = {
    s2 | s2 |
}

tenorharmonyintro = {
    r2 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        r8 e''8\ff a''8 c'''8 |
        e''8 r8 r4 |
        r8 e''8 a''8 c'''8 |
        e''8 r8 r4 |
        e''4 \tuplet 3/2 { e''8 ( d'' c'' ) } |
        d''4 \tuplet 3/2 { d''8 ( c'' b' ) } |
        b'8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        r8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        r8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        gis''4 f''4 |
        e''4 \tuplet 3/2 { e''8 ( d'' c'' ) } |
    }
    \alternative {
        {
            c''4 c''8 c''8 |
            e''8 r8 r4 |
        }
        {
            c''8 e''8 c''8 e''8 |
            c''8 e''8 c''8 r8 |
        }
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        e''2 |
        gis''8 a''8 gis''8 a''8 |
        d''8 f''8 a''8 f''8 |
        d''8 f''8 a''8 r8 |
        c''8 e''8 a''8 e''8 |
        c''8 e''8 a''8 c'''8 |
        b''8 e''8 gis''8 b''8 |
        e''8 gis''8 b''8 r8 |
        a''8 e''8 c''8 e''8 |
        c''8 e''8 a''8 r8 |
        d''8 r8 d''8 r8 |
        c''4 r4 |
        d''8 r8 d''8 r8 |
        c''8 a'8 c''8 e''8 |
        \tuplet 3/2 { f''8 ( e'' d'' ) } \tuplet 3/2 { e'' ( d'' c''8 ) } |
        \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c''8 ( b' a' ) } |
        gis'8 b'8 gis'8 b'8 |
        gis'8 b'16 b'16 b'8 b'8 |
    }
}

tenorharmonysectionca = {
    \tuplet 3/2 { gis''8 ( a'' b'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
    b'2 |
    \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c'' ( b' a' ) } |
    \tuplet 3/2 { gis''8 ( a'' b'' ) } \tuplet 3/2 { a''8 ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
}

tenorharmonysectioncb = {
    \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c'' ( b' a' ) } |
}

tenorharmonysectioncc = {
    gis'8 e''8 e''8 e''8 |
}

tenorharmonysectioncd = {
    gis'8 r8 gis'8 r8 |
}

tenorharmonysectionc = {
    \repeat volta 2 {
        \tenorharmonysectionca
        \tenorharmonysectioncb
    }
    \alternative { { \tenorharmonysectioncc } { \tenorharmonysectioncd } }
}

tenorharmonycoda = {
    \grace { s16 s16 s16 } b'8 r8 a'8 r8 | gis'2-\fermata | 
}

tenorharmony =  \transpose c' bes {
    \key a \minor
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \stopStaff s2 \startStaff
    \tenorharmonycoda
}

tenorharmonymidi =  \transpose c' bes {
    \key a \minor
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = {
    s2 | s2 |
}

altoharmonyintro = { s2 | }

altoharmonysectiona = {
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

altoharmonysectionb = {
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
    }
}

altoharmonysectionca = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

altoharmonysectioncb = {
    s2 |
}

altoharmonysectioncc = {
    s2 |
}

altoharmonysectioncd = {
    s2 |
}

altoharmonysectionc = {
    \repeat volta 2 {
        \altoharmonysectionca
        \altoharmonysectioncb
    }
    \alternative { { \altoharmonysectioncc } { \altoharmonysectioncd } }
}

altoharmonycoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

altoharmony = {
    \key g \minor
    \time 2/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \stopStaff s2 \startStaff
    \altoharmonycoda
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

    \altoharmonyintro
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

counterintro = { r2 | }

countersectiona = {
    \repeat volta 2 {
        r8 d8\f g8 a8 |
        bes2 ~ |
        bes8 d8 g8 a8 |
        bes2 |

        bes8 r8 d8 r8 |
        g8 r8 d8 r8 |
        d8 r8 a,8 r8 |
        d2 ~ |
        d8 d8 fis8 g8 |
        a2 ~ |
        a8 d8 fis8 g8 |
        a8 r8 d8 r8 |
        d4 c'4 |
        c'4 bes8 a8 |
    }
    \alternative {
        {
            g8 r8 g8 r8 |
            d8 r8 r4 |
        }
        {
            g8 g8 d8 bes,8 |
            g,8 d8 g8 r8 |
        }
    }
}

countersectionb = {
    \repeat volta 2 {
        d8 \< ees8 fis8 g8 |
        a8 bes8 c'8 d'8 \! |
        c'2 ~ |
        c'2 |
        bes2 ~ |
        bes2 |

        a2 ~ |
        a2 |
        g2 ~ |
        g8 d'8 bes8 g8 |

        d8 r8 d8 r8 |
        g8 d'8 bes8 g8|
        d8 r8 d8 r8 |
        g8 d'8 bes8 g8 |

        c'4 bes4 |
        a4 g4 |
        \repeat percent 2 { d8 d'8 a8 d'8 | }
    }
}

countersectionca = {
    fis4 g4 |
    d8 ees8 fis8 r8 |
    r8 d8 fis8 g8 |
    a4 g4 |
    fis4 g4 |
    d8 ees8 fis8 r8 |
}

countersectioncb = {
    a4 g4 |
}

countersectioncc = {
    d8 d'8 d'8 d'8 |
}

countersectioncd = {
    d8 r8 d8-^ r8 |
}

countersectionc = {
    \repeat volta 2 {
        \countersectionca
        \countersectioncb
    }
    \alternative { { \countersectioncc } { \countersectioncd } }
}

countercoda = {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-^ r8 a,8 r8 | d2-\fermata | 
}

counter =  \transpose c c' {
    \key g \minor
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \stopStaff s2 \startStaff
    \countercoda
}

countermidi =  \transpose c c' {
    \key g \minor
    \time 2/4
    \preintro
    \counterextraintro
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc

    \counterintro
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

basslineintro = { r2 | }

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
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 g8 |
            < d, d >8 r8 r4 |
        }
        {
            g,8 g8 d8 bes,8 |
            g,8 d8 g8 r8 |
        }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        d8 ees8 fis8 g8 |
        a8 bes8 c'8 d'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        < d, d >8-. r8 < d, d >8-. r8 |
        g,8 d8 bes,8 g,8 |
        < d, d >8-. r8 < d, d >8-. r8 |
        g,8 d8 bes,8 g,8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
}

basslinesectionca = {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 < a d' >8 c8 < g c' >8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
}

basslinesectioncb = {
    d8 < a d' >8 c8 < g c' >8 |
}

basslinesectioncc = {
    d8 < d d' >8 < d d' >8 < d d' >8 |
}

basslinesectioncd = {
    d8 r8 < d, d >8-> r8 |
}

basslinesectionc = {
    \repeat volta 2 {
        \basslinesectionca
        \basslinesectioncb
    }
    \alternative { { \basslinesectioncc } { \basslinesectioncd } }
}

basslinecoda = {
    \grace { s16 s16 s16 } < d d' >8 r8 < a, a >8 r8 | < d, d >2-\fermata | 
}

bassline = {
    \key g \minor
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \stopStaff s2 \startStaff
    \basslinecoda
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

    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = {
    s2 | s2 |
}

guitarintro = { s2 | }

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

guitarsectionb = {
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
    }
}

guitarsectionca = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarsectioncb = {
    s2 |
}

guitarsectioncc = {
    s2 |
}

guitarsectioncd = {
    s2 |
}

guitarsectionc = {
    \repeat volta 2 {
        \guitarsectionca
        \guitarsectioncb
    }
    \alternative { { \guitarsectioncc } { \guitarsectioncd } }
}

guitarcoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

guitarnotes = {
    \key g \minor
    \time 2/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \stopStaff s2 \startStaff
    \guitarcoda
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

    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionca
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s2 | s2 |
}

chordlettersintro = { s2 | }

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        g2:min |
        g2:min |
        g2:min |
        g2:min |
        g2:min |
        g2:min |
        d2 |
        d2 |
        d2 |
        d2 |
        d2 |
        d2 |
        d2 |
        d2 |
    }
    \alternative {
        {
            g2:min |
            d2 |
        }
        {
            g2:min |
            g2:min |
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        d2 |
        d2 |
        c2:min |
        c2:min |
        g2:min |
        g2:min |
        d2 |
        d2 |
        g2:min |
        g2:min |
        d2:7 |
        g2:min |
        d2:7 |
        g2:min |
        c2:min |
        c2:min |
        d2 |
        d2 |
    }
}

chordletterssectionca = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
    d2 |
    d4 c4:min |
    d2 |
    d2 |
}

chordletterssectioncb = \chordmode {
    \chordChangesOff
    d4
    \chordChangesOn
    c4:min |
}

chordletterssectioncc = \chordmode {
    d2 |
}

chordletterssectioncd = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordletterssectionca
        \chordletterssectioncb
    }
    \alternative { { \chordletterssectioncc } { \chordletterssectioncd } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { d8. }
    \chordChangesOn
    d4 a4:7 | d2 | 
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \stopStaff s2 \startStaff
    \chordChangesOff
    \grace { d8. }
    \chordChangesOn
    d4 a4:7 | d2 | 
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

flutenotesmidi =  \transpose c c, {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = {
    s2 | s2 |
}

clarinetintro = {
    r8 e''8 a''8 b''8 |
}

clarinetsectiona = {
    \repeat volta 2 {
        c'''2\ff ~ |
        c'''8 e''8 a''8 b''8 |
        c'''2 ~ |
        c'''8 e''8 a''8 b''8 |

        c'''4 \tuplet 3/2 { c'''8 ( b''8 a''8 ) } |
        b''4 \tuplet 3/2 { b''8 ( a''8 gis''8 ) } |
        gis''2 ~ |
        gis''8 e''8 gis''8 a''8 |

        b''2 ~ |
        b''8 e''8 gis''8 a''8 |
        b''2 ~ |
        b''8 e''8 gis''8 a''8 |
        b''4 d'''4 |
        \tuplet 3/2 { d'''8 ( c''' b'' ) } \tuplet 3/2 { c''' ( b'' a'' ) } |
    }
    \alternative {
        {
            a''8. gis''16 \tuplet 3/2 { a''8 ( gis''8 f''8 ) } |
            e''8 e''8 a''8 b''8 |
        }
        {
            a''2 ~ |
            a''4. r8 |
        }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        e''8 f''8 gis''8 a''8 |
        b''8 c'''8 b''8 a''8 |
        f''2 ~ |
        f''4. a''8 |
        e''2 ~ |
        e''8 a''8 c'''8 e'''8 |
        d'''2 ~ |
        d'''2 |
        c'''2 ~ |
        c'''4. r8 |
        b''8 r8 gis''8 r8 |
        a''4 r4 |
        b''8 r8 gis''8 r8 |
        a''4 r4 |
        \tuplet 3/2 { d'''8 ( c''' b'' ) } \tuplet 3/2 { c'''8 ( b'' a'' ) } |
        \tuplet 3/2 { b''8 ( a'' gis'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
        e''2 ~ |
        e''4 r4 |
    }
}

clarinetsectionca = {
    \tuplet 3/2 { gis''8 ( a'' b''8 ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
    r8 e''8 gis''8 b''8 |
    \tuplet 3/2 { b''8 ( a'' gis'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
    \tuplet 3/2 { gis''8 ( a'' b'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
}

clarinetsectioncb = {
    \tuplet 3/2 { b''8 ( a'' gis'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
}

clarinetsectioncc = {
    e''8 e'' e'' e'' |
}

clarinetsectioncd = {
    e''8 r8 e''8 r8 |
}

clarinetsectionc = {
    \repeat volta 2 {
        \clarinetsectionca
        \clarinetsectioncb
    }
    \alternative { { \clarinetsectioncc } { \clarinetsectioncd } }
}

clarinetcoda = {
    \acciaccatura { b''16 [ cis'''16 dis'''16 ] } e'''8-^ r8 b''8 r8 |
    e''2-\fermata | 
}

clarinetnotes = {
    \key a \minor
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \stopStaff s2 \startStaff
    \clarinetcoda
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

    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = {
    s2 | s2 |
}

tenorsaxintro = {
    r2 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        r8 e''8\ff a''8 c'''8 |
        e''8 r8 r4 |
        r8 e''8 a''8 c'''8 |
        e''8 r8 r4 |
        e''4 \tuplet 3/2 { e''8 ( d'' c'' ) } |
        d''4 \tuplet 3/2 { d''8 ( c'' b' ) } |
        b'8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        r8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        r8 e''8 gis''8 b''8 |
        e''8 r8 r4 |
        gis''4 f''4 |
        e''4 \tuplet 3/2 { e''8 ( d'' c'' ) } |
    }
    \alternative {
        {
            c''4 c''8 c''8 |
            e''8 r8 r4 |
        }
        {
            c''8 e''8 c''8 e''8 |
            c''8 e''8 c''8 r8 |
        }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        e''2 |
        gis''8 a''8 gis''8 a''8 |
        d''8 f''8 a''8 f''8 |
        d''8 f''8 a''8 r8 |
        c''8 e''8 a''8 e''8 |
        c''8 e''8 a''8 c'''8 |
        b''8 e''8 gis''8 b''8 |
        e''8 gis''8 b''8 r8 |
        a''8 e''8 c''8 e''8 |
        c''8 e''8 a''8 r8 |
        d''8 r8 d''8 r8 |
        c''4 r4 |
        d''8 r8 d''8 r8 |
        c''8 a'8 c''8 e''8 |
        \tuplet 3/2 { f''8 ( e'' d'' ) } \tuplet 3/2 { e'' ( d'' c''8 ) } |
        \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c''8 ( b' a' ) } |
        gis'8 b'8 gis'8 b'8 |
        gis'8 b'16 b'16 b'8 b'8 |
    }
}

tenorsaxsectionca = {
    \tuplet 3/2 { gis''8 ( a'' b'' ) } \tuplet 3/2 { a'' ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
    b'2 |
    \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c'' ( b' a' ) } |
    \tuplet 3/2 { gis''8 ( a'' b'' ) } \tuplet 3/2 { a''8 ( gis'' f'' ) } |
    e''8 f''8 gis''8 r8 |
}

tenorsaxsectioncb = {
    \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c'' ( b' a' ) } |
}

tenorsaxsectioncc = {
    gis'8 e''8 e''8 e''8 |
}

tenorsaxsectioncd = {
    gis'8 r8 gis'8 r8 |
}

tenorsaxsectionc = {
    \repeat volta 2 {
        \tenorsaxsectionca
        \tenorsaxsectioncb
    }
    \alternative { { \tenorsaxsectioncc } { \tenorsaxsectioncd } }
}

tenorsaxcoda = {
    \grace { s16 s16 s16 } b'8 r8 a'8 r8 | gis'2-\fermata | 
}

tenorsaxnotes = {
    \key a \minor
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \stopStaff s2 \startStaff
    \tenorsaxcoda
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

    \tenorsaxintro
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

altosaxextraintro = {
    s2 | s2 |
}

altosaxintro = {
    r8 b'8 e''8 fis''8 |
}

altosaxsectiona = {
    \repeat volta 2 {
        g''2 ~ |
        g''8 b'8 e''8 fis''8 |
        g''2 ~ |
        g''8 b'8 e''8 fis''8 |

        g''4 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
        fis''4 \tuplet 3/2 { fis''8 ( e''8 dis''8 ) } |
        dis''8 ( b''8 b''8 fis''8 |
        b''8 ) b'8 dis''8 e''8 |
        fis''2 ~ |
        fis''8 b'8 dis''8 e''8 |
        fis''2 ~ |
        fis''8 b'8 dis''8 e''8 |
        fis''4 a''4 |
        \tuplet 3/2 { a''8 ( g'' fis'' ) } \tuplet 3/2 { g''8 ( fis'' e'' ) } |
    }
    \alternative {
        {
            e''8. dis''16 \tuplet 3/2 { e''8 ( dis'' c'' ) } |
            b'8 b'8 e''8 fis''8 |
        }
        {
            e''8 ( b'8 g'' fis''8 |
            e''8 b'8 e''8 ) r8 |
        }
    }
}

altosaxsectionb = {
    \repeat volta 2 {
        b8 \< c'8 dis'8 e'8 |
        fis'8 g'8 a'8 b'8 \! |
        c''8 ( a'8 fis'8 a'8 |
        c''8 fis'8 a'8 c''8 ) |
        b'8 ( g'8 e'8 g'8 |
        b'8 e'8 g'8 b'8 ) |
        a'8 ( fis'8 dis'8 fis'8 |
        a'8 dis'8 fis'8 a'8 ) |
        g'8 ( e'8 b8 e'8 |
        g'8 b'8 g'8 e'8 ) |
        fis'8-. r8 dis'8-. r8 |
        e'8 b'8 g'8 e'8 |
        fis''8-. r8 dis''8-. r8 |
        e''8 b''8 g''8 e''8 |
        \tuplet 3/2 { a''8 ( g'' fis'' ) } \tuplet 3/2 { g'' ( fis'' e'' ) } |
        \tuplet 3/2 { fis''8 ( e'' dis'' ) } \tuplet 3/2 { e'' ( dis'' c'' ) } |
        b'8 b'8 fis'8 b'8 |
        b'8 b'8 fis'8 b'8 |
    }
}

altosaxsectionca = {
    \tuplet 3/2 { dis''8 ( e'' fis'' ) } \tuplet 3/2 { e'' ( dis'' c'' ) } |
    b'8 c''8 dis''8 r8 |
    r8 b'8 dis''8 fis''8 |
    \tuplet 3/2 { fis''8 ( e'' dis'' ) } \tuplet 3/2 { e'' ( dis'' c'' ) } |
    \tuplet 3/2 { dis''8 ( e'' fis'' ) } \tuplet 3/2 { e'' ( dis'' c'' ) } |
    b'8 c''8 dis''8 r8 |
}

altosaxsectioncb = {
    \tuplet 3/2 { fis''8 ( e'' dis'' ) } \tuplet 3/2 { e'' ( dis'' c'' ) } |
}

altosaxsectioncc = {
    b'8 \acciaccatura { ais''16 } b''8 \acciaccatura { ais''16 } b''8 \acciaccatura { ais''16 } b''8 |
}

altosaxsectioncd = {
    b'8 r8 b''8-. r8 |
}

altosaxsectionc = {
    \repeat volta 2 {
        \altosaxsectionca
        \altosaxsectioncb
    }
    \alternative { { \altosaxsectioncc } { \altosaxsectioncd } }
}

altosaxcoda = {
    \acciaccatura { fis''16 [ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2-\fermata | 
}

altosaxnotes = {
    \key e \minor
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \stopStaff s2 \startStaff
    \altosaxcoda
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

    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = {
    s2 | s2 |
}

trumpetintro = {
    r8 e'8 a'8 b'8 |
}

trumpetsectiona = {
    \repeat volta 2 {
        c''2\ff ~ |
        c''8 e'8 a'8 b'8 |
        c''2 ~ |
        c''8 e'8 a'8 b'8 |
        c''4 \tuplet 3/2 { c''8 ( b' a'8 ) } |
        b'4 \tuplet 3/2 { b'8 ( a'8 gis'8 ) } |
        gis'2 ~ |
        gis'8 e'8 gis'8 a'8 |
        b'2 ~ |
        b'8 e'8 gis'8 a'8 |
        b'2 ~ |
        b'8 e'8 gis'8 a'8 |
        b'4 d''4 |
        \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c'' ( b' a' ) } |
    }
    \alternative {
        {
            a'8. gis'16 \tuplet 3/2 { a'8 ( gis' f' ) } |
            e'8 e'8 a'8 b'8 |
        }
        {
            a'2 ~ |
            a'2 |
        }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        e'8 \< f'8 gis'8 a'8 |
        b'8 c''8 d''8 e''8 \! |
        << {
            f''2 ~ |
            f''2 |
            e''2 ~ |
            e''2 |
            d''2 ~ |
            d''2 |
            c''2 ~ |
            c''2 |
        } \\ {
            d''2 ~ |
            d''2 |
            c''2 ~ |
            c''2 |
            b'2 ~ |
            b'2 |
            a'2 ~ |
            a'2 |
        } >>
        b'8 r8 gis'8 r8 |
        a'4 r4 |
        b'8 r8 gis'8 r8 |
        a'4 r4 |
        \tuplet 3/2 { d''8 ( c'' b' ) } \tuplet 3/2 { c''8 ( b' a' ) } |
        \tuplet 3/2 { b'8 ( a' gis' ) } \tuplet 3/2 { a'8 ( gis' f' ) } |
        e'2 ~ |
        e'4 r4 |
    }
}

trumpetsectionca = {
    \tuplet 3/2 { gis'8 ( a' b' ) } \tuplet 3/2 { a'8 ( gis' f' ) } |
    e'8 f'8 gis'8 r8 |
    r8 e'8 gis'8 b'8 |
    \tuplet 3/2 { b'8 ( a' gis' ) } \tuplet 3/2 { a'8 ( gis' f' ) } |
    \tuplet 3/2 { gis'8 ( a' b' ) } \tuplet 3/2 { a'8 ( gis' f' ) } |
    e'8 f'8 gis'8 r8 |
}

trumpetsectioncb = {
    \tuplet 3/2 { b'8 ( a' gis' ) } \tuplet 3/2 { a'8 ( gis' f' ) } |
}

trumpetsectioncc = {
    e'8 r8 e'8 r8 |
}

trumpetsectioncd = {
    e'8 r8 e'8 r8 |
}

trumpetsectionc = {
    \repeat volta 2 {
        \trumpetsectionca
        \trumpetsectioncb
    }
    \alternative { { \trumpetsectioncc } { \trumpetsectioncd } }
}

trumpetcoda = {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    << e''2-\fermata \\ e'2 >> | 
}

trumpetnotes = {
    \key a \minor
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \stopStaff s2 \startStaff
    \trumpetcoda
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

    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 |
}

tromboneintro = { r2 | }

trombonesectiona = {
    \repeat volta 2 {
        r8 d8\f g8 a8 |
        bes2 ~ |
        bes8 d8 g8 a8 |
        bes2 |

        bes8 r8 d8 r8 |
        g8 r8 d8 r8 |
        d8 r8 a,8 r8 |
        d2 ~ |
        d8 d8 fis8 g8 |
        a2 ~ |
        a8 d8 fis8 g8 |
        a8 r8 d8 r8 |
        d4 c'4 |
        c'4 bes8 a8 |
    }
    \alternative {
        {
            g8 r8 g8 r8 |
            d8 r8 r4 |
        }
        {
            g8 g8 d8 bes,8 |
            g,8 d8 g8 r8 |
        }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        d8 \< ees8 fis8 g8 |
        a8 bes8 c'8 d'8 \! |
        c'2 ~ |
        c'2 |
        bes2 ~ |
        bes2 |

        a2 ~ |
        a2 |
        g2 ~ |
        g8 d'8 bes8 g8 |

        d8 r8 d8 r8 |
        g8 d'8 bes8 g8|
        d8 r8 d8 r8 |
        g8 d'8 bes8 g8 |

        c'4 bes4 |
        a4 g4 |
        \repeat percent 2 { d8 d'8 a8 d'8 | }
    }
}

trombonesectionca = {
    fis4 g4 |
    d8 ees8 fis8 r8 |
    r8 d8 fis8 g8 |
    a4 g4 |
    fis4 g4 |
    d8 ees8 fis8 r8 |
}

trombonesectioncb = {
    a4 g4 |
}

trombonesectioncc = {
    d8 d'8 d'8 d'8 |
}

trombonesectioncd = {
    d8 r8 d8-^ r8 |
}

trombonesectionc = {
    \repeat volta 2 {
        \trombonesectionca
        \trombonesectioncb
    }
    \alternative { { \trombonesectioncc } { \trombonesectioncd } }
}

trombonecoda = {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-^ r8 a,8 r8 | d2-\fermata | 
}

trombonenotes = {
    \key g \minor
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \stopStaff s2 \startStaff
    \trombonecoda
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

    \tromboneintro
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
    r8 d''8\ff ( g'' a'' ) |
}

violinsectiona = {
    \repeat volta 2 {
        bes''2 ~ |
        bes''8 d'' ( g'' a'' ) |
        bes''2 ~ |
        bes''8 d'' ( g'' a'' ) |

        bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        a''4 \tuplet 3/2 { a''8 ( g''8 fis''8 ) } |
        fis''2 ~ |
        fis''8 d''8 fis''8 g''8 |
        a''2 ~ |
        a''8 d''8 ( fis''8 g''8 ) |
        a''2 ~ |
        a''8 d''8 ( fis''8 g''8 ) |
        a''4 c'''4 |
        \tuplet 3/2 { c'''8 ( bes'' a'' ) } \tuplet 3/2 { bes'' ( a'' g'' ) } |
    }
    \alternative {
        {
            g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
            d''8 d''8 ( g''8 a''8 ) |
        }
        {
            g''2 ~ |
            g''2 |
        }
    }
}

violinsectionb = {
    \repeat volta 2 {
        d'8 \< ees'8 fis'8 g'8 |
        a'8 bes'8 c''8 d''8 \! |
        ees''2 ~ |
        ees''2 |
        d''2 ~ |
        d''2 |
        c''2 ~ |
        c''2 |
        bes'2 ~ |
        bes'2 |
        a''8 r8 fis''8 r8 |
        g''4 r4 |
        a''8 r8 fis''8 r8 |
        g''4 r4 |
        \tuplet 3/2 { c'''8 ( bes'' a'' ) } \tuplet 3/2 { bes'' ( a'' g'' ) } |
        \tuplet 3/2 { a''8 ( g'' fis'' ) } \tuplet 3/2 { g''8 ( fis'' ees'' ) } |
        d''2 ~ |
        d''4 r4 |
    }
}

violinsectionca = {
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
    r8 d''8 fis''8 a''8 |
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
}

violinsectioncb = {
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
}

violinsectioncc = {
    d''8 r8 d''8 r8 |
}

violinsectioncd = {
    d''8 r8 d''8 r8 |
}

violinsectionc = {
    \repeat volta 2 {
        \violinsectionca
        \violinsectioncb
    }
    \alternative { { \violinsectioncc } { \violinsectioncd } }
}

violincoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
     d''2-\fermata | 
}

violinnotes = {
    \key g \minor
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \stopStaff s2 \startStaff
    \violincoda
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

    \violinintro
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
   r8 d''8\ff ( g''8 a''8 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        < g'' bes'' >2 ) ~ |
        < g'' bes'' >8 d''8 ( g''8 a''8 |
        < g'' bes'' >2 ) ~ |
        < g'' bes'' >8 d''8 ( g''8 a''8 |
        bes''4 ) \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        a''4 \tuplet 3/2 { a''8 ( g''8 fis''8 ) } |

        < d'' fis'' >2 ~ |
        < d'' fis'' >8 d''8 ( < d'' fis'' >8 < ees'' g'' >8 |
        < fis'' a'' >2 ) ~ |
        < fis'' a'' >8 d''8 ( < d'' fis'' >8 < ees'' g'' >8 |
        < fis'' a'' >2 ) ~ |
        < fis'' a'' >8 d''8 < d'' fis'' >8 < ees'' g'' >8 |
        < fis'' a'' >4 c'''4 |
        \tuplet 3/2 { c'''8 ( bes''8 a''8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    }
    \alternative {
        {
            g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
            d''8 d''8 ( g''8 a''8 ) |
        }
        {
            < bes' g'' >2 ~ |
            < bes' g'' >4 r4 |
        }
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        \startOctVA d''8 \< ees''8 fis''8 g''8 |
        a''8 bes''8 c'''8 d'''8 \! \stopOctVA |
        < c'' ees'' >2 ~ |
        < c'' ees'' >2 |
        < bes' d'' >2 ~ |
        < bes' d'' >2 |
        < a' c'' >2 ~ |
        < a' c'' >2 |
        < g' bes' >2 ~ |
        < g' bes' >2 |
        < c'' d'' a'' >8-. r8 < c'' d'' fis'' >8-. r8 |
        < bes' d'' g'' >4-. r4 |
        < c'' d'' a'' >8-. r8 < c'' d'' fis'' >8-. r8 |
        < bes' d'' g'' >4-. r4 |
        \tuplet 3/2 { c'''8 ( bes''8 a''8 ) } \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
        \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
        < fis' d'' >2 ~ |
        < fis' d'' >4 r4 |
    }
}

pianorightuppersectionca = {
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
    r8 d''8 fis''8 a''8 |
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    \tuplet 3/2 { fis''8 ( g''8 a''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
    d''8 ees''8 fis''8 r8 |
}

pianorightuppersectioncb = {
    \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { g''8 ( fis''8 ees''8 ) } |
}

pianorightuppersectioncc = {
    d''8 \acciaccatura { cis'''16 } d'''8 \acciaccatura { cis'''16 } d'''8 \acciaccatura { cis'''16 } d'''8 |
}

pianorightuppersectioncd = {
    d''8 r8 < fis'' a'' d''' >8-> r8 |
}

pianorightuppersectionc = {
    \repeat volta 2 {
        \pianorightuppersectionca
        \pianorightuppersectioncb
    }
    \alternative { { \pianorightuppersectioncc } { \pianorightuppersectioncd } }
}

pianorightuppercoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 < cis'' g'' a'' >8 r8 |
    < fis' a' d'' >2-\fermata | 
}

pianorightuppernotes = {
    \key g \minor
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \stopStaff s2 \startStaff
    \pianorightuppercoda
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

pianoleftupperintro = { r2 | }

pianoleftuppersectiona = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
    \alternative {
        {
            g,8 g8 d8 g8 |
            < d, d >8 r8 r4 |
        }
        {
            g,8 g8 d8 bes,8 |
            g,8 d8 g8 r8 |
        }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        d8 ees8 fis8 g8 |
        a8 bes8 c'8 d'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        < d, d >8-. r8 < d, d >8-. r8 |
        g,8 d8 bes,8 g,8 |
        < d, d >8-. r8 < d, d >8-. r8 |
        g,8 d8 bes,8 g,8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
    }
}

pianoleftuppersectionca = {
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 < a d' >8 c8 < g c' >8 |

    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
}

pianoleftuppersectioncb = {
    d8 < a d' >8 c8 < g c' >8 |
}

pianoleftuppersectioncc = {
    d8 < d d' >8 < d d' >8 < d d' >8 |
}

pianoleftuppersectioncd = {
    d8 r8 < d, d >8-> r8 |
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        \pianoleftuppersectionca
        \pianoleftuppersectioncb
    }
    \alternative { { \pianoleftuppersectioncc } { \pianoleftuppersectioncd } }
}

pianoleftuppercoda = {
    \grace { s16 s16 s16 } < d d' >8 r8 < a, a >8 r8 | < d, d >2-\fermata | 
}

pianoleftuppernotes = {
    \key g \minor
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \stopStaff s2 \startStaff
    \pianoleftuppercoda
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

    \pianorightupperintro
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

    \pianoleftupperintro
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
   r8 d''8\ff ( g''8 a''8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        < d'' bes'' >2 ~ |
        < d'' bes'' >8 ) d''8 ( g''8 a''8 |
        < d'' bes'' >2 ~ |
        < d'' bes'' >8 ) d''8 ( g''8 a''8 |

        bes''4 ) \tuplet 3/2 { bes''8 a''8 g''8 } |
        a''4 \tuplet 3/2 { a''8 g''8 fis''8 } |
        fis''2 ~ |
        fis''8 d''8 ( fis''8 g''8 |

        < fis'' a'' >2 ~ |
        < fis'' a'' >8 ) d''8 ( fis''8 g''8 |
        < fis'' a'' >2 ~ |
        < fis'' a'' >8 ) d''8 ( fis''8 g''8 |

        a''4 ) c'''4 |
        \tuplet 3/2 { c'''8 bes''8 a''8 } \tuplet 3/2 { bes''8 a''8 g''8 } |
    }
    \alternative {
        {
            g''8. fis''16 \tuplet 3/2 { g''8 fis''8 ees''8 } |
            d''8 d''8 ( g''8 a''8 ) |
        }
        {
            g''2 ~ |
            g''4. r8 |
        }
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        d'8 ees'8 fis'8 g'8 |
        a'8 bes'8 c''8 d''8 |
        < c'' ees'' >2 ~ |
        < c'' ees'' >2 |

        < bes' d'' >2 ~ |
        < bes' d'' >2 |
        < a' c'' >2 ~ |
        < a' c'' >2 |

        < g' bes' >2 ~ |
        < g' bes' >2 |
        < c'' d'' a'' >8-. r8 < c'' d'' fis'' >8-. r8 |
        < bes' d'' g'' >4-. r4 |

        < c'' d'' a'' >8-. r8 < c'' d'' fis'' >8-. r8 |
        < bes' d'' g'' >4-. r4 |
        \tuplet 3/2 { < ees'' c''' >8 < d'' bes'' >8 < c'' a'' >8 } \tuplet 3/2 { < d'' bes'' >8 < c'' a'' >8 < bes' g'' >8 } |
        \tuplet 3/2 { < c'' a'' >8 < bes' g'' >8 < a' fis'' >8 } \tuplet 3/2 { < bes' g''> 8 < a' fis'' >8 < g' ees'' >8 } |
        < fis' d'' >2 ~ |
        < fis' d'' >4 r4 |
    }
}

accordionrightuppersectionca = {
    \tuplet 3/2 { fis''8 g''8 a''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    d''8 ees''8 fis''8 r8 |
    r8 d''8 fis''8 a''8 |
    \tuplet 3/2 { a''8 g''8 fis''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    \tuplet 3/2 { fis''8 g''8 a''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
    d''8 ees''8 fis''8 r8 |
}

accordionrightuppersectioncb = {
    \tuplet 3/2 { a''8 g''8 fis''8 } \tuplet 3/2 { g''8 fis''8 ees''8 } |
}

accordionrightuppersectioncc = {
    d''8 \acciaccatura { cis'''16 } d'''8 \acciaccatura { cis'''16 } d'''8 \acciaccatura { cis'''16 } d'''8 |
}

accordionrightuppersectioncd = {
    d''8 r8 < fis'' a'' d''' >8-> r8 |
}

accordionrightuppersectionc = {
    \repeat volta 2 {
        \accordionrightuppersectionca
        \accordionrightuppersectioncb
    }
    \alternative { { \accordionrightuppersectioncc } { \accordionrightuppersectioncd } }
}

accordionrightuppercoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8-.-> r8 < a' cis'' g'' a'' >8-.-> r8 |
    < fis' a' d'' >2_>^\fermata | 
}

accordionrightuppernotes = {
    \key g \minor
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \stopStaff s2 \startStaff
    \accordionrightuppercoda
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

accordionleftupperintro = { r2 | }

accordionleftuppersectiona = {
    \repeat volta 2 {
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 d'8^"M" |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 d'8^"M" |

        g,8 g8^"m" d,8 g  |
        fis,8_- d'8^"M" d,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8_3 d'8_5^"m" |

        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8_3 d'8_5^"m" |
        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8_3 d'8_5^"m" |

        d,8 d'8^"M" a,8_3 d'8_5^"m" |
        d,8 d'8^"M" g,8^"B.S." d,8 |
    }
    \alternative {
        {
            g,8 g8^"m" d,8 g8 |
            < g, g >8^"m" r8 r4 |
        }
        {
            g,8 g8^"m" d,8 g8 |
            g,8^"B.S." d,8 g,8 r8 |
        }
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        d,8 a8^"d" d,8 g8^"m" |
        d,8 g8 d,8 g8 |
        c8 c'8^"m" g,8 c'8 |
        c8 c'8 c8 c'8 |

        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        fis,8_- d'8^"M" d,8 d'8 |
        fis,8_- d'8 d,8 d'8 |

        g,8 g8^"m" d,8 g8 |
        g,8_3^"B.S." d,8_2 bes,8_5 g,8_3 |
        < d, d' >8^"7" r8 < d, d' >8 r8 |
        g,8_3^"B.S." d,8_2 bes,8_5 g,8_3 |

        < d, d' >8^"7" r8 < d, d' >8 r8 |
        g,8_3^"B.S." d,8_2 bes,8_5 g,8_3 |
        d,8 d'8^"M" g,8 g8^"m" |
        d,8 d'8^"M" g,8_4^"B.S." a,8_2 |

        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
    }
}

accordionleftuppersectionca = {
    d,8 d'8^"M" a,8_3 d'8_5^"m" |
    d,8^"B.S." a,8 d,8 d'8^"M" |
    d,8 d'8 a,8 d'8 |
    d,8 d'8 a,8_3 c'8_5^"m" |

    d,8 d'8^"M" a,8_3 c'8_5^"m" |
    d,8^"B.S." a,8 d,8 d'8^"M" |
}

accordionleftuppersectioncb = {
    d,8 d'8 g,8_4^"B.S." a,8_2 |
}

accordionleftuppersectioncc = {
    d,8_3 d,8 d,8 d,8 |
}

accordionleftuppersectioncd = {
    d,8 r8 < d, d' >8^>^"M" r8 |
}

accordionleftuppersectionc = {
    \repeat volta 2 {
        \accordionleftuppersectionca
        \accordionleftuppersectioncb
    }
    \alternative { { \accordionleftuppersectioncc } { \accordionleftuppersectioncd } }
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < d, d' >8^">"^"M" r8 < a, a >8^"."^">"^"7" r8 | < d, d' >2^>^"M"_\fermata | 
}

accordionleftuppernotes = {
    \key g \minor
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \stopStaff s2 \startStaff
    \accordionleftuppercoda
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

    \accordionrightupperintro
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

    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionca
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    s2 | s2 |
}

drumshighintro = { s2 | }

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

drumshighsectionca = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectioncb = \drummode {
    s2 |
}

drumshighsectioncc = \drummode {
    s2 |
}

drumshighsectioncd = \drummode {
    s2 |
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        \drumshighsectionca
        \drumshighsectioncb
    }
    \alternative { { \drumshighsectioncc } { \drumshighsectioncd } }
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
    \drumshighsectionb
    \drumshighsectionc
    \stopStaff s2 \startStaff
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighextraintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionca
    \drumshighcoda
}

drumslowextraintro = \drummode {
    s2 | s2 |
}

drumslowintro = { s2 | }

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

drumslowsectionca = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectioncb = {
    s2 |
}

drumslowsectioncc = {
    s2 |
}

drumslowsectioncd = {
    s2 |
}

drumslowsectionc = {
    \repeat volta 2 {
        \drumslowsectionca
        \drumslowsectioncb
    }
    \alternative { { \drumslowsectioncc } { \drumslowsectioncd } }
}

drumslowcoda = {
    \grace { s16 s16 s16 } s2 | s2 | 
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \stopStaff s2 \startStaff
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowextraintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowintro
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

    g2:min |
    s2 |
    g2:min |
    s2 |
    g2:min |
    s2 |
    d2 |
    s2 |
}

previewnotes = {
    \key g \minor
    \time 2/4
    s8 d''8 ( g'' a'' ) |
    \bar ".|:"
    bes''2 ~ |
    bes''8 d'' ( g'' a'' ) |
    bes''2 ~ |
    bes''8 d'' ( g'' a'' ) |
    bes''4 \tuplet 3/2 { bes''8 ( a''8 g''8 ) } |
    a''4 \tuplet 3/2 { a''8 ( g''8 fis''8 ) } |
    fis''2 ~ |
    fis''8 d''8 fis''8 g''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

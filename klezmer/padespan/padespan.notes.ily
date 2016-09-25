\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This file is built from a template file that
% introduces the basic structure of piece for a
% small ensemble.  The instruments regularly seen
% are here and the basic structure of klezmer
% orchestration is represented.

% A common way to fill this in is to identify each
% of the parts according to the role it fills in
% piece.  The parts are then assigned to
% instruments as necessary.

% Within each part it may be appropriate to
% divide up into sections so that the midi can
% better represent jumps "del segno" and jumps to
% codas.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmintro =  {
    \tempo \tempostring
    s2. | \breakIN
}

bandmsectionaa =  {
    \markSA \positionSA
    s2. | \breakAone
    s2. | \breakAtwo
    s2. | \breakAtre
    s2. | \breakAfor
    s2. | \breakAfiv
    s2. | \breakAsix
    s2. | \breakAsev
    s2. | \breakAeit
    s2. | \breakAnin
    s2. | \breakAten
    s2. | \breakAelv
    s2. | \breakAtwl
    s2. | \breakAtht
    s2. | \breakAfrt
    s2. | \breakAfft
}

bandmsectionab =  {
    s2. | \breakAsxt
}

bandmsectionac =  {
    s4 \markFN \positionFN
    \bar "|." \noBreak s2 |
}

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar "||"
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2. | \breakBone
    s2. | \breakBtwo
    s2. | \breakBtre
    s2. | \breakBfor
    s2. | \breakBfiv
    s2. | \breakBsix
    s2. | \breakBsev
    s2. | \breakBeit
    s2. | \breakBnin
    s2. | \breakBten
    s2. | \breakBelv
    s2. | \breakBtwl
    s2. | \breakBtht
    s2. | \breakBfrt
    s2. | \breakBfft
    s2. |
    \breakB
    \bar "||"
}

bandmsectioncd =  {
    \markC \positionC
    s2. | \breakCone
    s2. | \breakCtwo
    s2. | \breakCtre
    s2. | \breakCfor
    s2. | \breakCfiv
    s2. | \breakCsix
    s2. | \breakCsev
    s2. | \breakCeit
    s2. | \breakCnin
    s2. | \breakCten
    s2. | \breakCelv
    s2. | \breakCtwl
    s2. | \breakCtht
    s2. | \breakCfrt
    s2. | \breakCfft
    s2. | \breakC
    \bar ".|:-||"

    \markD \positionD
    \repeat volta 2 {
        \grace { s8 } s2. | \breakDone
        s2. | \breakDtwo
        s2. | \breakDtre
        s2. | \breakDfor
        s2. | \breakDfiv
        s2. | \breakDsix
        s2. | \breakDsev
        s2. | \breakDeit
        \grace { s8 } s2. | \breakDnin
        s2. | \breakDten
        s2. | \breakDelv
        s2. | \breakDtwl
        s2. | \breakDtht
        s2. | \breakDfrt
    }
    \alternative {
        {
            s2. | \breakDfft
            s2. | \breakDsxt
        }
        {
            s2. | \breakDsvt
            s2. |
        }
    }
    \markDSFN \positionDSFN
}

bandmNV =  {
    \time 3/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectioncd
    \bar "||"
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2. | }

metronomeextraintro =  { s2. | s2. | }

metronomeintro =  { s4 s2 }

metronomesectionaa =  {
    s2. | s2. | s2. | s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
}

metronomesectionab =  { s2. | }

metronomesectionac =  { s2. | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionb =  {
    \repeat unfold 2 { s2. | s2. | s2. | s2. | s2. | }
    \alternative { { s2. | s2. | s2. | } { s2. | s2. | s2. | } }
}

metronomesectioncd =  {
    s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
    \repeat volta 2 {
        \grace { s8 } s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. |
        \grace { s8 } s2. | s2. | s2. | s2. | s2. | s2. |
    }
    \alternative { { s2. | s2. | } { s2. | s2. | } }
}

metronomefine =  { s4 }

metronome =  \context Voice = "metronome" {
    \time 3/4
    \preintro
    \tempo 4 = 110
    \metronomeextraintro
    \metronomeintro

    \metronomesectiona
    \metronomesectionb
    \metronomesectioncd

    \tempo 4 = 115
    \metronomesectiona
    \metronomesectionb
    \metronomesectioncd

    \tempo 4 = 120
    \metronomesectionaa
    \metronomesectionab
    \metronomesectionaa
    \metronomefine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  \transpose d c {
    \key d \major
    s4 a'4 a'4
}

melodysectionaar =  \transpose d c {
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |

    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s4 r4 r4 |
}

melodysectionaa =  \transpose d c {
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |
    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |

    d'4 fis'4 a'4 |
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-. r8   a8( b8 cis'8 d'8 |
    e'8 fis'8 g'8 a'8 b'8 cis''8) |
    d''4-. r4 a'4-> |
}

melodysectionab =  \transpose d c {
    d''4-> a'4 a'4 |
}

melodysectionac =  \transpose d c {
    d''4-> r4 r4 |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionb =  \transpose d c {
    \key f \major
    \repeat unfold 2 {
        r4   d'8 f'8 d'8 f'8 |
        a'4 r4 f'4 |
        \tuplet 3/2 {   f'8[ g'8 f'8 ] } e'2 |
        a'4 r4 g'4 |
        \tuplet 3/2 {   f'8[ g'8 f'8 ] } e'4 d'4 |
    }
    \alternative {
        {
            \tuplet 3/2 {   f'8[ g'8 f'8 ] } e'4 d'4 |
            \acciaccatura { gis'8 } a'8 r8 a2-> |
            \acciaccatura { gis'8 } a'8 r8 a2-> |
        }
        {
            cis'4 d'4 e'4 |
            d'2. ~ |
            d'4 fis'4 a'4 |
        }
    }
}

melodysectioncd =  \transpose d c {
    \key d \major
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |

    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |
    d'4 fis'4 a'4 |
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-. r8 a8( b8 cis'8 d'8 |

    e'8 fis'8 g'8 a'8 b'8 cis''8) |
    d''4-. r4 a'4-> |
    d''4-> cis''4 d''4 |

    \key a \major
    \repeat volta 2 {
        \acciaccatura { d''8 } cis''4 b'8  ais'8 b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8  gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        fis'4   e'8 dis'8  e'4 ~ |
        e'4  gis'4 fis'4 |
        fis'4   e'8 dis'8  e'4 ~ |
        e'4 cis''4 d''4 |

        \acciaccatura { d''8 } cis''4 b'8  ais'8  b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8  gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        \tuplet 3/2 { e'8[ fis'8 e'8 ] } dis'4 e'4 |
        cis''2 b'4 |
    }
    \alternative {
        {
           a'2. ~ |
           a'4 cis''4 d''4 |
        }
        {
           a'2. ~ |
           a'4 a'4 a'4 |
        }
    }
}

melodyfine =  \transpose d c {
    d''4->
}

melody =  {
    \time 3/4

    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectioncd
}

melodymidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \melodyintro

    \melodysectiona
    \melodysectionb
    \melodysectioncd

    \melodysectiona
    \melodysectionb
    \melodysectioncd

    \melodysectionaa
    \melodysectionab
    \melodysectionaa
    \melodyfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro =  {
    s4 a''4 a''4
}

tenorharmonysectionaa =  {
    fis''4   d''8 e''8 d''8 e''8 |
    fis''4 d''4 d''4 |
    e''4   cis''8\marcato( cis''8 cis''8 a'8 |
    cis''4) cis''4 d''4 |
    e''4 a'4 a'4 |
    e''8 d''8 cis''8 b'8 a'8 cis''8 |
    d''4   a'8 a'8 a'8 fis'8 |
    a'4 d''4 fis''4 |
    a''4   d''8 e''8 d''8 e''8 |
    fis''4   g''8 fis''8 e''8 d''8 |
    g''4 g''4\marcato fis''4\marcato |
    eis''8 r8 eis''4 eis''4 |
    fis''8 r8   a'8( gis'8 a'8 b'8 |
    cis''8 d''8 e''8 fis''8 g''8 e''8 |
    fis''4) r4 g''4\marcato |
}

tenorharmonysectionab =  {
    fis''4\marcato a''4 a''4 |
}

tenorharmonysectionac =  {
    fis''4\marcato r4 r4 |
}

tenorharmonysectiona =  {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }
}

tenorharmonysectionba =  {
    f'4 a'4 d''4 |
    f''4 a'4 d''4 |

% these next three measures are problematic for the repeat structure.
% the tenorharmony part is not a repeat.  it is at variance and I'm not sure
% why.

    d''4 cis''4   cis''8 a'8 |
    cis''4 e''4 a'4 |
    d''4 a'4 f'4 |
}

tenorharmonysectionbb =  {
    d''4 bes'4 d''4 |
    cis''8\marcato r8 cis''2\marcato |
    e''8( cis''8) cis''8( a'8) a'8( g'8) |
}

tenorharmonysectionbc =  {
    e'4 f'4 g'4 |
    f'4 a'4 f'4 |
    a'4 d''4 fis''4 |
}

tenorharmonysectionb =  {
    \repeat unfold 2 { \tenorharmonysectionba }
    \alternative { { \tenorharmonysectionbb } { \tenorharmonysectionbc } }
}

tenorharmonysectioncd =  {
    fis''4   d''8 e''8 d''8 e''8 |
    fis''4 d''4 d''4 |
    e''4   cis''8\marcato( cis''8 cis''8 a'8 |
    cis''4) cis''4 d''4 |
    e''4 a'4 a'4 |
      e''8 d''8 cis''8 b'8 a'8 cis''8 |
    d''4   a'8 a'8 a'8 fis'8 |
    a'4 d''4 fis''4 |
    a''4   d''8 e''8 d''8 e''8 |
    fis''4   g''8 fis''8 e''8 d''8 |
    g''4 g''4\marcato fis''4\marcato |
    eis''8 r8 eis''4 eis''4 |
    fis''8 r8   a'8( gis'8 a'8 b'8 |
      cis''8 d''8 e''8 fis''8 g''8 e''8 |
    fis''4) r4 g''4\marcato |
    fis''4\marcato r4 r4 |

    \key a \major
    \repeat volta 2 {
        \grace { s8 } r4\mf   gis''8 fis''8 gis''8 e''8 |
        gis''4 r4 r4 |
        r4   e''8 dis''8 e''8 cis''8 |
        e''4 cis''4 cis''4 |

        d''4 b'4   gis'8 b'8 |
        d''4 b'4 d''4 |
        cis''4 a'4   a'8 b'8 |
        cis''4 e''4 fis''4 |

        \grace { s8 } e''4   d''8( cis''8 d''8 b'8 |
        e''2.\marcato) |
        d''4   cis''8( bis'8 cis''8 a'8 |
        e''4) cis''4 a'4 |

        gis'4 f'4 gis'4 |
        e''2 d''4 |
    }
    \alternative {
        {
            cis''4 cis''4 e''4 |
            cis''4 r4 r4 |
        }
        {
            cis''4   cis''8 e''8 cis''8 e''8 |
            g''8 r8 a''4 g''4 |
        }
    }
}

tenorharmonyfine =  {
    fis''4\marcato
}

tenorharmony =  \transpose c' bes {
    \time 3/4
    \key d \major
    \tenorharmonyintro
    \tenorharmonysectiona
    \key f \major
    \tenorharmonysectionb
    \key d \major
    \tenorharmonysectioncd
}

tenorharmonymidi =  \transpose c' bes {
    \time 3/4
    \preintro
    \metronomeextraintro
    \tenorharmonyintro

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectioncd

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectioncd

    \tenorharmonysectionaa
    \tenorharmonysectionab
    \tenorharmonysectionaa
    \tenorharmonyfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro =  {
    \key c \major
    s4 r4 r4
}

countersectionaa =  {
    c4\f r4 r4 |
    e4 r4 r4 |
    d4 r4 r4 |
    g,4 r4 r4 |

    g2. ~ |
    g2. |
    g4 e4 c4 |
    e4 g4 e4 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis2.( |

    g4-.) r4 r4 |
    g,2. |
    c4 r4 g,4-^ |
}

countersectionab =  {
    c4-^ g4 g4 |
}

countersectionac =  {
    c4-^ g4-^ ees4-^ |
}

countersectiona =  {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionb =  {
    \key ees \major
    r2. |
    r2. |
    r2. |
    r2. |

    r2. |
    r2. |
    \repeat unfold 2 { \acciaccatura { fis16 } g8 r8 g,2-^ } |

    r2. |
    r2. |
    r2. |
    r2. |

    c4 r4 r4 |
    g4 r4 g,4 |
    c4 g4 ees4 |
    c4\< g4 e4\! |
}

countersectioncd =  {
    \key c \major
    c4\f r4 r4 |
    e4 r4 r4 |
    d4 r4 r4 |
    g,4 r4 r4 |

    g2. ~ |
    g2. |
    g4 e4 c4 |
    e4 g4 e4 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis2.( |

    g4-.) r4 r4 |
    g,2. |
    c4 r4 g,4-^ |
    c4-^ r4 r4

    \key g \major
    \repeat volta 2 {
        \grace { s8 } d2. ~ |
        d2. |
        g,2. ~ |
        g,4 r4 r4 |

        r4 c'4( a4 |
        d2.) |
        r4 b4( g4 |
        d2.) |

        \grace { s8 } d2. ~ |
        d2. |
        g2. |
        cis2. |

        d4 r4 r4 |
        d4 r4 r4 |
    }
    \alternative {
        {
            g,4 d4 b,4 |
            g,4 r4 r4 |
        }
        {
            g,4\< b,4 d4 |
            f4\! e4 d4 |
        }
    }
}

counterfine =  {
    c4-^
}

counter =  \transpose c c' {
    \time 3/4

    \counterintro
    \countersectiona
    \countersectionb
    \countersectioncd
}

countermidi =  \transpose c c' {
    \time 3/4
    \preintro
    \metronomeextraintro
    \counterintro

    \countersectiona
    \countersectionb
    \countersectioncd

    \countersectiona
    \countersectionb
    \countersectioncd

    \countersectionaa
    \countersectionab
    \countersectionaa
    \counterfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro =  {
    s4 r4 r4
}

basslinesectionaa =  {
    c4 r4 r4 |
    e4 r4 r4 |
    d4\3 r4 r4 |
    g,4 r4 r4 |

    d4\3 r4 r4 |
    g,4 r4 r4 |
    c4 r4 r4 |
    c4 g,4 e,4 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis4 r4 r4 |

    g4\2 r4 r4 |
    g,4 r4 r4 |
    c4 r4 g4\2-> |
}

basslinesectionab =  {
    c4-> g4\2 g4\2 |
}

basslinesectionac =  {
    c4-> g4\2-> ees4\3-> |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionb =  {
    \repeat unfold 2 {
        c4-> r4 r4 |
        c4 r4 r4 |
        g,4 r4 r4 |
        g,4 r4 r4 |

        c4 r4 r4 |
    }
    \alternative {
        {
            c4 r4 r4 |
            b,4 r4 r4 |
            g,4 r4 r4 |
        }
        {
            g,4 r4 r4 |
            c4 g4\2 ees4\3 |
            c4 g4\2 e4\3 |
        }
    }
}

basslinesectioncd =  {
    c4 r4 r4 |
    e4 r4 r4 |
    d4\3 r4 r4 |
    g,4 r4 r4 |

    d4\3 r4 r4 |
    g,4 r4 r4 |
    c4 r4 r4 |
    c4 g4\2 e4\3 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis4 r4 r4 |

    g4\2 r4 r4 |
    g,4 r4 r4 |
    c4 r4 g,4-> |
    c4-> r4 r4 |

    \key g \major
    \repeat volta 2 {
        \grace { s8 } d4\3 < fis c' >4 < fis c' >4 |
        d4\3 r4 r4 |
        g,4 r4 r4 |
        g,4 r4 r4 |

        d4\3 r4 r4 |
        d4\3 r4 r4 |
        g,4 r4 r4 |
        g,4 r4 r4 |

        \grace { s8 } d4\3 r4 r4 |
        d4\3 r4 r4 |
        g,4 r4 r4 |
        cis4 r4 r4 |

        d4\3 r4 r4 |
        d4\3 r4 r4 |
    }
    \alternative {
        {
            g,4 d4\3 b,4 |
            g,4 r4 r4 |
        }
        {
            g,4 b,4 d4\3 |
            f4 e4 d4\3 |
        }
    }
}

basslinefine =  {
    c4->
}

bassline =  {
    \time 3/4
    \key c \major
    \basslineintro
    \basslinesectiona
    \key ees \major
    \basslinesectionb
    \key c \major
    \basslinesectioncd
}

basslinemidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \basslineintro

    \basslinesectiona
    \basslinesectionb
    \basslinesectioncd

    \basslinesectiona
    \basslinesectionb
    \basslinesectioncd

    \basslinesectionaa
    \basslinesectionab
    \basslinesectionaa
    \basslinefine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
    \key c \major
    \time 3/4
}

guitarnotesmidi =  {
    \key c \major
    \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s4 s2
}

chordletterssectionaa = \chordmode {
    c2. | c2. | g2.:7 | g2.:7 |
    g2.:7 | g2.:7 | c2. | c2. |
    c2. | c2. | d2.:min | c2.:dim |
    c2. | g2.:7 | c2 g4:7 |
}

chordletterssectionab = \chordmode {
    c2 g4:7 |
}

chordletterssectionac = \chordmode {
    c2. |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionb = \chordmode {
    \repeat unfold 2 { c2.:min | c2.:min | g2.:7 | g2.:7 | c2.:min | }
    \alternative {
        { c2.:min | g2.:7 | g2.:7 | }
        { g2.:7 | c2.:min | c2.:min | }
    }
}

chordletterssectioncd = \chordmode {
    c2. | c2. | g2.:7 | g2.:7 |
    g2.:7 | g2.:7 | c2. | c2. |
    c2. | c2. | d2.:min | c2.:dim |
    c2. | g2.:7 | c2 g4:7 | c2. |

    \repeat volta 2 {
        \grace { d8:7 } d2.:7 | d2.:7 | g2. | g2. |
        d2.:7 | d2.:7 | g2. | g2. |
        \grace { d8:7 } d2.:7 | d2.:7 | g2. | g2.:dim |
        g2. | d2.:7 |
    }
    \alternative {
        { g2. | g2. | }
        { \chordChangesOff g2. \chordChangesOn | g2. | }
    }
}

chordlettersfine = \chordmode { s4 }

chordletters = \chordmode {
    \time 3/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectioncd
%    \chordlettersfine
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

flutenotes =  \transpose c c' {
    \melody
}

flutenotesmidi =  \transpose c c' {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro =  {
    s4 a''4 a''4 |
}

clarinetsectionaa =  {
    d'''4\ff   fis''8 g''8 fis''8 g''8 |
    a''4   b''8 a''8 g''8 fis''8 |
    g''4 e''2\marcato ~ |
    e''4 e''4 fis''4 |
    g''4   a''8 g''8 fis''8 e''8 |
    g''4   a''8 g''8 fis''8 e''8 |
    fis''4 d''2\marcato ~ |
    d''4 fis''4 a''4 |
    d'''4   fis''8 g''8 fis''8 g''8 |
    a''4   b''8 a''8 g''8 fis''8 |
    cis'''4 b''2\marcato ~ |
    b''4 cis'''4 b''4 |
    a''8 r8   a'8( b'8 cis''8 d''8 |
      e''8 fis''8 g''8 a''8 b''8 cis'''8 |
    d'''4) r4 a''4 |
}

clarinetsectionab =  {
    d'''4\marcato a''4 a''4 |
}

clarinetsectionac =  {
    d'''4\marcato r4 r4 |
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionba =  {
    r4   d''8 f''8 d''8 f''8 |
    a''4 r4 f''4 |
    \tuplet 3/2 {   f''8[( g''8 f''8) ] } e''2 |
    a''4 r4 f''4 |
    \tuplet 3/2 {   f''8[( g''8 f''8) ] } e''4 d''4 |
}

clarinetsectionbb =  {
    \tuplet 3/2 {   f''8[( g''8 f''8) ] } e''4 d''4 |
    \acciaccatura { g''8 } a''8\marcato r8 a''2\marcato |
    \acciaccatura { g''8 } a''8\marcato r8 a''2\marcato |
}

clarinetsectionbc =  {
    cis''4 d''4 e''4 |
    d''2. ~ |
    d''4 fis''4 a''4 |
}

clarinetsectionb =  {
    \repeat unfold 2 { \clarinetsectionba }
    \alternative { { \clarinetsectionbb } { \clarinetsectionbc } }
}

clarinetsectiondb =  {
    a''2. ~ |
    a''4 cis'''4 d'''4 |
}

clarinetsectiondc =  {
    a''2. ~ |
    a''4 a''4 a''4 |
}

clarinetsectioncd =  {
    d'''4   fis''8 g''8 fis''8 g''8 |
    a''4   b''8 a''8 g''8 fis''8 |
    g''4 e''2\marcato ~ |
    e''4 e''4 fis''4 |
    g''4   a''8 g''8 fis''8 e''8 |
    g''4   a''8 g''8 fis''8 e''8 |
    fis''4 d''2\marcato ~ |
    d''4 fis''4 a''4 |
    d'''4   fis''8 g''8 fis''8 g''8 |
    a''4   b''8 a''8 g''8 fis''8 |
    cis'''4 b''2\marcato ~ |
    b''4 cis'''4 b''4 |
    a''8 r8   a'8( b'8 cis''8 d''8 |
      e''8 fis''8 g''8 a''8 b''8 cis'''8 |
    d'''4) r4 a''4\marcato |
    d'''4\marcato c'''4 d'''4 |

    \key a \major
    \repeat volta 2 {
        \grace { s8 } cis'''4\mf   b''8 ais''8  b''4 ~ |
        b''4 b''4 cis'''4 |
        b''4   a''8 gis''8  a''4 ~ |
        a''4 gis''4 fis''4 |

        fis''4   e''8 dis''8  e''4 ~ |
        e''4 gis''4 fis''4 |
        fis''4   e''8 dis''8  e''4 ~ |
        e''4 cis'''4 d'''4 |

        \grace { s8 } cis'''4   b''8 ais''8  b''4 ~ |
        b''4 b''4 cis'''4 |
        b''4   a''8 gis''8  a''4 ~ |
        a''4 gis''4 fis''4 |

        \tuplet 3/2 {   e''8[( fis''8 e''8) ] } dis''4 e''4 |
        cis'''2 b''4 |
    }
    \alternative { { \clarinetsectiondb } { \clarinetsectiondc } }
}

clarinetfine =  {
    d'''4\marcato
}

clarinetnotes =  {
    \time 3/4
    \key d \major
    \clarinetintro
    \clarinetsectiona
    \key f \major
    \clarinetsectionb
    \key d \major
    \clarinetsectioncd
}

clarinetnotesmidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \clarinetintro

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectioncd

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectioncd

    \clarinetsectionaa
    \clarinetsectionab
    \clarinetsectionaa
    \clarinetfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro =  {
    s4 a''4 a''4
}

tenorsaxsectionaa =  {
    fis''4   d''8 e''8 d''8 e''8 |
    fis''4 d''4 d''4 |
    e''4   cis''8\marcato( cis''8 cis''8 a'8 |
    cis''4) cis''4 d''4 |
    e''4 a'4 a'4 |
    e''8 d''8 cis''8 b'8 a'8 cis''8 |
    d''4   a'8 a'8 a'8 fis'8 |
    a'4 d''4 fis''4 |
    a''4   d''8 e''8 d''8 e''8 |
    fis''4   g''8 fis''8 e''8 d''8 |
    g''4 g''4\marcato fis''4\marcato |
    eis''8 r8 eis''4 eis''4 |
    fis''8 r8   a'8( gis'8 a'8 b'8 |
    cis''8 d''8 e''8 fis''8 g''8 e''8 |
    fis''4) r4 g''4\marcato |
}

tenorsaxsectionab =  {
    fis''4\marcato a''4 a''4 |
}

tenorsaxsectionac =  {
    fis''4\marcato r4 r4 |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionba =  {
    f'4 a'4 d''4 |
    f''4 a'4 d''4 |

% these next three measures are problematic for the repeat structure.
% the tenorsax part is not a repeat.  it is at variance and I'm not sure
% why.

    d''4 cis''4   cis''8 a'8 |
    cis''4 e''4 a'4 |
    d''4 a'4 f'4 |
}

tenorsaxsectionbb =  {
    d''4 bes'4 d''4 |
    cis''8\marcato r8 cis''2\marcato |
      e''8( cis''8) cis''8( a'8) a'8( g'8) |
}

tenorsaxsectionbc =  {
    e'4 f'4 g'4 |
    f'4 a'4 f'4 |
    a'4 d''4 fis''4 |
}

tenorsaxsectionb =  {
    \repeat unfold 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxsectiondb =  {
    cis''4 cis''4 e''4 |
    cis''4 r4 r4 |
}

tenorsaxsectiondc =  {
    cis''4   cis''8 e''8 cis''8 e''8 |
    g''8 r8 a''4 g''4 |
}

tenorsaxsectioncd =  {
    fis''4   d''8 e''8 d''8 e''8 |
    fis''4 d''4 d''4 |
    e''4   cis''8\marcato( cis''8 cis''8 a'8 |
    cis''4) cis''4 d''4 |
    e''4 a'4 a'4 |
      e''8 d''8 cis''8 b'8 a'8 cis''8 |
    d''4   a'8 a'8 a'8 fis'8 |
    a'4 d''4 fis''4 |
    a''4   d''8 e''8 d''8 e''8 |
    fis''4   g''8 fis''8 e''8 d''8 |
    g''4 g''4\marcato fis''4\marcato |
    eis''8 r8 eis''4 eis''4 |
    fis''8 r8   a'8( gis'8 a'8 b'8 |
      cis''8 d''8 e''8 fis''8 g''8 e''8 |
    fis''4) r4 g''4\marcato |
    fis''4\marcato r4 r4 |

    \key a \major
    \repeat volta 2 {
        \grace { s8 } r4\mf   gis''8 fis''8 gis''8 e''8 |
        gis''4 r4 r4 |
        r4   e''8 dis''8 e''8 cis''8 |
        e''4 cis''4 cis''4 |

        d''4 b'4   gis'8 b'8 |
        d''4 b'4 d''4 |
        cis''4 a'4   a'8 b'8 |
        cis''4 e''4 fis''4 |

        \grace { s8 } e''4   d''8( cis''8 d''8 b'8 |
        e''2.\marcato) |
        d''4   cis''8( bis'8 cis''8 a'8 |
        e''4) cis''4 a'4 |

        gis'4 fisis'4 gis'4 |
        e''2 d''4 |
    }
    \alternative { { \tenorsaxsectiondb } { \tenorsaxsectiondc } }
}

tenorsaxfine =  {
    fis''4\marcato
}

tenorsaxnotes =  {
    \time 3/4
    \key d \major
    \tenorsaxintro
    \tenorsaxsectiona
    \key f \major
    \tenorsaxsectionb
    \key d \major
    \tenorsaxsectioncd
}

tenorsaxnotesmidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \tenorsaxintro

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectioncd

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectioncd

    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectionaa
    \tenorsaxfine
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s2. |
    s2. |
}

altosaxintro =  {
    s4 e''4 e''4
}

altosaxsectionaa =  {
    a''4   cis''8 d''8 cis''8 d''8 |
    e''4   fis''8 e''8 d''8 cis''8 |
    d''4 b'2-> ~ |
    b'4 b'4 cis''4 |
    d''4   e''8 d''8 cis''8 b'8 |
    d''4   e''8 d''8 cis''8 b'8 |
    cis''4 a'2-> ~ |
    a'4 cis''4 e''4 |
    a''4   cis''8 d''8 cis''8 d''8 |
    e''4   fis''8 e''8 d''8 cis''8 |
    gis''4 fis''2-> ~ |
    fis''4 gis''4 fis''4 |
    e''8-. r8   e'8( fis'8 gis'8 a'8 |
      b'8 cis''8 d''8 e''8 fis''8 gis'' |
    a''4-.) r4 e''4-> |
}

altosaxsectionab =  {
    a''4-> e''4 e''4 |
}

altosaxsectionac =  {
    a''4-> r4 r4 |
}

altosaxsectiona =  {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionb =  {
    \repeat unfold 2 {
        r4   a'8 c''8 a'8 c''8 |
        e''4 r4 c''4 |
        \tuplet 3/2 {   c''8[( d''8 c''8) ] } b'2 |
        e''4 r4 d''4 |
        \tuplet 3/2 {   c''8[( d''8 c''8) ] } b'4 a'4 |
    }
    \alternative {
        {
            \tuplet 3/2  {   c''8[( d''8 c''8) ] } b'4 a'4 |
            \acciaccatura { dis''16 } e''8-. r8 e'2 |
            \acciaccatura { dis''16 } e''8-. r8 e'2 |
        }
        {
            gis'4 a'4 b'4 |
            a'2. ~ |
            a'4 cis''4 e''4 |
        }
    }
}

altosaxsectioncd =  {
    a''4   cis''8 d''8 cis''8 d''8 |
    e''4   fis''8 e''8 d''8 cis''8 |
    d''4 b'2-> ~ |
    b'4 b'4 cis''4 |
    d''4   e''8 d''8 cis''8 b'8 |
    d''4   e''8 d''8 cis''8 b'8 |
    cis''4 a'2-> ~ |
    a'4 cis''4 e''4 |
    a''4   cis''8 d''8 cis''8 d''8 |
    e''4   fis''8 e''8 d''8 cis''8 |
    gis''4 fis''2-> ~ |
    fis''4 gis''4 fis''4 |
    e''8-. r8   e'8( fis'8 gis'8 a'8 |
      b'8 cis''8 d''8 e''8 fis''8 gis'' |
    a''4-.) r4 e''4-> |
    a''4-> gis''4 a''4 |

    \key e \major
    \repeat volta 2 {
        \acciaccatura { a''8 } gis''4 fis''8  eis''8  fis''4 ~ |
        fis''4 fis''4 gis''4 |
        \acciaccatura { gis''8 } fis''4 e''8  dis''8  e''4 ~ |
        e''4 dis''4 cis''4 |
        cis''4   b'8 ais'8  b'4 ~ |
        b'4 dis''4 cis''4 |
        cis''4   b'8 ais'8  b'4 ~ |
        b'4 gis''4 a''4 |
        \acciaccatura { a''8 } gis''4 fis''8  eis''8  fis''4 ~ |
        fis''4 fis''4 gis''4 |
        \acciaccatura { gis''8 } fis''4 e''8 dis''8  e''4 ~ |
        e''4 dis''4 cis''4 |
        \tuplet 3/2 {   b'8[( cis''8 b'8) ] } ais'4 b'4 |
        gis''2 fis''4 |
    }
    \alternative {
        {
            e''2. ~ |
            e''4 gis''4 a''4 |
        }
        {
            e''2. ~ |
            e''4 e''4 e''4 |
        }
    }
}

altosaxfine =  {
    s4
}

altosaxnotes =  {
    \time 3/4
    \key a \major
    \altosaxintro
    \altosaxsectiona
    \key c \major
    \altosaxsectionb
    \key a \major
    \altosaxsectioncd
}

altosaxnotesmidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \altosaxintro

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectioncd

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectioncd

    \altosaxsectionaa
    \altosaxsectionab
    \altosaxsectionaa
    \altosaxfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro =  \transpose d c {
    \key d \major
    s4 a'4 a'4
}

trumpetsectionaar =  \transpose d c {
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |

    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s4 r4 r4 |
}

trumpetsectionaa =  \transpose d c {
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |
    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |

    d'4 fis'4 a'4 |
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-. r8  a8( b8 cis'8 d'8 |
    e'8 fis'8 g'8 a'8 b'8 cis''8) |
    d''4-. r4 a'4-> |
}

trumpetsectionab =  \transpose d c {
    d''4-> a'4 a'4 |
}

trumpetsectionac =  \transpose d c {
    d''4-> r4 r4 |
}

trumpetsectiona =  {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionb =  \transpose d c {
    \key f \major
    \repeat unfold 2 {
        r4   d'8 f'8 d'8 f'8 |
        a'4 r4 f'4 |
        \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'2 |
        a'4 r4 g'4 |
        \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'4 d'4 |
    }
    \alternative {
        {
            \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'4 d'4 |
            \acciaccatura { gis'8 } a'8 r8 a'2-> |
            \acciaccatura { gis'8 } a'8 r8 a'2-> |
        }
        {
            cis'4 d'4 e'4 |
            d'2. ~ |
            d'4 fis'4 a'4 |
        }
    }
}

trumpetsectioncd =  \transpose d c {
    \key d \major
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |

    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |
    d'4 fis'4 a'4 |
    d''4   fis'8 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-. r8 a8( b8 cis'8 d'8 |

    e'8 fis'8 g'8 a'8 b'8 cis''8) |
    d''4-. r4 a'4-> |
    d''4-> cis''4 d''4 |

    \key a \major
    \repeat volta 2 {
        \acciaccatura { d''8 } cis''4 b'8 ais'8  b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8 gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        fis'4   e'8 dis'8  e'4 ~ |
        e'4  gis'4 fis'4 |
        fis'4   e'8 dis'8  e'4 ~ |
        e'4 cis''4 d''4 |

        \acciaccatura { d''8 } cis''4 b'8  ais'8  b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8  gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        \tuplet 3/2 {   e'8[ fis'8 e'8 ] } dis'4 e'4 |
        cis''2 b'4 |
    }
    \alternative {
        {
           a'2. ~ |
           a'4 cis''4 d''4 |
        }
        {
           a'2. ~ |
           a'4 a'4 a'4 |
        }
    }
}

trumpetfine =  \transpose d c {
    d''4->
}

%-------------------------------------------------

trumpetnotes =  \transpose c d {
    \time 3/4

    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectioncd
}

trumpetnotesmidi =  \transpose c d {
    \time 3/4
    \preintro
    \metronomeextraintro
    \trumpetintro

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectioncd

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectioncd

    \trumpetsectionaa
    \trumpetsectionab
    \trumpetsectionaa
    \trumpetfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro =  {
    \key c \major
    s4 r4 r4
}

trombonesectionaa =  {
    c4\f r4 r4 |
    e4 r4 r4 |
    d4 r4 r4 |
    g,4 r4 r4 |

    g2. ~ |
    g2. |
    g4 e4 c4 |
    e4 g4 e4 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis2.( |

    g4-.) r4 r4 |
    g,2. |
    c4 r4 g,4-^ |
}

trombonesectionab =  {
    c4-^ g4 g4 |
}

trombonesectionac =  {
    c4-^ g4-^ ees4-^ |
}

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionb =  {
    \key ees \major
    r2. |
    r2. |
    r2. |
    r2. |

    r2. |
    r2. |
    \repeat unfold 2 { \acciaccatura { fis16 } g8 r8 g,2-^ } |

    r2. |
    r2. |
    r2. |
    r2. |

    c4 r4 r4 |
    g4 r4 g,4 |
    c4 g4 ees4 |
    c4\< g4 e4\! |
}

trombonesectiondb =  {
    g,4 d4 b,4 |
    g,4 r4 r4 |
}

trombonesectiondc =  {
    g,4\< b,4 d4 |
    f4\! e4 d4 |
}

trombonesectioncd =  {
    \key c \major
    c4\f r4 r4 |
    e4 r4 r4 |
    d4 r4 r4 |
    g,4 r4 r4 |

    g2. ~ |
    g2. |
    g4 e4 c4 |
    e4 g4 e4 |

    c4 r4 r4 |
    e4 r4 r4 |
    f4 r4 r4 |
    fis2.( |

    g4-.) r4 r4 |
    g,2. |
    c4 r4 g,4-^ |
    c4-^ r4 r4

    \key g \major
    \repeat volta 2 {
        \grace { s8 } d2. ~ |
        d2. |
        g,2. ~ |
        g,4 r4 r4 |

        r4 c'4( a4 |
        d2.) |
        r4 b4( g4 |
        d2.) |

        \grace { s8 } d2. ~ |
        d2. |
        g2. |
        cis2. |

        d4 r4 r4 |
        d4 r4 r4 |
    }
    \alternative { { \trombonesectiondb } { \trombonesectiondc } }
}

trombonefine =  {
    c4-^
}

trombonenotes =  {
    \time 3/4

    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectioncd
}

trombonenotesmidi =  {
    \time 3/4
    \preintro
    \metronomeextraintro
    \tromboneintro

    \trombonesectiona
    \trombonesectionb
    \trombonesectioncd

    \trombonesectiona
    \trombonesectionb
    \trombonesectioncd

    \trombonesectionaa
    \trombonesectionab
    \trombonesectionaa
    \trombonefine
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes =  { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro =  \transpose d c {
    \key d \major
    s4 a'4 a'4
}

violinsectionaar =  \transpose d c {
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s2. |

    s2. |
    s2. |
    s2. |
    s2. |
    s2. |
    s4 r4 r4 |
}

violinsectionaa =  \transpose d c {
    d''4-4   fis'8-0 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |
    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |

    d'4 fis'4 a'4 |
    d''4-4   fis'8-0 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-.-1 r8 a8-2  ( b8 cis'8 d'8 |
    e'8  fis'8 g'8 a'8 b'8 cis''8 |
    d''4-.) r4 a'4-> |
}

violinsectionab =  \transpose d c {
    d''4-> a'4 a'4 |
}

violinsectionac =  \transpose d c {
    d''4-> r4 r4 |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionb =  \transpose d c {
    \key f \major
    \repeat unfold 2 {
        r4   d'8 f'8 d'8 f'8-2 |
        a'4 r4 f'4 |
        \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'2 |
        a'4 r4 g'4 |
        \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'4 d'4 |
    }
    \alternative {
        {
            \tuplet 3/2 {   f'8[( g'8 f'8) ] } e'4 d'4 |
            \acciaccatura { gis'8 } a'8 r8 a2-> |
            \acciaccatura { gis'8 } a'8 r8 a2-> |
        }
        {
            cis'4 d'4 e'4 |
            d'2. ~ |
            d'4 fis'4 a'4 |
        }
    }
}

violinsectioncd =  \transpose d c {
    \key d \major
    d''4-4   fis'8-0 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    g'4 e'2-> ~ |
    e'4 e'4 fis'4 |
    g'4   a'8 g'8 fis'8 e'8 |

    g'4   a'8 g'8 fis'8 e'8 |
    fis'4 d'2-> ~ |
    d'4 fis'4 a'4 |
    d''4-4   fis'8-0 g'8 fis'8 g'8 |
    a'4   b'8 a'8 g'8 fis'8 |
    cis''4 b'2-> ~ |
    b'4 cis''4 b'4 |
    a'8-.-1 r8 a8-2( b8 cis'8 d'8 |

    e'8 fis'8 g'8 a'8 b'8 cis''8 |
    d''4) r4 a'4->-1 |
    d''4-> cis''4 d''4 |

    \key a \major
    \repeat volta 2 {
        \acciaccatura { d''8 } cis''4 b'8  ais'8  b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8 -2 gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        fis'4   e'8 dis'8  e'4-2 ~ |
        e'4 gis'4 fis'4 |
        fis'4   e'8 dis'8  e'4-2 ~ |
        e'4 cis''4-3 d''4 |

        \acciaccatura { d''8 } cis''4 b'8  ais'8  b'4 ~ |
        b'4 b'4 cis''4 |
        \acciaccatura { cis''8 } b'4 a'8 -2 gis'8  a'4 ~ |
        a'4 gis'4 fis'4 |

        \tuplet 3/2 {   e'8[( fis'8 e'8) ] } dis'4 e'4-2 |
        cis''2 b'4 |
    }
    \alternative {
        {
           a'2. ~ |
           a'4 cis''4 d''4 |
        }
        {
           a'2. ~ |
           a'4 a'4 a'4 |
        }
    }
}

violinfine =  \transpose d c {
    d''4->
}

%-------------------------------------------------

violinnotes =  \transpose c c' {
    \time 3/4

    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectioncd
}

violinnotesmidi =  \transpose c c' {
    \time 3/4
    \preintro
    \metronomeextraintro
    \violinintro

    \violinsectiona
    \violinsectionb
    \violinsectioncd

    \violinsectiona
    \violinsectionb
    \violinsectioncd

    \violinsectionaa
    \violinsectionab
    \violinsectionaa
    \violinfine
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

pianorightupperintro =  {
    s4 g''4\f g''4 |
}

pianorightuppersectionaa =  {
    c'''4   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    f''4 d''2^> ~ |
    d''4 d''4 e''4 |
    f''4   g''8 f''8 e''8 d''8 |
    f''4   g''8 f''8 e''8 d''8 |
    e''4 c''2^> ~ |

    c''4 e''4 g''4 |
    c'''4   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    b''4 a''2^> ~ |
    a''4 b''4 a''4 |
    g''8-. r8   g'8-2 a'8-3 b'8-4 c''8-1 |
      d''8-2 e''8-3 f''8-1 g''8 a''8 b''8 |
    < e'' g'' c''' >4-. r4 < f'' g'' >4^> |
}

pianorightuppersectionab =  {
    < e'' g'' c''' >4^> g''4 g''4 |
}

pianorightuppersectionac =  {
    < e'' g'' c''' >4^> r4 r4 |
}

pianorightuppersectiona =  {
    \repeat volta 2 { \pianorightuppersectionaa }
    \alternative {
        { \pianorightuppersectionab }
        { \pianorightuppersectionac }
    }
}

pianorightuppersectionb =  {
    \key ees \major
    \repeat unfold 2 {
        r4\p c''8  ees''8 c''8 ees''8 |
        g''4 r4 ees''4 |
        \tuplet 3/2 { ees''8 [ f''8 ees''8 ] } d''2 |
        g''4 r4 f''4 |
        \tuplet 3/2 { ees''8 [ f''8 ees''8 ] } d''4 c''4 |
    }
    \alternative {
        {
            \tuplet 3/2 { ees''8 [ f''8 ees''8 ] } d''4 c''4 |
            \acciaccatura { fis''8 } g''8 r8 g'2 |
            \acciaccatura { fis''8 } g''8 r8 g'2 |
        }
        {
            b'4 c''4 d''4 |
            < ees' g' c'' >2.\< ~ |
            < ees' g' c'' >4 \! e'4 g'4 |
        }
    }
}

pianorightuppersectioncd =  {
    \key c \major
    c'''4\f   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    f''4 d''2^> ~ |
    d''4 d''4 e''4 |
    f''4   g''8 f''8 e''8 d''8 |

    f''4   g''8 f''8 e''8 d''8 |
    e''4 c''2^> ~ |
    c''4 e''4 g''4 |
    c'''4   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    b''4 a''2^> ~ |
    a''4 b''4 a''4 |
    g''8-. r8   g'8-2 a'8-3 b'8-4 c''8-1 |

      d''8-2 e''8-3 f''8-1 g''8 a''8 b''8 |
    < e'' g'' c''' >4-. r4 < f'' g'' >4^> |
    < e'' g'' c''' >4^> b''4 c'''4 |

    \key g \major
    \repeat volta 2 {
        \acciaccatura { c'''8 } b''4 a''8  gis''8  a''4 ~ |
        a''4 a''4 b''4 |
        \acciaccatura { b''8 } a''4 g''8  fis''8  g''4 ~ |
        g''4 fis''4 e''4 |

        e''4 d''8  cis''8  d''4 ~ |
        d''4 fis''4 e''4 |
        e''4 d''8  cis''8  d''4 ~ |
        d''4 b''4 c'''4 |

        \acciaccatura { c'''8 } b''4 a''8  gis''8  a''4 ~ |
        a''4 a''4 b''4 |
        \acciaccatura { b''8 } a''4 g''8  fis''8  g''4 ~ |
        g''4 fis''4 e''4 |

        \tuplet 3/2 { d''8 [ e''8 d''8 ] } cis''4 d''4 |
        b''2 < c'' d'' a'' >4 |
    }
    \alternative {
        {
            < b'' d'' g'' >2. ~ |
            < b'' d'' g'' >4 b''4 c'''4 |
        }
        {
            < b'' d'' g'' >2.\< ~ |
            < b'' d'' g'' >4 g''4 g''4\! |
        }
    }
}

pianorightupperfine =  {
    < e'' g'' c''' >4^>
}

%-------------------------------------------------

pianoleftupperintro =  {
    s4 r4 r4
}

pianoleftuppersectionaa =  {
    c4 < e g c' >4 < e g c' >4 |
    e4 < g c' >4 < g c' >4 |
    d4 < f g b >4 < f g b >4 |
    g,4 < f g b >4 < f g b >4 |
    d4 < f g b >4 < f g b >4 |
    g,4 < f g b >4 < f g b >4 |
    c4 < e g c' >4 < e g c' >4 |

    c4 g4 e4 |
    c4 < e g c' >4 < e g c' >4 |
    e4 < g c' >4 < g c' >4 |
    f4 < a d' >4 < a d' >4 |
    fis4 < a dis' >4 < a dis' >4 |
    g4 < c' e' >4 < c' e' >4 |
    g,4 < f g b >4 < f g b >4 |
    < c g >4 r4 < g, g >4-> |
}

pianoleftuppersectionab =  {
    < c g >4^> g4 g4 |
}

pianoleftuppersectionac =  {
    < c g >4^> g4^> ees4^> |
}

pianoleftuppersectiona =  {
    \repeat volta 2 { \pianoleftuppersectionaa }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionb =  {
    \repeat unfold 2 {
        c4-> < ees g c' >4 < ees g c' >4 |
        c4 < ees g c' >4 < ees g c' >4 |
        g,4 < f g b >4 < f g b >4 |
        g,4 < f g b >4 < f g b >4 |
        c4 < ees g c' >4 < ees g c' >4 |
    }
    \alternative {
        {
            c4 < e aes >4 < e aes >4 |
            b,4 < d g >4 < d g >4 |
            g,4 < f g b >4 < f g b >4 |
        }
        {
            g,4 < f g b >4 < f g b >4 |
            c4 g4 ees4 |
            c4 g4 e4 |
        }
    }
}

pianoleftuppersectioncd =  {
    c4 < e g c' >4 < e g c' >4 |
    e4 < g c' >4 < g c' >4 |
    d4 < f g b >4 < f g b >4 |
    g,4 < f g b >4 < f g b >4 |
    d4 < f g b >4 < f g b >4 |

    g,4 < f g b >4 < f g b >4 |
    c4 < e g c' >4 < e g c' >4 |
    c4 g4 e4 |
    c4 < e g c' >4 < e g c' >4 |
    e4 < g c' >4 < g c' >4 |
    f4 < a d' >4 < a d' >4 |
    fis4 < a dis' >4 < a dis' >4 |
    g4 < c' e' >4 < c' e' >4 |

    g,4 < f g b >4 < f g b >4 |
    < c g >4 r4 < g, g >4-> |
    < c g >4-> r4 r4 |

    \key g \major
    \repeat volta 2 {
        \grace { s8 } d4 < fis c' >4 < fis c' >4 |
        d4 < fis c' >4 < fis c' >4 |
        g,4 < d g b >4 < d g b >4 |
        g,4 < d g b >4 < d g b >4 |

        d4 < fis c' >4 < fis c' >4 |
        d4 < fis c' >4 < fis c' >4 |
        g,4 < d g b >4 < d g b >4 |
        g,4 < d g b >4 < d g b >4 |

        \grace { s8 } d4 < fis c' >4 < fis c' >4 |
        d4 < fis c' >4 < fis c' >4 |
        g,4 < d g b >4 < d g b >4 |
        cis4 < e bes >4 < e bes >4 |

        d4 < g b >4 < g b >4 |
        d4 < fis c' >4 < fis c' >4 |
    }
    \alternative {
        {
            g,4( d4 b,4 |
            g,4) r4 r4 |
        }
        {
            g,4 b,4 d4 |
            f4 e4 d4 |
        }
    }
}

pianoleftupperfine =  {
    < c g >4^>
}

%-------------------------------------------------

pianorightuppernotes =  {
    \key c \major
    \time 3/4
    \pianorightupperintro
    \pianorightuppersectiona
    \key ees \major
    \pianorightuppersectionb
    \key c \major
    \pianorightuppersectioncd
}

pianorightlowernotes =  {
    \key c \major
    \time 3/4
}

pianoleftuppernotes =  {
    \key c \major
    \time 3/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectioncd
}

pianoleftlowernotes =  {
    \key c \major
    \time 3/4
}

pianorightnotesmidi =  {
    \key c \major
    \time 3/4
    \preintro
    \metronomeextraintro
    \pianorightupperintro

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectioncd

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectioncd

    \pianorightuppersectionaa
    \pianorightuppersectionab
    \pianorightuppersectionaa
    \pianorightupperfine
}

pianoleftnotesmidi =  {
    \key c \major
    \time 3/4
    \preintro
    \metronomeextraintro
    \pianoleftupperintro

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectioncd

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectioncd

    \pianoleftuppersectionaa
    \pianoleftuppersectionab
    \pianoleftuppersectionaa
    \pianoleftupperfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro =  {
    s2 | s2 |
}

accordionrightupperintro =  {
    s4 g''4 g''4 |
}

accordionrightuppersectionaa =  {
    < e'' c''' >4\f   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    f''4 d''2^> ~ |
    d''4 d''4 e''4 |

    f''4   g''8 f''8 e''8 d''8 |
    f''4   g''8 f''8 e''8 d''8 |
    e''4 c''2^> ~ |
    c''4 e''4 g''4 |

    < e'' c''' >4   e''8 f''8 e''8 f''8 |
    g''4   a''8 g''8 f''8 e''8 |
    b''4 a''2^> ~ |
    a''4 b''4 a''4 |

    g''8 r8 g'8 (  a'8 b'8 c''8 |
    d''8  e''8 f''8 g''8 a''8 b''8 |
    c'''4 ) r4 < f'' g'' >4^> |
}

accordionrightuppersectionab =  {
    < e'' c''' >4^> g''4 g''4 |
}

accordionrightuppersectionac =  {
    < e'' c''' >4^> r4 r4 |
}

accordionrightuppersectiona =  {
    \repeat volta 2 { \accordionrightuppersectionaa }
    \alternative {
        { \accordionrightuppersectionab }
        { \accordionrightuppersectionac }
    }
}

accordionrightuppersectionb =  {
    \key ees \major
    \repeat unfold 2 {
        r4\p c''8  ees''8 c''8 ees''8 |
        g''4 r4 ees''4 |
        \tuplet 3/2 { ees''8 ( [ f''8 ees''8 ] } d''2 ) |
        g''4 r4 f''4 |
        \tuplet 3/2 { ees''8 ( [ f''8 ees''8 ] } d''4 ) c''4 |
    }
    \alternative {
        {
            \tuplet 3/2 { ees''8 ( [ f''8 ees''8 ] } d''4 ) c''4 |
            \acciaccatura { fis''8 } g''8 r8 g'2 |
            \acciaccatura { fis''8 } g''8 r8 g'2 |
        }
        {
            b'4 c''4 d''4 |
            c''2.\< ~ |
            c''4 \! e''4 g''4 |
        }
    }
}

accordionrightuppersectioncd =  {
    \key c \major
    < e'' c''' >4\f e''8  f''8 e''8 f''8 |
    g''4 a''8  g''8 f''8 e''8 |
    f''4 d''2^> ~ |
    d''4 d''4 e''4 |

    f''4 g''8  f''8 e''8 d''8 |
    f''4 g''8  f''8 e''8 d''8 |
    e''4 c''2^> ~ |
    c''4 e''4 g''4 |

    < e'' c''' >4 e''8  f''8 e''8 f''8 |
    g''4 a''8  g''8 f''8 e''8 |
    b''4 a''2^> ~ |
    a''4 b''4 a''4 |

    g''8-. r8 g'8 (  a'8 b'8 c''8 |
    d''8  e''8 f''8 g''8 a''8 b''8 |
    c'''4 ) r4 < f'' g'' >4^> |
    < e'' c''' >4^> b''4 c'''4 |

    \key g \major
    \repeat volta 2 {
        \acciaccatura { c'''8 } b''4 a''8  gis''8  a''4 ~ |
        a''4 a''4 b''4 |
        \acciaccatura { b''8 } a''4 g''8  fis''8  g''4 ~ |
        g''4 fis''4 e''4 |

        e''4 d''8  cis''8  d''4 ~ |
        d''4 fis''4 e''4 |
        e''4 d''8  cis''8  d''4 ~ |
        d''4 b''4 c'''4 |

        \acciaccatura { c'''8 } b''4 a''8  gis''8  a''4 ~ |
        a''4 a''4 b''4 |
        \acciaccatura { b''8 } a''4 g''8  fis''8  g''4 ~ |
        g''4 fis''4 e''4 |

        \tuplet 3/2 { d''8 ( [ e''8 d''8 ] } cis''4 ) d''4 |
        < d'' b'' >2 < c'' a'' >4 |
    }
    \alternative {
        {
            < b' g'' >2. ~ |
            < b' g'' >4 b''4 c'''4 |
        }
        {
            < b' g'' >2.\< ~ |
            < b' g'' >4 g''4 g''4\! |
        }
    }
}

accordionrightupperfine =  {
    < e'' g'' c''' >4^>
}

%-------------------------------------------------

accordionleftupperintro =  {
    s4 r4 r4
}

accordionleftuppersectionaa =  {
    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |
    b,4-- g4^"7" g4 |
    g,4 g4 g,4 |

    b,4-- g4^"7" g4 |
    g,4 g4 g4 |
    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |

    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |
    << {
        r4 d'4^"m" d'4 |
        r4 c'4^"d" c'4 |

        s2. |
    } \\ {
        f,2.-4 ( |
        fis,2.-3-- |

        \stemUp g,4 ) \stemNeutral c'4^"M" c'4 |
    } >>
    g,4 g4^"7" g4 |
    < c c' >4^"M" r4 < g, g >^"7"_> |
}

accordionleftuppersectionab =  {
    < c c' >4^"M"_> r4 r4 |
}

accordionleftuppersectionac =  {
    < c c' >4^"M"_> g,4^>^"B.S"_2 ees,_5^> |
}

accordionleftuppersectiona =  {
    \repeat volta 2 { \accordionleftuppersectionaa }
    \alternative {
        { \accordionleftuppersectionab }
        { \accordionleftuppersectionac }
    }
}

accordionleftuppersectionb =  {
    \repeat unfold 2 {
        c4^>_3 c'4^"m" c'4 |
        c4 c'4 c'4 |
        g,4 g4^"7" g4 |
        g,4 g4 g4 |
        c4 c'4^"m" c'4 |
    }
    \alternative {
        {
            c4 c'4^"m" c'4 |
            g,4 g4^"7" g4 |
            g,4 g4 g4 |
        }
        {
            g,4 c'4^"m" g,4_2 |
            c4^"B.S."_3 g,4_2 ( e,4_5 |
            c4_3 ) r4 r4 |
        }
    }
}

accordionleftuppersectioncd =  {
    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |
    b,4-- g4^"7" g4 |
    g,4 g4 g,4 |

    b,4--^"7" g4 g4 |
    g,4 g4 g4 |
    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |

    c4 c'4^"M" c'4 |
    g,4 c'4 c'4 |
    << {
        r4 d'4^"m" d'4 |
        r4 c'4^"d" c'4 |

        s2. |
    } \\ {
        f,2.-4 ( |
        fis,2.-3-- |

        \stemUp g,4 ) \stemNeutral c'4^"M" c'4 |
    } >>
    g,4 g4^"7" g4 |
    < c c' >4^"M" r4 < g, g >^"7"_> |
    < c c' >4^"M" r4 r4

    \key g \major
    \repeat volta 2 {
        \grace { s8 } d,4 d'4^"7" d'4 |
        d,4 d'4 d'4 |
        g,4 g4^"M" g4 |
        g,4 g4 g4 |

        d,4 d'4^"7" d'4 |
        d,4 d'4 d'4 |
        g,4 g4^"M" g4 |
        g,4 g4^"M" c'4^"M" |

        \grace { s8 } d,4 d'4^"7" d'4 |
        d,4 d'4 d'4 |
        g,4 g4^"M" g4 |
        g,4 g4 g4 |

        d,4 d'4^"7" d'4 |
        d,4 d'4 d'4 |
    }
    \alternative {
        {
            g,4^"B.S."_3 d,4_2 ( b,4_4 |
            g,4_3 ) r4 r4 |
        }
        {
            g,4^"B.S"_3 b,4_4_-^> d,4_2^> |
            f,4^>_4 e,4^>_3 d,4^>_2 |
        }
    }
}

accordionleftupperfine =  {
    < c c' >4^"M"_>
}

%-------------------------------------------------

accordionrightuppernotes =  {
    \key c \major
    \time 3/4
%    \stemUp
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectioncd
}

accordionrightlowernotes =  {
    \key c \major
    \time 3/4
}

accordionleftuppernotes =  {
    \key c \major
    \time 3/4
%    \stemUp
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectioncd
}

accordionleftlowernotes =  {
    \key c \major
    \time 3/4
}

accordionrightnotesmidi =  {
    \key c \major
    \time 3/4
    \preintro
    \metronomeextraintro
    \accordionrightupperintro

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectioncd

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectioncd

    \accordionrightuppersectionaa
    \accordionrightuppersectionab
    \accordionrightuppersectionaa
    \accordionrightupperfine
}

accordionleftnotesmidi =  {
    \key c \major
    \time 3/4
    \preintro
    \metronomeextraintro
    \accordionleftupperintro

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectioncd

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectioncd

    \accordionleftuppersectionaa
    \accordionleftuppersectionab
    \accordionleftuppersectionaa
    \accordionleftupperfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 3/4
    < sna hhc >4\p sna8 sna8 sna4 | < sna hhc >8 sna8 sna4 sna4 |
}

drumshighintro = \drummode { s4 r2 | }

drumshighsectionaa = \drummode {
    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4->^\markup { \italic \large "Fill" } < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
}

drumshighfine = \drummode { < sna hhc >4-> }

drumshighsectionab = \drummode { sna4 r2 | }

drumshighsectionac = \drummode { sna4 r2 | }

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionb = \drummode {
    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |
}

drumshighsectioncd = \drummode {
    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    < sna hhc >4->^\markup { \italic \large "Fill" } < sna hhc >8 sna8 < hhc sna >4 |
    < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    < sna hhc >4 hhc4 < sna hhc > 4 |
    < sna hhc >4 hhc4 hhc4 |

    \repeat volta 2 {
        \grace { s8 } < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
        < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
        < sna hhc >4 hhc4 < sna hhc > 4 |
        < sna hhc >4 hhc4 hhc4 |

        < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
        < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
        < sna hhc >4 hhc4 < sna hhc > 4 |
        < sna hhc >4 hhc4 hhc4 |

        \grace { s8 } < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
        < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
        < sna hhc >4 hhc4 < sna hhc > 4 |
        < sna hhc >4 hhc4 hhc4 |

        < sna hhc >4-> < sna hhc >8 sna8 < hhc sna >4 |
        < sna hhc >8 sna8 < sna hhc >4 < sna hhc >4 |
    }
    \alternative {
        {
            < sna hhc >4 hhc4 < sna hhc > 4 |
            < sna hhc >4 hhc4 hhc4 |
        }
        {
            < sna hhc >4 hhc4 < sna hhc > 4 |
            < sna hhc >4 hhc4 hhc4 |
        }
    }
}

drumshigh = \drummode {
    \time 3/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectioncd
}

drumshighmidi = \drummode {
    \time 3/4
    \preintro
    \drumshighextraintro
    \drumshighintro

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectioncd

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectioncd

    \drumshighsectionaa
    \drumshighsectionab
    \drumshighsectionaa
    \drumshighfine
}

drumslowextraintro = \drummode {
    \time 3/4
    bda4\p s2 | bda8 s8 s2 |
}

drumslowintro = \drummode {
    s4 s2 |
}

drumslowsectionaa = \drummode {
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 |
}

drumslowsectionab = \drummode { bda4 s2 | }

drumslowsectionac = \drummode { bda4 s2 | }

drumslowsectiona =  {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionb = \drummode {
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
}

drumslowfine = \drummode { bda4 }

drumslowsectioncd = \drummode {
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
    bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |

    \repeat volta 2 {
        \grace { s8 } bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
        bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
        \grace { s8 } bda4 s2 | bda4 s2 | bda4 s2 | bda4 s2 |
        bda4 s2 | bda4 s2 |
    }
    \alternative { { bda4 s2 | bda4 s2 | } {  bda4 s2 | bda4 s2 | } }
}

drumslow = \drummode {
    \stemDown
    \dynamicDown
    \time 3/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectioncd
}

drumslowmidi = \drummode {
    \time 3/4
    \preintro
    \drumslowextraintro
    \drumslowintro

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectioncd

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectioncd

    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectionaa
    \drumslowfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2. | c2. | s2. | g2.:7 | s2. | g2.:7 | s2. | c2. | s2. |
}

previewnotes = {
    \transpose d c {
        \key d \major
        \time 3/4
        s4 a'4 a'4 |
        \bar ".|:"
        d''4 fis'8 g'8 fis'8 g'8 |
        a'4 b'8 a'8 g'8 fis'8 |
        g'4 e'2-> ~ |
        e'4 e'4 fis'4 |
        g'4 a'8 g'8 fis'8 e'8 |
        g'4 a'8 g'8 fis'8 e'8 |
        fis'4 d'2-> ~ |
    }
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

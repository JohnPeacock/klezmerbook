\version "2.18.0"

bandmsectionaa =  {
    \markA \positionA
    \tempo \tempostring
    s4. | \breakAone s4. | \breakAtwo s4. | \breakAtre s4. | \breakAfor
    s4. | \breakAfiv s4. | \breakAsix s4. | \breakAsev s4. | \breakAeit
    s4. | \breakAnin s4. | \breakAten s4. | \breakAelv s4. | \breakAtwl
    s4. | \breakAtht s4. | \breakAfrt
}

bandmsectionab = { s4. | \breakAfft s4. | \breakAsxt }

bandmsectionac = { s4. | \breakAsvt s4. | }

bandmsectionbb = { s4. | \markDCAL \positionDCAL }

bandmsectionbc = { s4. | }

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar ".|:-||"
    \breakA

    \repeat volta 2 {
        \markB \positionB
        \grace { s16 } s4. | \breakBone \grace { s16 } s4. | \breakBtwo
        \grace { s16 } s4. | \breakBtre \grace { s16 } s4. | \breakBfor
        s4. | \breakBfiv s4. | \breakBsix s4. | \breakBsev s4. | \breakBeit
        \grace { s16 } s4. | \breakBnin \grace { s16 } s4. | \breakBten
        \grace { s16 } s4. | \breakBelv \grace { s16 } s4. | \breakBtwl
        \grace { s8 } s4. | \breakBtht \grace { s8 } s4. | \breakBfrt
        \grace { s8 } s4. | \breakBfft \grace { s8 } s4. | \breakBsxt
        s4. | \breakBsvt
    }
    \alternative { { \bandmsectionbb \breakBett } { \bandmsectionbc } }
    \bar ".|:-||" \breakB
}

bandmsectionca =  {
    \time 2/4
    \markSC \positionSC
    \tempo \tempostringtwo
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt
}

bandmsectioncb =  { s2 | \breakCfft s2 | \breakCsxt }

bandmsectioncc =  { s2 | \breakCsvt s2 | }

bandmsectionc =  {
    \repeat volta 2 { \bandmsectionca }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \bar ".|:-||" \breakC
}

bandmsectiondaaminusone =  {
    \grace { s16 } s2 | \breakDtwo
    \grace { s16 } s2 | \breakDtre \grace { s16 } s2 | \breakDfor

    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
    s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl

    \grace { s8 } s2 | \breakDtht \grace { s8 } s2 | \breakDfrt
    s2 | \breakDfft s2 | \breakDsxt
    \bar "||"
    \markTC \positionTC
}

bandmsectiondb =  { s2 | \breakDeit }

bandmsectiondc =  { s2 | \markDS \positionDS }

bandmsectiond =  {
    \repeat volta 2 {
        \markD \positionD
        \grace { s16 s16 s16 } s2 | \breakDone
        \bandmsectiondaaminusone
        s2 | \breakDsvt
    }
    \alternative { { \bandmsectiondb } { \bandmsectiondc } }
    \bar "||" \breakD
}

codaspacer = { \stopStaff s2 \startStaff | \breakBL }

bandmcoda =  { \markCCRT \positionCCRT \grace { s8. } s2 | \breakCCone s2 | }

bandmNV =  {
    \time 3/8
    \bandmsectiona
    \bandmsectionc
    \bandmsectiond
    \codaspacer
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for tempo changes in
% the midi output.

preintro =  {
    s4. |
}

metronomesectionaa =  {
    s4. | s4. | s4. | s4. |
    s4. | s4. | s4. | s4. |
    s4. | s4. | s4. | s4. |
    s4. | s4. |
}

metronomesectionab =  {
    s4. | s4. |
}

metronomesectionac =  {
    s4. | s4. |
}

metronomesectionbb =  {
    s4. |
}

metronomesectionbc =  {
    s4. |
}

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }

\repeat volta 2 {
    \grace { s16 } s4. | \grace { s16 } s4. |
    \grace { s16 } s4. | \grace { s16 } s4. |

    s4. | s4. | s4. | s4. |

    \grace { s16 } s4. | \grace { s16 } s4. |
    \grace { s16 } s4. | \grace { s16 } s4. |

    \grace { s8 } s4. | \grace { s8 } s4. |
    \grace { s8 } s4. | \grace { s8 } s4. |

    s4. |
}
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronomesectionca =  {
    \time 2/4
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

metronomesectioncb =  {
    s2 | s2 |
}

metronomesectioncc =  {
    s2 | s2 |
}

metronomesectionc =  {
    \repeat volta 2 { \metronomesectionca }
    \alternative { { \metronomesectioncb } { \metronomesectioncc } }
}

metronomesectiondaaminusone =  {
    \grace { s16 } s2 |
    \grace { s16 } s2 |
    \grace { s16 } s2 |

    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | \grace { s8 } s2 | s2 | s2 |
}

metronomesectiondaa =  {
    \grace { s16 s16 s16 } s2 |
    \metronomesectiondaaminusone
}

metronomesectiondb =  {
    s2 |
}

metronomesectiondc =  {
    s2 |
}

metronomesectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \metronomesectiondaaminusone
        s2 |
    }
    \alternative { { \metronomesectiondb } { \metronomesectiondc } }
}

metronomecoda =  {
    \grace { s8. } s2 | s2 |
}

metronome =  \context Voice = "metronome" {
    \time 3/8
    \preintro
    \tempo 8 = 120 % Slowly - with steady rythmn
    \metronomesectiona
    \metronomesectiona

    \tempo 4 = 120
    \metronomesectionc
    \metronomesectiond

    \metronomesectionc
    \metronomesectiond

    \metronomesectionc
    \metronomesectiondaa

    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  {
    gis'8.\mf (  a'16 b'16 a'16  ) |
    gis'8. (  f'16 e'16 d'16  ) |
    a'8 r8 a'8 |
    a'8. (  d'16 f'16 a'16  ) |

    d''8. (  c''16 b'16 a'16  ) |
    gis'8. (  f'16 e'16 d'16  ) |
    a'8 r8 a'8 |
    a'8 r8 a'8 |

    gis'8. (  a'16 b'16 a'16  ) |
    gis'8. (  f'16 e'16 d'16  ) |
    g'8 (  g'8 g'8  |
    bes'4. ) |

    a'8. (  d'16 f'16 a'16  ) |
    gis'8. (  f'16 e'16 f'16  ) |
}

melodysectionab =  {
    d'8. (  d''16 a'16 f'16  ) |
    d'8 r8 a'8 |
}

melodysectionac =  {
    d'8. (  d''16 a'16 f'16  ) |
    d'8 r8 a'8-> |
}

melodysectionbb =  {
    d''4 a'8-> |
}

melodysectionbc =  {
    d''4 r8 |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }

\repeat volta 2 {
    \grace { s16 } d''4.->\sf ~ |
    \grace { s16 } d''4. |
    \grace { s16 } f''8  f''8 e''16 ( d''16 )  |
    \grace { s16 } f''8  f''8 e''16 ( d''16 )  |

    cis''4.->\sf ~ |
    cis''4. |
    a'8 (  bes'8 cis''16 d''16  ) |
    e''8 (  f''8 gis''16 a''16  ) |

    \grace { s16 } d''4 a''8 |
    \grace { s16 } gis''8. (  f''16 e''16 d''16  ) |
    \grace { s16 } f''8 (  f''8 e''16 d''16  ) |
    \grace { s16 } f''8 (  f''8 e''16 d''16  ) |

    \grace { s8 } g''4. |
    \grace { s8 } bes''4. |
    \grace { s8 } a''8.  d''16 f''16 a''16  |
    \grace { s8 } gis''8.  f''16 e''16 f''16  |

    d''8.  d'''16 a''16 f''16  |
}
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melodysectionca =  {
    \time 2/4
    gis''8\ff  a''8 b''8 a''8  |
    gis''8  f''8 e''8 d''8  |
    a''8  a''8 a''8 a''8 ~  |
    a''8  d''8 f''8 a''8  |

    d'''8  c'''8 b''8 a''8  |
    gis''8  f''8 e''8 d''8  |
    a''4. a''8 |
    a''4. a''8 |

    gis''8  a''8 b''8 a''8  |
    gis''8  f''8 e''8 d''8  |
    g''8 g''4 g''8 |
    bes''2 |

    a''8  d''8 f''8 a''8  |
    gis''8  f''8 e''8 f''8  |
}

melodysectioncb =  {
    d''8  d'''8 a''8 f''8  |
    d''8 r8 a''4-^ |
}

melodysectioncc =  {
    d''2 ~ |
    d''4 a'4-^ |
}

melodysectionc =  {
    \repeat volta 2 { \melodysectionca }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodysectiondaaminusone =  {
    \grace { s16 } d''2-> |
    \grace { s16 } f''8  f''8 e''8 d''8  |
    \grace { s16 } f''8  f''8 e''8 d''8  |

    cis''2-> |
    cis''2-> |
    a'8  bes'8 cis''8 d''8  |
    e''8  f''8 gis''8 a''8  |

    d''4. a''8 |
    a''16 (  gis''16 f''8  ) f''16 (  e''16 d''8  ) |
    f''8  f''8 e''8 d''8  |
    f''8  f''8 e''8 d''8  |

    \grace { s8 } g''2-> |
    \grace { s8 } bes''2-> |
    a''8  d''8 f''8 a''8  |
    gis''8  f''8 e''8 f''8  |
}

melodysectiondaa =  {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
    \melodysectiondaaminusone
}

melodysectiondb =  {
    d''8 r8 a'4-> |
}

melodysectiondc =  {
    d''8 r8 a''4-^ |
}

melodysectiond =  {
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \melodysectiondaaminusone
        d''8  d'''8 a''8 f''8  |
    }
    \alternative { { \melodysectiondb } { \melodysectiondc } }
}

melodycoda =  {
    \acciaccatura { a''16\ff [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

melody =  {
    \key f \major
    \time 3/8
    \melodysectiona
    \melodysectionc
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \melodysectiondaaminusone
        d''8  d'''8 a''8 f''8  |
    }
    \alternative { { \melodysectiondb } { \melodysectiondc } }
    \codaspacer
    \melodycoda
}

melodymidi =  {
    \key f \major
    \time 3/8
    \preintro
    \melodysectiona
    \melodysectiona

    \melodysectionc
    \melodysectiond

    \melodysectionc
    \melodysectiond

    \melodysectionc
    \melodysectiondaa

    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionaa =  {
    ais'8.\f (  b'16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    g'4 g'8
    g'4 r8 |

    e''8. (  d''16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    g'8 r8 g'8 |
    g'8 r8 b'8 |

    ais'8. (  b'16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    e'8  e'8 e'8  |
    a'16  e'16 c''16 a'16 e'16 c'16  |

    e'4 e'8 |
    e'4 fis'16  g'16  |
}

tenorharmonysectionab =  {
    e'8. (  e''16 b'16 g'16  ) |
    e'8 r8 b'8 |
}

tenorharmonysectionac =  {
    e'8. (  e''16 b'16 g'16  ) |
    e'8 r8 b'8-^ |
}

tenorharmonysectionbb =  {
    e''4 b'8-^ |
}

tenorharmonysectionbc =  {
    e''4 r8 |
}

tenorharmonysectiona =  {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }

\repeat volta 2 {
    \grace { s16 } g'8.  b'16 e''16 b'16  |
    \grace { s16 } g'8.  b'16 g'16 e'16  |
    \grace { s16 } b'4.-> |
    \acciaccatura { a'16 } b'4. |

    fis'8.  b'16 dis''16 b'16  |
    fis'8.  b'16 dis'16 fis'16  |
    b'8  c''8  dis''16  e''16  |
    fis''8  g''8  ais''16  b''16  |

    \grace { s16 } e''4. |
    \acciaccatura { dis''16 } e''4.-^ |
    \grace { s16 } b'4. |
    \acciaccatura { ais'16 } b'4. |

    \acciaccatura { a'16 [ b'16 ] } c''4.-^ |
    \acciaccatura { c''16 [ d''16 ] } e''4.-^ |
    \grace { s8 } e''4. |
    \acciaccatura { s16 dis''16 } e''4. |

    e''4. |
}
    \alternative { { \tenorharmonysectionbb } { \tenorharmonysectionbc } }
}

tenorharmonysectionca =  {
    \time 2/4
    ais''8\ff  b''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    g''8  g''8 g''8 g''8 ~  |
    g''8  e''8 g''8 b''8  |

    e'''8  d'''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    g''4. g''8 |
    g''8  e''8 b'8 e''8  |

    ais''8  b''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    e''8 e''4 e''8 |
    a''8  e''8 a'8 e''8  |

    e''2 |
    e''2 |
}

tenorharmonysectioncb =  {
    e''8  e'''8 b''8 g''8  |
    e''8 r8 b''4-^ |
}

tenorharmonysectioncc =  {
    e''8  e'''8 b''8 g''8  |
    e''8 r8 b'4-^ |
}

tenorharmonysectionc =  {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonysectiondaaminusone =  {
    \grace { s16 } g'8  b'8 g'8 e'8  |
    \acciaccatura { ais'16 } b'2-^ |
    \acciaccatura { ais'16 } b'2-^ |

    fis'8  b'8 dis''8 b'8  |
    fis'8 (  b'8  ) dis'8 (  fis'8  ) |
    b'8 (  c''8 dis''8 e''8  ) |
    fis''8 (  g''8 ais''8 b''8  ) |

    e''4. b''8 |
    b''16 (  ais''16 g''8  ) g''16 (  fis''16 e''8  ) |
    b'2-^ |
    b'2-^ |

    \acciaccatura { a'16 [ b'16 ] } c''2-^ |
    \acciaccatura { c''16 [ d''16 ] } e''2-^ |
    g''4 e''4 |
    e''2 |
}

tenorharmonysectiondaa =  {
    \grace { s16 s16 s16 } g'8  b'8 e''8 b'8  |
    \tenorharmonysectiondaaminusone
}

tenorharmonysectiondb =  {
    e''8 r8 b'4-^ |
}

tenorharmonysectiondc =  {
    e''8 r8 b''4-^ |
}

tenorharmonysectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8  b'8 e''8 b'8  |
        \tenorharmonysectiondaaminusone
        e''8  e'''8 b''8 g''8  |
    }
    \alternative { { \tenorharmonysectiondb } { \tenorharmonysectiondc } }
}

tenorharmonycoda =  {
    \acciaccatura { e''16\ff [ eis''16 fis''16 ] } g''8-^ r8 a'8-^ r8 |
    g'2-^-\fermata |
}

tenorharmony =  \transpose c bes, {
    \key g \major
    \time 3/8
    \tenorharmonysectiona
    \tenorharmonysectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8  b'8 e''8 b'8  |
        \tenorharmonysectiondaaminusone
        e''8  e'''8 b''8 g''8  |
    }
    \alternative { { \tenorharmonysectiondb } { \tenorharmonysectiondc } }
    \codaspacer
    \tenorharmonycoda
}

tenorharmonymidi =  \transpose c bes, {
    \key g \major
    \time 3/8
    \preintro
    \tenorharmonysectiona
    \tenorharmonysectiona

    \tenorharmonysectionc
    \tenorharmonysectiond

    \tenorharmonysectionc
    \tenorharmonysectiond

    \tenorharmonysectionc
    \tenorharmonysectiondaa

    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionaa =  {
    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
}

altoharmonysectionab =  {
    s4. |
    s4. |
}

altoharmonysectionac =  {
    s4. |
    s4. |
}

altoharmonysectionbb =  {
    s4. |
}

altoharmonysectionbc =  {
    s4. |
}

altoharmonysectiona =  {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \altoharmonysectionac } }

\repeat volta 2 {
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |

    s4. |
}
    \alternative { { \altoharmonysectionbb } { \altoharmonysectionbc } }
}

altoharmonysectionca =  {
    \time 2/4
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
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

altoharmonysectioncc =  {
    s2 |
    s2 |
}

altoharmonysectionc =  {
    \repeat volta 2 { \altoharmonysectionca }
    \alternative { { \altoharmonysectioncb } { \altoharmonysectioncc } }
}

altoharmonysectiondaaminusone =  {
    \grace { s16 } s2 |
    \grace { s16 } s2 |
    \grace { s16 } s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 } s2 |
    \grace { s8 } s2 |
    s2 |
    s2 |
}

altoharmonysectiondaa =  {
    \grace { s16 s16 s16 } s2 |
    \altoharmonysectiondaaminusone
}

altoharmonysectiondb =  {
    s2 |
}

altoharmonysectiondc =  {
    s2 |
}

altoharmonysectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \altoharmonysectiondaaminusone
        s2 |
    }
    \alternative { { \altoharmonysectiondb } { \altoharmonysectiondc } }
}

altoharmonycoda =  {
    \grace { s8. } s2 |
    s2 |
}

altoharmony =  {
    \key f \major
    \time 3/8
    \altoharmonysectiona
    \altoharmonysectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \altoharmonysectiondaaminusone
        s2 |
    }
    \alternative { { \altoharmonysectiondb } { \altoharmonysectiondc } }
    \codaspacer
    \altoharmonycoda
}

altoharmonymidi =  {
    \key f \major
    \time 3/8
    \preintro
    \altoharmonysectiona
    \altoharmonysectiona

    \altoharmonysectionc
    \altoharmonysectiond

    \altoharmonysectionc
    \altoharmonysectiond

    \altoharmonysectionc
    \altoharmonysectiondaa

    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa =  {
    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
}

countersectionab =  {
    s4. |
    s4. |
}

countersectionac =  {
    s4. |
    s4. |
}

countersectionbb =  {
    s4. |
}

countersectionbc =  {
    s4. |
}

countersectiona =  {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }

\repeat volta 2 {
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |

    s4. |
}
    \alternative { { \countersectionbb } { \countersectionbc } }
}

countersectionca =  {
    \time 2/4
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
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

countersectioncb =  {
    s2 |
    s2 |
}

countersectioncc =  {
    s2 |
    s2 |
}

countersectionc =  {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countersectiondaaminusone =  {
    \grace { s16 } s2 |
    \grace { s16 } s2 |
    \grace { s16 } s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 } s2 |
    \grace { s8 } s2 |
    s2 |
    s2 |
}

countersectiondaa =  {
    \grace { s16 s16 s16 } s2 |
    \countersectiondaaminusone
}

countersectiondb =  {
    s2 |
}

countersectiondc =  {
    s2 |
}

countersectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \countersectiondaaminusone
        s2 |
    }
    \alternative { { \countersectiondb } { \countersectiondc } }
}

countercoda =  {
    \grace { s8. } s2 |
    s2 |
}

counter =  {
    \key f \major
    \time 3/8
    \countersectiona
    \countersectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \countersectiondaaminusone
        s2 |
    }
    \alternative { { \countersectiondb } { \countersectiondc } }
    \codaspacer
    \countercoda
}

countermidi =  {
    \key f \major
    \time 3/8
    \preintro
    \countersectiona
    \countersectiona

    \countersectionc
    \countersectiond

    \countersectionc
    \countersectiond

    \countersectionc
    \countersectiondaa

    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    d8 r8 d8 |
    g,8 r8 g,8 |
    d8 r8 a,8 |
    d8 r4 |

    d8 r8 d8 |
    g,8 r8 g,8 |
    d8 r8 a,8 |
    d8 r4 |

    d8 r8 a,8 |
    d8 r8 d8 |
    g,8 r8 d8 |
    g,8 r8 g,8 |

    d8 r8 d8 |
    g,8 r8 g,8 |
}

basslinesectionab =  {
    d8 r8 a,8 |
    d8 r4 |
}

basslinesectionac =  {
    d8 r8 a,8 |
    d8 r4 |
}

basslinesectionbb =  {
    d8 r8 a,8 |
}

basslinesectionbc =  {
    d8 r4 |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }

\repeat volta 2 {
    \grace { s16 } d8 r8 a,8 |
    \grace { s16 } d8 r8 a,8 |
    \grace { s16 } d8 r8 a,8 |
    \grace { s16 } d8 r8 d8 |

    a,8 r8 e8 |
    a,8 r8 e8 |
    a,8 r8 e8 |
    a,8 r8 a,8 |

    \grace { s16 } d8 r8 d8 |
    \grace { s16 } g,8 r8 g,8 |
    \grace { s16 } d8 r8 a,8 |
    \grace { s16 } d8 r4 |

    \grace { s8 } g,8 r8 d8 |
    \grace { s8 } g,8 r8 d8 |
    \grace { s8 } d8 r8 a,8 |
    \grace { s8 } d8 r8 a,8 |

    g,8 r8 d8 |
}
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

basslinesectionca =  {
    \time 2/4
    d4 a,4 |
    d4 a4 |
    d4 a,4 |
    d4 a4 |

    d4 a,4 |
    d4 a4 |
    d4 a,4 |
    d4 a4 |

    d4 a4 |
    d4 a,4 |
    g,4 d4 |
    g,8 a,8 bes,8 c8 |

    d4 a,4 |
    d4 a4 |
}

basslinesectioncb =  {
    d4 a,4 |
    d8 a,8 b,8 cis8 |
}

basslinesectioncc =  {
    d4 a,4 |
    d8 d'8 a8 f8 |
}

basslinesectionc =  {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinesectiondaaminusone =  {
    \grace { s16 } d4-> r4 |
    \grace { s16 } d4 a,8 d8 ~ |
    \grace { s16 } d8 a,8 d4 |

    a,4-> r4 |
    a,4-> r4 |
    e4 a,8 e8 ~ |
    e8 a,8 e4 |

    d4-> r4 |
    d4-> r4 |
    d4 a,8 d8 ~ |
    d8 a,8 d4 |

    \grace { s8 } g,4-> r4 |
    \grace { s8 } g,4-> r4 |
    d4 f4 |
    a4 e4 |
}

basslinesectiondaa =  {
    \grace { s16 s16 s16 } d4-> r4 |
    \basslinesectiondaaminusone
}

basslinesectiondb =  {
    d4 r4 |
}

basslinesectiondc =  {
    d8 a,8 b,8 cis8 |
}

basslinesectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } d4-> r4 |
        \basslinesectiondaaminusone
        d4 a,4 |
    }
    \alternative { { \basslinesectiondb } { \basslinesectiondc } }
}

basslinecoda =  {
    \grace { s8. } d'4-> a4-> |
    d2->-\fermata |
}

bassline =  {
    \key f \major
    \time 3/8
    \basslinesectiona
    \basslinesectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } d4-> r4 |
        \basslinesectiondaaminusone
        d4 a,4 |
    }
    \alternative { { \basslinesectiondb } { \basslinesectiondc } }
    \codaspacer
    \basslinecoda
}

basslinemidi =  {
    \key f \major
    \time 3/8
    \preintro
    \basslinesectiona
    \basslinesectiona

    \basslinesectionc
    \basslinesectiond

    \basslinesectionc
    \basslinesectiond

    \basslinesectionc
    \basslinesectiondaa

    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa =  {
    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
}

guitarnotessectionab =  {
    s4. |
    s4. |
}

guitarnotessectionac =  {
    s4. |
    s4. |
}

guitarnotessectionbb =  {
    s4. |
}

guitarnotessectionbc =  {
    s4. |
}

guitarnotessectiona =  {
    \repeat volta 2 { \guitarnotessectionaa }
    \alternative { { \guitarnotessectionab } { \guitarnotessectionac } }

\repeat volta 2 {
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |

    s4. |
}
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotessectionca =  {
    \time 2/4
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
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

guitarnotessectioncb =  {
    s2 |
    s2 |
}

guitarnotessectioncc =  {
    s2 |
    s2 |
}

guitarnotessectionc =  {
    \repeat volta 2 { \guitarnotessectionca }
    \alternative { { \guitarnotessectioncb } { \guitarnotessectioncc } }
}

guitarnotessectiondaaminusone =  {
    \grace { s16 } s2 |
    \grace { s16 } s2 |
    \grace { s16 } s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 } s2 |
    \grace { s8 } s2 |
    s2 |
    s2 |
}

guitarnotessectiondaa =  {
    \grace { s16 s16 s16 } s2 |
    \guitarnotessectiondaaminusone
}

guitarnotessectiondb =  {
    s2 |
}

guitarnotessectiondc =  {
    s2 |
}

guitarnotessectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \guitarnotessectiondaaminusone
        s2 |
    }
    \alternative { { \guitarnotessectiondb } { \guitarnotessectiondc } }
}

guitarnotescoda =  {
    \grace { s8. } s2 |
    s2 |
}

guitarnotes =  {
    \key f \major
    \time 3/8
    \guitarnotessectiona
    \guitarnotessectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \guitarnotessectiondaaminusone
        s2 |
    }
    \alternative { { \guitarnotessectiondb } { \guitarnotessectiondc } }
    \codaspacer
    \guitarnotescoda
}

guitarnotesmidi =  {
    \key f \major
    \time 3/8
    \preintro
    \guitarnotessectiona
    \guitarnotessectiona

    \guitarnotessectionc
    \guitarnotessectiond

    \guitarnotessectionc
    \guitarnotessectiond

    \guitarnotessectionc
    \guitarnotessectiondaa

    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    d4.:min | g4.:7/d | d4.:min | d4.:min |
    d4.:min | g4.:7/d | d4.:min | d4.:min |
    d4.:min | d4.:min | g4.:min | g4.:min |
    d4.:min | g4.:7/d |
}

chordletterssectionab = \chordmode {
    \chordChangesOff d4.:min \chordChangesOn | d4.:min |
}

chordletterssectionac = \chordmode {
    \chordChangesOff d4.:min \chordChangesOn | d4.:min |
}

chordletterssectionbb = \chordmode {
    \chordChangesOff d4.:min \chordChangesOn |
}

chordletterssectionbc = \chordmode {
    \chordChangesOff d4.:min \chordChangesOn |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }

\repeat volta 2 {
    \chordChangesOff \grace { d16:min } \chordChangesOn d4.:min |
    \grace { s16 } d4.:min |
    \grace { d16:min } d4.:min | \grace { s16 } d4.:min |

    a4.:7 | a4.:7 | a4.:7 | a4.:7 |

    \grace { d16:min } d4.:min | \grace { g16:7/d } g4.:7/d |
    \grace { d16:min } d4.:min | \grace { d16:min } d4.:min |

    \grace { g8:min } g4.:min | \grace { g8:min } g4.:min |
    \grace { d8:min } d4.:min | \grace { g8:7/d } g4.:7/d |

    g4.:min |
}
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletterssectionca = \chordmode {
    \time 2/4
    \chordChangesOff d2:min \chordChangesOn | d2:min | d2:min | d2:min |
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min | g2:min | g2:min |
    d2:min | d2:min7 |
}

chordletterssectioncb = \chordmode {
    \chordChangesOff d2:min \chordChangesOn | d4:min a4:7 |
}

chordletterssectioncc = \chordmode {
    d2:min | d2:min |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterssectiondaaminusone = \chordmode {
    \grace { d16:min } d2:min |
    \grace { d16:min } d2:min |
    \grace { d16:min } d2:min |

    a2:7 | a2:7 | a2:7 | a2:7 |
    d2:min | d2:min | d2:min | d2:min |
    \grace { g8:min } g2:min | \grace { g8:min } g2:min | d2:min | a2:7 |
}

chordletterssectiondaa = \chordmode {
    \chordChangesOff \grace { d8.:min } \chordChangesOn d2:min |
    \chordletterssectiondaaminusone
}

chordletterssectiondb = \chordmode {
    \chordChangesOff d4:min \chordChangesOn  a4:7 |
}

chordletterssectiondc = \chordmode {
    d4:min a4:7 |
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        \chordChangesOff \grace { d8.:min } \chordChangesOn d2:min |
        \chordletterssectiondaaminusone
        d2:min |
    }
    \alternative { { \chordletterssectiondb } { \chordletterssectiondc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff d4:min \chordChangesOn a4:7 |
    d2:min
}

chordletters = \chordmode {
    \time 3/8
    \chordletterssectiona
    \chordletterssectionc
    \repeat volta 2 {
        \chordChangesOff \grace { d8.:min } \chordChangesOn d2:min |
        \grace { d16:min } d2:min |
        \grace { d16:min } d2:min |
        \grace { d16:min } d2:min |

        a2:7 | a2:7 | a2:7 | a2:7 |
        d2:min | d2:min | d2:min | d2:min |
        \grace { g8:min } g2:min | \grace { g8:min } g2:min | d2:min | a2:7 |
        d2:min |
    }
    \alternative { { \chordletterssectiondb } { \chordletterssectiondc } }
    \codaspacer
    \chordChangesOff \grace { d8.:min } \chordChangesOn d4:min a4:7 |
    d2:min
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

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  {
    \melody
}

flutenotesmidi =  {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotessectionaa =  {
    ais'8.\f (  b'16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    b'4 b'8 |
    b'8.  e'16 g'16 b'16  |

    e''8. (  d''16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    b'8 r8 b'8 |
    b'8 r8 b'8 |

    ais'8. (  b'16 cis''16 b'16  ) |
    ais'8. (  g'16 fis'16 e'16  ) |
    a'8  a'8 a'8  |
    c''4. |

    b'8.  e'16 g'16 b'16  |
    ais'8.  g'16 fis'16 g'16  |
}

clarinetnotessectionab =  {
    e'8. (  e''16 b'16 g'16  ) |
    e'8 r8 b'8 |
}

clarinetnotessectionac =  {
    e'8. (  e''16 b'16 g'16  ) |
    e'8 r8 b'8-^ |
}

clarinetnotessectionbb =  {
    e''4 b'8-^ |
}

clarinetnotessectionbc =  {
    e''4 r8 |
}

clarinetnotessectiona =  {
    \repeat volta 2 { \clarinetnotessectionaa }
    \alternative { { \clarinetnotessectionab } { \clarinetnotessectionac } }

\repeat volta 2 {
    \grace { s16 } e''4.-^ ~ |
    \grace { s16 } e''4. |
    \grace { s16 } g''8  g''8 fis''16 e''16  |
    \grace { s16 } g''8  g''8 fis''16 e''16  |

    dis''4.-^ ~ |
    dis''4. |
    b'8  c''8  dis''16  e''16  |
    fis''8  g''8  ais''16  b''16  |

    \grace { s16 } e''4 b''8 |
    \grace { s16 } ais''8.  g''16 fis''16 e''16  |
    \grace { s16 } g''8  g''8  fis''16  e''16  |
    \grace { s16 } g''8  g''8  fis''16  e''16  |

    \grace { s8 } a''4.-^ |
    \grace { s8 } c'''4. |
    \grace { s8 } b''8.  e''16 g''16 b''16  |
    \grace { s8 } ais''8.  g''16 fis''16 g''16  |

    e''8.  e'''16 b''16 g''16  |
}
    \alternative { { \clarinetnotessectionbb } { \clarinetnotessectionbc } }
}

clarinetnotessectionca =  {
    \time 2/4
    ais''8\ff  b''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    b''8  b''8 b''8 b''8 ~  |
    b''8  e''8 g''8 b''8  |

    e'''8  d'''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    b''4. b''8 |
    b''4. b''8 |

    ais''8  b''8 cis'''8 b''8  |
    ais''8  g''8 fis''8 e''8  |
    a''8 a''4 a''8 |
    c''2 |

    b''8  e''8 g''8 b''8  |
    ais''8  g''8 fis''8 g''8  |
}

clarinetnotessectioncb =  {
    e''8  e'''8 b''8 g''8  |
    e''8 r8 b''4-^ |
}

clarinetnotessectioncc =  {
    e''8  e'''8 b''8 g''8  |
    e''8 r8 b'4-^ |
}

clarinetnotessectionc =  {
    \repeat volta 2 { \clarinetnotessectionca }
    \alternative { { \clarinetnotessectioncb } { \clarinetnotessectioncc } }
}

clarinetnotessectiondaaminusone =  {
    \acciaccatura { dis''16 } e''2-^ |
    \grace { s16 } g''8  g''8 fis''8 e''8  |
    \grace { s16 } g''8  g''8 fis''8 e''8  |

    dis''2-^ |
    dis''2-^ |
    b'8 (  c''8 dis''8 e''8  ) |
    fis''8 (  g''8 ais''8 b''8  ) |

    e''4. b''8 |
    b''16 (  ais''16 g''8  ) g''16 (  fis''16 e''8  ) |
    g''8  g''8 fis''8 e''8  |
    g''8  g''8 fis''8 e''8  |

    \grace { s8 } a''2-^ |
    \grace { s8 } c'''2-^ |
    b''8  e''8 g''8 b''8  |
    ais''8  g''8 fis''8 g''8  |
}

clarinetnotessectiondaa =  {
    \acciaccatura { s16 s16 dis''16 } e''2-^ |
    \clarinetnotessectiondaaminusone
}

clarinetnotessectiondb =  {
    e''8 r8 b'4-^ |
}

clarinetnotessectiondc =  {
    e''8 r8 b''4-^ |
}

clarinetnotessectiond =  {
    \repeat volta 2 {
        \acciaccatura { s16 s16 dis''16 } e''2-^ |
        \clarinetnotessectiondaaminusone
        e''8  e'''8 b''8 g''8  |
    }
    \alternative { { \clarinetnotessectiondb } { \clarinetnotessectiondc } }
}

clarinetnotescoda =  {
    \acciaccatura { b''16\ff [ cis'''16 dis'''16 ] } e'''8-^ r8 b''8 r8 |
    e''2-^-\fermata |
}

clarinetnotes =  {
    \key g \major
    \time 3/8
    \clarinetnotessectiona
    \clarinetnotessectionc
    \repeat volta 2 {
        \acciaccatura { s16 s16 dis''16 } e''2-^ |
        \clarinetnotessectiondaaminusone
        e''8  e'''8 b''8 g''8  |
    }
    \alternative { { \clarinetnotessectiondb } { \clarinetnotessectiondc } }
    \codaspacer
    \clarinetnotescoda
}

clarinetnotesmidi =  {
    \key g \major
    \time 3/8
    \preintro
    \clarinetnotessectiona
    \clarinetnotessectiona

    \clarinetnotessectionc
    \clarinetnotessectiond

    \clarinetnotessectionc
    \clarinetnotessectiond

    \clarinetnotessectionc
    \clarinetnotessectiondaa

    \clarinetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotessectionaa = {
    gis'8.\mf ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8. ( [ d'16 f'16 a'16 ] ) |

    d''8. ( [ c''16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8 r8 a'8 |

    gis'8. ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    g'8 ( [ g'8 g'8 ] |
    bes'4. ) |

    a'8. ( [ d'16 f'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 f'16 ] ) |
}

altosaxnotessectionab = {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a'8 |
}

altosaxnotessectionac =  {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a'8-> |
}

altosaxnotessectionbb = {
    d''4 a'8-> |
}

altosaxnotessectionbc = {
    d''4 r8 |
}

altosaxnotessectiona = \transpose ees c {
    \repeat volta 2 { \altosaxnotessectionaa }
    \alternative { { \altosaxnotessectionab } { \altosaxnotessectionac } }

\repeat volta 2 {
    \grace { s16 } d''4.->\sf ~ |
    \grace { s16 } d''4. |
    \grace { s16 } f''8 [ f''8 e''16 ( d''16 ) ] |
    \grace { s16 } f''8 [ f''8 e''16 ( d''16 ) ] |

    cis''4.->\sf ~ |
    cis''4. |
    a'8 ( [ bes'8 cis''16 d''16 ] ) |
    e''8 ( [ f''8 gis''16 a''16 ] ) |

    \grace { s16 } d''4 a''8 |
    \grace { s16 } gis''8. ( [ f''16 e''16 d''16 ] ) |
    \grace { s16 } f''8 ( [ f''8 e''16 d''16 ] ) |
    \grace { s16 } f''8 ( [ f''8 e''16 d''16 ] ) |

    \grace { s8 } g''4. |
    \grace { s8 } bes''4. |
    \grace { s8 } a''8. [ d''16 f''16 a''16 ] |
    \grace { s8 } gis''8. [ f''16 e''16 f''16 ] |

    d''8. [ d'''16 a''16 f''16 ] |
}
    \alternative { { \altosaxnotessectionbb } { \altosaxnotessectionbc } }
}

altosaxnotessectionca =  \transpose ees c {
    \time 2/4
    gis''8\ff [ a''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    a''8 [ a''8 a''8 a''8 ~ ] |
    a''8 [ d''8 f''8 a''8 ] |

    d'''8 [ c'''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    a''4. a''8 |
    a''4. a''8 |

    gis''8 [ a''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    g''8 g''4 g''8 |
    bes''2 |

    a''8 [ d''8 f''8 a''8 ] |
    gis''8 [ f''8 e''8 f''8 ] |
}

altosaxnotessectioncb =  \transpose ees c {
    d''8 [ d'''8 a''8 f''8 ] |
    d''8 r8 a''4-^ |
}

altosaxnotessectioncc =  \transpose ees c {
    d''2 ~ |
    d''4 a'4-^ |
}

altosaxnotessectionc =  {
    \repeat volta 2 { \altosaxnotessectionca }
    \alternative { { \altosaxnotessectioncb } { \altosaxnotessectioncc } }
}

altosaxnotessectiondaaminusone =  \transpose ees c {
    \grace { s16 } d''2-> |
    \grace { s16 } f''8 [ f''8 e''8 d''8 ] |
    \grace { s16 } f''8 [ f''8 e''8 d''8 ] |

    cis''2-> |
    cis''2-> |
    a'8 [ bes'8 cis''8 d''8 ] |
    e''8 [ f''8 gis''8 a''8 ] |

    d''4. a''8 |
    a''16 ( [ gis''16 f''8 ] ) f''16 ( [ e''16 d''8 ] ) |
    f''8 [ f''8 e''8 d''8 ] |
    f''8 [ f''8 e''8 d''8 ] |

    \grace { s8 } g''2-> |
    \grace { s8 } bes''2-> |
    a''8 [ d''8 f''8 a''8 ] |
    gis''8 [ f''8 e''8 f''8 ] |
}

altosaxnotessectiondaa =  \transpose ees c {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
    \altosaxnotessectiondaaminusone
}

altosaxnotessectiondb =  \transpose ees c {
    d''8 r8 a'4-> |
}

altosaxnotessectiondc =  \transpose ees c {
    d''8 r8 a''4-^ |
}

altosaxnotessectiond =  {
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \altosaxnotessectiondaaminusone
        d''8 [ d'''8 a''8 f''8 ] |
    }
    \alternative { { \altosaxnotessectiondb } { \altosaxnotessectiondc } }
}

altosaxnotescoda =  {
    \acciaccatura { a''16\ff [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

altosaxnotes =  {
    \key d \major
    \time 3/8
    \altosaxnotessectiona
    \altosaxnotessectionc
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \altosaxnotessectiondaaminusone
        d''8 [ d'''8 a''8 f''8 ] |
    }
    \alternative { { \altosaxnotessectiondb } { \altosaxnotessectiondc } }
    \codaspacer
    \altosaxnotescoda
}

altosaxnotesmidi =  {
    \key d \major
    \time 3/8
    \preintro
    \altosaxnotessectiona
    \altosaxnotessectiona

    \altosaxnotessectionc
    \altosaxnotessectiond

    \altosaxnotessectionc
    \altosaxnotessectiond

    \altosaxnotessectionc
    \altosaxnotessectiondaa

    \altosaxnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotessectionaa =  {
    ais'8.\f ( [ b'16 cis''16 b'16 ] ) |
    ais'8. ( [ g'16 fis'16 e'16 ] ) |
    g'4 g'8
    g'4 r8 |

    e''8. ( [ d''16 cis''16 b'16 ] ) |
    ais'8. ( [ g'16 fis'16 e'16 ] ) |
    g'8 r8 g'8 |
    g'8 r8 b'8 |

    ais'8. ( [ b'16 cis''16 b'16 ] ) |
    ais'8. ( [ g'16 fis'16 e'16 ] ) |
    e'8 [ e'8 e'8 ] |
    a'16 [ e'16 c''16 a'16 e'16 c'16 ] |

    e'4 e'8 |
    e'4 fis'16 [ g'16 ] |
}

tenorsaxnotessectionab =  {
    e'8. ( [ e''16 b'16 g'16 ] ) |
    e'8 r8 b'8 |
}

tenorsaxnotessectionac =  {
    e'8. ( [ e''16 b'16 g'16 ] ) |
    e'8 r8 b'8-^ |
}

tenorsaxnotessectionbb =  {
    e''4 b'8-^ |
}

tenorsaxnotessectionbc =  {
    e''4 r8 |
}

tenorsaxnotessectiona =  {
    \repeat volta 2 { \tenorsaxnotessectionaa }
    \alternative { { \tenorsaxnotessectionab } { \tenorsaxnotessectionac } }

\repeat volta 2 {
    \grace { s16 } g'8. [ b'16 e''16 b'16 ] |
    \grace { s16 } g'8. [ b'16 g'16 e'16 ] |
    \grace { s16 } b'4.-> |
    \acciaccatura { a'16 } b'4. |

    fis'8. [ b'16 dis''16 b'16 ] |
    fis'8. [ b'16 dis'16 fis'16 ] |
    b'8 [ c''8 ] dis''16 [ e''16 ] |
    fis''8 [ g''8 ] ais''16 [ b''16 ] |

    \grace { s16 } e''4. |
    \acciaccatura { dis''16 } e''4.-^ |
    \grace { s16 } b'4. |
    \acciaccatura { ais'16 } b'4. |

    \acciaccatura { a'16 [ b'16 ] } c''4.-^ |
    \acciaccatura { c''16 [ d''16 ] } e''4.-^ |
    \grace { s8 } e''4. |
    \acciaccatura { dis''16 } e''4. |

    e''4. |
}
    \alternative { { \tenorsaxnotessectionbb } { \tenorsaxnotessectionbc } }
}

tenorsaxnotessectionca =  {
    \time 2/4
    ais''8\ff [ b''8 cis'''8 b''8 ] |
    ais''8 [ g''8 fis''8 e''8 ] |
    g''8 [ g''8 g''8 g''8 ~ ] |
    g''8 [ e''8 g''8 b''8 ] |

    e'''8 [ d'''8 cis'''8 b''8 ] |
    ais''8 [ g''8 fis''8 e''8 ] |
    g''4. g''8 |
    g''8 [ e''8 b'8 e''8 ] |

    ais''8 [ b''8 cis'''8 b''8 ] |
    ais''8 [ g''8 fis''8 e''8 ] |
    e''8 e''4 e''8 |
    a''8 [ e''8 a'8 e''8 ] |

    e''2 |
    e''2 |
}

tenorsaxnotessectioncb =  {
    e''8 [ e'''8 b''8 g''8 ] |
    e''8 r8 b''4-^ |
}

tenorsaxnotessectioncc =  {
    e''8 [ e'''8 b''8 g''8 ] |
    e''8 r8 b'4-^ |
}

tenorsaxnotessectionc =  {
    \repeat volta 2 { \tenorsaxnotessectionca }
    \alternative { { \tenorsaxnotessectioncb } { \tenorsaxnotessectioncc } }
}

tenorsaxnotessectiondaaminusone =  {
    \grace { s16 } g'8 [ b'8 g'8 e'8 ] |
    \acciaccatura { ais'16 } b'2-^ |
    \acciaccatura { ais'16 } b'2-^ |

    fis'8 [ b'8 dis''8 b'8 ] |
    fis'8 ( [ b'8 ] ) dis'8 ( [ fis'8 ] ) |
    b'8 ( [ c''8 dis''8 e''8 ] ) |
    fis''8 ( [ g''8 ais''8 b''8 ] ) |

    e''4. b''8 |
    b''16 ( [ ais''16 g''8 ] ) g''16 ( [ fis''16 e''8 ] ) |
    b'2-^ |
    b'2-^ |

    \acciaccatura { a'16 [ b'16 ] } c''2-^ |
    \acciaccatura { c''16 [ d''16 ] } e''2-^ |
    g''4 e''4 |
    e''2 |
}

tenorsaxnotessectiondaa =  {
    \grace { s16 s16 s16 } g'8 [ b'8 e''8 b'8 ] |
    \tenorsaxnotessectiondaaminusone
}

tenorsaxnotessectiondb =  {
    e''8 r8 b'4-^ |
}

tenorsaxnotessectiondc =  {
    e''8 r8 b''4-^ |
}

tenorsaxnotessectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8 [ b'8 e''8 b'8 ] |
        \tenorsaxnotessectiondaaminusone
        e''8 [ e'''8 b''8 g''8 ] |
    }
    \alternative { { \tenorsaxnotessectiondb } { \tenorsaxnotessectiondc } }
}

tenorsaxnotescoda =  {
    \acciaccatura { e''16\ff [ eis''16 fis''16 ] } g''8-^ r8 a'8-^ r8 |
    g'2-^-\fermata |
}

tenorsaxnotes =  {
    \key g \major
    \time 3/8
    \tenorsaxnotessectiona
    \tenorsaxnotessectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8 [ b'8 e''8 b'8 ] |
        \tenorsaxnotessectiondaaminusone
        e''8 [ e'''8 b''8 g''8 ] |
    }
    \alternative { { \tenorsaxnotessectiondb } { \tenorsaxnotessectiondc } }
    \codaspacer
    \tenorsaxnotescoda
}

tenorsaxnotesmidi =  {
    \key g \major
    \time 3/8
    \preintro
    \tenorsaxnotessectiona
    \tenorsaxnotessectiona

    \tenorsaxnotessectionc
    \tenorsaxnotessectiond

    \tenorsaxnotessectionc
    \tenorsaxnotessectiond

    \tenorsaxnotessectionc
    \tenorsaxnotessectiondaa

    \tenorsaxnotescoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }

tenorforaltonotes = \transpose ees bes, {
    \key g \major
    \time 3/8
    \transpose c c' { \tenorsaxnotessectiona }
    \tenorsaxnotessectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8 [ b'8 e''8 b'8 ] |
        \tenorsaxnotessectiondaaminusone
        e''8 [ e'''8 b''8 g''8 ] |
    }
    \alternative { { \tenorsaxnotessectiondb } { \tenorsaxnotessectiondc } }
    \codaspacer
    \tenorsaxnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotessectionaa =  {
    ais'8.\f ( b'16 cis''16 b'16 ) |
    ais'8. ( g'16 fis'16 e'16 ) |
    b'8 r8 b'8 |
    b'8. ( e'16 g'16 b'16 ) |

    e''8. ( d''16 cis''16 b'16 ) |
    ais'8. ( g'16 fis'16 e'16 ) |
    b'8 r8 b'8 |
    b'8 r8 b'8 |

    ais'8. ( b'16 cis''16 b'16 ) |
    ais'8. ( g'16 fis'16 e'16 ) |
    a'8 a'8 a'8 |
    c''4. |

    b'8. ( e'16 g'16 b'16 ) |
    ais'8. ( g'16 fis'16 g'16 )
}

trumpetnotessectionab =  {
    e'8. e''16 b'16 g'16 |
    e'8 r8 b'8 |
}

trumpetnotessectionac =  {
    e'8. e''16 b'16 g'16 |
    e'8 r8 b8-> |
}

trumpetnotessectionbb =  {
    e''4 b'8-^-> |
}

trumpetnotessectionbc =  {
    e''4 r8 |
}

trumpetnotessectiona =  {
    \repeat volta 2 { \trumpetnotessectionaa }
    \alternative { { \trumpetnotessectionab } { \trumpetnotessectionac } }

    \startOctVA
\repeat volta 2 {
    \grace { s16 } e''4.-^ ~ |
    \grace { s16 } e''4. |
    \grace { s16 } g''8 g''8 fis''16 e''16 |
    \grace { s16 } g''8 g''8 fis''16 e''16 |

    dis''4.-^ ~ |
    dis''4. |
    b'8 c''8 dis''16 e''16 |
    fis''8 g''8 ais''16 b''16 |

    \grace { s16 } e''4 b''8 |
    \grace { s16 } ais''8. ( g''16 fis''16 e''16 ) |
    \grace { s16 } g''8 g''8 fis''16 ( e''16 ) |
    \grace { s16 } g''8 g''8 fis''16 ( e''16 ) |

    \grace { s8 } a''4. |
    \grace { s8 } c'''4. |
    \grace { s8 } b''8. e''16 ( g''16 b''16 ) |
    \grace { s8 } ais''8. g''16 fis''16 g''16 |

    e''8. e'''16 ( b''16 g''16 ) |
}
    \alternative { { \trumpetnotessectionbb } { \trumpetnotessectionbc } }
    \stopOctVA
}

trumpetnotessectionca =  {
    \time 2/4
    ais'8\ff b'8 cis''8 b'8 |
    ais'8 g'8 fis'8 e'8 |
    b'8 b'8 b'8 b'8 ~ |
    b'8 e'8 g'8 b'8 |

    e''8 d''8 cis''8 b'8 |
    ais'8 g'8 fis'8 e'8 |
    b'4. b'8 |
    b'4. b'8 |

    ais'8 b'8 cis''8 b'8 |
    ais'8 g'8 fis'8 e'8 |
    a'8 a'4 a'8 |
    c''2 |

    b'8 e'8 g'8 b'8 |
    ais'8 g'8 fis'8 g'8 |
}

trumpetnotessectioncb =  {
    e'8 e''8 b'8 g'8 |
    e'8 r8 b'4-> |
}

trumpetnotessectioncc =  {
    e'8 e''8 b'8 g'8 |
    e'8 r8 b4-> |
}

trumpetnotessectionc =  {
    \repeat volta 2 { \trumpetnotessectionca }
    \alternative { { \trumpetnotessectioncb } { \trumpetnotessectioncc } }
}

trumpetnotessectiondaaminusone =  {
    \grace { s16 } e''2-^ |
    \grace { s16 } g''8 g''8 fis''8 e''8 |
    \grace { s16 } g''8 g''8 fis''8 e''8 |

    dis''2-^ |
    dis''2-^ |
    b'8 c''8 dis''8 e''8 |
    fis''8 g''8 ais''8 b''8 |

    e''4. b''8 |
    b''16 ( ais''16 g''8 ) g''16 ( fis''16 e''8 ) |
    g''8 g''8 fis''8 e''8 |
    g''8 g''8 fis''8 e''8 |

    \grace { s8 } a''2-^ |
    \grace { s8 } c'''2-^ |
    b''8 e''8 g''8 b''8 |
    ais''8 g''8 fis''8 g''8 |
}

trumpetnotessectiondaa =  {
    \grace { s16 s16 s16 } e''2-^ |
    \trumpetnotessectiondaaminusone
}

trumpetnotessectiondb =  {
    e''8 r8 b'4-^ |
}

trumpetnotessectiondc =  {
    e''8 r8 b''4-^ |
}

trumpetnotessectiond =  {
    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } e''2-^ |
        \trumpetnotessectiondaaminusone
        e''8 e'''8 b''8 g''8 |
    }
    \alternative { { \trumpetnotessectiondb } { \trumpetnotessectiondc } }
    \stopOctVA
}

trumpetnotescoda =  {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8-^\ff r8 b'8-^ r8 |
    e'2-^-\fermata |
}

trumpetnotes =  {
    \key g \major
    \time 3/8
    \trumpetnotessectiona
    \trumpetnotessectionc
    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } e''2-^ |
        \trumpetnotessectiondaaminusone
        e''8 e'''8 b''8 g''8 |
    }
    \alternative { { \trumpetnotessectiondb } { \trumpetnotessectiondc } }
    \stopOctVA
    \codaspacer
    \trumpetnotescoda
}

trumpetnotesmidi =  {
    \key g \major
    \time 3/8
    \preintro
    \trumpetnotessectiona
    \trumpetnotessectiona

    \trumpetnotessectionc
    \trumpetnotessectiond

    \trumpetnotessectionc
    \trumpetnotessectiond

    \trumpetnotessectionc
    \trumpetnotessectiondaa

    \trumpetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes =  {
    \counter
}

trombonenotesmidi =  {
    \countermidi
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

violinsectionaa =  {
    gis'8.\mf ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8. ( [ d'16 f'16 a'16 ] ) |

    d''8. ( [ c''16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8 r8 a'8 |

    gis'8. ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    g'8 ( [ g'8 g'8 ] |
    bes'4. ) |

    a'8. ( [ d'16 f'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 f'16 ] ) |
}

violinsectionab =  {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a'8 |
}

violinsectionac =  {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a8-> |
}

violinsectionbb =  {
    d'4 a8-> |
}

violinsectionbc =  {
    d'4 r8 |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }

\repeat volta 2 {
    \grace { s16 } d'4.->\sf ~ |
    \grace { s16 } d'4. |
    \grace { s16 } f'8 [ f'8 e'16 ( d'16 ) ] |
    \grace { s16 } f'8 [ f'8 e'16 ( d'16 ) ] |

    cis'4.->\sf ~ |
    cis'4. |
    a8 ( [ bes8 cis'16 d'16 ] ) |
    e'8 ( [ f'8 gis'16 a'16 ] ) |

    \grace { s16 } d'4 a'8 |
    \grace { s16 } gis'8. ( [ f'16 e'16 d'16 ] ) |
    \grace { s16 } f'8 ( [ f'8 e'16 d'16 ] ) |
    \grace { s16 } f'8 ( [ f'8 e'16 d'16 ] ) |

    \grace { s8 } g'4. |
    \grace { s8 } bes'4. |
    \grace { s8 } a'8. [ d'16 f'16 a'16 ] |
    \grace { s8 } gis'8. [ f'16 e'16 f'16 ] |

    d'8. [ d''16 a'16 f'16 ] |
}
    \alternative { { \violinsectionbb } { \violinsectionbc } }
}

violinsectionca =  {
    \time 2/4
    gis''8\ff [ a''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    a''8 [ a''8 a''8 a''8 ~ ] |
    a''8 [ d''8 f''8 a''8 ] |

    d'''8 [ c'''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    a''4. a''8 |
    a''4. a''8 |

    gis''8 [ a''8 b''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    g''8 g''4 g''8 |
    bes''2 |

    a''8 [ d''8 f''8 a''8 ] |
    gis''8 [ f''8 e''8 f''8 ] |
}

violinsectioncb =  {
    d''8 [ d'''8 a''8 f''8 ] |
    d''8 r8 a''4-^ |
}

violinsectioncc =  {
    d''2 ~ |
    d''4 a'4-^ |
}

violinsectionc =  {
    \repeat volta 2 { \violinsectionca }
    \alternative { { \violinsectioncb } { \violinsectioncc } }
}

violinsectiondaaminusone =  {
    \grace { s16 } d''2-> |
    \grace { s16 } f''8 [ f''8 e''8 d''8 ] |
    \grace { s16 } f''8 [ f''8 e''8 d''8 ] |

    cis''2-> |
    cis''2-> |
    a'8 [ bes'8 cis''8 d''8 ] |
    e''8 [ f''8 gis''8 a''8 ] |

    d''4. a''8 |
    a''16 ( [ gis''16 f''8 ] ) f''16 ( [ e''16 d''8 ] ) |
    f''8 [ f''8 e''8 d''8 ] |
    f''8 [ f''8 e''8 d''8 ] |

    \grace { s8 } g''2-> |
    \grace { s8 } bes''2-> |
    a''8 [ d''8 f''8 a''8 ] |
    gis''8 [ f''8 e''8 f''8 ] |
}

violinsectiondaa =  {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
    \violinsectiondaaminusone
}

violinsectiondb =  {
    d''8 r8 a'4-> |
}

violinsectiondc =  {
    d''8 r8 a''4-^ |
}

violinsectiond =  {
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \violinsectiondaaminusone
        d''8 [ d'''8 a''8 f''8 ] |
    }
    \alternative { { \violinsectiondb } { \violinsectiondc } }
}

violincoda =  {
    \acciaccatura { a''16\ff [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

violinnotes =  {
    \key f \major
    \time 3/8
    \violinsectiona
    \violinsectionc
    \repeat volta 2 {
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''2-> |
        \violinsectiondaaminusone
        d''8 [ d'''8 a''8 f''8 ] |
    }
    \alternative { { \violinsectiondb } { \violinsectiondc } }
    \codaspacer
    \violincoda
}

violinnotesmidi =  {
    \key f \major
    \time 3/8
    \preintro
    \violinsectiona
    \violinsectiona

    \violinsectionc
    \violinsectiond

    \violinsectionc
    \violinsectiond

    \violinsectionc
    \violinsectiondaa

    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa =  {
    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    s4. |
    s4. |
}

guitarnotessectionab =  {
    s4. |
    s4. |
}

guitarnotessectionac =  {
    s4. |
    s4. |
}

guitarnotessectionbb =  {
    s4. |
}

guitarnotessectionbc =  {
    s4. |
}

guitarnotessectiona =  {
    \repeat volta 2 { \guitarnotessectionaa }
    \alternative { { \guitarnotessectionab } { \guitarnotessectionac } }

\repeat volta 2 {
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    s4. |
    s4. |
    s4. |
    s4. |

    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |
    \grace { s16 } s4. |

    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |
    \grace { s8 } s4. |

    s4. |
}
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotessectionca =  {
    \time 2/4
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
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

guitarnotessectioncb =  {
    s2 |
    s2 |
}

guitarnotessectioncc =  {
    s2 |
    s2 |
}

guitarnotessectionc =  {
    \repeat volta 2 { \guitarnotessectionca }
    \alternative { { \guitarnotessectioncb } { \guitarnotessectioncc } }
}

guitarnotessectiondaaminusone =  {
    \grace { s16 } s2 |
    \grace { s16 } s2 |
    \grace { s16 } s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s8 } s2 |
    \grace { s8 } s2 |
    s2 |
    s2 |
}

guitarnotessectiondaa =  {
    \grace { s16 s16 s16 } s2 |
    \guitarnotessectiondaaminusone
}

guitarnotessectiondb =  {
    s2 |
}

guitarnotessectiondc =  {
    s2 |
}

guitarnotessectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \guitarnotessectiondaaminusone
        s2 |
    }
    \alternative { { \guitarnotessectiondb } { \guitarnotessectiondc } }
}

guitarnotescoda =  {
    \grace { s8. } s2 |
    s2 |
}

guitarnotes =  {
    \key f \major
    \time 3/8
    \guitarnotessectiona
    \guitarnotessectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 |
        \guitarnotessectiondaaminusone
        s2 |
    }
    \alternative { { \guitarnotessectiondb } { \guitarnotessectiondc } }
    \codaspacer
    \guitarnotescoda
}

guitarnotesmidi =  {
    \key f \major
    \time 3/8
    \preintro
    \guitarnotessectiona
    \guitarnotessectiona

    \guitarnotessectionc
    \guitarnotessectiond

    \guitarnotessectionc
    \guitarnotessectiond

    \guitarnotessectionc
    \guitarnotessectiondaa

    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotessectionaa =  {
    gis'8.\mf ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8. ( [ d'16 f'16 a'16 ] ) |

    d''8. ( [ c''16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    a'8 r8 a'8 |
    a'8 r8 a'8 |

    gis'8. ( [ a'16 b'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 d'16 ] ) |
    g'8 ( [ g'8 g'8 ] |
    b'4. ) |

    a'8. ( [ d'16 f'16 a'16 ] ) |
    gis'8. ( [ f'16 e'16 f'16 ] ) |
}

pianorightuppernotessectionab =  {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a'8 |
}

pianorightuppernotessectionac =  {
    d'8. ( [ d''16 a'16 f'16 ] ) |
    d'8 r8 a8-> |
}

pianorightuppernotessectionbb =  {
    d'4 a8-> |
}

pianorightuppernotessectionbc =  {
    d'4 r8 |
}

pianorightuppernotessectiona =  {
    \repeat volta 2 { \pianorightuppernotessectionaa }
    \alternative { { \pianorightuppernotessectionab } { \pianorightuppernotessectionac } }

\repeat volta 2 {
    \grace { s16 } d'4.->\sf ~ |
    \grace { s16 } d'4. |
    \grace { s16 } f'8 [ f'8 e'16 ( d'16 ) ] |
    \grace { s16 } f'8 [ f'8 e'16 ( d'16 ) ] |

    cis'4.->\sf ~ |
    cis'4. |
    a8 ( [ bes8 cis'16 d'16 ] ) |
    e'8 ( [ f'8 gis'16 a'16 ] ) |

    \grace { s16 } d'4 a'8 |
    \grace { s16 } gis'8. ( [ f'16 e'16 d'16 ] ) |
    \grace { s16 } f'8 ( [ f'8 e'16 d'16 ] ) |
    \grace { s16 } f'8 ( [ f'8 e'16 d'16 ] ) |

    \grace { s8 } g'4. |
    \grace { s8 } bes'4. |
    \grace { s8 } a'8. [ d'16 f'16 a'16 ] |
    \grace { s8 } gis'8. [ f'16 e'16 f'16 ] |

    d'8. [ d''16 a'16 f'16 ] |
}
    \alternative { { \pianorightuppernotessectionbb } { \pianorightuppernotessectionbc } }
}

pianorightuppernotessectionca =  {
    \time 2/4
    gis'8\ff [ a'8 b'8 a'8 ] |
    gis'8 [ f'8 e'8 d'8 ] |
    < f' a' >8 [ < f' a' >8 < f' a' >8 < f' a' >8 ~ ] |
    < f' a' >8 [ d'8 f'8 a'8 ] |

    d''8 [ c''8 b'8 a'8 ] |
    gis'8 [ f'8 e'8 d'8 ] |
    < f' a' >4. < f' a' >8 |
    < f' a' >4. a'8 |

    gis'8 [ a'8 b'8 a'8 ] |
    gis'8 [ f'8 e'8 d'8 ] |
    g'8 g'4 g'8 |
    bes'2 |

    a'8 [ d'8 f'8 a'8 ] |
    gis'8 [ f'8 e'8 f'8 ] |
}

pianorightuppernotessectioncb =  {
    d'8 [ d''8 a'8 f'8 ] |
    d'8 r8 < cis' g' a' >4-^ |
}

pianorightuppernotessectioncc =  {
    d'2 ~ |
    d'4 a4-^ |
}

pianorightuppernotessectionc =  {
    \repeat volta 2 { \pianorightuppernotessectionca }
    \alternative { { \pianorightuppernotessectioncb } { \pianorightuppernotessectioncc } }
}

pianorightuppernotessectiondaaminusone =  {
    \grace { s16 } d'2-> |
    \grace { s16 } f'8 [ f'8 e'8 d'8 ] |
    \grace { s16 } f'8 [ f'8 e'8 d'8 ] |

    cis'2-> |
    cis'2-> |
    a8 [ bes8 cis'8 d'8 ] |
    e'8 [ f'8 gis'8 a'8 ] |

    d'4. a'8 |
    a'16 ( [ gis'16 f'8 ] ) f'16 ( [ e'16 d'8 ] ) |
    f'8 [ f'8 e'8 d'8 ] |
    f'8 [ f'8 e'8 d'8 ] |

    \grace { s8 } < bes g' >2-> |
    \grace { s8 } < d' g' bes' >2-> |
    a'8 [ d'8 f'8 a'8 ] |
    gis'8 [ f'8 e'8 f'8 ] |
}

pianorightuppernotessectiondaa =  {
    \acciaccatura { a16 [ b16 cis'16 ] } d'2-> |
    \pianorightuppernotessectiondaaminusone
}

pianorightuppernotessectiondb =  {
    d'8 r8 a4-> |
}

pianorightuppernotessectiondc =  {
    d'8 r8 < cis' g' a' >4-^ |
}

pianorightuppernotessectiond =  {
    \repeat volta 2 {
        \acciaccatura { a16 [ b16 cis'16 ] } d'2-> |
        \pianorightuppernotessectiondaaminusone
        d'8 [ d''8 a'8 f'8 ] |
    }
    \alternative { { \pianorightuppernotessectiondb } { \pianorightuppernotessectiondc } }
}

pianorightuppernotescoda =  {
    \acciaccatura { a'16\ff [ b'16 cis''16 ] } < f' a' d'' >8 r8 < cis' g' a' >8 r8 |
    < f a d' >2-\fermata |
}

pianorightuppernotes =  {
    \key f \major
    \time 3/8
%    \stemUp
    \pianorightuppernotessectiona
    \pianorightuppernotessectionc
    \repeat volta 2 {
        \acciaccatura { a16 [ b16 cis'16 ] } d'2-> |
        \pianorightuppernotessectiondaaminusone
        d'8 [ d''8 a'8 f'8 ] |
    }
    \alternative { { \pianorightuppernotessectiondb } { \pianorightuppernotessectiondc } }
    \codaspacer
    \pianorightuppernotescoda
}

pianorightlowernotes =  {
    \key f \major
    \time 3/8
    \stemDown
}

pianoleftuppernotessectionaa =  {
    \time 3/8
    < d f a >8 r8 < d f a >8 |
    < d fis g b >8 r8 < d fis g b > |
    < d f a >8 r8 < d f a >8 |
    < d f a >8 r8 < d f a >8 |

    < d f a >8 r8 < d f a >8 |
    < d fis g b >8 r8 < d fis g b > |
    < d f a >8 r8 < d f a >8 |
    < d f a >8 r8 < d f a >8 |

    < d f a >8 r8 < d f a >8 |
    < d f a >8 r8 < d f a >8 |
    < g bes d' >8 r8 < g bes d' >8 |
    < g bes d' >8 r8 < g bes d' >8 |

    < d f a >8 r8 < d f a >8 |
    < d fis g b >8 r8 < d fis g b > |
}

pianoleftuppernotessectionab =  {
    < d f a >8 r8 < d f a >8 |
    < d f a >8 r8 < d f a >8 |
}

pianoleftuppernotessectionac =  {
    < d f a >8 r8 < d f a >8 |
    < d f a >8 r8 a,8 |
}

pianoleftuppernotessectionbb =  {
    < d f a >8 r8 a,8-> |
}

pianoleftuppernotessectionbc =  {
    < d f a >4 r8 |
}

pianoleftuppernotessectiona =  {
    \repeat volta 2 { \pianoleftuppernotessectionaa }
    \alternative { { \pianoleftuppernotessectionab } { \pianoleftuppernotessectionac } }

\repeat volta 2 {
    \grace { s16 } < d f a >8 r8 < d f a >8 |
    \grace { s16 } < d f a >8 r8 < d f a >8 |
    \grace { s16 } < d f a >8 r8 < d f a >8 |
    \grace { s16 } < d f a >8 r8 < d f a >8 |

    < a, e g >8 r8 < a, e g >8 |
    < a, e g >8 r8 < a, e g >8 |
    < a, e g >8 r8 < a, e g >8 |
    < a, e g >8 r8 < a, e g >8 |

    \grace { s16 } < d f a >8 r8 < d f a >8 |
    \grace { s16 } < d fis g b >8 r8 < d fis g b > |
    \grace { s16 } < d f a >8 r8 < d f a >8 |
    \grace { s16 } < d f a >8 r8 < d f a >8 |

    \grace { s8 } < g bes d' >8 r8 < g bes d' >8 |
    \grace { s8 } < g bes d' >8 r8 < g bes d' >8 |
    \grace { s8 } < d f a >8 r8 < d f a >8 |
    \grace { s8 } < d fis g b >8 r8 < d fis g b > |

    < g bes d' >8 r8 < g bes d' >8 |
}
    \alternative { { \pianoleftuppernotessectionbb } { \pianoleftuppernotessectionbc } }
}

pianoleftuppernotessectionca =  {
    \time 2/4
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |

    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |

    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    g,8 [ g8 d8 g8 ] |
    g,8 [ g8 d8 g8 ] |

    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 cis8 ] |
}

pianoleftuppernotessectioncb =  {
    d,8 [ d8 a,8 d8 ] |
    d,8 r8 < a,, a, >4-^ |
}

pianoleftuppernotessectioncc =  {
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
}

pianoleftuppernotessectionc =  {
    \repeat volta 2 { \pianoleftuppernotessectionca }
    \alternative { { \pianoleftuppernotessectioncb } { \pianoleftuppernotessectioncc } }
}

pianoleftuppernotessectiondaaminusone =  {
    \grace { s16 } d,8 [ d8 a,8 d8 ] |
    \grace { s16 } d,8 [ d8 a,8 d8 ] |
    \grace { s16 } d,8 [ d8 a,8 d8 ] |

    a,,8 [ a,8 e,8 a,8 ] |
    a,,8 [ a,8 e,8 a,8 ] |
    a,,8 [ a,8 e,8 a,8 ] |
    a,,8 [ a,8 e,8 a,8 ] |

    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |

    \grace { s8 } g,8 [ g8 d8 g8 ] |
    \grace { s8 } g,8 [ g8 d8 g8 ] |
    d,8 [ d8 a,8 d8 ] |
    a,,8 [ a,8 e,8 a,8 ] |
}

pianoleftuppernotessectiondaa =  {
    \grace { s16 s16 s16 } d,8 [ d8 a,8 d8 ] |
    \pianoleftuppernotessectiondaaminusone
}

pianoleftuppernotessectiondb =  {
    d,8 r8 < a,, a, >4-> |
}

pianoleftuppernotessectiondc =  {
    d,8 r8 < a,, a, >4-^ |
}

pianoleftuppernotessectiond =  {
    \repeat volta 2 {
        \grace { s16 s16 s16 } d,8 [ d8 a,8 d8 ] |
        \pianoleftuppernotessectiondaaminusone
        d,8 [ d8 a,8 d8 ] |
    }
    \alternative { { \pianoleftuppernotessectiondb } { \pianoleftuppernotessectiondc } }
}

pianoleftuppernotescoda =  {
    \grace { s8. } < d, d >8 r8 < a,, a, >8 r8 |
    < d, d >2-\fermata |
}

pianoleftuppernotes =  {
    \key f \major
    \time 3/8
%    \stemUp
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } d,8 [ d8 a,8 d8 ] |
        \pianoleftuppernotessectiondaaminusone
        d,8 [ d8 a,8 d8 ] |
    }
    \alternative { { \pianoleftuppernotessectiondb } { \pianoleftuppernotessectiondc } }
    \codaspacer
    \pianoleftuppernotescoda
}

pianoleftlowernotes =  {
    \key f \major
    \time 3/8
    \stemDown
}

pianorightnotesmidi =  {
    \key f \major
    \time 3/8
    \preintro
    \pianorightuppernotessectiona
    \pianorightuppernotessectiona

    \pianorightuppernotessectionc
    \pianorightuppernotessectiond

    \pianorightuppernotessectionc
    \pianorightuppernotessectiond

    \pianorightuppernotessectionc
    \pianorightuppernotessectiondaa

    \pianorightuppernotescoda
}

pianoleftnotesmidi =  {
    \key f \major
    \time 3/8
    \preintro
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectiona

    \pianoleftuppernotessectionc
    \pianoleftuppernotessectiond

    \pianoleftuppernotessectionc
    \pianoleftuppernotessectiond

    \pianoleftuppernotessectionc
    \pianoleftuppernotessectiondaa

    \pianoleftuppernotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionaa = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat percent 14 {
        << sna8\p hhc >> r8 \snareruffeight |
    }
}

drumshighsectionab = \drummode {
    \repeat percent 2 {
        << sna8 hhc >> r8 \snareruffeight |
    }
}

drumshighsectionac = \drummode {
    \repeat percent 2 {
        << sna8 hhc >> r8 \snareruffeight |
    }
}

drumshighsectionbb = \drummode {
    << sna8 hhc >> r8 \snareruffeight |
}

drumshighsectionbc = \drummode {
    << sna8 hhc >> r8 \snareruffeight |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }

\repeat volta 2 {
    \repeat percent 4 {
        \grace { s16 } << sna8 hhc >> r8 \snareruffeight |
    }

    \repeat percent 4 {
        << sna8 hhc >> r8 \snareruffeight |
    }

    \repeat percent 4 {
        \grace { s16 } << sna8 hhc >> r8 \snareruffeight |
    }

    \repeat percent 4 {
        \grace { s8 } << sna8 hhc >> r8 \snareruffeight |
    }
    << sna8 hhc >> r8 cymc8 |
}
    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
}

drumshighsectionca = \drummode {
    \time 2/4
    \repeat percent 7 {
        << rb8 sna >> sna8 sna8 << rb8 sna >>  |
        sna8 sna8 << rb8 sna >> sna8 |
    }
}

drumshighsectioncb = \drummode {
    << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    sna8 sna8 << rb8 sna >> sna8 |
}

drumshighsectioncc = \drummode {
    << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    sna8 sna8 << rb8 sna >> sna8 |
}

drumshighsectionc = \drummode {
    \repeat volta 2 { \drumshighsectionca }
    \alternative { { \drumshighsectioncb } { \drumshighsectioncc } }
}

drumshighsectiondaaminusone = \drummode {
    \grace { s16 } sna8 sna8 << rb8 sna >> sna8 |
    \grace { s16 } << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    \grace { s16 } sna8 sna8 << rb8 sna >> sna8 |

    \repeat percent 4 {
        << rb8 sna >> sna8 sna8 << rb8 sna >>  |
        sna8 sna8 << rb8 sna >> sna8 |
    }

    \grace { s8 } << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    \grace { s8 } sna8 sna8 << rb8 sna >> sna8 |
    << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    sna8 sna8 << rb8 sna >> sna8 |
}

drumshighsectiondaa = \drummode {
    \grace { s16 s16 s16 } << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    \drumshighsectiondaaminusone
}

drumshighsectiondb = \drummode {
    sna8 r8 << cymc4-> sna >> |
}

drumshighsectiondc = \drummode {
    sna8 r8 << cymc4-> sna >> |
}

drumshighsectiond = \drummode {
    \repeat volta 2 {
        \grace { s16 s16 s16 } << rb8 sna >> sna8 sna8 << rb8 sna >>  |
        \drumshighsectiondaaminusone
        << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    }
    \alternative { { \drumshighsectiondb } { \drumshighsectiondc } }
}

drumshighcoda = \drummode {
    \grace { s8. } << sna8 \hideDynamics cymc^>\fff >> r8 << sna8 cymc^> >> r8 |
    << sna2 cymc^> >> |
}

drumshigh = \drummode {
    \time 3/8
    \stemUp
    \drumshighsectiona
    \drumshighsectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } << rb8 sna >> sna8 sna8 << rb8 sna >>  |
        \drumshighsectiondaaminusone
        << rb8 sna >> sna8 sna8 << rb8 sna >>  |
    }
    \alternative { { \drumshighsectiondb } { \drumshighsectiondc } }
    \codaspacer
    \drumshighcoda
}


drumshighmidi = \drummode {
    \time 3/8
    \preintro
    \drumshighsectiona
    \drumshighsectiona

    \drumshighsectionc
    \drumshighsectiond

    \drumshighsectionc
    \drumshighsectiond

    \drumshighsectionc
    \drumshighsectiondaa

    \drumshighcoda
}

drumslowsectionaa = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat percent 14 {
        bda8 s8 bda8 |
    }
}

drumslowsectionab = \drummode {
    \repeat percent 2 {
        bda8 s8 bda8 |
    }
}

drumslowsectionac = \drummode {
    \repeat percent 2 {
        bda8 s8 bda8 |
    }
}

drumslowsectionbb = \drummode {
    bda8 s8 bda8 |
}

drumslowsectionbc = \drummode {
    bda8 s8 bda8 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }

\repeat volta 2 {
    \repeat percent 4 {
        \grace { s16 } bda8 s8 bda8 |
    }

    \repeat percent 4 {
        bda8 s8 bda8 |
    }

    \repeat percent 4 {
        \grace { s16 } bda8 s8 bda8 |
    }

    \repeat percent 4 {
        \grace { s8 } bda8 s8 bda8 |
    }

    bda8 s8 bda8 |
}
    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
}

drumslowsectionca = \drummode {
    \time 2/4
    \repeat percent 7 {
        bda4. bda8 ~ |
        bda4 bda4 |
    }
}

drumslowsectioncb = \drummode {
    bda4. bda8 ~ |
    bda4 bda4 |
}

drumslowsectioncc = \drummode {
    bda4. bda8 ~ |
    bda4 bda4 |
}

drumslowsectionc = \drummode {
    \repeat volta 2 { \drumslowsectionca }
    \alternative { { \drumslowsectioncb } { \drumslowsectioncc } }
}

drumslowsectiondaaminusone = \drummode {
    \grace { s16 } bda4 bda4 |
    \grace { s16 } bda4. bda8 ~ |
    \grace { s16 } bda4 bda4 |

    \repeat percent 4 {
        bda4. bda8 ~ |
        bda4 bda4 |
    }

    \grace { s8 } bda4. bda8 ~ |
    \grace { s8 } bda4 bda4 |
    bda4. bda8 ~ |
    bda4 bda4 |
}

drumslowsectiondaa = \drummode {
    \grace { s16 s16 s16 } bda4. bda8 ~ |
    \drumslowsectiondaaminusone
}

drumslowsectiondb = \drummode {
    bda4 bda4 |
}

drumslowsectiondc = \drummode {
    bda4 bda4 |
}

drumslowsectiond = \drummode {
    \repeat volta 2 {
        \grace { s16 s16 s16 } bda4. bda8 ~ |
        \drumslowsectiondaaminusone
        bda4. bda8 ~ |
    }
    \alternative { { \drumslowsectiondb } { \drumslowsectiondc } }
}

drumslowcoda = \drummode {
    \grace { s8. } bda8 s8 bda8 s8 | bda4 s4 |
}

drumslow = \drummode {
    \time 3/8
    \stemDown
    \drumslowsectiona
    \drumslowsectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } bda4. bda8 ~ |
        \drumslowsectiondaaminusone
        bda4. bda8 ~ |
    }
    \alternative { { \drumslowsectiondb } { \drumslowsectiondc } }
    \codaspacer
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 3/8
    \preintro
    \drumslowsectiona
    \drumslowsectiona

    \drumslowsectionc
    \drumslowsectiond

    \drumslowsectionc
    \drumslowsectiond

    \drumslowsectionc
    \drumslowsectiondaa

    \drumslowcoda
}

ebtenornotes =  \transpose c bes, {
    \key g \major
    \time 3/8
    \tenorharmonysectiona
    \tenorharmonysectionc
    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8  b'8 e''8 b'8  |
        \tenorharmonysectiondaaminusone
        e''8  e'''8 b''8 g''8  |
    }
    \codaspacer
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d4.:min | g4.:7/d | d4.:min | d4.:min |
    d4.:min | g4.:7/d | d4.:min | d4.:min |
}

previewnotes = {
    \key f \major
    \time 3/8
    gis'8. (  a'16 b'16 a'16  ) |
    gis'8. (  f'16 e'16 d'16  ) |
    a'8 r8 a'8 |
    a'8. (  d'16 f'16 a'16  ) |
    d''8. (  c''16 b'16 a'16  ) |
    gis'8. (  f'16 e'16 d'16  ) |
    a'8 r8 a'8 |
    a'8 r8 a'8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

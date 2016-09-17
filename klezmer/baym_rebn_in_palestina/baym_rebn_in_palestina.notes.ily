\version "2.18.0"

bandmsectionaa = {
    \markA \positionA
    s4. | \breakAone
    s4. | \breakAtwo
    s4. | \breakAtre
    s4. | \breakAfor
    s4. | \breakAfiv
    s4. | \breakAsix
    s4. | \breakAsev
    s4. | \breakAeit
    s4. | \breakAnin
    s4. | \breakAten
    s4. | \breakAelv
    s4. | \breakAtwl
    s4. | \breakAtht
    s4. | \breakAfrt
    s4. | \breakAsxt
}

bandmsectionab = { s4. | }

bandmsectionac = { s4. | }

bandmsectiona = {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar ".|:-||" \sectionBreakOne
}

bandmsectionba = {
    \markB \positionB
    s4. | \breakBone
    s4. | \breakBtwo
    s4. | \breakBtre
    s4. | \breakBfor
    s4. | \breakBfiv
    s4. | \breakBsix
    s4. | \breakBsev
}

bandmsectionbb = { s4. | }

bandmsectionbc = { s4. | }

bandmsectionb = {
    \repeat volta 2 { \bandmsectionba }
    \alternative { { \bandmsectionbb } { \bandmsectionbc } }
    \bar ".|:-||" \sectionBreakTwo
}

bandmsectionc = {
    \repeat volta 2 {
        \markC \positionC
        s4. | \breakCone
        s4. | \breakCtwo
        s4. | \breakCtre
        s4. | \breakCfor
        s4. | \breakCfiv
        s4. | \breakCsix
        s4. | \breakCsev
        s4. | \breakCeit
        s4. | \breakCnin
        s4. | \breakCten
        s4. | \breakCelv
        s4. | \breakCtwl
        s4. | \breakCtht
        s4. | \breakCfrt
        s4. | \breakCfft
        s4. |
    }
    \sectionBreakThree
}

bandmsectiond = {
    \time 2/4
    \markD \positionD
    s2*6 | \sectionBreakFour
    \bar ".|:-||"
}

bandmsectioneaa = {
    \markSE \positionSE
    s2 | \breakEone
    s2 | \breakEtwo
    s2 | \breakEtre
    s2 | \breakEfor
    s2 | \breakEfiv
    s2 | \breakEsix
    s2 | \breakEsev
    s2 | \breakEeit
    s2 | \breakEnin
    s2 | \breakEten
    s2 | \breakEelv
    s2 | \breakEtwl
    \markTC \positionTC
    \bar "||"
}

bandmsectioneab = { s2 | \breakEtht s2 | }

bandmsectionea = { \bandmsectioneaa \bandmsectioneab }

bandmsectioneb = { s2 | \noBreak s2 | \breakEsxt }

bandmsectionec = { s2 | \noBreak s2 | }

bandmsectione = {
    \repeat volta 2 { \bandmsectionea }
    \alternative { { \bandmsectioneb } { \bandmsectionec } }
    \bar ".|:-||" \sectionBreakFive
}

bandmsectionfa = {
    \markF \positionF
    s2 | \breakFone
    s2 | \breakFtwo
    s2 | \breakFtre
    s2 | \breakFfor
    s2 | \breakFfiv
    s2 | \breakFsix
    s2 | \breakFsev
    s2 | \breakFeit
    s2 | \breakFnin
    s2 | \breakFten
    s2 | \breakFelv
    s2 | \breakFtwl
    s2 | \breakFtht
    s2 | \breakFfrt
}

bandmsectionfb = {
    s2 | \breakFfft s2 | \breakFsxt
}

bandmsectionfc = {
    s2 | \breakFsvt s2 |
}

bandmsectionf = {
    \repeat volta 2 { \bandmsectionfa }
    \alternative { { \bandmsectionfb } { \bandmsectionfc } }
    \bar ".|:-||" \sectionBreakSix
}

bandmsectionga = {
    \markG \positionG
    s2 | \breakGone
    s2 | \breakGtwo
    s2 | \breakGtre
    s2 | \breakGfor
    s2 | \breakGfiv
    s2 | \breakGsix
}

bandmsectiongb = {
    s2 | \breakGsev s2 | \breakGeit
}

bandmsectiongc = {
    s2 | \breakGnin s2 |
}

bandmsectiong = {
    \repeat volta 2 { \bandmsectionga }
    \alternative { { \bandmsectiongb } { \bandmsectiongc } }
    \bar "||" \sectionBreakSeven
    \markDS \positionDS
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC s2 | \breakCCone s2 | \breakCCtwo s2 | \breakCCtre s2 |
}

bandmNV = {
    \tempo \tempostringa
    \time 3/8
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \positionTempoTwo
    \tempo \tempostringb
    \time 2/4
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
    \bandmsectiong
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for tempo changes in
% the midi output.

preintro = {
    s4. |
}

metronomesectionaa = {
    s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    s4. | s4. | s4. | s4. | s4. | s4. | s4. |
}

metronomesectionab = { s4. | }

metronomesectionac = { s4. | }

metronomesectiona = {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionba = { s4. | s4. | s4. | s4. | s4. | s4. | s4. | }

metronomesectionbb = { s4. | }

metronomesectionbc = { s4. | }

metronomesectionb = {
    \repeat volta 2 { \metronomesectionba }
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronomesectionc = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
}

metronomesectiond = {
    s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectioneaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

metronomesectioneab = { s2 | s2 | }

metronomesectionea = { \metronomesectioneaa \metronomesectioneab }

metronomesectioneb = { s2 | s2 | }

metronomesectionec = { s2 | s2 | }

metronomesectione = {
    \repeat volta 2 { \metronomesectionea }
    \alternative { { \metronomesectioneb } { \metronomesectionec } }
}

metronomesectionfa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionfb = { s2 | s2 | }

metronomesectionfc = { s2 | s2 | }

metronomesectionf = {
    \repeat volta 2 { \metronomesectionfa }
    \alternative { { \metronomesectionfb } { \metronomesectionfc } }
}

metronomesectionga = { s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiongb = { s2 | s2 | }

metronomesectiongc = { s2 | s2 | }

metronomesectiong = {
    \repeat volta 2 { \metronomesectionga }
    \alternative { { \metronomesectiongb } { \metronomesectiongc } }
}

metronomecoda = { s2 | s2 | s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \time 2/4
    \tempo 4 = 120
    \metronomesectiond

    \metronomesectione
    \metronomesectionf
    \metronomesectiong

    \metronomesectione
    \metronomesectionf
    \metronomesectiong

    \metronomesectioneaa
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa = {
    a8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    a8. d'16 fis'16 a'16 |
    gis'8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 |
    g'8 fis'8 e'16 d'16 |

    a8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    e'8. fis'16 g'16 a'16 |
    fis'8. d'16 e'16 cis'16 |
    d'8. d''16 a'16 fis'16 |
}

melodysectionab = {
    d'4. |
}

melodysectionac = {
    d'4. |
}

melodysectiona = {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionba = {
    d''4. ~ |
    d''4 e''8 |
    c''4. ~ |
    c''4 d''8 |
    b'4. ~ |
    b'8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 ~ |
}

melodysectionbb = {
    a'4. |
}

melodysectionbc = {
    a'4. |
}

melodysectionb = {
    \repeat volta 2 { \melodysectionba }
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melodysectionc = {
    \repeat volta 2 {
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        \acciaccatura { gis'16 } a'4. ~ |
        a'4 g'8 |

        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        e'8. b'16 a'16 g'16 |
        fis'8. d'16 e'16 c'16 |
        d'8. d''16 a'16 fis'16 |
        d'4 r8 |
    }
}

melodysectiond = { R2*5 | r8 a''8 bes''8 a''8 | }

melodysectioneaa = {
    a''2 ~ |
    a''8 g''8 e''8 f''8 |
    d''2 |
    r8 a''8 cis'''8 d'''8 |
    \acciaccatura { cis'''16 [ d'''16 ] } e'''2 ~ |
    e'''8 g''8 a''8 bes''8 |
    a''2 |
    r8 a''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } bes''8 a''8 |
    d'''2 ~ |
    d'''8 a''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } bes''8 a''8 |
    g''2 |
    r8 e''8 g''8 bes''8 |
}

melodysectioneab = {
    a''4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

melodysectionea = { \melodysectioneaa \melodysectioneab }

melodysectioneb = {
    d''4 r4 |
    r8 a''8 bes''8 a''8 |
}

melodysectionec = {
    d''8 r8 r4 |
    c''4 r4 |
}

melodysectione = {
    \repeat volta 2 { \melodysectionea }
    \alternative { { \melodysectioneb } { \melodysectionec } }
}

melodysectionfa = {
    c''8 f''8 bes''16 ( a''16 ) g''8 |
    a''4 r8 g''16 f''16 |
    f''8 ( \grace { \once \override Flag.stroke-style = #"grace" a''16 ) } g''8 g''16 f''16 e''8 |
    f''4 r4 |
    c'''4. cis'''8 |
    d'''8 c'''8 g''8 bes''8 |
    a''2 |
    r2 |
    d'''4. e'''8 |
    f'''16 e'''16 d'''8 c'''16 bes''16 a''8 |
    g''2 |
    g''8-\trill fis''16 g''16 c'''8 bes''8 |
    a''4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

melodysectionfb = {
    d''8 r8 r4 |
    c''4 r4 |
}

melodysectionfc = {
    d''2 ~ |
    d''4 r8 a''16 g''16 |
}

melodysectionf = {
    \repeat volta 2 { \melodysectionfa }
    \alternative { { \melodysectionfb } { \melodysectionfc } }
}

melodysectionga = {
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8-\prall d''8 a''8-\prall g''8 |
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8 ees''8 d''4 |
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8-\prall d''8 a''8-\prall g''8 |
}

melodysectiongb = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    d''4 r4 |
}

melodysectiongc = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    d''8 a''8 bes''8 a''8 |
}

melodysectiong = {
    \repeat volta 2 { \melodysectionga }
    \alternative { { \melodysectiongb } { \melodysectiongc } }
}

melodycoda = {
    a''4. g''8 |
    a''16 a'16 ( b'16 cis''16 d''4\glissando |
    d'''4 ) a''4 |
    d''4 r4 |
}

melody = {
    \key g \major
    \time 3/8
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \key f \major
    \time 2/4
    \melodysectiond
    \melodysectione
    \melodysectionf
    \melodysectiong
    \blankmeasure
    \melodycoda
}

melodymidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \time 2/4
    \tempo 4 = 120
    \melodysectiond

    \melodysectione
    \melodysectionf
    \melodysectiong

    \melodysectione
    \melodysectionf
    \melodysectiong

    \melodysectioneaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionaa = {
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
    s4. |
}

tenorharmonysectionab = {
    s4. |
}

tenorharmonysectionac = {
    s4. |
}

tenorharmonysectiona = {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }
}

tenorharmonysectionba = {
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
}

tenorharmonysectionbb = {
    s4. |
}

tenorharmonysectionbc = {
    s4. |
}

tenorharmonysectionb = {
    \repeat volta 2 { \tenorharmonysectionba }
    \alternative { { \tenorharmonysectionbb } { \tenorharmonysectionbc } }
}

tenorharmonysectionc = {
    \repeat volta 2 {
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
        s4. |
        s4. |
    }
}

tenorharmonysectiond = { s2 | s2 | s2 | s2 | s2 | s2 | }

tenorharmonysectioneaa = {
    s2 |
    s2 |
    s2 |
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

tenorharmonysectioneab = {
    s2 |
    s2 |
}

tenorharmonysectionea = { \tenorharmonysectioneaa \tenorharmonysectioneab }

tenorharmonysectioneb = {
    s2 |
    s2 |
}

tenorharmonysectionec = {
    s2 |
    s2 |
}

tenorharmonysectione = {
    \repeat volta 2 { \tenorharmonysectionea }
    \alternative { { \tenorharmonysectioneb } { \tenorharmonysectionec } }
}

tenorharmonysectionfa = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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

tenorharmonysectionfb = {
    s2 |
    s2 |
}

tenorharmonysectionfc = {
    s2 |
    s2 |
}

tenorharmonysectionf = {
    \repeat volta 2 { \tenorharmonysectionfa }
    \alternative { { \tenorharmonysectionfb } { \tenorharmonysectionfc } }
}

tenorharmonysectionga = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

tenorharmonysectiongb = {
    s2 |
    s2 |
}

tenorharmonysectiongc = {
    s2 |
    s2 |
}

tenorharmonysectiong = {
    \repeat volta 2 { \tenorharmonysectionga }
    \alternative { { \tenorharmonysectiongb } { \tenorharmonysectiongc } }
}

tenorharmonycoda = {
    s2 |
    s2 |
    s2 |
    s2 |
}

tenorharmony = {
    \key g \major
    \time 3/8
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \key f \major
    \time 2/4
    \tenorharmonysectiond
    \tenorharmonysectione
    \tenorharmonysectionf
    \tenorharmonysectiong
    \blankmeasure
    \tenorharmonycoda
    \bar "|."
}

tenorharmonymidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \time 2/4
    \tempo 4 = 120
    \tenorharmonysectiond

    \tenorharmonysectione
    \tenorharmonysectionf
    \tenorharmonysectiong

    \tenorharmonysectione
    \tenorharmonysectionf
    \tenorharmonysectiong

    \tenorharmonysectioneaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionaa = {
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
    s4. |
}

altoharmonysectionab = {
    s4. |
}

altoharmonysectionac = {
    s4. |
}

altoharmonysectiona = {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \altoharmonysectionac } }
}

altoharmonysectionba = {
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
}

altoharmonysectionbb = {
    s4. |
}

altoharmonysectionbc = {
    s4. |
}

altoharmonysectionb = {
    \repeat volta 2 { \altoharmonysectionba }
    \alternative { { \altoharmonysectionbb } { \altoharmonysectionbc } }
}

altoharmonysectionc = {
    \repeat volta 2 {
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
        s4. |
        s4. |
    }
}

altoharmonysectiond = { s2 | s2 | s2 | s2 | s2 | s2 | }

altoharmonysectioneaa = {
    s2 |
    s2 |
    s2 |
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

altoharmonysectioneab = {
    s2 |
    s2 |
}

altoharmonysectionea = { \altoharmonysectioneaa \altoharmonysectioneab }

altoharmonysectioneb = {
    s2 |
    s2 |
}

altoharmonysectionec = {
    s2 |
    s2 |
}

altoharmonysectione = {
    \repeat volta 2 { \altoharmonysectionea }
    \alternative { { \altoharmonysectioneb } { \altoharmonysectionec } }
}

altoharmonysectionfa = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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

altoharmonysectionfb = {
    s2 |
    s2 |
}

altoharmonysectionfc = {
    s2 |
    s2 |
}

altoharmonysectionf = {
    \repeat volta 2 { \altoharmonysectionfa }
    \alternative { { \altoharmonysectionfb } { \altoharmonysectionfc } }
}

altoharmonysectionga = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

altoharmonysectiongb = {
    s2 |
    s2 |
}

altoharmonysectiongc = {
    s2 |
    s2 |
}

altoharmonysectiong = {
    \repeat volta 2 { \altoharmonysectionga }
    \alternative { { \altoharmonysectiongb } { \altoharmonysectiongc } }
}

altoharmonycoda = {
    s2 |
    s2 |
    s2 |
    s2 |
}

altoharmony = {
    \key g \major
    \time 3/8
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \key f \major
    \time 2/4
    \altoharmonysectiond
    \altoharmonysectione
    \altoharmonysectionf
    \altoharmonysectiong
    \blankmeasure
    \altoharmonycoda
    \bar "|."
}

altoharmonymidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \time 2/4
    \tempo 4 = 120
    \altoharmonysectiond

    \altoharmonysectione
    \altoharmonysectionf
    \altoharmonysectiong

    \altoharmonysectione
    \altoharmonysectionf
    \altoharmonysectiong

    \altoharmonysectioneaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa = {
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
    s4. |
}

countersectionab = {
    s4. |
}

countersectionac = {
    s4. |
}

countersectiona = {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionba = {
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
}

countersectionbb = {
    s4. |
}

countersectionbc = {
    s4. |
}

countersectionb = {
    \repeat volta 2 { \countersectionba }
    \alternative { { \countersectionbb } { \countersectionbc } }
}

countersectionc = {
    \repeat volta 2 {
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
        s4. |
        s4. |
    }
}

countersectiond = { s2 | s2 | s2 | s2 | s2 | s2 | }

countersectioneaa = {
    s2 |
    s2 |
    s2 |
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

countersectioneab = {
    s2 |
    s2 |
}

countersectionea = { \countersectioneaa \countersectioneab }

countersectioneb = {
    s2 |
    s2 |
}

countersectionec = {
    s2 |
    s2 |
}

countersectione = {
    \repeat volta 2 { \countersectionea }
    \alternative { { \countersectioneb } { \countersectionec } }
}

countersectionfa = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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

countersectionfb = {
    s2 |
    s2 |
}

countersectionfc = {
    s2 |
    s2 |
}

countersectionf = {
    \repeat volta 2 { \countersectionfa }
    \alternative { { \countersectionfb } { \countersectionfc } }
}

countersectionga = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

countersectiongb = {
    s2 |
    s2 |
}

countersectiongc = {
    s2 |
    s2 |
}

countersectiong = {
    \repeat volta 2 { \countersectionga }
    \alternative { { \countersectiongb } { \countersectiongc } }
}

countercoda = {
    s2 |
    s2 |
    s2 |
    s2 |
}

counter = {
    \key g \major
    \time 3/8
    \countersectiona
    \countersectionb
    \countersectionc
    \key f \major
    \time 2/4
    \countersectiond
    \countersectione
    \countersectionf
    \countersectiong
    \blankmeasure
    \countercoda
    \bar "|."
}

countermidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \countersectiona
    \countersectionb
    \countersectionc

    \time 2/4
    \tempo 4 = 120
    \countersectiond

    \countersectione
    \countersectionf
    \countersectiong

    \countersectione
    \countersectionf
    \countersectiong

    \countersectioneaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa = {
    \set countPercentRepeats = ##t
    \repeat percent 11 { d8 r8 a,8 | }
    d8 r8 d8 |
    \repeat percent 2 { a,8 r8 e8 | }
    d8 r8 a,8 |
}

basslinesectionab = {
    d8 r4 |
}

basslinesectionac = {
    d8 r4 |
}

basslinesectiona = {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionba = {
    \repeat percent 2 { d8 r8 a,8 | }
    \repeat percent 2 { d8 r8 c8 | }
    \repeat percent 2 { d8 r8 b,8 | }
    d8 r8 a,8 |
}

basslinesectionbb = {
    d8 r8 a,8 |
}

basslinesectionbc = {
    d8 r8 a,8 |
}

basslinesectionb = {
    \repeat volta 2 { \basslinesectionba }
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

basslinesectionc = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 11 { d8 r8 a,8 | }
        d8 r8 d8 |
        \repeat percent 2 { a,8 r8 e8 | }

        d8 r8 a,8 |
        d8 r4 |
    }
}

basslinesectiond = {
    \set countPercentRepeats = ##t
    \repeat percent 6 { d4 a,4 | }
}

basslinesectioneaa = {
    \set countPercentRepeats = ##t
    \repeat percent 4 { d4 a,4 | }
    e,4 a,4 |
    cis4 a,4 |
    e,4 a,4 |
    cis4 e4 |

    d4 g,4 |
    d4 bes,4 |
    g,4 d4 |
    g,4 bes,4 |
}

basslinesectioneab = {
    a,4 cis4 |
    a,4 cis4 |
}

basslinesectionea = { \basslinesectioneaa \basslinesectioneab }

basslinesectioneb = {
    d8 d8 a8 f8 |
    d4 r4 |
}

basslinesectionec = {
    d8 r8 r4 |
    c4 r4 |
}

basslinesectione = {
    \repeat volta 2 { \basslinesectionea }
    \alternative { { \basslinesectioneb } { \basslinesectionec } }
}

basslinesectionfa = {
    \set countPercentRepeats = ##t
    \repeat percent 8 { f4 c4 | }
    \repeat percent 2 { d4 a,4 | }
    g,4 r4 |
    g,4 g,4 |
    a,4 cis4 |
    a,4 cis4 |
}

basslinesectionfb = {
    d8 r8 r4 |
    c4 r4 |
}

basslinesectionfc = {
    d2 ~ |
    d2 |
}

basslinesectionf = {
    \repeat volta 2 { \basslinesectionfa }
    \alternative { { \basslinesectionfb } { \basslinesectionfc } }
}

basslinesectionga = {
    \set countPercentRepeats = ##t
    \repeat percent 6 { d4 a4 | }
}

basslinesectiongb = {
    d4 a4 |
    d2 |
}

basslinesectiongc = {
    d4 a4 |
    d2 |
}

basslinesectiong = {
    \repeat volta 2 { \basslinesectionga }
    \alternative { { \basslinesectiongb } { \basslinesectiongc } }
}

basslinecoda = {
    \repeat percent 2 { a,4 cis4 | }
    d4 a,4 |
    d4 r4 |
}

bassline = {
    \key g \major
    \time 3/8
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \key f \major
    \time 2/4
    \basslinesectiond
    \basslinesectione
    \basslinesectionf
    \basslinesectiong
    \blankmeasure
    \basslinecoda
    \bar "|."
}

basslinemidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \time 2/4
    \tempo 4 = 120
    \basslinesectiond

    \basslinesectione
    \basslinesectionf
    \basslinesectiong

    \basslinesectione
    \basslinesectionf
    \basslinesectiong

    \basslinesectioneaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa = {
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
    s4. |
}

guitarnotessectionab = {
    s4. |
}

guitarnotessectionac = {
    s4. |
}

guitarnotessectiona = {
    \repeat volta 2 { \guitarnotessectionaa }
    \alternative { { \guitarnotessectionab } { \guitarnotessectionac } }
}

guitarnotessectionba = {
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
    s4. |
}

guitarnotessectionbb = {
    s4. |
}

guitarnotessectionbc = {
    s4. |
}

guitarnotessectionb = {
    \repeat volta 2 { \guitarnotessectionba }
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotessectionc = {
    \repeat volta 2 {
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
        s4. |
        s4. |
    }
}

guitarnotessectiond = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectioneaa = {
    s2 |
    s2 |
    s2 |
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

guitarnotessectioneab = {
    s2 |
    s2 |
}

guitarnotessectionea = { \guitarnotessectioneaa \guitarnotessectioneab }

guitarnotessectioneb = {
    s2 |
    s2 |
}

guitarnotessectionec = {
    s2 |
    s2 |
}

guitarnotessectione = {
    \repeat volta 2 { \guitarnotessectionea }
    \alternative { { \guitarnotessectioneb } { \guitarnotessectionec } }
}

guitarnotessectionfa = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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

guitarnotessectionfb = {
    s2 |
    s2 |
}

guitarnotessectionfc = {
    s2 |
    s2 |
}

guitarnotessectionf = {
    \repeat volta 2 { \guitarnotessectionfa }
    \alternative { { \guitarnotessectionfb } { \guitarnotessectionfc } }
}

guitarnotessectionga = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectiongb = {
    s2 |
    s2 |
}

guitarnotessectiongc = {
    s2 |
    s2 |
}

guitarnotessectiong = {
    \repeat volta 2 { \guitarnotessectionga }
    \alternative { { \guitarnotessectiongb } { \guitarnotessectiongc } }
}

guitarnotescoda = {
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotes = {
    \key g \major
    \time 3/8
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \key f \major
    \time 2/4
    \guitarnotessectiond
    \guitarnotessectione
    \guitarnotessectionf
    \guitarnotessectiong
    \blankmeasure
    \guitarnotescoda
    \bar "|."
}

guitarnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc

    \time 2/4
    \tempo 4 = 120
    \guitarnotessectiond

    \guitarnotessectione
    \guitarnotessectionf
    \guitarnotessectiong

    \guitarnotessectione
    \guitarnotessectionf
    \guitarnotessectiong

    \guitarnotessectioneaa
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotessectionaa = \transpose bes, c {
    a'8. d''16 fis''16 a''16 |
    gis''8 a''8. \glissando gis''16 \glissando |
    a''8 b''8 \tuplet 3/2 { c'''16 [ b''16 a''16 ] } |
    g''8 fis''8 e''16 d''16 |

    a'8. d''16 fis''16 a''16 |
    fis''32 a''32 gis''8. \tuplet 3/2 { c'''16 [ b''16 a''16 ] } |
    gis''32 b''32 a''16 ~ a''4 |
    g''8 fis''8 \tuplet 3/2 { fis''16 [ e''16 d''16 ] } |

    a'8. d''16 fis''16 a''16 |
    gis''16 a''4 \glissando gis''16 \glissando |
    a''8 b''8 \tuplet 3/2 { c'''16 [ b''16 a''16 ] } |
    g''8 fis''8 e''16 d''16 |

    e''8. b''16 a''16 g''16 |
    fis''8. d''32 fis''32 e''16 cis''32 e''32 |
    d''8. d'''16 a''16 fis''16 |
}

clarinetnotessectionab = \transpose bes, c {
    d''4 gis'8 |
}

clarinetnotessectionac = \transpose bes, c {
    d''4. |
}

clarinetnotessectiona = {
    \repeat volta 2 { \clarinetnotessectionaa }
    \alternative { { \clarinetnotessectionab } { \clarinetnotessectionac } }
}

clarinetnotessectionba = \transpose bes, c {
    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    d'''4. ~ |
    d'''4 e'''8 |
    c'''4. ~ |
    c'''8 d'''8 d'''8 |
    b''4. ~ |
    b''8. a''16 \tuplet 3/2 { c'''16 [ b''16 a''16 ] } |
    gis''32 b''32 a''16 ~ a''4 ~ |
}

clarinetnotessectionbb = \transpose bes, c {
    a''4. |
}

clarinetnotessectionbc = \transpose bes, c {
    a''8. \stopOctVA a'32 b'32 cis''32 d''32 e''32 eis''32 |
}

clarinetnotessectionb = {
    \repeat volta 2 { \clarinetnotessectionba }
    \alternative { { \clarinetnotessectionbb } { \clarinetnotessectionbc } }
}

clarinetnotessectionc = \transpose bes, c {
    \repeat volta 2 {
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |

        fis''8-. r16 d''16 e''16 fis''16 |
        g''4 ~ g''8 |
        fis''32 gis''32 a''4 g''32 a''32 |
        g''8. fis''16 e''16 d''16 |

        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |

        e''8-. r16 b''16 a''16 g''16 |
        fis''8. d''32 fis''32 e''16 cis''32 e''32 |
        d''8. d'''16 a''16 fis''16 |
        d''4. |
    }
}

clarinetnotessectiond = {
    R2*5 |
    r8 b''8 c'''8 b''8 |
}

clarinetnotessectioneaa = {
    b''2 ~ |
    b''8 a''8 fis''8 g''8 |
    e''2 |
    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    r8 b''8 dis'''8 e'''8 |

    \acciaccatura { dis'''16 [ e'''16 ] } fis'''2 ~ |
    fis'''8 a''8 b''8 c'''8 |
    b''2 |
    r8 b''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } c'''8 b''8 |

    e'''2 ~ |
    e'''8 b''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } c'''8 b''8 |
    a''2 |
    \stopOctVA
    r8 fis''8 a''8 c'''8 |
}

clarinetnotessectioneab = {
    b''4. a''8 |
    b''16 ( a''16 ) g''8 g''16 ( fis''16 ) e''8 |
}

clarinetnotessectionea = { \clarinetnotessectioneaa \clarinetnotessectioneab }

clarinetnotessectioneb = {
    e''4 r4 |
    r8 b''8 c'''8 b''8 |
}

clarinetnotessectionec = {
    e''8 r8 r4 |
    d''8 r8 r4 |
}

clarinetnotessectione = {
    \repeat volta 2 { \clarinetnotessectionea }
    \alternative { { \clarinetnotessectioneb } { \clarinetnotessectionec } }
}

clarinetnotessectionfa = {
    d''8 g''8 c'''16 ( b''16 ) a''8 |
    b''4 r8 a''16 g''16 |
    g''8 ( \grace { \once \override Flag.stroke-style = #"grace" b''16 ) } a''8 a''16 g''16 fis''8 |
    g''4 r4 |

    d'''4. dis'''8 |
    e'''8 d'''8 a''8 c'''8 |
    b''2 |
    r2 |

    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    e'''4. fis'''8 |
    g'''16 fis'''16 e'''8 d'''16 c'''16 b''8 |
    a''2 |
    \stopOctVA
    a''8-\trill gis''16 a''16 d'''8 c'''8 |

    b''4. a''8 |
    b''16 ( a''16 ) g''8 g''16 ( fis''16 ) e''8 |
}

clarinetnotessectionfb = {
    e''8 r8 r4 |
    d''4 r4 |
}

clarinetnotessectionfc = {
    e''2 ~ |
    e''4 r8 b''16 a''16 |
}

clarinetnotessectionf = {
    \repeat volta 2 { \clarinetnotessectionfa }
    \alternative { { \clarinetnotessectionfb } { \clarinetnotessectionfc } }
}

clarinetnotessectionga = {
    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    gis''8-\prall e''8 b''8-\prall a''8 |
    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    gis''8 f''8 e''4 |

    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    gis''8-\prall e''8 b''8-\prall a''8 |
}

clarinetnotessectiongb = {
    b''16 ( a''16 ) a''16 ( gis''16 ) gis''16 ( f''16 ) f''16 ( e''16 ) |
    e''4 r4 |
}

clarinetnotessectiongc = {
    b''16 ( a''16 ) a''16 ( gis''16 ) gis''16 ( f''16 ) f''16 ( e''16 ) |
    e''8 b''8 c'''8 b''8 |
}

clarinetnotessectiong = {
    \repeat volta 2 { \clarinetnotessectionga }
    \alternative { { \clarinetnotessectiongb } { \clarinetnotessectiongc } }
}

clarinetnotescoda = {
    b''4. a''8 |
    b''16 b'16 ( cis''16 dis''16 e''4\glissando |
    e'''4 ) b''4 |
    e''4 r4 |
}

clarinetnotes = {
    \key a \major
    \time 3/8
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc
    \key g \major
    \time 2/4
    \clarinetnotessectiond
    \clarinetnotessectione
    \clarinetnotessectionf
    \clarinetnotessectiong
    \blankmeasure
    \clarinetnotescoda
    \bar "|."
}

clarinetnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc

    \time 2/4
    \tempo 4 = 120
    \clarinetnotessectiond

    \clarinetnotessectione
    \clarinetnotessectionf
    \clarinetnotessectiong

    \clarinetnotessectione
    \clarinetnotessectionf
    \clarinetnotessectiong

    \clarinetnotessectioneaa
    \clarinetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarineteasynotessectionaa = \transpose bes, c' {
    a8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    a8. d'16 fis'16 a'16 |
    gis'8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 |
    g'8 fis'8 e'16 d'16 |

    a8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    e'8. fis'16 g'16 a'16 |
    fis'8. d'16 e'16 cis'16 |
    d'8. d''16 a'16 fis'16 |
}

clarineteasynotessectionab = \transpose bes, c {
    d''4. |
}

clarineteasynotessectionac = \transpose bes, c {
    d''4. |
}

clarineteasynotessectiona = {
    \repeat volta 2 { \clarineteasynotessectionaa }
    \alternative { { \clarineteasynotessectionab } { \clarineteasynotessectionac } }
}

clarineteasynotessectionba = \transpose bes, c {
    < d'' d''' >4. ~ |
    < d'' d''' >4 < e'' e''' >8 |
    < c'' c''' >4. ~ |
    < c'' c''' >4 < d'' d''' >8 |
    < b' b'' >4. ~ |
    < b' b'' >8 < a' a'' >8 \tuplet 3/2 { < c'' c''' >16 [ < b' b'' >16 < a' a'' >16 ] } |
    < gis' gis'' >8 < a' a'' >4 ~ |
}

clarineteasynotessectionbb = \transpose bes, c {
    < a' a'' >4. |
}

clarineteasynotessectionbc = \transpose bes, c {
    < a' a'' >4. |
}

clarineteasynotessectionb = {
    \repeat volta 2 { \clarineteasynotessectionba }
    \alternative { { \clarineteasynotessectionbb } { \clarineteasynotessectionbc } }
}

clarineteasynotessectionc = \transpose bes, c {
    \repeat volta 2 {
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |

        fis''8-. r16 d''16 e''16 fis''16 |
        g''4 ~ g''8 |
        fis''32 gis''32 a''4 g''32 a''32 |
        g''8. fis''16 e''16 d''16 |

        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |
        fis''8-. r16 d''16 e''16 fis''16 |
        g''8 fis''8 e''16 d''16 |

        e''8-. r16 b''16 a''16 g''16 |
        fis''8. d''32 fis''32 e''16 cis''32 e''32 |
        d''8. d'''16 a''16 fis''16 |
        d''4. |
    }
}

clarineteasynotessectiond = {
    R2*5 |
    r8 b''8 c'''8 b''8 |
}

clarineteasynotessectioneaa = \transpose c c' {
    g'2 ~ |
    g'8 a'8 fis'8 g'8 |
    g'2 |
    r8 b'8 dis''8 e''8 |

    dis''2 ~ |
    dis''8 a'8 b'8 c''8 |
    b'2 |
    r8 b'8 c''8 b'8 |

    c''2 ~ |
    c''8 b'8 c''8 b'8 |
    fis'2 |
    r8 fis'8 g'8 a'8 |
}

clarineteasynotessectioneab = \transpose c c' {
    g'4. fis'8 |
    g'16 ( fis'16 ) e'8 g'16 ( fis'16 ) e'8 |
}

clarineteasynotessectionea = { \clarineteasynotessectioneaa \clarineteasynotessectioneab }

clarineteasynotessectioneb = \transpose c c' {
    e'4 r4 |
    r8 g'8 a'8 g'8 |
}

clarineteasynotessectionec = \transpose c c' {
    e'8 r8 r4 |
    d'8 r8 r4 |
}

clarineteasynotessectione = {
    \repeat volta 2 { \clarineteasynotessectionea }
    \alternative { { \clarineteasynotessectioneb } { \clarineteasynotessectionec } }
}

clarineteasynotessectionfa = {
    d''8 g''8 c'''16 ( b''16 ) a''8 |
    b''4 r8 a''16 g''16 |
    g''8 ( \grace { \once \override Flag.stroke-style = #"grace" b''16 ) } a''8 a''16 g''16 fis''8 |
    g''4 r4 |

    d'''4. dis'''8 |
    e'''8 d'''8 a''8 c'''8 |
    b''2 |
    r2 |

    e''4. fis''8 |
    g''16 fis''16 e''8 d''16 c''16 b'8 |
    a''2 |
    a''8-\trill gis''16 a''16 d'''8 c'''8 |

    b''4. a''8 |
    b''16 ( a''16 ) g''8 g''16 ( fis''16 ) e''8 |
}

clarineteasynotessectionfb = {
    e''8 r8 r4 |
    d''4 r4 |
}

clarineteasynotessectionfc = {
    e''2 ~ |
    e''4 r8 b''16 a''16 |
}

clarineteasynotessectionf = {
    \repeat volta 2 { \clarineteasynotessectionfa }
    \alternative { { \clarineteasynotessectionfb } { \clarineteasynotessectionfc } }
}

clarineteasynotessectionga = {
    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    g''8-\prall e''8 b''8-\prall a''8 |
    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    g''8 f''8 e''4 |

    gis''16 ( a''16 ) b''8 b''8-\prall a''8 |
    g''8-\prall e''8 b''8-\prall a''8 |
}

clarineteasynotessectiongb = {
    b''16 ( a''16 ) a''16 ( gis''16 ) gis''16 ( f''16 ) f''16 ( e''16 ) |
    e''4 r4 |
}

clarineteasynotessectiongc = {
    b''16 ( a''16 ) a''16 ( gis''16 ) gis''16 ( f''16 ) f''16 ( e''16 ) |
    e''8 b''8 c'''8 b''8 |
}

clarineteasynotessectiong = {
    \repeat volta 2 { \clarineteasynotessectionga }
    \alternative { { \clarineteasynotessectiongb } { \clarineteasynotessectiongc } }
}

clarineteasynotescoda = {
    b''4. a''8 |
    b''16 b'16 ( cis''16 dis''16 e''4\glissando |
    e'''4 ) b''4 |
    e''4 r4 |
}

clarineteasynotes = {
    \key a \major
    \time 3/8
    \clarineteasynotessectiona
    \clarineteasynotessectionb
    \clarineteasynotessectionc
    \key g \major
    \time 2/4
    \clarinetnotessectiond
    \clarinetnotessectione
    \clarinetnotessectionf
    \clarinetnotessectiong
    \blankmeasure
    \clarinetnotescoda
    \bar "|."
}

clarineteasynotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \clarineteasynotessectiona
    \clarineteasynotessectionb
    \clarineteasynotessectionc

    \time 2/4
    \tempo 4 = 120
    \clarineteasynotessectiond

    \clarineteasynotessectione
    \clarineteasynotessectionf
    \clarineteasynotessectiong

    \clarineteasynotessectione
    \clarineteasynotessectionf
    \clarineteasynotessectiong

    \clarineteasynotessectioneaa
    \clarineteasynotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotessectiona = \transpose ees, c {
    \melodysectiona
}

altosaxnotessectionb = \transpose ees, c {
    \melodysectionb
}

altosaxnotessectionc = \transpose ees, c {
    \melodysectionc
}

altosaxnotessectiond = \transpose ees c {
    \melodysectiond
}

altosaxnotessectione = \transpose ees c {
    \melodysectione
}

altosaxnotessectioneaa = \transpose ees c {
    \melodysectioneaa
}

altosaxnotessectionf = \transpose ees c {
    \melodysectionf
}

altosaxnotessectiong = \transpose ees c {
    \melodysectiong
}

altosaxnotescoda = \transpose ees c {
    \melodycoda
}

altosaxnotes = {
    \key e \major
    \time 3/8
    \altosaxnotessectiona
    \altosaxnotessectionb
    \altosaxnotessectionc
    \key d \major
    \time 2/4
    \altosaxnotessectiond
    \altosaxnotessectione
    \altosaxnotessectionf
    \altosaxnotessectiong
    \blankmeasure
    \altosaxnotescoda
    \bar "|."
}

altosaxnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \altosaxnotessectiona
    \altosaxnotessectionb
    \altosaxnotessectionc

    \time 2/4
    \tempo 4 = 120
    \altosaxnotessectiond

    \altosaxnotessectione
    \altosaxnotessectionf
    \altosaxnotessectiong

    \altosaxnotessectione
    \altosaxnotessectionf
    \altosaxnotessectiong

    \altosaxnotessectioneaa
    \altosaxnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotessectionaa = {
    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 fis'16 e'16 |

    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 fis'16 e'16 |

    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 e'8 |
    gis'8 r8 fis'16 e'16 |

    dis'8 r8 b8 |
    dis'8 r8 b8 |
    dis'8 r8 cis'16 b16 |
}

tenorsaxnotessectionab = {
    gis'4. |
}

tenorsaxnotessectionac = {
    gis'4. |
}

tenorsaxnotessectiona = {
    \repeat volta 2 { \tenorsaxnotessectionaa }
    \alternative { { \tenorsaxnotessectionab } { \tenorsaxnotessectionac } }
}

tenorsaxnotessectionba = {
    e'4. ~ |
    e'4 fis'8 |
    e'4. ~ |
    e'4 e'8 |
    e'4. ~ |
    e'8 [ e'8 ] \tuplet 3/2 { fis'16 e'16 d'16 } |
    e'8 r8 b8 |
}

tenorsaxnotessectionbb = {
    e'4. |
}

tenorsaxnotessectionbc = {
    e'4. |
}

tenorsaxnotessectionb = {
    \repeat volta 2 { \tenorsaxnotessectionba }
    \alternative { { \tenorsaxnotessectionbb } { \tenorsaxnotessectionbc } }
}

tenorsaxnotessectionc = {
    \repeat volta 2 {
        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 fis'16 e'16 |

        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 fis'16 e'16 |

        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 e'8 |
        gis'8 r8 fis'16 e'16 |

        dis'8 r8 b8 |
        dis'8 r8 b8 |
        dis'8 r8 cis'16 b16 |
        gis'4. |
    }
}

tenorsaxnotessectiond = {
    R2*6 |
}

tenorsaxnotessectioneaa = {
    e''8 e''16 e''16 b'8 e''8 |
    r8 e''8 b'8 e''8 |
    e''8 e''16 e''16 b'8 e''8 |
    r8 e''8 b'8 e''8 |

    fis''8 fis''16 fis''16 dis''8 b'8 |
    r8 dis''8 fis''8 dis''8 |
    fis''8 fis''16 fis''16 dis''8 b'8 |
    r8 dis''8 fis''8 dis''8 |

    e''8 e''16 e''16 c''8 a'8 |
    r8 a'8 c''8 a'8 |
    e''8 e''16 e''16 c''8 a'8 |
    r8 c''8 e''8 c''8 |
}

tenorsaxnotessectioneab = {
    r8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''16 fis''16 dis''8 fis''8 |
}

tenorsaxnotessectionea = { \tenorsaxnotessectioneaa \tenorsaxnotessectioneab }

tenorsaxnotessectioneb = {
    g''8 r8 r4 |
    r2 |
}

tenorsaxnotessectionec = {
    g''8 r8 r4 |
    fis''4 r4 |
}

tenorsaxnotessectione = {
    \repeat volta 2 { \tenorsaxnotessectionea }
    \alternative { { \tenorsaxnotessectioneb } { \tenorsaxnotessectionec } }
}

tenorsaxnotessectionfa = {
    g''8 b'8 r8 b'8 |
    r8 b'8 r8 b'8 |
    r8 b'8 r8 b'8 |
    r8 b'16 b'16 g'8 b'8 |

    r8 b'8 r8 b'8 |
    r8 b'8 r8 b'8 |
    b'8 g''8 fis''8 e''8 |
    d''8 e''16 d''16 c''8 b'8 |

    b'8 b'16 b'16 b'8 b'8 |
    r8 b'8 b'8 b'8 |
    c''8 c''16 c''16 c''8 c''8 |
    r8 c''8 c''8 c''8 |

    b'8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''8 dis''8 fis''8 |
}

tenorsaxnotessectionfb = {
    g''8 r8 r4 |
    fis''4 r4 |
}

tenorsaxnotessectionfc = {
    e''8 gis''8 r8 gis''8 |
    e''8 gis''8 r8 gis''8 |
}

tenorsaxnotessectionf = {
    \repeat volta 2 { \tenorsaxnotessectionfa }
    \alternative { { \tenorsaxnotessectionfb } { \tenorsaxnotessectionfc } }
}

tenorsaxnotessectionga = {
    e''8 gis''8 r8 gis''8 |
    r8 gis''8 r8 gis''8 |
    e''8 gis''8 r8 gis''8 |
    r8 gis''8 e''8 r8 |
    e''8 gis''8 r8 gis''8 |
    r8 gis''8 r8 gis''8 |
}

tenorsaxnotessectiongb = {
    e''8 gis''8 r8 gis''8 |
    e''8 gis''8 r8 gis''8 |
}

tenorsaxnotessectiongc = {
    b''16 ( a''16 ) a''16 ( gis''16 ) gis''16 ( f''16 ) f''16 ( e''16 ) |
    e''8 g''8 a''8 g''8 |
}

tenorsaxnotessectiong = {
    \repeat volta 2 { \tenorsaxnotessectionga }
    \alternative { { \tenorsaxnotessectiongb } { \tenorsaxnotessectiongc } }
}

tenorsaxnotescoda = {
    r8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''16 fis''16 dis''8 fis''8 |
    g''4 fis''4 |
    g''4 r4 |
}

tenorsaxnotes = {
    \key a \major
    \time 3/8
    \tenorsaxnotessectiona
    \tenorsaxnotessectionb
    \tenorsaxnotessectionc
    \key g \major
    \time 2/4
    \tenorsaxnotessectiond
    \tenorsaxnotessectione
    \tenorsaxnotessectionf
    \tenorsaxnotessectiong
    \blankmeasure
    \tenorsaxnotescoda
    \bar "|."
}

tenorsaxnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \tenorsaxnotessectiona
    \tenorsaxnotessectionb
    \tenorsaxnotessectionc

    \time 2/4
    \tempo 4 = 120
    \tenorsaxnotessectiond

    \tenorsaxnotessectione
    \tenorsaxnotessectionf
    \tenorsaxnotessectiong

    \tenorsaxnotessectione
    \tenorsaxnotessectionf
    \tenorsaxnotessectiong

    \tenorsaxnotessectioneaa
    \tenorsaxnotescoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, {
    \key a \major
    \transpose c c' {
        \time 3/8
        \tenorsaxnotessectiona
        \tenorsaxnotessectionb
        \tenorsaxnotessectionc
    }
    \key g \major
    \time 2/4
    \tenorsaxnotessectiond
    \tenorsaxnotessectione
    \tenorsaxnotessectionf
    \tenorsaxnotessectiong
    \blankmeasure
    \tenorsaxnotescoda
    \bar "|."
}
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, {
    \key a \major
    \transpose c c' {
        \time 3/8
        \tenorsaxnotessectiona
        \tenorsaxnotessectionb
        \tenorsaxnotessectionc
    }
    \key g \major
    \time 2/4
    \tenorsaxnotessectiond
    \tenorsaxnotessectione
    \tenorsaxnotessectionf
    \tenorsaxnotessectiong
    \blankmeasure
    \tenorsaxnotescoda
    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotessectiona = \transpose bes, c {
    \melodysectiona
}

trumpetnotessectionb = \transpose bes, c {
    \melodysectionb
}

trumpetnotessectionc = \transpose bes, c {
    \melodysectionc
}

trumpetnotessectiond = {
    R2*6 |
}

trumpetnotessectioneaa = {
    g'2 ~ |
    g'8 a'8 fis'8 g'8 |
    g'2 |
    r8 b'8 dis''8 e''8 |

    dis''2 ~ |
    dis''8 a'8 b'8 c''8 |
    b'2 |
    r8 b'8 c''8 b'8 |

    c''2 ~ |
    c''8 b'8 c''8 b'8 |
    fis'2 |
    r8 fis'8 g'8 a'8 |
}

trumpetnotessectioneab = {
    g'4. fis'8 |
    g'16 ( fis'16 ) e'8 g'16 ( fis'16 ) e'8 |
}

trumpetnotessectionea = { \trumpetnotessectioneaa \trumpetnotessectioneab }

trumpetnotessectioneb = {
    e'4 r4 |
    r8 g'8 a'8 g'8 |
}

trumpetnotessectionec = {
    e'8 r8 r4 |
    d'8 r8 r4 |
}

trumpetnotessectione = {
    \repeat volta 2 { \trumpetnotessectionea }
    \alternative { { \trumpetnotessectioneb } { \trumpetnotessectionec } }
}

trumpetnotessectionfa = {
    d'8 g'8 c''16 ( b'16 ) a'8 |
    b'4 r8 a'16 g'16 |
    g'8 a'8 a'16 g'16 fis'8 |
    g'4 r4 |

    d''4. dis''8 |
    e''8 d''8 a'8 c''8 |
    b'2 |
    r2 |

    c''4. d''8 |
    e''16 d''16 c''8 b'16 a'16 g'8 |
    fis'2 ~ |
    fis'8 fis'8 g'8 a'8 |
    g''4. fis'8 |
    g'16 ( fis'16 ) e'8 g'16 ( fis'16 ) e'8 |
}

trumpetnotessectionfb = {
    e'8 r8 r4 |
    d'4 r4 |
}

trumpetnotessectionfc = {
    e'2 ~ |
    e'4 r4 |
}

trumpetnotessectionf = {
    \repeat volta 2 { \trumpetnotessectionfa }
    \alternative { { \trumpetnotessectionfb } { \trumpetnotessectionfc } }
}

trumpetnotessectionga = {
    gis'16 ( a'16 ) b'8 b'8-\prall a'8 |
    gis'8-\prall e'8 b'8-\prall a'8 |
    gis'16 ( a'16 ) b'8 b'8-\prall a'8 |
    gis'8 f'8 e'4 |
    gis'16 ( a'16 ) b'8 b'8-\prall a'8 |
    gis'8-\prall e'8 b'8-\prall a'8 |
}

trumpetnotessectiongb = {
    b'16 ( a'16 ) a'16 ( gis'16 ) gis'16 ( f'16 ) f'16 ( e'16 ) |
    e'4 r4 |
}

trumpetnotessectiongc = {
    b'16 ( a'16 ) a'16 ( gis'16 ) gis'16 ( f'16 ) f'16 ( e'16 ) |
    e'8 g'8 a'8 g'8 |
}

trumpetnotessectiong = {
    \repeat volta 2 { \trumpetnotessectionga }
    \alternative { { \trumpetnotessectiongb } { \trumpetnotessectiongc } }
}

trumpetnotescoda = {
    b'4. a'8 |
    b'16 b'16 ( ais'16 b'16 c''16 cis''16 d''16 dis''16 |
    e''4 ) b'4 |
    e'4 r4 |
}

trumpetnotes = {
    \key a \major
    \time 3/8
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc
    \key g \major
    \time 2/4
    \trumpetnotessectiond
    \trumpetnotessectione
    \trumpetnotessectionf
    \trumpetnotessectiong
    \blankmeasure
    \trumpetnotescoda
    \bar "|."
}

trumpetnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc

    \time 2/4
    \tempo 4 = 120
    \trumpetnotessectiond

    \trumpetnotessectione
    \trumpetnotessectionf
    \trumpetnotessectiong

    \trumpetnotessectione
    \trumpetnotessectionf
    \trumpetnotessectiong

    \trumpetnotessectioneaa
    \trumpetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotessectionaa = {
    \set countPercentRepeats = ##t
    \repeat percent 11 { d8 r16 a,16 d16 a,16 | }
    d8 r16 d16 d16 d16 |
    \repeat percent 2 { a,8 r16 e16 a,16 e16 | }
    d8 r16 a,16 d16 a,16 |
}

trombonenotessectionab = {
    d8. ( d'16 a16 fis16 ) |
}

trombonenotessectionac = {
    d8 r4 |
}

trombonenotessectiona = {
    \repeat volta 2 { \trombonenotessectionaa }
    \alternative { { \trombonenotessectionab } { \trombonenotessectionac } }
}

trombonenotessectionba = {
    d4. ~ |
    d4 r8 |
    r4 e8\glissando |
    c4 r8 |

    r4 d8\glissando |
    b,8 [ a,8 ] \tuplet 3/2 { c16 ( b,16 a,16 ) } |
    gis,8\glissando a,4 ~ |
}

trombonenotessectionbb = {
    a,8. d16 d16 d16 |
}

trombonenotessectionbc = {
    a,8 d8 fis8 |
}

trombonenotessectionb = {
    \repeat volta 2 { \trombonenotessectionba }
    \alternative { { \trombonenotessectionbb } { \trombonenotessectionbc } }
}

trombonenotessectionc = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 11 { d8 r8 a,8 | }
        d8 r8 d8 |
        \repeat percent 2 { a,8 r8 e8 | }

        d8 r8 a,8 |
        d8 r4 |
    }
}

trombonenotessectiond = {
    R2*6 |
}

trombonenotessectioneaa = {
    r2 | r2 |
    r8 d'8 a8 f8 |
    d4 r4 |

    r8 a8 cis'8 d'8 |
    e'4 r4 |
    r8 g8 a8 bes8 |
    a4 r4 |

    r8 a8 d'8 e'8 |
    f4 r4 |
    r8 g8 a8 bes8 |
    g4 r4 |
}

trombonenotessectioneab = {
    r8 cis'16 cis'16 a8 cis'8 |
    r8 cis'16 cis'16 a8 cis'8 |
}

trombonenotessectionea = { \trombonenotessectioneaa \trombonenotessectioneab }

trombonenotessectioneb = {
    r8 d'8 a8 f8 |
    d4 r4 |
}

trombonenotessectionec = {
    d'8 r8 r4 |
    c'4 r4 |
}

trombonenotessectione = {
    \repeat volta 2 { \trombonenotessectionea }
    \alternative { { \trombonenotessectioneb } { \trombonenotessectionec } }
}

trombonenotessectionfa = {
    f8 f'8 c'8 f'8 |
    f8 f'8 c'8 f'8 |
    f8 f'8 c'8 f'8 |
    r8 f'8 c'8 f'8 |

    f8 f'8 c'8 f'8 |
    f8 f'8 c'8 f'8 |
    f'8 f'16 f'16 c'8 f'8 |
    r8 f'8 c'8 f'8 |

    f8 d'16 d'16 d'8 d'8 |
    r8 d'8 d'8 d'8 |
    g8 d'16 d'16 d'8 d'8 |
    r8 d'8 d'8 d'8 |

    a8 cis'16 cis'16 a8 cis'8 |
    r8 cis'8 a8 cis'8 |
}

trombonenotessectionfb = {
    d'8 r8 r4 |
    c'4 r4 |
}

trombonenotessectionfc = {
    d'8 d'8 a8 d'8 |
    r8 d'8 a8 d'8 |
}

trombonenotessectionf = {
    \repeat volta 2 { \trombonenotessectionfa }
    \alternative { { \trombonenotessectionfb } { \trombonenotessectionfc } }
}

trombonenotessectionga = {
    d8 d'16 d'16 d'8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    r8 d'8 a8 d'8 |
    d8 d'16 d'16 d'8 d'8 |
    d8 d'8 a8 d'8 |
}

trombonenotessectiongb = {
    d8 d'8 a8 d'8 |
    r8 d'8 a8 d'8 |
}

trombonenotessectiongc = {
    a'16 ( g'16 ) g'16 ( fis'16 ) fis'16 ( ees'16 ) ees'16 ( d'16 ) |
    d'4 r4 |
}

trombonenotessectiong = {
    \repeat volta 2 { \trombonenotessectionga }
    \alternative { { \trombonenotessectiongb } { \trombonenotessectiongc } }
}

trombonenotescoda = {
    r8 cis'16 cis'16 a8 cis'8 |
    r8 cis'16 cis'16 a8 cis'8 |
    d'4 a4 |
    d4 r4 |
}

trombonenotes = {
    \key g \major
    \time 3/8
    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc
    \key f \major
    \time 2/4
    \trombonenotessectiond
    \trombonenotessectione
    \trombonenotessectionf
    \trombonenotessectiong
    \blankmeasure
    \trombonenotescoda
    \bar "|."
}

trombonenotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc

    \time 2/4
    \tempo 4 = 120
    \trombonenotessectiond

    \trombonenotessectione
    \trombonenotessectionf
    \trombonenotessectiong

    \trombonenotessectione
    \trombonenotessectionf
    \trombonenotessectiong

    \trombonenotessectioneaa
    \trombonenotescoda
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = {
    \transpose c c'' {
        \key g \major
        \time 3/8
        \trombonenotessectiona
        \trombonenotessectionb
        \trombonenotessectionc
    }
    \transpose c c' {
        \key f \major
        \time 2/4
        \trombonenotessectiond
        \trombonenotessectione
        \trombonenotessectionf
        \trombonenotessectiong
    \blankmeasure
        \trombonenotescoda
    }
    \bar "|."
}

trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotessectionaa = {
    < a d' >8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    < a d' >8. d'16 fis'16 a'16 |
    gis'8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 |
    g'8 fis'8 e'16 d'16 |

    < a d' >8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    e'8. fis'16 g'16 a'16 |
    fis'8. d'16 e'16 cis'16 |
    d'8. d''16 a'16 fis'16 |
}

violinnotessectionab = {
    < a' d' >4. |
}

violinnotessectionac = {
    < a' d' >4. |
}

violinnotessectiona = {
    \repeat volta 2 { \violinnotessectionaa }
    \alternative { { \violinnotessectionab } { \violinnotessectionac } }
}

violinnotessectionba = {
    < g' d'' >4. ~ |
    < g' d'' >4 e''8 |
    < c'' d'' >4. ~ |
    < c'' d'' >4 d''8 |
    < b' d'' >4. ~ |
    < b' d'' >8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 ~ |
}

violinnotessectionbb = {
    < fis' a' >4. |
}

violinnotessectionbc = {
    < fis' a' >4. |
}

violinnotessectionb = {
    \repeat volta 2 { \violinnotessectionba }
    \alternative { { \violinnotessectionbb } { \violinnotessectionbc } }
}

violinnotessectionc = {
    \repeat volta 2 {
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        \acciaccatura { gis'16 } a'4. ~ |
        a'4 g'8 |

        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        e'8. b'16 a'16 g'16 |
        fis'8. d'16 e'16 c'16 |
        d'8. d''16 a'16 fis'16 |
        < a d' >4 r8 |
    }
}

violinnotessectiond = { R2*5 | r8 a''8 bes''8 a''8 | }

violinnotessectioneaa = {
    a''2 ~ |
    a''8 g''8 e''8 f''8 |
    d''2 |
    r8 a''8 cis'''8 d'''8 |
    \acciaccatura { cis'''16 [ d'''16 ] } e'''2 ~ |
    e'''8 g''8 a''8 bes''8 |
    a''2 |
    r8 a''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } bes''8 a''8 |
    d'''2 ~ |
    d'''8 a''8 ( \grace { \once \override Flag.stroke-style = #"grace" d'''16 ) } bes''8 a''8 |
    g''2 |
    r8 e''8 g''8 bes''8 |
}

violinnotessectioneab = {
    a''4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

violinnotessectionea = { \violinnotessectioneaa \violinnotessectioneab }

violinnotessectioneb = {
    d''4 r4 |
    r8 a''8 bes''8 a''8 |
}

violinnotessectionec = {
    d''8 r8 r4 |
    c''4 r4 |
}

violinnotessectione = {
    \repeat volta 2 { \violinnotessectionea }
    \alternative { { \violinnotessectioneb } { \violinnotessectionec } }
}

violinnotessectionfa = {
    c''8 f''8 bes''16 ( a''16 ) g''8 |
    a''4 r8 g''16 f''16 |
    f''8 ( \grace { \once \override Flag.stroke-style = #"grace" a''16 ) } g''8 g''16 f''16 e''8 |
    f''4 r4 |

    c'''4. cis'''8 |
    d'''8 c'''8 g''8 bes''8 |
    a''2 |
    r2 |

    d'''4. e'''8 |
    f'''16 e'''16 d'''8 c'''16 bes''16 a''8 |
    g''2 |
    g''8-\trill fis''16 g''16 c'''8 bes''8 |

    a''4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

violinnotessectionfb = {
    d''8 r8 r4 |
    c''4 r4 |
}

violinnotessectionfc = {
    d''2 ~ |
    d''4 r8 a''16 g''16 |
}

violinnotessectionf = {
    \repeat volta 2 { \violinnotessectionfa }
    \alternative { { \violinnotessectionfb } { \violinnotessectionfc } }
}

violinnotessectionga = {
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8-\prall d''8 a''8-\prall g''8 |
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8 ees''8 d''4 |
    fis''16 ( g''16 ) a''8 a''8-\prall g''8 |
    fis''8-\prall d''8 a''8-\prall g''8 |
}

violinnotessectiongb = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    d''4 r4 |
}

violinnotessectiongc = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    d''8 a''8 bes''8 a''8 |
}

violinnotessectiong = {
    \repeat volta 2 { \violinnotessectionga }
    \alternative { { \violinnotessectiongb } { \violinnotessectiongc } }
}

violinnotescoda = {
    a''4. g''8 |
    a''16 a'16 ( b'16 cis''16 d''4\glissando |
    d'''4 ) a''4 |
    d''4 r4 |
}

violinnotes = {
    \key g \major
    \time 3/8
    \violinnotessectiona
    \violinnotessectionb
    \violinnotessectionc
    \transpose c' c {
        \key f \major
        \time 2/4
        \violinnotessectiond
        \violinnotessectione
        \violinnotessectionf
        \violinnotessectiong
    \blankmeasure
        \violinnotescoda
    }
    \bar "|."
}

violinnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \violinnotessectiona
    \violinnotessectionb
    \violinnotessectionc

    \transpose c' c {
        \time 2/4
        \tempo 4 = 120
        \violinnotessectiond

        \violinnotessectione
        \violinnotessectionf
        \violinnotessectiong

        \violinnotessectione
        \violinnotessectionf
        \violinnotessectiong

        \violinnotessectioneaa
        \violinnotescoda
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotessectionaa = {
    < a d' fis' a' >8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    < a d' fis' a' >8. d'16 fis'16 a'16 |
    gis'8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 a'4 |
    g'8 fis'8 e'16 d'16 |

    < a d' fis' a' >8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |

    < e' a' cis'' >8. fis'16 g'16 a'16 |
    fis'8. d'16 e'16 cis'16 |
    d'8. d''16 a'16 fis'16 |
}

pianorightuppernotessectionab = {
    < d' fis' a' >4. |
}

pianorightuppernotessectionac = {
    < d' fis' a' >4. |
}

pianorightuppernotessectiona = {
    \repeat volta 2 { \pianorightuppernotessectionaa }
    \alternative { { \pianorightuppernotessectionab } { \pianorightuppernotessectionac } }
}

pianorightuppernotessectionba = {
    < fis' a' d'' >4. ~ |
    < fis' a' d'' >4 e''8 |
    < fis' a' c'' >4. ~ |
    < fis' a' c'' >4 d''8 |
    < fis' a' b' >4. ~ |
    < fis' a' b' >8 a'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    gis'8 < d' fis' a' >4 ~ |
}

pianorightuppernotessectionbb = {
    < d' fis' a' >4. |
}

pianorightuppernotessectionbc = {
    < d' fis' a' >4. |
}

pianorightuppernotessectionb = {
    \repeat volta 2 { \pianorightuppernotessectionba }
    \alternative { { \pianorightuppernotessectionbb } { \pianorightuppernotessectionbc } }
}

pianorightuppernotessectionc = {
    \repeat volta 2 {
        < a' d' fis' >8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        < a' d' fis' >8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        \acciaccatura { gis'16 } a'4. ~ |
        a'4 g'8 |

        < a' d' fis' >8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |
        fis'8. d'16 e'16 fis'16 |
        g'8 fis'8 e'16 d'16 |

        < a cis' e' >8. b'16 a'16 g'16 |
        fis'8. d'16 e'16 c'16 |
        d'8. d''16 a'16 fis'16 |
        < d' fis' a' >4 r8 |
    }
}

pianorightuppernotessectiond = {
    R2*5 | r8 a''8 bes''8 a''8 |
}

pianorightuppernotessectioneaa = {
    < d'' f'' a'' >2 ~ |
    < d'' f'' a'' >8 g''8 e''8 f''8 |
    < f' a' d'' >2 |
    r8 a''8 cis'''8 d'''8 |
    < a'' cis''' e''' >2 ~ |
    < a'' cis''' e''' >8 g''8 a''8 bes''8 |
    < cis'' e'' a'' >2 |
    r8 a''8 bes''8 a''8 |
    < g'' bes'' d''' >2 ~ |
    < g'' bes'' d''' >8 a''8 bes''8 a''8 |
    < b' d'' g'' >2 |
    r8 e''8 g''8 bes''8 |
}

pianorightuppernotessectioneab = {
    < cis'' e'' a'' >4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

pianorightuppernotessectionea = { \pianorightuppernotessectioneaa \pianorightuppernotessectioneab }

pianorightuppernotessectioneb = {
    < f' a' d'' >4 r4 |
    r8 a''8 bes''8 a''8 |
}

pianorightuppernotessectionec = {
    d''8 r8 r4 |
    < e' g' c'' >4 r4 |
}

pianorightuppernotessectione = {
    \repeat volta 2 { \pianorightuppernotessectionea }
    \alternative { { \pianorightuppernotessectioneb } { \pianorightuppernotessectionec } }
}

pianorightuppernotessectionfa = {
    c''8 f''8 bes''16 ( a''16 ) g''8 |
    a''4 r8 g''16 f''16 |
    f''8 g''8 g''16 f''16 e''8 |
    f''4 r4 |
    c'''4. cis'''8 |
    d'''8 c'''8 g''8 bes''8 |
    < c'' f'' a'' >2 |
    r2 |
    < f'' a'' d''' >4. e'''8 |
    f'''16 e'''16 d'''8 c'''16 bes''16 a''8 |
    < bes'' d'' g'' >2 |
    g''8-\trill fis''16 g''16 c'''8 bes''8 |
    a''4. g''8 |
    a''16 ( g''16 ) f''8 f''16 ( e''16 ) d''8 |
}

pianorightuppernotessectionfb = {
    d''8 r8 r4 |
    < e' g' c'' >4 r4 |
}

pianorightuppernotessectionfc = {
    < f' a' d'' >2 ~ |
    < f' a' d'' >4 r8 a''16 g''16 |
}

pianorightuppernotessectionf = {
    \repeat volta 2 { \pianorightuppernotessectionfa }
    \alternative { { \pianorightuppernotessectionfb } { \pianorightuppernotessectionfc } }
}

pianorightuppernotessectionga = {
    fis''16 ( g''16 ) a''8 a''8 g''8 |
    fis''8 d''8 a''8 g''8 |
    fis''16 ( g''16 ) a''8 a''8 g''8 |
    fis''8 ees''8 d''4 |
    fis''16 ( g''16 ) a''8 a''8 g''8 |
    fis''8 d''8 a''8 g''8 |
}

pianorightuppernotessectiongb = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    < fis' a' d'' >4 r4 |
}

pianorightuppernotessectiongc = {
    a''16 ( g''16 ) g''16 ( fis''16 ) fis''16 ( ees''16 ) ees''16 ( d''16 ) |
    d''8 a''8 bes''8 a''8 |
}

pianorightuppernotessectiong = {
    \repeat volta 2 { \pianorightuppernotessectionga }
    \alternative { { \pianorightuppernotessectiongb } { \pianorightuppernotessectiongc } }
}

pianorightuppernotescoda = {
    a''4. g''8 |
    a''16 a'16 b' cis'' d''4\glissando |
    d'''4 a''4 |
    d''4 r4 |
}

pianorightuppernotes = {
    \key g \major
    \time 3/8
    \pianorightuppernotessectiona
    \pianorightuppernotessectionb
    \pianorightuppernotessectionc
    \key f \major
    \time 2/4
    \pianorightuppernotessectiond
    \pianorightuppernotessectione
    \pianorightuppernotessectionf
    \pianorightuppernotessectiong
    \blankmeasure
    \pianorightuppernotescoda
    \bar "|."
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \pianorightuppernotessectiona
    \pianorightuppernotessectionb
    \pianorightuppernotessectionc

    \time 2/4
    \tempo 4 = 120
    \pianorightuppernotessectiond

    \pianorightuppernotessectione
    \pianorightuppernotessectionf
    \pianorightuppernotessectiong

    \pianorightuppernotessectione
    \pianorightuppernotessectionf
    \pianorightuppernotessectiong

    \pianorightuppernotessectioneaa
    \pianorightuppernotescoda
}

%-------------------------------------------------

pianoleftuppernotessectionaa = {
    \repeat unfold 11 { d8 r8 a,8 | }
    d8 r8 d8 |
    \repeat unfold 2 { a,8 r8 e8 | }
    d8 r8 a,8 |
}

pianoleftuppernotessectionab = {
    d8 r4 |
}

pianoleftuppernotessectionac = {
    d8 r4 |
}

pianoleftuppernotessectiona = {
    \repeat volta 2 { \pianoleftuppernotessectionaa }
    \alternative { { \pianoleftuppernotessectionab } { \pianoleftuppernotessectionac } }
}

pianoleftuppernotessectionba = {
    \repeat unfold 2 { d8 r8 a,8 | }
    \repeat unfold 2 { d8 r8 c8 | }
    \repeat unfold 2 { d8 r8 b,8 | }
    d8 r8 a,8 |
}

pianoleftuppernotessectionbb = {
    d8 r8 a,8 |
}

pianoleftuppernotessectionbc = {
    d8 r8 a,8 |
}

pianoleftuppernotessectionb = {
    \repeat volta 2 { \pianoleftuppernotessectionba }
    \alternative { { \pianoleftuppernotessectionbb } { \pianoleftuppernotessectionbc } }
}

pianoleftuppernotessectionc = {
    \repeat volta 2 {
        \repeat unfold 11 { d8 r8 a,8 | }
        d8 r8 d8 |
        \repeat unfold 2 { a,8 r8 e8 | }

        d8 r8 a,8 |
        d8 r4 |
    }
}

pianoleftuppernotessectiond = {
    \repeat unfold 6 { d,8 < d f >8 a,8 < d f >8 | }
}

pianoleftuppernotessectioneaa = {
    \repeat unfold 4 { d,8 < d f >8 a,8 < d f >8 | }
    \repeat unfold 4 { e,8 < a cis' >8 a,8 < a cis' >8 | }
    \repeat unfold 4 { g,8 < g bes >8 d,8 < g bes >8 | }
}

pianoleftuppernotessectioneab = {
    \repeat unfold 2 { a,8 < a cis >8 cis8 < a cis' >8 | }
}

pianoleftuppernotessectionea = { \pianoleftuppernotessectioneaa \pianoleftuppernotessectioneab }

pianoleftuppernotessectioneb = {
    d8 d8 a8 f8 |
    < f, a, d >4 r4 |
}

pianoleftuppernotessectionec = {
    d8 r8 r4 |
    < c e >4 r4 |
}

pianoleftuppernotessectione = {
    \repeat volta 2 { \pianoleftuppernotessectionea }
    \alternative { { \pianoleftuppernotessectioneb } { \pianoleftuppernotessectionec } }
}

pianoleftuppernotessectionfa = {
    \repeat unfold 8 { f,8 < f a >8 c8 < f a >8 | }
    \repeat unfold 2 { d,8 < d f >8 a,8 < d f >8 | }
    < bes, d, g, >4 r4 |
    < bes, d, g, >4 < bes, d, g, >4 |
    \repeat unfold 2 { a,8 < a cis' >8 e8 < a cis' >8 | }
}

pianoleftuppernotessectionfb = {
    < d f >8 r8 r4 |
    < g, c >4 r4 |
}

pianoleftuppernotessectionfc = {
    < d, f, a, d >2 ~ |
    < d, f, a, d >2 |
}

pianoleftuppernotessectionf = {
    \repeat volta 2 { \pianoleftuppernotessectionfa }
    \alternative { { \pianoleftuppernotessectionfb } { \pianoleftuppernotessectionfc } }
}

pianoleftuppernotessectionga = {
    \repeat unfold 6 { d,8 < d f >8 a,8 < d f >8 | }
}

pianoleftuppernotessectiongb = {
    d,8 < d f >8 a,8 < d f >8 |
    < d f >2 |
}

pianoleftuppernotessectiongc = {
    d,8 < d f >8 a,8 < d f >8 |
    < d f >2 |
}

pianoleftuppernotessectiong = {
    \repeat volta 2 { \pianoleftuppernotessectionga }
    \alternative { { \pianoleftuppernotessectiongb } { \pianoleftuppernotessectiongc } }
}

pianoleftuppernotescoda = {
    \repeat unfold 2 { a,8 < a cis' >8 e8 < a cis' >8 | }
    < f, a, d >4 < d, f, a, >4 |
    < f,, a,, d, >4 r4 |
}

pianoleftuppernotes = {
    \key g \major
    \time 3/8
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionb
    \pianoleftuppernotessectionc
    \key f \major
    \time 2/4
    \pianoleftuppernotessectiond
    \pianoleftuppernotessectione
    \pianoleftuppernotessectionf
    \pianoleftuppernotessectiong
    \blankmeasure
    \pianoleftuppernotescoda
    \bar "|."
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionb
    \pianoleftuppernotessectionc

    \time 2/4
    \tempo 4 = 120
    \pianoleftuppernotessectiond

    \pianoleftuppernotessectione
    \pianoleftuppernotessectionf
    \pianoleftuppernotessectiong

    \pianoleftuppernotessectione
    \pianoleftuppernotessectionf
    \pianoleftuppernotessectiong

    \pianoleftuppernotessectioneaa
    \pianoleftuppernotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionaa = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat percent 15 { << sna8\mf hhc >> r8 \snareruffeight | }
}

drumshighsectionab = \drummode {
    sna8 r4 |
}

drumshighsectionac = \drummode {
    cymr8->\ff r4 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionba = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 { < sna hhc >8\mf r8 \snareruffeight | }
}

drumshighsectionbb = \drummode {
    sna8 r4 |
}

drumshighsectionbc = \drummode {
    cymr8->\ff r4 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 { \drumshighsectionba }
    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
}

drumshighsectionc = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 15 { < sna hhc >8\mf r8 \snareruffeight | }
        cymr8->\ff r4 |
    }
}

drumshighsectiond = \drummode {
    R2*4 |
    < rb sna >8^"Bell"\mf sna8 sna8 < rb sna >8  |
    sna8 sna8 < rb sna >8 sna8 |
}

%drumshighsectionca = \drummode {
%    \time 2/4
%    \repeat unfold 3 {
%        \repeat percent 2 {
%            << cymr8 sna >> sna8 sna8 << cymr8 sna >>  |
%            sna8 sna8 << cymr8 sna >> sna8 |
%        }
%    }
%    << cymr8 sna >> sna8 sna8 << cymr8 sna >>  |
%    sna8 sna8 << cymr8 sna >> sna8 |
%}

drumshighsectioneaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 6 {
        < cymr sna >8 sna8 sna8 < cymr sna >8  |
        sna8 sna8 < cymr sna >8 sna8 |
    }
}

drumshighsectioneab = \drummode {
    < cymr sna >8 sna8 sna8 < cymr sna >8  |
    sna8 sna8 < cymr sna >8 sna8 |
}

drumshighsectionea = \drummode { \drumshighsectioneaa \drumshighsectioneab }

drumshighsectioneb = \drummode {
    < cymr sna >8^"Fill" sna16 sna16 sna8 < cymr sna >8  |
    sna8 sna8 < cymr sna >8 sna16 sna16 |
}

drumshighsectionec = \drummode {
    < cymr sna >8^"Fill" sna16 sna16 sna8 < cymr sna >8  |
    sna8 sna8 < cymr sna >8 sna16 sna16 |
}

drumshighsectione = \drummode {
    \repeat volta 2 { \drumshighsectionea }
    \alternative { { \drumshighsectioneb } { \drumshighsectionec } }
}

drumshighsectionfa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        wbh8\fff wbh16 wbh16 wbh8 wbh8
        wbh8 wbh16 wbh16 wbh8 wbh8 |
    }
}

drumshighsectionfb = \drummode {
    wbh8^"Fill" wbh16 wbh16 wbh8 wbh8
    wbh8 wbh16 wbh16 wbh8 wbh8 |
}

drumshighsectionfc = \drummode {
    wbh8^"Fill" wbh16 wbh16 wbh8 wbh8
    wbh8 wbh16 wbh16 wbh8 wbh8 |
}

drumshighsectionf = \drummode {
    \repeat volta 2 { \drumshighsectionfa }
    \alternative { { \drumshighsectionfb } { \drumshighsectionfc } }
}

drumshighsectionga = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 3 {
        cymr8\mf sna16 sna16 sna8 sna8:32 ~  |
        sna8:32 sna8 sna16 sna16 sna8 |
    }
}

drumshighsectiongb = \drummode {
    cymr8 sna16 sna16 sna8 sna8:32 ~  |
    sna8:32 sna8 sna16^"Fill" sna16 sna8 |
}

drumshighsectiongc = \drummode {
    cymr8 sna16 sna16 sna8 sna8:32 ~  |
    sna8:32 sna8 sna16^"Fill" sna16 sna8 |
}

drumshighsectiong = \drummode {
    \repeat volta 2 { \drumshighsectionga }
    \alternative { { \drumshighsectiongb } { \drumshighsectiongc } }
}

drumshighcoda = \drummode {
    cymr8 sna16 sna16 sna8 sna8:32 ~  |
    sna8:32 sna8 sna16^"Fill" sna16 sna8 |
    ss4 ss4 |
    ss4 cymr4 |
}

drumshigh = \drummode {
    \stemUp
    \time 3/8
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \time 2/4
    \drumshighsectiond
    \drumshighsectione
    \drumshighsectionf
    \drumshighsectiong
    \blankmeasure
    \drumshighcoda
    \bar "|."
}

drumshighmidi = \drummode {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \time 2/4
    \tempo 4 = 120
    \drumshighsectiond

    \drumshighsectione
    \drumshighsectionf
    \drumshighsectiong

    \drumshighsectione
    \drumshighsectionf
    \drumshighsectiong

    \drumshighsectioneaa
    \drumshighcoda
}

%drumslowsectionaa = \drummode {
%    \repeat unfold 3 {
%        \repeat percent 4 {
%            bda8 s8 bda8 |
%        }
%    }
%    \repeat percent 2 {
%        bda8 s8 bda8 |
%    }
%}

%drumslowsectionca = \drummode {
%    \time 2/4
%    \repeat unfold 3 {
%        \repeat percent 2 {
%            bda4. bda8 ~ |
%            bda4 bda4 |
%        }
%    }
%    bda4. bda8 ~ |
%    bda4 bda4 |
%}

drumslowsectionaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 15 { bda8\mf s8 bda8 | }
}

drumslowsectionab = \drummode {
    bda8 s4 |
}

drumslowsectionac = \drummode {
    bda8 s4 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionba = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 { bda8 s8 bda8 | }
}

drumslowsectionbb = \drummode {
    bda8 s4 |
}

drumslowsectionbc = \drummode {
    bda8 s4 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 { \drumslowsectionba }
    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
}

drumslowsectionc = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 15 { bda8 s8 bda8 | }
        bda8 s8 s8
    }
}

drumslowsectiond = \drummode {
    s2*6 |
}

drumslowsectioneaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 6 { bda4. bda8 ~ | bda4 bda4 | }
}

drumslowsectioneab = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectionea = \drummode { \drumslowsectioneaa \drumslowsectioneab }

drumslowsectioneb = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectionec = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectione = \drummode {
    \repeat volta 2 { \drumslowsectionea }
    \alternative { { \drumslowsectioneb } { \drumslowsectionec } }
}

drumslowsectionfa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 { bda4. bda8 ~ | bda4 bda4 | }
}

drumslowsectionfb = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectionfc = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectionf = \drummode {
    \repeat volta 2 { \drumslowsectionfa }
    \alternative { { \drumslowsectionfb } { \drumslowsectionfc } }
}

drumslowsectionga = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 3 { bda4. bda8 ~ | bda4 bda4 | }
}

drumslowsectiongb = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectiongc = \drummode {
    bda4. bda8 ~ | bda4 bda4 |
}

drumslowsectiong = \drummode {
    \repeat volta 2 { \drumslowsectionga }
    \alternative { { \drumslowsectiongb } { \drumslowsectiongc } }
}

drumslowcoda = \drummode {
    s2 |
    s2 |
    bda4 bda4 |
    bda4 s4 |
}

drumslow = \drummode {
    \stemDown
    \time 3/8
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \time 2/4
    \drumslowsectiond
    \drumslowsectione
    \drumslowsectionf
    \drumslowsectiong
    \blankmeasure
    \drumslowcoda
    \bar "|."
}

drumslowmidi = \drummode {
    \time 3/8
    \preintro
    \tempo 8 = 135
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \time 2/4
    \tempo 4 = 120
    \drumslowsectiond

    \drumslowsectione
    \drumslowsectionf
    \drumslowsectiong

    \drumslowsectione
    \drumslowsectionf
    \drumslowsectiong

    \drumslowsectioneaa
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \key g \major
    \time 3/8
    \transpose c c' {
        \melodysectiona
        \melodysectionb
        \melodysectionc
    }
    \key f \major
    \time 2/4
    \melodysectiond
    \melodysectione
    \melodysectionf
    \melodysectiong
    \blankmeasure
    \melodycoda
}

flutenotesmidi = \transpose c c' {
    \time 3/8
    \transpose c c' {
        \preintro
        \tempo 8 = 135
        \melodysectiona
        \melodysectionb
        \melodysectionc
    }

    \time 2/4
    \tempo 4 = 120
    \melodysectiond

    \melodysectione
    \melodysectionf
    \melodysectiong

    \melodysectione
    \melodysectionf
    \melodysectiong

    \melodysectioneaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    \repeat unfold 12 { d4. | }
    a4.:7 | a4.:7 | a4.:7 |
}

chordletterssectionab = \chordmode { d4. | }

chordletterssectionac = \chordmode {
  \chordChangesOff
  d4. |
  \chordChangesOn
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionba = \chordmode {
  \chordChangesOff
  d4. |
  \chordChangesOn
  d4. | d4.:7 | d4.:7 | d4.:6 | d4.:6 | d4. |
}

chordletterssectionbb = \chordmode {
  \chordChangesOff
  d4. |
}

chordletterssectionbc = \chordmode {
  d4. |
  \chordChangesOn
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d4. |
        \chordChangesOn
        \repeat unfold 3 { d4. | }
        d4. | d4. | d4. | d4. |
        \repeat unfold 4 { d4. | }
        a4.:7 | a4.:7 | d4. | d4. |
    }
}

chordletterssectiond = \chordmode {
    \chordChangesOff
    d2*6:min |
    \chordChangesOn
}

chordletterssectioneaa = \chordmode {
    \repeat unfold 4 { d2:min | }
    \repeat unfold 4 { a2 | }
    \repeat unfold 4 { g2:min | }
}

chordletterssectioneab = \chordmode { a2 | a2 | }

chordletterssectionea = \chordmode { \chordletterssectioneaa \chordletterssectioneab }

chordletterssectioneb = \chordmode { d2:min | d2:min | }

chordletterssectionec = \chordmode {
  \chordChangesOff
  d2:min |
  \chordChangesOn
  c2 |
}

chordletterssectione = \chordmode {
    \repeat volta 2 { \chordletterssectionea }
    \alternative { { \chordletterssectioneb } { \chordletterssectionec } }
}

chordletterssectionfa = \chordmode {
    \repeat unfold 8 { f2 | }
    d2:min | d2:min | g2:min | g2:min |
    a2 | a2 |
}

chordletterssectionfb = \chordmode { d2:min | c2 | }

chordletterssectionfc = \chordmode { d2 | d2 | }

chordletterssectionf = \chordmode {
    \repeat volta 2 { \chordletterssectionfa }
    \alternative { { \chordletterssectionfb } { \chordletterssectionfc } }
}

chordletterssectionga = \chordmode {
  \chordChangesOff
  d2 |
  \chordChangesOn
  \repeat unfold 5 { d2 | }
}

chordletterssectiongb = \chordmode {
  \chordChangesOff
  d2 |
  \chordChangesOn
  d2 |
}

chordletterssectiongc = \chordmode {
  \chordChangesOff
  d2 |
  \chordChangesOn
  d2 |
}

chordletterssectiong = \chordmode {
    \repeat volta 2 { \chordletterssectionga }
    \alternative { { \chordletterssectiongb } { \chordletterssectiongc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    a2 |
    \chordChangesOn
    a2 | d4:min a4 | d2:min |
}

chordletters = \chordmode {
    \time 3/8
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \time 2/4
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
    \chordletterssectiong
    \blankmeasure
    \chordletterscoda
    \bar "|."
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
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d4. |
}

previewnotes = {
    \key g \major
    \time 3/8

    a8. d'16 fis'16 a'16 |
    gis'8 a'4 |
    a'8 b'8 \tuplet 3/2 { c''16 [ b'16 a'16 ] } |
    g'8 fis'8 e'16 d'16 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c'' { \bassnotes } }


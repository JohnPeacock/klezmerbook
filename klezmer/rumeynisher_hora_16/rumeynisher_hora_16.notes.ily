\version "2.18.2"

bandmsectionABC = {
    \markA \positionA
    \repeat volta 2 {
        s4. | \breakAone s4. | \breakAtwo s4. | \breakAtre s4. | \breakAfor
        s4. | \breakAfiv s4. | \breakAsix s4. | \breakAsev s4. | \breakAeit
        s4. | \breakAnin s4. | \breakAten s4. | \breakAelv s4. | \breakAtwl
        s4. | \breakAtht s4. | \breakAfrt s4. | \breakAfft s4. |
    }
    \breakA \markB \positionB
    \repeat volta 2 {
        s4. | \breakBone s4. | \breakBtwo s4. | \breakBtre s4. | \breakBfor
        s4. | \breakBfiv s4. | \breakBsix s4. | \breakBsev s4. | \breakBeit
        s4. | \breakBnin s4. | \breakBten s4. | \breakBelv s4. | \breakBtwl
        s4. | \breakBtht s4. | \breakBfrt s4. | \breakBfft s4. |
    }
    \breakB \markC \positionC
    \repeat volta 2 {
        s4. | \breakCone s4. | \breakCtwo s4. | \breakCtre s4. | \breakCfor
        s4. | \breakCfiv s4. | \breakCsix s4. | \breakCsev s4. | \breakCeit
        s4. | \breakCnin s4. | \breakCten s4. | \breakCelv s4. | \breakCtwl
        s4. | \breakCtht s4. | \breakCfrt s4. | \breakCfft
    }
    \alternative { { s4. | \breakCsxt } { s4. | } }
    \bar ".|:-||"
    \breakC
}

bandmsectionD = {
    \markSD \positionSD
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix
        s2 | \breakDsev \markFN \positionFN s2 | \breakDeit
    }
    \breakD
}

bandmsectionDEFG = {
    \markSD \positionSD
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo
        s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix
        s2 | \breakDsev \markFN \positionFN s2 |
    }
    \breakD \markE \positionE
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | \breakEone s2 | \breakEtwo
        \grace { s16 s16 s16 } s2 | \breakEtre s2 | \breakEfor
    }
    \breakE \markF \positionF
    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | \breakFone s2 | \breakFtwo
        s2 | \breakFtre
    }
    \alternative { { s2 | \breakFfor } { s2 | } }
    \bar "||"
    \breakF \markG \positionG

    s2 | \breakGone s2 | \breakGtwo s2 | \breakGtre s2 | \breakGfor
    s2 | \breakGfiv s2 | \breakGsix s2 | \breakGsev s2 |
    \markDSFN \positionDSFN
}

bandmNV = {
    \time 3/8
    s4 s8 |
    \tempo \tempostring
    \bandmsectionABC
    \time 2/4
    \tempo \tempostringtwo
    \bandmsectionDEFG
    \bar "||"
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for tempo changes in
% the midi output.

preintro = { s4. }

metronome = \context Voice = "metronome" {
    \time 3/8
    \preintro
    \tempo 8 = 120 % Slowly - with steady rythmn
    \time 3/8
    s4 s8 |
    \bandmsectionABC

    \tempo 4 = 120
    \time 2/4
    \bandmsectionDEFG
    \bandmsectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionABC = \transpose c bes {
% clarinetnotessectionABC
    \repeat volta 2 {
        cis''8\mf \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        a'8 r8 e'8 |
        a'4. |
        a'8 bes'8 cis''8 |
        \acciaccatura { e''16 } d''8 cis''8 bes'8 |
        a'4. ~
        a'4 r8 |

        cis''8 \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 \acciaccatura { a'16 } g'8 \acciaccatura { a'16 } g'8 |
        \acciaccatura { a'16 } g'4. |
        \startOctVA
        \transpose c c' {
            g'8. f'16 e'16 d'16 |
            cis'8. bes16 a16 g16 |
            a8. a'16 e'16 c'16 |
            a4 r8 |
        }
        \stopOctVA
    }
    \repeat volta 2 {
        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] f'16 e'16 |
        e'8.\trill d'16 d'16 c'16 |
        c'8 \acciaccatura { e'16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 b8 |
        c'8 r8 e'8 |
        a'4.-> |

        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] e'16 d'16 |
        e'8.\trill [ d'16 ] d'16 c'16 |
        c'8 \acciaccatura { e'16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 \tuplet 3/2 { c'16 [ ( b16 a16 ) ] } |
        a8. ( a'16 ) e'16 [ c'16 ] |
        a4 r8 |
    }
    \transpose c' c { \repeat volta 2 {
        cis''8 d''8 e''8 |
        \acciaccatura { g''16 } f''8 e''8 d''8 |
        e''8. ( [ d''16 ] ) d''16 cis''16
        cis''8\trill bes'16 [ cis''16 bes'16 a'16 ] |
        e''8 cis''16 [ e''16 d''16 cis''16 ] |
        cis''8\trill bes'16 [ cis''16 bes'16 a'16 ] |
        cis''4. ~ |
        cis''4 r8 |

        cis''8 d''8 e''8 |
        \acciaccatura { g''16 } f''8 e''8 d''8 |
        g''8. ( [ f''16 ] ) e''16 d''16 |
        e''8. ( [ d''16 ] ) cis''16 bes'16 |
        e''8. ( [ d''16 ] ) cis''16 bes'16 |
        cis''8 ( [ bes'8 ] ) a'16 g'16 |
        a'8. ( [ a''16 ] ) e''16 cis''16 |
    }
    \alternative {
        { a'4 r8 | } { a'4 r8 | }
    } }
}

melodysectionD = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16-2 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8.-4 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16-2 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 a8 ) r8 |
    }
}

melodysectionDEFG = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16-2 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8.-4 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16-2 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 a8 ) r8 |
    }

    \repeat volta 2 {
        \startOctVA
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''8 c''16 b'16 a'16 ( b'16 c''16 b'16 ) |
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''16 ( c''16 b'16 c''16 a'8 ) r8 |
        \stopOctVA
    }

    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } cis''8. ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8. b'16 cis''16 ( d''16 e''16 d''16 ) |
    }
    \alternative {
        { cis''8 b'8 a'8 r8 | }
        { cis''8 b'8 a'8 r8 | }
    }
    \stopOctVA

    \transpose c c, {
        b'8 b'4 cis''16 ( b'16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
        b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
        cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    }

    \startOctVA
    b'8 b'4 cis''16 ( b'16 ) |
    cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
    b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
    cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    \stopOctVA
}

melody = {
    \key bes \major
    \time 3/8
    s4 g''8 |
    \melodysectionABC
    \time 2/4
    \melodysectionDEFG
}

melodymidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 g''8 |
    \melodysectionABC

    \time 2/4
    \melodysectionDEFG
    \melodysectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

tenorharmonysectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

tenorharmonysectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

tenorharmony =  \transpose c bes, {
    s4 s8 |
    \tenorharmonysectionABC
    \time 2/4
    \tenorharmonysectionDEFG
}

tenorharmonymidi =  \transpose c bes, {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \tenorharmonysectionABC

    \time 2/4
    \tenorharmonysectionDEFG
    \tenorharmonysectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

altoharmonysectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

altoharmonysectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

altoharmony = {
    s4 s8 |
    \altoharmonysectionABC
    \time 2/4
    \altoharmonysectionDEFG
}

altoharmonymidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \altoharmonysectionABC

    \time 2/4
    \altoharmonysectionDEFG
    \altoharmonysectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionABC = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        g4\mf g8-. |
        g4 f8 |
        g8 r8 g8 |
        \repeat percent 3 { g4 g8-. | }

        g8. ( d16 g16 d16 |
        g8-. ) r8 g8-. |

        g4 g8-. |
        g4 f8-. |
        \repeat percent 4 { f4 f8-. | }

        g4 g8-. |
        g4 g8-. |
    }

    \repeat volta 2 {
        \repeat percent 5 { bes,4 bes,8-. | }

        f,4 f,8-. |
        bes,8 r8 bes,8 |
        bes,4-> bes,8 |

        \repeat percent 4 { bes,4 bes,8 | }

        g,4 g,8-. |
        g,4 d8-. |
        g,4 g,8-. |
        g,4 g,8-. |
    }

    \repeat volta 2 {
        \repeat percent 5 { g4 g8-. | }

        g4 f8-. |
        g8. d16 ( g16 d16 |
        g8 ) r8 g8 |

        \repeat percent 2 { g4 g8-. | }
        f4 f8-. |
        \repeat percent 2 { g4 g8-. | }

        f4 f8-. |
        g4 g8-. |
    }
    \alternative {
        { g4 g8-. | }
        { g4 r8 | }
    }
}

countersectionD = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 2 { g,8 g8 d8 g8 | }
        g,8 g8 e8 g8 |
        g,8 d8 g8 d8 |
        \repeat percent 2 { g,8 d8 g8 d8 | }

        g,8 g8 e8 g8 |
        g,8 d8 g,8 r8 |
    }
}

countersectionDEFG = {
    \repeat volta 2 {
        \repeat percent 2 { g,8 g8 d8 g8 | }
        g,8 g8 e8 g8 |
        g,8 d8 g8 d8 |
        \repeat percent 2 { g,8 d8 g8 d8 | }

        g,8 g8 e8 g8 |
        g,8 d8 g,8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        \grace { s16 s16 s16 } g,8 g8 e8 g8 |
        d8 d8 g8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
    }
    \alternative {
        { fis8 d8 g8 d8-^ | }
        { d8 d8 g8 r8 | }
    }

    \repeat unfold 2 {
        fis2 | g2 | fis2 |
    }
    \alternative {
        { g8 d8 bes8 d8-> }
        { g8 d8 g8 r8 }
    }
}

counter = {
    \key bes \major
    \time 3/8
    s4 r8 |
    \countersectionABC
    \time 2/4
    \countersectionDEFG
}

countermidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 r8 |
    \countersectionABC

    \time 2/4
    \countersectionDEFG
    \countersectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionABC = {
    \repeat volta 2 {
        g,8 r8 g,8 |
        g,8 r8 f,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |

        g,8 r8 b,8 |
        c8 r8 c8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |

        g,8 r8 g,8 |
        g,8 r8 f,8 |
        f,8 r8 f,8 |
        f,8 r8 f,8 |

        f,8 r8 f,8 |
        f,8 r8 f,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |
    }

    \repeat volta 2 {
        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |

        bes,8 r8 bes,8 |
        f,8 r8 aes,8 |
        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |

        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |
        bes,8 r8 bes,8 |
        bes,8 r8 f,8 |

        g,8 r8 g,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |
    }

    \repeat volta 2 {
        g,8 r8 g,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |

        g,8 r8 g,8 |
        g,8 r8 f,8 |
        g,8 r8 g,8 |
        g,8 r8 g,8 |

        g,8 r8 g,8 |
        g,8 r8 g,8 |
        f,8 r8 f,8 |
        g,8 r8 g,8 |

        g,8 r8 g,8 |
        f,8 r8 f,8 |
        g,8 r8 g,8 |
    }
    \alternative {
        { g,8 r8 g,8 | }
        { g4 r8 | }
    }
}

basslinesectionD = {
    \repeat volta 2 {
        g,4-. d4-. |
        g,4-. d4-. |
        g,4-. a,4-. |
        g,4-. d4-. |

        g,4-. d4-. |
        g,4-. d4-. |
        g,4-. a,4-. |
        g,8 g,8 d8 bes,8 |
    }
}

basslinesectionDEFG = {
    \repeat volta 2 {
        g,4-. d4-. |
        g,4-. d4-. |
        g,4-. a,4-. |
        g,4-. d4-. |

        g,4-. d4-. |
        g,4-. d4-. |
        g,4-. a,4-. |
        g,8 g,8 d8 bes,8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,4-. b,4-. |
        g,4-. d4-. |
        \grace { s16 s16 s16 } g,4-. b,4-. |
        g,4-. d4-. |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,4 d8 g,8 ~ |
        g,8 d8 g,4 |
        g,4 d8 g,8 ~ |
    }
    \alternative {
        { g,8 d8 g,4 | }
        { g,8 d8 g,4 | }
    }

    \repeat unfold 2 {
        d4-. a,4-. |
        g,4-. b,4-. |
        d4-. a,4-. |
        g,8 d8 g,8 r8 |
    }
}

bassline = {
    s4 r8 |
    \basslinesectionABC
    \time 2/4
    \basslinesectionDEFG
}

basslinemidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \basslinesectionABC

    \time 2/4
    \basslinesectionDEFG
    \basslinesectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

guitarnotessectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

guitarnotessectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

guitarnotes = {
    s4 s8 |
    \guitarnotessectionABC
    \time 2/4
    \guitarnotessectionDEFG
}

guitarnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \guitarnotessectionABC

    \time 2/4
    \guitarnotessectionDEFG
    \guitarnotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionABC = \chordmode {
    \repeat volta 2 {
        g4 c8:min | g4 f8:min | g4. | g4. |
        g4. | c4.:min | g4. | g4. |
        g4 c8:min | g4 f8:min | f4:min aes8 | aes4. |
        aes4. | aes4. | g4. | g4. |
    }

    \repeat volta 2 {
        bes4. | bes4. | bes4. | bes4. |
        bes4. | f4.:min | bes4. | bes4. |
        bes4. | bes4. | bes4. | bes4. |
        g4.:min | g4.:min | g4.:min | g4.:min |
    }

    \repeat volta 2 {
        \chordChangesOff g4. \chordChangesOn | c4.:min | g4. | g4. |
        g4. | g4 f8:min | g4. | g4. |
        g4. | c4.:min | f4.:min | g4. | g4. | f4.:min | g4. |
    }
    \alternative {
        { \chordChangesOff g4. | } { g4. | } }
}

chordletterssectionD = \chordmode {
    \repeat volta 2 {
        g2:min \chordChangesOn | g2:min | g4:min a4:7 | g2:min |
        g2:min | g2:min | g4:min a4:7 | g2:min |
    }
}

chordletterssectionDEFG = \chordmode {
    \repeat volta 2 {
        g2:min \chordChangesOn | g2:min | g4:min a4:7 | g2:min |
        g2:min | g2:min | g4:min a4:7 | g2:min |
    }

    \repeat volta 2 {
        \chordChangesOff \grace { g8.:min } \chordChangesOn g2:min | g2:min |
        \grace { g8.:min } g2:min | g2:min |
    }

    \repeat volta 2 {
        \chordChangesOff \grace { g8.:min } \chordChangesOn g2:min | g2:min |
        g2:min |
    }
    \alternative { { d4:7 g4 | } { d4:7 g4 | } }

    \repeat unfold 2 { d2:7 | g2 | d2:7 | g8 d8:7 g4 | }
}

chordletters = \chordmode {
    s4 s8 |
    \chordletterssectionABC
    \time 2/4
    \chordletterssectionDEFG
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

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotessectionABC = \transpose c c' {
    \repeat volta 2 {
        cis''8\mf \grace { s16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        a'8 r8 e'8 |
        a'4 r8 |
        a'8 bes'8 cis''8 |
        \grace { s16 } d''8 cis''8 bes'8 |
        cis''8. e'16 a'16 e'16 |
        a'4 r8 |

        cis''8 \grace { s16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 \acciaccatura { a'16 } g'8 \acciaccatura { a'16 } g'8 |
        \acciaccatura { a'16 } g'4. |
        g'8. f'16 e'16 d'16 |
        cis'8. bes16 a16 g16 |
        a8 r8 e'8 |
        a'4 r8 |
    }

    \repeat volta 2 {
        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] f'16 e'16 |
        e'8. d'16 d'16 c'16 |
        c'8 \acciaccatura { e'16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 b8 |
        c'8 r8 e'8 |
        a'4.^^ |

        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] e'16 d'16 |
        e'8. [ d'16 ] d'16 c'16 |
        c'8 d'8 c'8 |
        e'16 [ d'16 ] c'8 \tuplet 3/2 { c'16 [ ( b16 a16 ) ] } |
        a8. ( a'16 ) e'16 [ c'16 ] |
        a4 r8 |
    }

    \transpose c' c {
        \repeat volta 2 {
            cis''8 d''8 e''8 |
            f''8 e''8 d''8 |
            e''8. ( [ d''16 ] ) d''16 cis''16
            cis''8 bes'16 ( [ cis''16 bes'16 a'16 ] ) |
            e''8 cis''16 ( [ e''16 d''16 cis''16 ] ) |
            cis''8 bes'16 ( [ cis''16 bes'16 a'16 ] ) |
            cis''8. e''16 a''16 e''16 |
            a''4 r8 |
    
            cis''8 d''8 e''8 |
            f''8 e''8 d''8 |
            g''8. [ f''16 ] e''16 d''16 |
            e''8. [ d''16 ] cis''16 bes'16 |
            e''8. [ d''16 ] cis''16 bes'16 |
            cis''8 [ bes'8 ] a'16 g'16 |
            a'8. [ a''16 ] e''16 cis''16 |
        }
        \alternative {
            { a'4 r8 | }
            { a'4 r8 | }
        }
    }
}

clarinetnotessectionD = \transpose c c' {
    \repeat volta 2 {
        a'8.\f e'16 a'16 g'16 fis'16 e'16 |
        a'16 e'16 a'16 e'16 a'16 g'16 fis'16 e'16 |
        fis'16 g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 |
        e'16 dis'16 c'16 b16 a16 b16 c'16 a16 |
        a'8. e'16 a'16 g'16 fis'16 e'16 |
        a'16 e'16 a'16 e'16 a'16 g'16 fis'16 e'16 |
        fis'16 g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 |
        e'16 dis'16 c'16 b16 a8 r8 |
    }
}

clarinetnotessectionDEFG = {
    \repeat volta 2 {
        a'8.\f e'16 a'16 g'16 fis'16 e'16 |
        a'16 e'16 a'16 e'16 a'16 g'16 fis'16 e'16 |
        fis'16 g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 |
        e'16 dis'16 c'16 b16 a16 b16 c'16 a16 |
        a'8. e'16 a'16 g'16 fis'16 e'16 |
        a'16 e'16 a'16 e'16 a'16 g'16 fis'16 e'16 |
        fis'16 g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 |
        e'16 dis'16 c'16 b16 a8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''8 c''16 b'16 a'16 b'16 c''16 b'16 |
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 e''16 fis''16 e''16 |
        dis''16 c''16 b'16 c''16 a'8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } cis''8. b'16 cis''16 ( d''16 e''16 d''16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8. b'16 cis''16 ( d''16 e''16 d''16 ) |
    }
    \alternative {
        { cis''8 b'8 a'8 r8 | }
        { cis''8 b'8 a'8 r8 | }
    }

    b'8 b'4 cis''16 b'16 |
    cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''8 ) |
    b'8 b'8 b'16 d''16 cis''16 b'16 |
    cis''16 d''16 cis''16 b'16 a'8 r8 |
    \transpose c c' {
        b'8 b'4 cis''16 b'16 |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''8 ) |
        b'8 b'8 b'16 d''16 cis''16 b'16 |
        cis''16 d''16 cis''16 b'16 a'8 r8 |
    }
}

clarinetnotes = {
    \key c \major
    \time 3/8
    s4 a''8 |
    \clarinetnotessectionABC
    \time 2/4
    \clarinetnotessectionDEFG
}

clarinetnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 a''8 |
    \clarinetnotessectionABC

    \time 2/4
    \clarinetnotessectionDEFG
    \clarinetnotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotessectionABC = \transpose c bes {
% clarinetnotessectionABC
    \repeat volta 2 {
        cis''8\mf \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        a'8 r8 e'8 |
        a'4. |
        a'8 bes'8 cis''8 |
        \grace { s16 } d''8 cis''8 bes'8 |
        cis''4. ~
        cis''4 r8 |

        cis''8 \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 \acciaccatura { a'16 } g'8 \acciaccatura { a'16 } g'8 |
        \acciaccatura { a'16 } g'4. |
%        \startOctVA
        \transpose c c' {
            g'8. f'16 e'16 d'16 |
            cis'8. bes16 a16 g16 |
            a8. ( a'16 ) e'16 c'16 |
            a4 r8 |
        }
%        \stopOctVA
    }

    \repeat volta 2 {
        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] f'16 e'16 |
        e'8. d'16 d'16 c'16 |
        c'8 \grace { s16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 b8 |
        c'8-. r8 e'8-. |
        a'4. |

        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] e'16 d'16 |
        e'8. [ d'16 ] d'16 c'16 |
        c'8 \grace { s16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 \tuplet 3/2 { c'16 [ ( b16 a16 ) ] } |
        a8. a'16 e'16 [ c'16 ] |
        a4 r8 |
    }

    \transpose c' c {
        \repeat volta 2 {
            cis''8 d''8 e''8 |
            \grace { s16 } f''8 e''8 d''8 |
            e''8. ( [ d''16 ] ) d''16 cis''16
            cis''8 bes'16 [ cis''16 bes'16 a'16 ] |
            e''8 cis''16 [ e''16 d''16 cis''16 ] |
            cis''8 bes'16 [ cis''16 bes'16 a'16 ] |
            cis''4. ~ |
            cis''4 r8 |
    
            cis''8 d''8 e''8 |
            \grace { s16 } f''8 e''8 d''8 |
            g''8. [ f''16 ] e''16 d''16 |
            e''8. [ d''16 ] cis''16 bes'16 |
            e''8. [ d''16 ] cis''16 bes'16 |
            cis''8 [ bes'8 ] a'16 g'16 |
            a'8. ( [ a''16 ] ) e''16 cis''16 |
        }
        \alternative {
            { a'4 r8 | }
            { a'4 r8 | }
        }
    }
}

altosaxnotessectionD = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8. ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 ) |
        e'16 dis'16 c'16 b16 a8 r8 |
    }
}

altosaxnotessectionDEFG = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8. ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 dis'16 b16 dis'16 fis'16 ) |
        e'16 dis'16 c'16 b16 a8 r8 |
    }

    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''8 c''16 b'16 a'16 ( b'16 c''16 b'16 ) |
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''16 ( c''16 b'16 c''16 a'8 ) r8 |
    }
    \stopOctVA

    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } cis''8. ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8. b'16 cis''16 d''16 e''16 d''16 |
    }
    \alternative {
        { cis''8 b'8 a'8 r8 | } { cis''8 b'8 a'8 r8 | }
    }
    \stopOctVA

    \transpose c c, {
        b'8 b'4 cis''16 ( b'16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
        b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
        cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    }

    \startOctVA
    b'8 b'4 cis''16 ( b'16 ) |
    cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
    b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
    cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    \stopOctVA
}

altosaxnotes = \transpose ees c {
    \key bes \major
    \time 3/8
    s4 g''8 |
    \altosaxnotessectionABC
    \time 2/4
    \altosaxnotessectionDEFG
}

altosaxnotesmidi = \transpose ees c {
    \time 3/8
    \preintro
    \time 3/8
    s4 g''8 |
    \altosaxnotessectionABC

    \time 2/4
    \altosaxnotessectionDEFG
    \altosaxnotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotessectionABC = {
    \repeat volta 2 {
        e''8\mf f''8 d''8 |
        e''4 d''8 |
        cis''8 r8 cis''8 |
        cis''8. e''16 cis''16 e''16 |

        cis''8 d''8 e''8 |
        f''8 e''8 d''8 |
        e''8. e''16 cis''16 e''16 |
        cis''4 r8 |

        e''8 f''8 d''8 |
        e''4 \tuplet 3/2 { d''16 ( cis''16 bes'16 ) } |
        bes'8 \acciaccatura { a'16 } bes'8 \acciaccatura { a'16 } bes'8 |
        \acciaccatura { d''16 } bes'8. g'16 bes'16 d''16 |

        bes'8. a'16 g'16 f'16 |
        e'8. d'16 e'16 d'16 |
        cis'8 r8 cis''8 |
        cis''4 r8 |
    }
    \repeat volta 2 {
        e''8 f''8 e''8 |
        f''8 e''8 \tuplet 3/2 { g''16 ( f''16 e''16 ) } |
        e''8 g'16 ( d''16 ) d''16 ( c''16 ) |
        c''8. g'16 g'16 e'16 |

        e'8 \acciaccatura { g'16 } f'8 e'8 |
        g'16 f'16 e'8 d'8 |
        e'8 r8 c''8 |
        e''8. c''16 g'16 c''16 |

        e''8 f''8 e''8 |
        f''8 e''8 \tuplet 3/2 { g''16 ( f''16 e''16 ) } |
        e''8 d''8 d''16 c''16 |
        c''8. g'16 g'16 e'16 |

        e'8 f'8 e'8 |
        c''16 b'16 a'8 e'8 |
        e'8. c''16 a'16 e'16 |
        a'4 r8 |
    }
    \repeat volta 2 {
        e'8 f'8 a'8 |
        d''8 a'8 f'8
        a'8. bes'16 bes'16 a'16 |
        e'8 d'16 e'16 d'16 cis'16 |

        g'8 e'16 g'16 f'16 e'16 |
        e'8 d'16 e'16 d'16 cis'16 |
        g'8. a'16 cis''16 a'16 |
        cis''8 ( a'8 e'8 ) |

        a'8 bes'8 cis''8 |
        d''8 a'8 f'8 |
        bes'8. d''16 cis''16 bes'16 |
        cis''8. b'16 a'16 g'16 |

        g'8. f'16 e'16 d'16 |
        e'8 g'8 a'16 g'16 |
        a'8. cis''16 cis''16 e'16 |
    }
    \alternative {
        { a'4 r8 | } { a'4 r8 | }
    }
}

tenorsaxnotessectionD = {
    \repeat volta 2 {
        c''8\f a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        c''8 a'8 fis'8 a'8 |
        c''16 b'16 a'16 e'16 e'8 a'16 e'16 |

        c''8 a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        a'8 c''8 fis'8 a'8 |
        c''8 e'8 a'8 r8 |
    }
}

tenorsaxnotessectionDEFG = {
    \repeat volta 2 {
        c''8\f a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        c''8 a'8 fis'8 a'8 |
        c''16 b'16 a'16 e'16 e'8 a'16 e'16 |

        c''8 a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        a'8 c''8 fis'8 a'8 |
        c''8 e'8 a'8 r8 |
    }

    \repeat volta 2 {
        \acciaccatura { e'16 [ fis'16 g'16 ] } a'2-^ |
        c''8 e'8-. e'8-. e'8-. |
        \acciaccatura { e'16 [ fis'16 g'16 ] } a'2-^ |
        a'8-. e'8-. a'8-. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { e'16 [ fis'16 g'16 ] } a'8.-^ e'16 a'16 b'16 cis''16 b'16 |
        a'8 a'16 e'16 a'16 b'16 cis''16 b'16 |
        a'8. gis'16 a'16 b'16 cis''16 b'16 |
    }
    \alternative {
        { e'8 d'8 cis'8 e'8 | }
        { e'8 d'8 cis'8 e'8 | }
    }

    gis'16 a'16 gis'16 fis'16 gis'8 a'16 gis'16 |
    a'16 e'16 a'16 gis'16 a'16 b'16 cis''16 a'16 |
    gis'16 a'16 gis'16 fis'16 gis'16 fis'16 e'16 gis'16 |
    a'8 e'16 d'16 cis'8 e'8 |
    \transpose c c' {
        gis'16 a'16 gis'16 fis'16 gis'8 a'16 gis'16 |
        a'16 e'16 a'16 gis'16 a'16 b'16 cis''16 a'16 |
        gis'16 a'16 gis'16 fis'16 gis'16 fis'16 e'16 gis'16 |
        a'8 e'16 d'16 cis'8 r8 |
    }
}

tenorsaxnotes = {
    \key c \major
    \time 3/8
    s4 cis''8 |
    \tenorsaxnotessectionABC
    \time 2/4
    \tenorsaxnotessectionDEFG
}

tenorsaxnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 cis''8 |
    \tenorsaxnotessectionABC

    \time 2/4
    \tenorsaxnotessectionDEFG
    \tenorsaxnotessectionD
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltonotessectionABC = \transpose c c' {
    \repeat volta 2 {
        e''8\mf f''8 d''8 |
        e''4 d''8 |
        cis''8 r8 cis''8 |
        cis''8. e''16 cis''16 e''16 |

        cis''8 d''8 e''8 |
        f''8 e''8 d''8 |
        e''8. e''16 cis''16 e''16 |
        cis''4 r8 |

        e''8 f''8 d''8 |
        e''4 \tuplet 3/2 { d''16 ( cis''16 bes'16 ) } |
        bes'8 \acciaccatura { a'16 } bes'8 \acciaccatura { a'16 } bes'8 |
        \acciaccatura { d''16 } bes'8. g'16 bes'16 d''16 |

        bes'8. a'16 g'16 f'16 |
        e'8. d'16 e'16 d'16 |
        cis'8 r8 cis'8 |
        cis'4 r8 |
    }

    \repeat volta 2 {
        e''8 f''8 e''8 |
        f''8 e''8 \tuplet 3/2 { g''16 ( f''16 e''16 ) } |
        e''8 g'16 ( d''16 ) d''16 ( c''16 ) |
        c''8. g'16 g'16 e'16 |

        e'8 \acciaccatura { g'16 } f'8 e'8 |
        g'16 f'16 e'8 d'8 |
        e'8 r8 c''8 |
        e''8. c''16 g'16 c''16 |

        e''8 f''8 e''8 |
        f''8 e''8 \tuplet 3/2 { g''16 ( f''16 e''16 ) } |
        e''8 d''8 d''16 c''16 |
        c''8. g'16 g'16 e'16 |

        e'8 f'8 e'8 |
        c''16 b'16 a'8 e'8 |
        e'8. c''16 a'16 e'16 |
        a'4 r8 |
    }

    \repeat volta 2 {
        e'8 f'8 a'8 |
        d''8 a'8 f'8
        a'8. bes'16 bes'16 a'16 |
        e'8 d'16 e'16 d'16 cis'16 |

        g'8 e'16 g'16 f'16 e'16 |
        e'8 d'16 e'16 d'16 cis'16 |
        g'8. a'16 cis''16 a'16 |
        cis''8 ( a'8 e'8 ) |

        a'8 bes'8 cis''8 |
        d''8 a'8 f'8 |
        bes'8. d''16 cis''16 bes'16 |
        cis''8. b'16 a'16 g'16 |

        g'8. f'16 e'16 d'16 |
        e'8 g'8 a'16 g'16 |
        a'8. cis''16 cis''16 e'16 |
    }
    \alternative { { a'4 r8 | } { a'4 r8 | } }
}

tenorforaltonotessectionDEFG = {
    \repeat volta 2 {
        c''8\f a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        c''8 e''8 fis''8 a''8 |
        c'''16 b''16 a''16 e''16 e''8 a''16 e''16 |

        c''8 a'8 c''8 e''8 |
        c''8 a'8 c''8 e''8 |
        a'8 c''8 fis''8 a''8 |
        c'''8 e''8 a'8 r8 |
    }

    \repeat volta 2 {
        \acciaccatura { e''16 [ fis''16 g''16 ] } a''2-^ |
        c'''8 e''8-. e''8-. e''8-. |
        \acciaccatura { e''16 [ fis''16 g''16 ] } a''2-^ |
        a''8-. e''8-. a''8-. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { e''16 [ fis''16 g''16 ] } a''8.-^ e''16 a''16 b''16 cis'''16 b''16 |
        a''8 a''16 e''16 a''16 b''16 cis'''16 b''16 |
        a''8. gis''16 a''16 b''16 cis'''16 b''16 |
    }
    \alternative {
        { e''8 d''8 cis''8 e''8 | }
        { e''8 d''8 cis''8 e''8 | }
    }

    \transpose c c' {
        gis'16 a'16 gis'16 fis'16 gis'8 a'16 gis'16 |
        a'16 e'16 a'16 gis'16 a'16 b'16 cis''16 a'16 |
        gis'16 a'16 gis'16 fis'16 gis'16 fis'16 e'16 gis'16 |
        a'8 e'16 d'16 cis'8 e'8 |

        gis'16 a'16 gis'16 fis'16 gis'8 a'16 gis'16 |
        a'16 e'16 a'16 gis'16 a'16 b'16 cis''16 a'16 |
        gis'16 a'16 gis'16 fis'16 gis'16 fis'16 e'16 gis'16 |
        a'8 e'16 d'16 cis'8 r8 |
    }
}

tenorforaltonotes = \transpose ees bes, {
    \key c \major
    \time 3/8
    s4 cis''8 |
    \tenorforaltonotessectionABC
    \time 2/4
    \tenorforaltonotessectionDEFG
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotessectionABC = {
    \repeat volta 2 {
        cis''8\mf \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        a'8 r8 e'8 |
        a'4. |
        a'8 bes'8 cis''8 |
        \acciaccatura { e''16 } d''8 cis''8 bes'8 |
        cis''4. ~ |
        cis''4. |

        cis''8\mf \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 \acciaccatura { a'16 } g'8 \acciaccatura { a'16 } g'8 |
        \acciaccatura { a'16 } g'4. |
        g''8. [ ( f''16 ) ] e''16 d''16 |
        cis''8. [ ( bes'16 ) ] a'16 g'16 |
        a'8 r8 e'8 |
        a'4 r8 |
    }

    \repeat volta 2 {
        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] f''16 e''16 |
        e''8. [ ( d''16 ) ] d''16 c''16 |
        c''8 \acciaccatura { e''16 } d''8 c''8 |
        e''16 [ d''16 ] c''8 b'8 |
        c''8 r8 e''8 |
        a'4. |

        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g''8 [ ( f''8 ) ] e''16 d''16 |
        e''8. [ ( d''16 ) ] d''16 c''16 |
        c''8 d''8 c''8 |
        e''16 [ d''16 ] c''8 \tuplet 3/2 { c''16 [ ( b'16 a'16 ) ] } |
        a'8. ( a''16 ) e''16 [ c''16 ] |
        a'4 r8 |
    }

    \repeat volta 2 {
        cis''8 d''8 e''8 |
        f''8 e''8 d''8 |
        e''8. ( [ d''16 ] ) d''16 cis''16
        cis''8 bes'16 ( [ cis''16 bes'16 a'16 ] ) |
        e''8 cis''16 ( [ e''16 d''16 cis''16 ] ) |
        cis''8 bes'16 ( [ cis''16 bes'16 a'16 ] ) |
        cis''4. ~ |
        cis''4 r8 |

        cis''8 d''8 e''8 |
        f''8 e''8 d''8 |
        g''8. ( [ f''16 ] ) e''16 d''16 |
        e''8. ( [ d''16 ] ) cis''16 bes'16 |
        e''8. ( [ d''16 ] ) cis''16 bes'16 |
        cis''8 [ bes'8 ] a'16 g'16 |
        a'8. ( [ a''16 ] ) e''16 cis''16 |
    }
    \alternative {
        { a'4 r8 | }
        { a'4 r8 | }
    }
}

trumpetnotessectionD = {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8. ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e''16 ( dis''16 c''16 b'16 ) a'8 r8 |
    }
}

trumpetnotessectionDEFG = {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8. ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16 dis'16 fis'16 ) |
        e''16 ( dis''16 c''16 b'16 ) a'8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''8 c''16 b'16 a'16 ( b'16 c''16 b'16 ) |
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''16 ( c''16 b'16 c''16 ) a'8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } cis''8. ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8. ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
    }
    \alternative {
        { cis''8 b'8 a'8 r8 | }
        { cis''8 b'8 a'8 r8 | }
    }

    \repeat unfold 2 {
        b'8 b'4 cis''16 ( b'16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
        b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
        cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    }
}

trumpetnotes = {
    \key c \major
    \time 3/8
    s4 a'8 |
    \trumpetnotessectionABC
    \time 2/4
    \trumpetnotessectionDEFG
}

trumpetnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 a'8 |
    \trumpetnotessectionABC

    \time 2/4
    \trumpetnotessectionDEFG
    \trumpetnotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \countermidi
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotessectionABC = \transpose c bes {
% clarinetnotessectionABC
    \repeat volta 2 {
        cis''8\mf \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        a'8 r8 e'8 |
        a'4. |
        a'8 bes'8 cis''8 |
        \acciaccatura { e''16 } d''8 cis''8 bes'8 |
        a'4. ~
        a'4 r8 |

        cis''8 \acciaccatura { e''16 } d''8 bes'8 |
        cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 \acciaccatura { a'16 } g'8 \acciaccatura { a'16 } g'8 |
        \acciaccatura { a'16 } g'4. |

        \startOctVA
        \transpose c c' {
            g'8. f'16 e'16 d'16 |
            cis'8. bes16 a16 g16 |
            a8. a'16 e'16 c'16 |
            a4 r8 |
        }
        \stopOctVA
    }

    \repeat volta 2 {
        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] f'16 e'16 |
        e'8.\trill d'16 d'16 c'16 |
        c'8 \acciaccatura { e'16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 b8 |
        c'8 r8 e'8 |
        a'4.-> |

        g'8 \acciaccatura { bes'16 } a'8 g'8 |
        a'8 [ g'8 ] \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
        g'8 [ f'8 ] e'16 d'16 |
        e'8.\trill [ d'16 ] d'16 c'16 |
        c'8 \acciaccatura { e'16 } d'8 c'8 |
        e'16 [ d'16 ] c'8 \tuplet 3/2 { c'16 [ ( b16 a16 ) ] } |
        a8. ( a'16 ) e'16 [ c'16 ] |
        a4 r8 |
    }

    \transpose c' c {
        \repeat volta 2 {
            cis''8 d''8 e''8 |
            \acciaccatura { g''16 } f''8 e''8 d''8 |
            e''8. ( [ d''16 ] ) d''16 cis''16
            cis''8\trill bes'16 [ cis''16 bes'16 a'16 ] |
            e''8 cis''16 [ e''16 d''16 cis''16 ] |
            cis''8\trill bes'16 [ cis''16 bes'16 a'16 ] |
            cis''4. ~ |
            cis''4 r8 |
    
            cis''8 d''8 e''8 |
            \acciaccatura { g''16 } f''8 e''8 d''8 |
            g''8. ( [ f''16 ] ) e''16 d''16 |
            e''8. ( [ d''16 ] ) cis''16 bes'16 |
            e''8. ( [ d''16 ] ) cis''16 bes'16 |
            cis''8 ( [ bes'8 ] ) a'16 g'16 |
            a'8. ( [ a''16 ] ) e''16 cis''16 |
        }
        \alternative {
            { a'4 r8 | }
            { a'4 r8 | }
        }
    }
}

violinnotessectionD = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16-2 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8.-4 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16-2 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 a8 ) r8 |
    }
}

violinnotessectionDEFG = \transpose c bes {
    \repeat volta 2 {
        a'8.\f ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16 ( b16-2 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 ) a16 ( b16 c'16 a16 ) |
        a'8.-4 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        a'16 ( e'16 ) a'16 ( e'16 ) a'16 ( g'16 fis'16 e'16 ) |
        fis'16 ( g'16 fis'16 e'16 ) dis'16-2 ( b16 dis'16 fis'16 ) |
        e'16 ( dis'16 c'16 b16 a8 ) r8 |
    }

    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''8 c''16 b'16 a'16 ( b'16 c''16 b'16 ) |
        \grace { s16 s16 s16 } a'8 fis''16 e''16 dis''16 ( e''16 fis''16 e''16 ) |
        dis''16 ( c''16 b'16 c''16 a'8 ) r8 |
    }
    \stopOctVA

    \startOctVA
    \repeat volta 2 {
        \grace { s16 s16 s16 } cis''8. ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 e''16 d''16 ) |
        cis''8. b'16 cis''16 ( d''16 e''16 d''16 ) |
    }
    \alternative {
        { cis''8 b'8 a'8 r8 | }
        { cis''8 b'8 a'8 r8 | }
    }
    \stopOctVA

    \transpose c c, {
        b'8 b'4 cis''16 ( b'16 ) |
        cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
        b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
        cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    }

    \startOctVA
    b'8 b'4 cis''16 ( b'16 ) |
    cis''8 cis''16 ( b'16 ) cis''16 ( d''16 ) e''8 |
    b'8 b'8 b'16 ( d''16 cis''16 b'16 ) |
    cis''16 ( d''16 cis''16 b'16 ) a'8 r8 |
    \stopOctVA
}

violinnotes = {
    \key bes \major
    \time 3/8
    s4 g''8 |
    \violinnotessectionABC
    \time 2/4
    \violinnotessectionDEFG
}

violinnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 g''8 |
    \violinnotessectionABC

    \time 2/4
    \violinnotessectionDEFG
    \violinnotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotessectionABC = {
    \repeat volta 2 {
        b''8 \acciaccatura { d'''16 } c'''8 aes''8 |
        b''4 \tuplet 3/2 { aes''16 g''16 f''16 } |
        < b' g'' >8-. r8 < b' d'' >8-. |
        < b' d'' g'' >4. |

        g''8 aes''8 b''8 |
        \acciaccatura { d'''16 } c'''8 b''8 aes''8 |
        < g'' b'' >4. ~ |
        < g'' b'' >4 r8 |

        b''8 \acciaccatura { d'''16 } c'''8 aes''8 |
        b''4 \tuplet 3/2 { aes''16 g''16 f''16 } |
        f''8 \acciaccatura { g''16 } < aes' f'' >8 \acciaccatura { g''16 } < aes' f'' >8 |
        \acciaccatura { g''16 } < aes' f'' >4. |

	\startOctVA
        f'''8. ees'''16 d'''16 c'''16 |
        b''8. aes''16 g''16 f''16 |
        g''8. ( g'''16 d'''16 b''16 |
        g''4 ) r8 |
        \stopOctVA
    }

    \repeat volta 2 {
        f''8 \acciaccatura { aes''16 } g''8 f''8 |
        g''8 f''8 \tuplet 3/2 { aes''16 g''16 f''16 } |
        f''8 ees''8 ees''16 d''16 |
        d''8.-\trill c''16 c''16 bes'16 |

        bes'8 \acciaccatura { d''16 } c''8 bes'8 |
        d''16 c''16 bes'8 a'8 |
        bes'8-. r8 < bes' d'' >8-. |
        < bes' d'' g'' >4.-> |

        f''8 \acciaccatura { aes''16 } g''8 f''8 |
        g''8 f''8 \tuplet 3/2 { aes''16 g''16 f''16 } |
        f''8 ees''8 ees''16 d''16 |
        d''8.-\trill c''16 c''16 bes'16 |

        bes'8 \acciaccatura { d''16 } c''8 bes'8 |
        d''16 c''16 bes'8 \tuplet 3/2 { bes'16 a'16 g'16 } |
        g'8. g''16 d''16 bes'16 |
        g'4 r8 |
    }

    \repeat volta 2 {
        b'8 c''8 d''8 |
        \acciaccatura { f''16 } ees''8 d''8 c''8 |
        d''8. c''16 c''16 b'16 |
        b'8-\trill aes'16 b'16 aes'16 g'16 |

        d''8 b'16 d''16 c''16 b'16 |
        b'8-\trill aes'16 b'16 aes'16 g'16 |
        < g' b' >4. ~ |
        < g' b' >4 r8 |

        b'8 c''8 d''8 |
        \acciaccatura { f''16 } ees''8 d''8 c''8 |
        < a' f'' >8. ( ees''16 ) d''16 c''16 |
        < g' d'' >8. c''16 b'16 aes'16 |

        d''8. c''16 b'16 aes'16 |
        b'8. aes'16 g'16 f'16 |
        g'8. g''16 d''16 b'16 |
    }
    \alternative {
        { g'4 r8 | }
        { g'4 r8 | }
    }
}

pianorightuppernotessectionD = {
    \repeat volta 2 {
        g''8.\ff ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'16 a'16 bes'16 g'16 ) |

        g''8. ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'8 ) r8 |
    }
}

pianorightuppernotessectionDEFG = {
    \repeat volta 2 {
        g''8.\ff ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'16 a'16 bes'16 g'16 ) |

        g''8. ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'8 ) r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8 ( e''16 d''16 cis''16 d''16 e''16 d''16 ) |
        cis''8 ( bes'16 a'16 g'16 a'16 bes'16 a'16 ) |
        \grace { s16 s16 s16 } g'8 ( e''16 d''16 cis''16 d''16 e''16 d''16 ) |
        cis''16 ( bes'16 a'16 bes'16 g'8 ) r8
    }

    \startOctVA
    \repeat volta 2 { 
        \grace { s16 s16 s16 } b''8. ( a''16 ) b''16 ( c'''16 d'''16 c'''16 ) |
        b''8-. b''16 ( a''16 ) b''16 ( c'''16 d'''16 c'''16 ) |
        b''8. ( a''16 ) b''16 ( c'''16 d'''16 c'''16 ) |
    }
    \alternative {
        { b''8 ( a''8 g''8 ) r8 | } { b''8 ( a''8 g''8 ) r8 | }
    }
    \stopOctVA

    a'8 a'4 b'16 a'16 |
    b'8 b'16 ( a'16 ) b'16 ( c''16 d''8 ) |
    a'8 a'8 a'16 ( c''16 b'16 a'16 ) |
    b'16 ( c''16 b'16 a'16 g'8 ) r8 |
    a'8 a'4 b'16 a'16 |
    b'8 b'16 ( a'16 ) b'16 ( c''16 d''8 ) |
    a'8 a'8 a'16 ( c''16 b'16 a'16 ) |
    b'16 ( c''16 b'16 a'16 g'8 ) r8 |
}

pianorightuppernotes = {
    \key bes \major
    \time 3/8
    s4 g''8 |
    \pianorightuppernotessectionABC
    \time 2/4
    \pianorightuppernotessectionDEFG
}

pianorightlowernotessectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

pianorightlowernotessectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

pianorightlowernotessectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

pianorightlowernotes = {
    s4 s8 |
    \pianorightlowernotessectionABC
    \time 2/4
    \pianorightlowernotessectionDEFG
    \stemDown
}

pianoleftuppernotessectionABC = {
    \repeat volta 2 {
        < g, d g >4 < g, ees g >8-. |
        < g, d g >4 < f, c f >8-. |
        < g, d g >8-. r8 < g, d g >8-. |
        < g, d g >4 < g, d g >8-. |

        < g, d g >4 < g, d g >8-. |
        < g, ees g >4 < g, ees g >8-. |
        < g, d g >8. d16 ( g16 d16 |
        g8 ) r8 < g, d g >8 |

        < g, d g >4 < g, ees g >8-. |
        < g, d g >4 < f, c f >8-. |
        < f, c f >4 < f, c f >8-. |
        < f, c f >4 < f, c f >8-. |

        < f, c f >4 < f, c f >8-. |
        < f, c f >4 < f, c f >8-. |
        < g, d g >4 < g, d g >8-. |
        < g, d g >4 < g, d g >8-. |
    }

    \repeat volta 2 {
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |

        < bes, f bes >4 < bes, f bes >8-. |
        < f, c f >4 < f, c f >8-. |
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |

        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |
        < bes, f bes >4 < bes, f bes >8-. |

        < g, d g >4 < g, d g >8-. |
        < g, d g >4 < d, d >8-. |
        < g, d g >4 < g, d g >8-. |
        < g, d g >4 < g, d g >8-. |
    }

    \repeat volta 2 {
        < g, d g >4 < g, d g >8-. |
        < g, ees g >4 < g, ees g >8-. |
        < g, d g >4 < g, d g >8-. |
        < g, d g >4 < g, d g >8-. |

        < g, d g >4 < g, d g >8-. |
        < g, d g >4 < f, c f >8-. |
        < g, d g >8. d16 ( g16 d16 |
        g8 ) r8 < g, d g >8 |

        < g, d g >4 < g, d g >8-. |
        < g, ees g >4 < g, ees g >8-. |
        < f, c f >4 < f, c f >8-. |
        < g, d g >4 < g, d g >8-. |

        < g, d g >4 < g, d g >8-. |
        < f, c f >4 < f, c f >8-. |
        < g, d g >4 < g, d g >8-. |
    }
    \alternative {
        { < g, d g >4 < g, d g >8-. | }
        { < g, d g >4 r8 | }
    }
}

pianoleftuppernotessectionD = {
    \repeat volta 2 {
        g,8\ff g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 e8 g8 |
        g,8 d8 g8 d8 |

        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 e8 g8 |
        g,8 d8 < g, d g >8 r8 |
    }
}

pianoleftuppernotessectionDEFG = {
    \repeat volta 2 {
        g,8\ff g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 e8 g8 |
        g,8 d8 g8 d8 |

        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 e8 g8 |
        g,8 d8 < g, d g >8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        \grace { s16 s16 s16 } g,8 g8 d8 g8 |
        < g, d fis >8 < g, d fis >8 < g, d g >8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
    }
    \alternative {
        { < d fis >8 < d fis >8 < g, g >8 d8-> | }
        { < d fis c' >8 < d fis c' >8 < g b >8 r8 | }
    }

    \repeat unfold 2 {
        d8 < fis c' >8 d8 < fis c' >8 |
        g,8 < d g >8 g,8 < d g >8 |
        d8 < fis c' >8 d8 < fis c' >8 |
        < g b >8 < d fis c' >8 < g b >8 d8-> |
    }
}

pianoleftuppernotes = {
    \key bes \major
    \time 3/8
    s4 r8 |
    \pianoleftuppernotessectionABC
    \time 2/4
    \pianoleftuppernotessectionDEFG
}

pianoleftlowernotessectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

pianoleftlowernotessectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

pianoleftlowernotessectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

pianoleftlowernotes = {
    s4 s8 |
    \pianoleftlowernotessectionABC
    \time 2/4
    \pianoleftlowernotessectionDEFG
    \stemDown
}

pianorightnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 g''8 |
    \pianorightuppernotessectionABC

    \time 2/4
    \pianorightuppernotessectionDEFG
    \pianorightuppernotessectionD
}

pianoleftnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 r8 |
    \pianoleftuppernotessectionABC

    \time 2/4
    \pianoleftuppernotessectionDEFG
    \pianoleftuppernotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppernotessectionABC = {
    \repeat volta 2 {
        < d'' b'' >8 \acciaccatura { d'''16 } < c''' ees'' >8 < c'' aes'' >8 |
        < d'' b'' >4 \tuplet 3/2 { aes''16 ( g''16 f''16 } |
        < b' g'' >8 )r8 < b' d'' >8 |
        < b' g'' >4. |

        < b' g'' >8 < c'' aes'' >8 < d'' b'' >8 |
        \acciaccatura { d'''16 } < c''' ees'' >8 < d'' b'' >8 < c'' aes'' >8 |
        < d'' b'' >4. ~ |
        < d'' b'' >4 r8 |

        < d'' b'' >8 \acciaccatura { d'''16 } < c''' ees'' >8 < c'' aes'' >8 |
        < d'' b'' >4 \tuplet 3/2 { aes''16 ( g''16 f''16 ) } |
        f''8 \acciaccatura { g''16 } < f'' aes' >8 \acciaccatura { g''16 } < f'' aes' >8 |
        \acciaccatura { g''16 } < f'' aes' >4. |

	\startOctVA
        f'''8. ees'''16 d'''16 c'''16 |
        b''8. aes''16 g''16 f''16 |
        g''8. ( g'''16 d'''16 b''16 |
        g''4 ) r8 |
        \stopOctVA
    }

    \repeat volta 2 {
        < d'' f'' >8 \acciaccatura { aes''16 } < ees'' g'' >8 < d'' f'' >8 |
        < ees'' g'' >8 < d'' f'' >8 \tuplet 3/2 { < f'' aes'' >16 < ees'' g'' >16 < f'' d'' >16 } |
        < d'' f'' >8 < c'' ees'' >8 < c'' ees'' >16 < bes' d'' >16 |
        < bes' d'' >8. < f' c'' >16 < f' c'' >16 < d' bes' >16 |

        < d' bes' >8 \acciaccatura { d''16 } < ees' c'' >8 < d' bes' >8 |
        < f' d'' >16 < ees' c'' >16 < d' bes' >8 < c' a' >8 |
        < d' bes' >8-. r8 < bes' d'' >8-. |
        < bes' d'' g'' >4. |

        < d'' f'' >8 \acciaccatura { aes''16 } < ees'' g'' >8 < d'' f'' >8 |
        < ees'' g'' >8 < d'' f'' >8 \tuplet 3/2 { < f'' aes'' >16 < ees'' g'' >16 < f'' d'' >16 } |
        < d'' f'' >8 < c'' ees'' >8 < c'' ees'' >16 < bes' d'' >16 |
        < bes' d'' >8. < f' c'' >16 < f' c'' >16 < d' bes' >16 |

        < d' bes' >8 \acciaccatura { d''16 } < ees' c'' >8 < d' bes' >8 |
        < bes' d'' >16 < a' c'' >16 < g' bes' >8 \tuplet 3/2 { bes'16 a'16 g'16 } |
        g'8. g''16 ( d''16 bes'16 |
        g'4 ) r8 |
    }

    \repeat volta 2 {
        < d' b' >8 < ees' c'' >8 < f' d'' >8 |
        \acciaccatura { f''16 } < g' ees'' >8 < f' d'' >8 < ees' c'' >8 |
        \acciaccatura { d'16 } < bes' d'' >8. < aes' c'' >16 < aes' c'' >16 < g' b' >16 |
        < g' b' >8 aes'16 b'16 aes'16 g'16 |

        < f' d'' >8 < d' b' >16 < f' d'' >16 < ees' c'' >16 < d' b' >16 |
        < d' b' >8 aes'16 b'16 aes'16 g'16 |
        < d' b' >4. ~ |
        < d' b' >4 r8 |

        b'8 c''8 d''8 |
        \acciaccatura { f''16 } ees''8 d''8 c''8 |
        < a' f'' >8. ( ees''16 ) d''16 c''16 |
        < g' d'' >8. c''16 b'16 aes'16 |

        d''8. c''16 b'16 aes'16 |
        b'8. aes'16 g'16 f'16 |
        g'8. g''16 d''16 b'16 |
    }
    \alternative {
        { g'4 r8 | }
        { g'4 r8 | }
    }
}

accordionrightuppernotessectionD = {
    \repeat volta 2 {
        g''8.\ff ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'16 a'16 bes'16 g'16 ) |

        g''8. ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'8 ) r8 |
    }
}

accordionrightuppernotessectionDEFG = {
    \repeat volta 2 {
        g''8.\ff ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'16 a'16 bes'16 g'16 ) |

        g''8. ( d''16 ) g''16 ( f''16 e''16 d''16 ) |
        g''16 ( d''16 g''16 d''16 g''16 f''16 e''16 d''16 ) |
        e''16 ( f''16 e''16 d''16 cis''16 a'16 cis''16 e''16 ) |
        d''16 ( cis''16 bes'16 a'16 g'8 ) r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g'8 ( e''16 d''16 cis''16 d''16 e''16 d''16 |
        cis''8 ) bes'16 ( a'16 g'16 a'16 bes'16 a'16 |
        \grace { s16 s16 s16 } g'8 ) e''16 ( d''16 cis''16 d''16 e''16 d''16 |
        cis''16 bes'16 a'16 bes'16 g'8 ) r8
    }

    \startOctVA
    \repeat volta 2 { 
        \grace { s16 s16 s16 } b''8. ( a''16 b''16 c'''16 d'''16 c'''16 |
        b''8 ) b''16 ( a''16 b''16 c'''16 d'''16 c'''16 |
        b''8. ) a''16 ( b''16 c'''16 d'''16 c'''16 |
    }
    \alternative {
        { b''8 ) a''8 g''8 r8 | } { b''8 a''8 g''8 r8 | }
    }
    \stopOctVA

    \repeat unfold 2 {
        a'8 a'4 b'16 ( a'16 |
        b'8 ) b'16 ( a'16 b'16 c''16 d''8 ) |
        a'8 a'8 a'16 ( c''16 b'16 a'16 |
        b'16 c''16 b'16 a'16 g'8 ) r8 |
    }
}

accordionrightuppernotes = {
    \key bes \major
    \time 3/8
    s4 g''8 |
    \accordionrightuppernotessectionABC
    \time 2/4
    \accordionrightuppernotessectionDEFG
}

accordionrightlowernotessectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

accordionrightlowernotessectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

accordionrightlowernotessectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

accordionrightlowernotes = {
    s4 s8 |
    \accordionrightlowernotessectionABC
    \time 2/4
    \accordionrightlowernotessectionDEFG
    \stemDown
}

accordionleftuppernotessectionABC = {
    \repeat volta 2 {
        g,4-3^"B.S." d,8-2-.
        g,4-3 d,8-2-. |
        g,8 r8 < g, g >8-.^"M" |
        < g, g >4 < g, g >8-. |

        g,4^"B.S." g,8-. |
        g,4 d,8-. |
        g,4 < g, g >8-.^"M" |
        < g, g >4 < g, g >8-. |

        g,4^"B.S." d,8-.
        g,4 d,8-. |
        f,4-4 < f, f >8-3-.^"m"
        < f, f >4 < f, f >8-. |

        < f, f >4 f,8-. |
	g,4 d,8-.
        < g, g >4^"M" < g, g >8-. |
        < g, g >4 < g, g >8-. |
    }

    \repeat volta 2 {
        bes,4-4^"B.S." bes,8-. |
        bes,4 bes,8-. |
        bes,4 bes,8-. |
        bes,4 bes,8-. |

        bes,4 bes,8-. |
        f,4 < f, f >8-.^"M" |
        < bes, bes >8-.^"M" r8 < bes, bes >8-. |
        < bes, bes >4 < bes, bes >8-. |

        bes,4-4^"B.S." bes,8-. |
        bes,4 bes,8-. |
        bes,4 bes,8-. |
        bes,4 bes,8-. |

        bes,4 bes,8-. |
        < g, g >4 < d, d' >8-.^"7" |
        < g, g >4^"m" < g, g >8-. |
        < g, g >4 < g, g >8-. |
    }

    \repeat volta 2 {
        g,4^"B.S." g,8-. |
        g,4 g,8-. |
        g,4 d,8-. |
        g,4 d,8-. |

        g,4 g,8-. |
        g,4 d,8-. |
        < g, g >4^"M" < g, g >8-. |
        < g, g >4 < g, g >8-. |

        g,4^"B.S." g,8-. |
        g,4 g,8-. |
        < f, f >4^"m" d,8-.^"B.S." |
        g,4 d,8-. |

        g,4 d,8-. |
        g,4 d,8-. |
        < g, g >4^"M" < g, g >8-. |
    }
    \alternative {
        { < g, g >4 < g, g >8-. | }
        { < g, g >4^"M" r8 | }
    }
}

accordionleftuppernotessectionD = {
    \repeat volta 2 {
        g,8\ff g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 a,8 a8^"7" |
        g,8^"m" g8 d,8 g8 |

        g,8^"m" g8 d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 a,8 a8^"7" |
        g,8^"B.S." d,8 < g, g >8^"M" r8 |
    }
}

accordionleftuppernotessectionDEFG = {
    \repeat volta 2 {
        g,8\ff g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 a,8 a8^"7" |
        g,8^"m" g8 d,8 g8 |

        g,8^"m" g8 d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 a,8 a8^"7" |
        g,8^"B.S." d,8 < g, g >8^"m" r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8^"m" g8 d,8 g8 |
        g,8 g8 d,8 g8 |
        \grace { s16 s16 s16 } g,8 g8 d,8 g8 |
        g, 8^"B.S." d,8 < g, g >8^"m" r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } g,8^"M" g8 d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 d,8 g8 |
    }
    \alternative {
        { d,8 < d, d' >8^"7" < g, g >8^"M" d,8-> | }
        { d,8 < d, d' >8^"7" < g, g >8^"M" r8 | }
    }

    \repeat unfold 2 {
        d,8 d'8^"7" d,8 d'8 |
        g,8 g8^"M" g,8 g8 |
        d,8 d'8^"7" d,8 d'8 |
        < g, g >8^"M" < d, d' >8^"7" < g, g >8^"M" d,8-> |
    }
}

accordionleftuppernotes = {
    \key bes \major
    \time 3/8
    s4 r8 |
    \accordionleftuppernotessectionABC
    \time 2/4
    \accordionleftuppernotessectionDEFG
}

accordionleftlowernotessectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. | s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. | s4. | s4. | s4. |
    }
    \alternative { { s4. | } { s4. | } }
}

accordionleftlowernotessectionD = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

accordionleftlowernotessectionDEFG = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

    \repeat volta 2 {
        \grace { s16 s16 s16 } s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
    }

    \repeat volta 2 { \grace { s16 s16 s16 } s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat unfold 2 { s2 | s2 | s2 | s2 | }
}

accordionleftlowernotes = {
    s4 s8 |
    \accordionleftlowernotessectionABC
    \time 2/4
    \accordionleftlowernotessectionDEFG
    \stemDown
}

accordionrightnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 g''8 |
    \accordionrightuppernotessectionABC

    \time 2/4
    \accordionrightuppernotessectionDEFG
    \accordionrightuppernotessectionD
}

accordionleftnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    s4 r8 |
    \accordionleftuppernotessectionABC

    \time 2/4
    \accordionleftuppernotessectionDEFG
    \accordionleftuppernotessectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionABC = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 16 { << sna8\p hhc >> r8 \snareruffeight | }
    }
    \repeat volta 2 {
        \repeat percent 16 { << sna8 hhc >> r8 \snareruffeight | }
    }
    \repeat volta 2 {
        \repeat percent 15 { << sna8 hhc >> r8 \snareruffeight | }
    }
    \alternative {
        { << sna8\p hhc >> r8 \snareruffeight | } { << sna8\p hhc >> r8 cymc8 | }
    }
}

drumshighsectionD = \drummode {
    \repeat volta 2 {
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |

        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 cymc8 |
    }
}

drumshighsectionDEFG = \drummode {
    \repeat volta 2 {
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |

        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 sna8 |
        < sna hhc >8 sna16 sna16 hhc8 < sna hhc >8 |
        sna16 sna16 hhc8 < sna hhc >8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } < sna hhc >8 hhc8 hhc8 < sna hhc >8 |
        hhc8 hhc8 < sna hhc >8 hhc8 |
        \grace { s16 s16 s16 } < sna hhc >8 hhc8 hhc8 < sna hhc >8 |
        hhc8 hhc8 < sna hhc >8 r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } < wbh hhc >8 hhc8 hhc8 < wbh hhc >8 |
        hhc8 hhc8 < wbh hhc >8 hhc8 |
        < wbh hhc >8 hhc8 hhc8 < wbh hhc >8 |
    }
    \alternative {
        { hhc8 hhc8 < wbh hhc >8 r8 | }
        { hhc8 hhc8 < wbh hhc >8 r8 | }
    }

    \repeat unfold 2 {
        < wbh hhc >8 wbh16 wbh16 hhc8 < wbh hhc >8 |
        wbh16 wbh16 hhc8 < wbh hhc >8 wbh8 |
        < wbh hhc >8 wbh16 wbh16 hhc8 < wbh hhc >8 |
        wbh16 wbh16 hhc8 < wbh hhc >8 r8 |
    }
}

drumshigh = \drummode {
    \stemUp
    s4 r8 |
    \drumshighsectionABC
    \time 2/4
    \drumshighsectionDEFG
}


drumshighmidi = \drummode {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \drumshighsectionABC

    \time 2/4
    \drumshighsectionDEFG
    \drumshighsectionD
}

drumslowsectionABC = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 16 { bda8 s8 bda8 | }
    }
    \repeat volta 2 {
        \repeat percent 16 { bda8 s8 bda8 | }
    }
    \repeat volta 2 {
        \repeat percent 15 { bda8 s8 bda8 | }
    }
    \alternative { { bda8 s8 bda8 | } { bda8 s4 } }
}

drumslowsectionD = \drummode {
    \repeat volta 2 {
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |

        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
    }
}

drumslowsectionDEFG = \drummode {
    \repeat volta 2 {
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |

        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } bda8 s8 bda8 s8 |
        bda8 s8 bda8 s8 |
        \grace { s16 s16 s16 } bda8 s8 bda8 s8 |
        bda8 s8 bda8 s8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 s16 } bda8 s8 bda8 s8 |
        bda8 s8 bda8 s8 |
        bda8 s8 bda8 s8 |
    }
    \alternative {
        { bda8 s8 bda8 s8 | }
        { bda8 s8 bda8 s8 | }
    }

    \repeat unfold 2 {
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
        bda8 s8 s8 bda8 |
        s8 s8 bda8 s8 |
    }
}

drumslow = \drummode {
    \stemDown
    s4 s8 |
    \drumslowsectionABC
    \time 2/4
    \drumslowsectionDEFG
}

drumslowmidi = \drummode {
    \time 3/8
    \preintro
    \time 3/8
    s4 s8 |
    \drumslowsectionABC

    \time 2/4
    \drumslowsectionDEFG
    \drumslowsectionD
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
}

previewnotes = \transpose c bes {
    \key c \major
    \time 3/8
    s4 a'8 |
    \markA \positionA
    \bar ".|:"
    cis''8\mf \grace { s16 } d''8 bes'8 |
    cis''4 \tuplet 3/2 { bes'16 ( a'16 g'16 ) } |
    a'8 r8 e'8 |
    a'4 r8 |
    a'8 bes'8 cis''8 |
    \grace { s16 } d''8 cis''8 bes'8 |
}

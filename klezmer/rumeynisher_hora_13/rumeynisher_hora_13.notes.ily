\version "2.18.0"

bandmsectionABC = {
    \markA \positionA
    \repeat volta 2 {
        s4. | \breakAone s4. | \breakAtwo s4. | \breakAtre s4. | \breakAfor
        s4. | \breakAfiv s4. | \breakAsix s4. | \breakAsev s4. | \breakAeit
        s4. | \breakAnin s4. | \breakAten s4. | \breakAelv s4. | \breakAtwl
        s4. | \breakAtht s4. | \breakAfrt
    }
    \alternative {
        { s4. | \breakAfft s4. | \breakAsxt }
        { s4. | \breakAsvt s4. | }
    }
    \breakA \markB \positionB \bar ".|:-||"
    \repeat volta 2 {
        s4. | \breakBone s4. | \breakBtwo s4. | \breakBtre s4. | \breakBfor
        s4. | \breakBfiv s4. | \breakBsix s4. | \breakBsev
    }
    \alternative {
        { s4. | \breakBeit }
        { s4. | }
    }
    \breakB \markC \positionC \bar ".|:-||"
    \repeat volta 2 {
        s4. | \breakCone s4. | \breakCtwo s4. | \breakCtre s4. | \breakCfor
        s4. | \breakCfiv s4. | \breakCsix
    }
    \alternative {
        { s4. | \breakCsev s4. | \breakCeit } { s4. | \breakCnin s4. | }
    }
    \breakC \markDC \positionDC
}

bandmtransition = {
   \bar "||"
    s2 | \breakTRone s2 | \breakTR
   \bar "||"
}

bandmsectionDa = {
    \markSD \positionSD
    \tempo \tempostringtwo
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
    s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
    s2 | \breakDtht s2 | \breakDfrt
    \markTC \positionTC
}

bandmsectionDb = {
     s2 | \breakDfft s2 |
     \breakD
}

bandmsectionE = {
    \markE \positionE \bar "||"
    s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
    s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev s2 | \breakE
    \markDS \positionDS
}

codaspacer = { \stopStaff s2 \startStaff | \breakBL }

bandmcoda = {
    \markCC \positionCC s2 | \breakCCone s2 |
}

bandmsectionTDE = {
    \bandmtransition
    \bandmsectionDa
    \bandmsectionDb
    \bandmsectionE
    \codaspacer
    \bandmcoda
}

bandmsectionTDEmidi = {
    \bandmtransition
    \bandmsectionDa
    \bandmsectionDb
    \bandmsectionE
    \tempo 4 = 125
    \bandmsectionDa
    \bandmsectionDb
    \bandmsectionE
    \tempo 4 = 130
    \bandmsectionDa
    \bandmcoda
}

bandmNV = {
    \time 3/8
    \tempo \tempostring
    \bandmsectionABC
%    \time 2/4
%    \tempo \tempostringtwo
%    \bandmsectionTDE
    \bar "|."
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
    \bandmsectionABC
    \bandmsectionABC
    \tempo 4 = 120
%    \time 2/4
%    \bandmsectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionABC = {
    \repeat volta 2 {
        d''8.\ff ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        a''4 d'''8 |
        d'''4. |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        a''8. g''16 fis''16 ees''16 |
        fis''8. ees''16 d''16 c''16 |
    }
    \alternative {
        {
            d''4 a'8 |
            d''4 a'8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }

    \repeat volta 2 {
        d'''8. c'''16 bes''16 a''16 |
        d'''8. c'''16 bes''16 a''16 |
        a''16 c'''16 bes''8 bes''8 |
        bes''4. |

        a''8 bes''8 \acciaccatura { d'''16 } c'''16 bes''16 |
        c'''8. bes''16 a''16 g''16 |
        g''16 bes''16 a''8 a''8 |
    }
    \alternative {
        {
            a''4 d''8 |
        }
        {
            a''4 r8 |
        }
    }

    \repeat volta 2 {
        fis''8 ( g''8 ) \acciaccatura { bes''16 } a''16 g''16 |
        fis''8. ees''16 d''16 c''16 |
        c''8 c''8 c''8 |
        c'''4. |
        c'''8. bes''16 a''16 g''16 |
        a''8. g''16 fis''16 ees''16 |
    }
    \alternative {
        {
            fis''8. ees''16 d''16 c''16 |
            d''4 r8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }
}

melodytransition = {
   R2*2 |
}

melodysectionDa = {
    < g' g'' >4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8-\trill ( |
    \tuplet 3/2 { b''8 ) c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8-\trill b''16 aes''16 |

    g''4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c''8-\trill ( |
    b'16 ) c''16 d''16 ees''16 fis''16 g''16 ees''16 g''16 |
    d''4 g''4 |

    g''8 g''8 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8-\trill ( |
    \tuplet 3/2 { b''8 ) c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8-\trill b''16 aes''16 |

    g''4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
}

melodysectionDb = {
     \tuplet 3/2 { c'''8-\prall b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 aes''8 } |
     \tuplet 3/2 { g''8 g'8 aes'8 } \tuplet 3/2 { bes'8 c''8 d''8 } |
}

melodysectionE = {
    ees''2 ~ |
    ees''8 ees''8 d''8 ees''8 |
    f''8. d''16 bes'4 ~ |
    bes'8 f''8 ees''8 d''8 |

    c''2 ~ |
    c''8 c''8-\prall b'8 c''8 |
    d''8. b'16 g'8 a''16 g''16 |
    f''16 ees''16 d''16 c''16 d''16 c''16 bes'16-\prall a'16 |
}

melodycoda = {
    \tuplet 3/2 { c'''8-\prall b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 a''8 } |
    g''8 r8 g''4 |
}

melodysectionTDE = \transpose ees bes, {
    \melodytransition
    \melodysectionDa
    \melodysectionDb
    \melodysectionE
    \codaspacer
    \melodycoda
}

melodysectionTDEmidi = \transpose ees bes, {
    \melodytransition
    \melodysectionDa
    \melodysectionDb
    \melodysectionE
    \melodysectionDa
    \melodysectionDb
    \melodysectionE
    \melodysectionDa
    \melodycoda
}

melody = {
    \key g \minor
    \time 3/8
    \melodysectionABC
%    \time 2/4
%    \melodysectionTDE
}

melodymidi = {
    \time 3/8
    \preintro
    \time 3/8
    \melodysectionABC
    \melodysectionABC
%    \time 2/4
%    \melodysectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. |
        s4. | s4. |
    }
    \alternative {
        { s4. | s4. | }
        { s4. | s4. | }
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. |
    }
    \alternative {
        { s4. | }
        { s4. | }
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. |
    }
    \alternative { { s4. | s4. | } { s4. | s4. | } }
}

tenorharmonytransition = {
    s2 | s2 |
}

tenorharmonysectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

tenorharmonysectionDb = {
     s2 | s2 |
}

tenorharmonysectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

tenorharmonycoda = {
    s2 | s2 |
}

tenorharmonysectionTDE = \transpose ees bes, {
    \tenorharmonytransition
    \tenorharmonysectionDa
    \tenorharmonysectionDb
    \tenorharmonysectionE
    \codaspacer
    \tenorharmonycoda
}

tenorharmonysectionTDEmidi = \transpose ees bes, {
    \tenorharmonytransition
    \tenorharmonysectionDa
    \tenorharmonysectionDb
    \tenorharmonysectionE
    \tenorharmonysectionDa
    \tenorharmonysectionDb
    \tenorharmonysectionE
    \tenorharmonysectionDa
    \tenorharmonycoda
}

tenorharmony = \transpose c bes, {
% transposition is here because these notes would typically
% come from the tenor sax part.  that is in bes.
    \tenorharmonysectionABC
%    \time 2/4
%    \tenorharmonysectionTDE
}

tenorharmonymidi = \transpose c bes, {
    \time 3/8
    \preintro
    \time 3/8
    \tenorharmonysectionABC
    \tenorharmonysectionABC
%    \time 2/4
%    \tenorharmonysectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionABC = {
    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. | s4. |
        s4. | s4. |
    }
    \alternative {
        { s4. | s4. | }
        { s4. | s4. | }
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. | s4. |
    }
    \alternative {
        { s4. | }
        { s4. | }
    }

    \repeat volta 2 {
        s4. | s4. | s4. | s4. |
        s4. | s4. |
    }
    \alternative { { s4. | s4. | } { s4. | s4. | } }
}

altoharmonytransition = {
    s2 | s2 |
}

altoharmonysectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

altoharmonysectionDb = {
     s2 | s2 |
}

altoharmonysectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

altoharmonycoda = {
    s2 | s2 |
}

altoharmonysectionTDE = \transpose ees bes, {
    \altoharmonytransition
    \altoharmonysectionDa
    \altoharmonysectionDb
    \altoharmonysectionE
    \codaspacer
    \altoharmonycoda
}

altoharmonysectionTDEmidi = \transpose ees bes, {
    \altoharmonytransition
    \altoharmonysectionDa
    \altoharmonysectionDb
    \altoharmonysectionE
    \altoharmonysectionDa
    \altoharmonysectionDb
    \altoharmonysectionE
    \altoharmonysectionDa
    \altoharmonycoda
}

altoharmony = {
    \altoharmonysectionABC
%    \time 2/4
%    \altoharmonysectionTDE
}

altoharmonymidi = {
    \time 3/8
    \preintro
    \time 3/8
    \altoharmonysectionABC
    \altoharmonysectionABC
%    \time 2/4
%    \altoharmonysectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionABC = {
    \repeat volta 2 {
        \repeat percent 6 { d4\ff a,8-. | }
        d4 d8 | d8. ( d'16 a16 fis16 ) |
        \repeat percent 4 { d4 a,8-. | }
        d4 d8 | c4 c8 |
    }
    \alternative { { d4 \< a,8 | d4 \! a,8 | } { d4 a,8 | d4 d8 | } }

    \repeat volta 2 {
        g4 d8-. | fis4 d8-. | g8 g8 g8 | g4 d8 |
        \repeat percent 2 { g4 d8 | } d8 d8 d8 |
    }
    \alternative { { fis4 d8 | } { fis4 d8 | } }

    \repeat volta 2 {
        \repeat percent 2 { d4 d8 | }
        \repeat percent 2 { c4 c8 | }
        \repeat percent 2 { c4 c8 | }
    }
    \alternative { { d4 c8 | d4 a,8-. | } { d4 a,8 | d4 r8 | } }
}

countertransition = {
    r8 g8 r8 g8 | r8 g8 r8 g8 |
}

countersectionDa = {
    g8 r8 g4 | r8 g8 r8 g8 |
    d'8 r8 g8 r8 | r8 g8 r8 aes8 |

    g8 r8 g4 | r8 g8 r8 g8 |
    f8 aes8 c8 aes8 | g8 r8 g4 |

    g8 g8 r8 g8 | r8 g8 r8 g8 |
    d'8 r8 g8 r8 | r8 g8 r8 aes8 |

    g8 r8 g4 | r8 g8 r8 g8 |
}

countersectionDb = {
     r8 g8 \tuplet 3/2 { r8 f8 aes8 } | g4 r4 |
}

countersectionE = {
    ees'8. ees'16 ees'8 ees'8 ~ | ees'8 ees'8 ees'8 ees'8 |
    d'8. d'16 d'8 d'8 ~ | d'8 d'8 d'8 d'8 |

    c'8. c'16 c'8 c'8 ~ | c'8 c'8 c'8 c'8 |
    b8. b16 b4 ~ | b8 aes8 ~ aes8 aes8 |
}

countercoda = {
    r8 f8 r8 aes8 | g8 r8 g4-> |
}

countersectionTDE = \transpose ees bes, {
    \countertransition
    \countersectionDa
    \countersectionDb
    \countersectionE
    \codaspacer
    \countercoda
}

countersectionTDEmidi = \transpose ees bes, {
    \countertransition
    \countersectionDa
    \countersectionDb
    \countersectionE
    \countersectionDa
    \countersectionDb
    \countersectionE
    \countersectionDa
    \countercoda
}

counter = {
    \key g \minor
    \time 3/8
    \countersectionABC
%    \time 2/4
%    \countersectionTDE
}

countermidi = {
    \time 3/8
    \preintro
    \time 3/8
    \countersectionABC
    \countersectionABC
%    \time 2/4
%    \countersectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionABC = {
    \repeat volta 2 {
        \repeat unfold 6 { d4 a,8-. | }
        d4 d8-. |
        d8. d'16 a16 fis16 |

        \repeat unfold 4 { d4 a,8-. | }

        d4 d8-. |
        a4 a8-. |
    }
    \alternative {
        { d4 a,8-. | d4 a,8-. | }
        { d4 a,8-. | d4 d8 | }
    }

    \repeat volta 2 {
        g4 d8-. |
        fis4 d8-. |
        g4 g8-. |
        g4 d8-. |
        g4 d8-. |
        g4 d8-. |
        fis4 fis8-. |
    }
    \alternative {
        {
            fis4 d8-. |
        }
        {
            fis4 d8-. |
        }
    }

    \repeat volta 2 {
        d4 d8 |
        d4 d8 |
        c4 c8 |
        c4 c8 |
        c4 c8 |
        c4 c8 |
    }
    \alternative {
        {
            d4 c8 |
            d4 a,8-. |
        }
        {
            d4 a,8 |
            d4 r8 |
        }
    }
}

basslinetransition = {
    g4 d4 | g4 d4 |
}

basslinesectionDa = {
    g4 g4 | c4 c4 | g4 c4 | g4 f8 aes8 |

    g4 g4 | c4 c4 | f4 c8 aes8 | g4 g4 |

    g8 g8 f4 | c4 c4 | g4 c4 | g4 f8 aes8 |

    g4 g4 | c4 c4 |
}

basslinesectionDb = {
     f4 aes4 | g4 bes4 |
}

basslinesectionE = {
    ees4 bes,4 | ees4 bes,4 | d4 bes,4 | d8 g8 a8 b8 |
    c'4 g4 | c'4 g8 c'8 | b4 g8 f8 ~ | f4 aes4 |
}

basslinecoda = {
    f4 aes4 | g4 g4-> |
}

basslinesectionTDE = \transpose ees bes, {
    \basslinetransition
    \basslinesectionDa
    \basslinesectionDb
    \basslinesectionE
    \codaspacer
    \basslinecoda
}

basslinesectionTDEmidi = \transpose ees bes, {
    \basslinetransition
    \basslinesectionDa
    \basslinesectionDb
    \basslinesectionE
    \basslinesectionDa
    \basslinesectionDb
    \basslinesectionE
    \basslinesectionDa
    \basslinecoda
}

bassline = {
    \key g \minor
    \time 3/8
    \basslinesectionABC
%    \time 2/4
%    \basslinesectionTDE
}

basslinemidi = {
    \time 3/8
    \preintro
    \time 3/8
    \basslinesectionABC
    \basslinesectionABC
%    \time 2/4
%    \basslinesectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionABC = {
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
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
        }
        {
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }
}

guitarnotestransition = {
    s2 | s2 |
}

guitarnotessectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

guitarnotessectionDb = {
     s2 | s2 |
}

guitarnotessectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

guitarnotescoda = {
    s2 | s2 |
}

guitarnotessectionTDE = \transpose ees bes, {
    \guitarnotestransition
    \guitarnotessectionDa
    \guitarnotessectionDb
    \guitarnotessectionE
    \codaspacer
    \guitarnotescoda
}

guitarnotessectionTDEmidi = \transpose ees bes, {
    \guitarnotestransition
    \guitarnotessectionDa
    \guitarnotessectionDb
    \guitarnotessectionE
    \guitarnotessectionDa
    \guitarnotessectionDb
    \guitarnotessectionE
    \guitarnotessectionDa
    \guitarnotescoda
}

guitarnotes = {
    \guitarnotessectionABC
%    \time 2/4
%    \guitarnotessectionTDE
}

guitarnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \guitarnotessectionABC
    \guitarnotessectionABC
%    \time 2/4
%    \guitarnotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionABC = \chordmode {
    \repeat volta 2 {
        d4. | d4. | d4. | d4. | d4. | d4. | d4. | d4. |
        d4. | d4. | d4. | d4. | d4. | a4.:7 |
    }
    \alternative { { d4 a8:7 | d4 a8:7 | } { d4 a8:7 | d4 s8 | } }

    \repeat volta 2 {
        g4.:min | d4.:7 | g4.:min | g4.:min | g4.:min | g4.:min | d4.:7 |
    }
    \alternative {
        { \chordChangesOff d4.:7 \chordChangesOn | }
        { \chordChangesOff d4.:7 \chordChangesOn | }
    }

    \repeat volta 2 {
        \chordChangesOff d4. \chordChangesOn | d4. | c4.:min | c4.:min |
        c4.:min | c4.:min |
    }
    \alternative {
        { d4 c8:min | d4. | }
        { \chordChangesOff d4 \chordChangesOn a8:7 | d4. | }
    }
}

chordletterstransition = \chordmode {
    g1 |
}

chordletterssectionDa = \chordmode {
    g2 | c2:min | g4 c4:min | g4 f4:min | g2 | c2:min | f2:min | g2 |
    g2 | c2:min | g4 c4:min | g4 f4:min | g2 | c2:min |
}

chordletterssectionDb = \chordmode {
     f2:min | g4 bes4 |
}

chordletterssectionE = \chordmode {
    ees2 | ees2 | bes2 | g2 | c2:min | c2:min | g2 | f2:min |
}

chordletterscoda = \chordmode {
    \chordChangesOff f2:min \chordChangesOn | g2 |
}

chordletterssectionTDE = \chordmode { \transpose ees bes, {
    \chordletterstransition
    \chordletterssectionDa
    \chordletterssectionDb
    \chordletterssectionE
    \codaspacer
    \chordletterscoda
} }

chordletterssectionTDEmidi = \chordmode { \transpose ees bes, {
    \chordletterstransition
    \chordletterssectionDa
    \chordletterssectionDb
    \chordletterssectionE
    \chordletterssectionDa
    \chordletterssectionDb
    \chordletterssectionE
    \chordletterssectionDa
    \chordletterscoda
} }

chordletters = \chordmode {
    \chordletterssectionABC
%    \time 2/4
%    \chordletterssectionTDE
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

flutenotessectionABC = {
    \repeat volta 2 {
        d''8.\ff ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        a''4 d'''8 |
        d'''4. |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        a''8. g''16 fis''16 ees''16 |
        fis''8. ees''16 d''16 c''16 |
    }
    \alternative {
        {
            d''4 a'8 |
            d''4 a'8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }

    \repeat volta 2 {
        d'''8. c'''16 bes''16 a''16 |
        d'''8. c'''16 bes''16 a''16 |
        a''16 c'''16 bes''8 bes''8 |
        bes''4. |

        a''8 bes''8 \acciaccatura { d'''16 } c'''16 bes''16 |
        c'''8. bes''16 a''16 g''16 |
        g''16 bes''16 a''8 a''8 |
    }
    \alternative {
        {
            a''4 d''8 |
        }
        {
            a''4 r8 |
        }
    }

    \repeat volta 2 {
        fis''8 ( g''8 ) \acciaccatura { bes''16 } a''16 g''16 |
        fis''8. ees''16 d''16 c''16 |
        c''8 c''8 c''8 |
        c'''4. |
        c'''8. bes''16 a''16 g''16 |
        a''8. g''16 fis''16 ees''16 |
    }
    \alternative {
        {
            fis''8. ees''16 d''16 c''16 |
            d''4 r8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }
}

flutenotestransition = {
    R2*2 |
}

flutenotessectionDa = {
    g'4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8-\trill ( |
    \tuplet 3/2 { b''8 ) c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8-\trill b''16 aes''16 |

    g''4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c''8-\trill ( |
    b'16 ) c''16 d''16 ees''16 fis''16 g''16 ees''16 g''16 |
    d''4 g''4 |

    g''8 g''8 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8-\trill ( |
    \tuplet 3/2 { b''8 ) c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8-\trill b''16 aes''16 |

    g''4 b''8-\trill aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
}

flutenotessectionDb = {
     \tuplet 3/2 { c'''8-\prall b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 aes''8 } |
     \tuplet 3/2 { g''8 g'8 aes'8 } \tuplet 3/2 { bes'8 c''8 d''8 } |
}

flutenotessectionE = {
    ees'''2 ~ |
    ees'''8 ees'''8 d'''8 ees'''8 |
    f'''8. d'''16 bes''4 ~ |
    bes''8 f'''8 ees'''8 d'''8 |

    c'''2 ~ |
    c'''8 c'''8-\prall b''8 c'''8 |
    d'''8. b''16 g''8 a'''16 g'''16 |
    f'''16 ees'''16 d'''16 c'''16 d'''16 c'''16 bes''16-\prall a''16 |
}

flutenotescoda = {
    \tuplet 3/2 { c'''8-\prall b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 a''8 } |
    g''8 r8 g''4 |
}

flutenotessectionTDE = \transpose ees bes, {
    \flutenotestransition
    \flutenotessectionDa
    \flutenotessectionDb
    \flutenotessectionE
    \codaspacer
    \flutenotescoda
}

flutenotessectionTDEmidi = \transpose ees bes, {
    \flutenotestransition
    \flutenotessectionDa
    \flutenotessectionDb
    \flutenotessectionE
    \flutenotessectionDa
    \flutenotessectionDb
    \flutenotessectionE
    \flutenotessectionDa
    \flutenotescoda
}

flutenotes = {
    \key g \minor
    \time 3/8
    \flutenotessectionABC
%    \time 2/4
%    \flutenotessectionTDE
}

flutenotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \flutenotessectionABC
    \flutenotessectionABC
%    \time 2/4
%    \flutenotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotessectionABC = {
    \repeat volta 2 {
        e''8.\f f''16 e''16 f''16 |
        gis''8. a''16 gis''16 a''16 |
        b''8 b''8 b''8 |
        b''8. a''16 gis''16 f''16 |

        e''8. f''16 e''16 f''16 |
        gis''8. a''16 gis''16 a''16 |
        b''4 e'''8 |
        b''4 r8 |

        e''8. f''16 e''16 f''16 |
        gis''8. a''16 gis''16 a''16 |
        b''8 b''8 b''8 |
        b''8. a''16 gis''16 f''16 |

        b''8. a''16 gis''16 f''16 |
        gis''8. f''16 e''16 d''16 |
    }
    \alternative {
        {
            e''4 b''8 |
            e''4 b'8 |
        }
        {
            e''8. e''16 gis''16 b''16 |
            e''4 r8 |
        }
    }

    \repeat volta 2 {
        e'''8. d'''16 c'''16 b''16 |
        e'''8. d'''16 c'''16 b''16 |
        b''16 d'''16 c'''8 c'''8 |
        c'''4 c'''8 |
        b''8 c'''8 d'''16 c'''16 |
        d'''8. c'''16 b''16 a''16 |
        a''16 c'''16 b''8 b''8 |
    }
    \alternative {
        {
            b''4 r8 |
        }
        {
            b''4 r8 |
        }
    }

    \repeat volta 2 {
        gis''8 a''8 \acciaccatura { c'''16 } b''16 a''16 |
        gis''8. f''16 e''16 d''16 |
        d''8 d''8 d''8 |
        d'''4. |
        d'''8. c'''16 b''16 a''16 |
        b''8. a''16 gis''16 f''16 |
    }
    \alternative {
        {
            gis''8. f''16 e''16 d''16 |
            e''4 e''8 |
        }
        {
            e''8. e''16 b''16 gis''16 |
            e''4 r8 |
        }
    }
}

clarinetnotestransition = {
    R2*2 |
}

clarinetnotessectionDa = {
    a'4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8-\trill ( |
    \tuplet 3/2 { cis'''8 ) d'''8 e'''8 } \tuplet 3/2 { f'''8 e'''8 d'''8 } |
    \tuplet 3/2 { e'''8 d'''8 cis'''8 } \tuplet 3/2 { d'''8-\trill cis'''8 bes''8 } |

    a''4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d''8-\trill ( |
    cis''16 ) d''16 e''16 f''16 gis''16 a''16 f''16 a''16 |
    e''4 a''4 |

    a''8 a''8 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8-\trill ( |
    \tuplet 3/2 { cis'''8 ) d'''8 e'''8 } \tuplet 3/2 { f'''8 e'''8 d'''8 } |
    \tuplet 3/2 { e'''8 d'''8 cis'''8 } \tuplet 3/2 { d'''8-\trill cis'''8 bes''8 } |

    a''4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8 |
}

clarinetnotessectionDb = {
     \tuplet 3/2 { d'''8-\prall cis'''8 e'''8 } \tuplet 3/2 { d'''8 cis'''8 bes''8 } |
     \tuplet 3/2 { a''8 a'8 bes'8 } \tuplet 3/2 { c''8 d''8 e''8 } |
}

clarinetnotessectionE = {
    f''2 ~ |
    f''8 f''8 e''8 f''8 |
    g''8. e''16 c''4 ~ |
    c''8 g''8 f''8 e''8 |

    d''2 ~ |
    d''8 d''8-\prall cis''8 d''8 |
    e''8. cis''16 a'8 bes''16 a''16 |
    g''16 f''16 e''16 d''16 e''16 d''16 cis''16-\prall bes'16 |
}

clarinetnotescoda = {
    \tuplet 3/2 { d'''8-\prall cis'''8 e'''8 } \tuplet 3/2 { d'''8 cis'''8 bes''8 } |
    a''8 r8 a''4-^ |
}

clarinetnotessectionTDE = \transpose ees bes, {
    \clarinetnotestransition
    \clarinetnotessectionDa
    \clarinetnotessectionDb
    \clarinetnotessectionE
    \codaspacer
    \clarinetnotescoda
}

clarinetnotessectionTDEmidi = \transpose ees bes, {
    \clarinetnotestransition
    \clarinetnotessectionDa
    \clarinetnotessectionDb
    \clarinetnotessectionE
    \clarinetnotessectionDa
    \clarinetnotessectionDb
    \clarinetnotessectionE
    \clarinetnotessectionDa
    \clarinetnotescoda
}

clarinetnotes = {
    \key a \minor
    \time 3/8
    \clarinetnotessectionABC
%    \time 2/4
%    \clarinetnotessectionTDE
}

clarinetnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \clarinetnotessectionABC
    \clarinetnotessectionABC
%    \time 2/4
%    \clarinetnotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotessectionABC = {
    \repeat volta 2 {
        b'8.\f c''16 b'16 c''16 |
        dis''8. e''16 dis''16 e''16 |
        \acciaccatura { dis''16 } fis''8 fis''8 fis''8 |
        fis''8. e''16 dis''16 c''16 |

        b'8. c''16 b'16 c''16 |
        dis''8. e''16 dis''16 e''16 |
        fis''4 b''8 |
        b''4. |

        b'8. c''16 b'16 c''16 |
        dis''8. e''16 dis''16 e''16 |
        \acciaccatura { dis''16 } fis''8 fis''8 fis''8 |
        fis''8. e''16 dis''16 c''16 |

        fis''8. e''16 dis''16 c''16 |
        dis''8. c''16 b'16 a'16 |
    }
    \alternative {
        { b'4 fis'8 | b'4 fis'8 | }
        { b'8. b''16 fis''16 dis''16 | b'4 r8 | }
    }

    \repeat volta 2 {
        b''8. a''16 g''16 fis''16 |
        b''8. a''16 g''16 fis''16 |
        fis''16 a''16 g''8 g''8 |
        g''4. |
        fis''8 g''8 a''16 g''16 |
        a''8. g''16 fis''16 e''16 |
        e''16 g''16 fis''8 fis''8 |
    }
    \alternative {
        { fis''4 b'8 | }
        { fis''4 r8 | }
    }

    \repeat volta 2 {
        dis''8 e''8 fis''16 e''16 |
        dis''8. c''16 b'16 a'16 |
        a'8 a'8 a'8 |
        \acciaccatura { a'16 } a''4. |
        a''8. g''16 fis''16 e''16 |
        fis''8. e''16 dis''16 c''16 |
    }
    \alternative {
        {
            dis''8. c''16 b'16 a'16 |
            b'4 r8 |
        }
        {
            b'8. ( b''16 fis''16 dis''16 |
            b'4 ) r8 |
        }
    }
}

altosaxnotestransition = {
    R2*2 |
}

altosaxnotessectionDa = \transpose ees bes, {
    a'4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8-\trill ( |
    \tuplet 3/2 { cis'''8 ) d'''8 e'''8 } \tuplet 3/2 { f'''8 e'''8 d'''8 } |
    \tuplet 3/2 { e'''8 d'''8 cis'''8 } \tuplet 3/2 { d'''8-\trill cis'''8 bes''8 } |

    a''4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d''8-\trill ( |
    cis''16 ) d''16 e''16 f''16 gis''16 a''16 f''16 a''16 |
    e''4 a''4 |

    a''8 a''8 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8-\trill ( |
    \tuplet 3/2 { cis'''8 ) d'''8 e'''8 } \tuplet 3/2 { f'''8 e'''8 d'''8 } |
    \tuplet 3/2 { e'''8 d'''8 cis'''8 } \tuplet 3/2 { d'''8-\trill cis'''8 bes''8 } |

    a''4 cis'''8-\trill bes''16 a''16 |
    e'''8 d'''8 ~ d'''8 d'''8 |
}

altosaxnotessectionDb = \transpose ees bes, {
     \tuplet 3/2 { d'''8-\prall cis'''8 e'''8 } \tuplet 3/2 { d'''8 cis'''8 bes''8 } |
     \tuplet 3/2 { a''8 a'8 bes'8 } \tuplet 3/2 { c''8 d''8 e''8 } |
}

altosaxnotessectionE = \transpose ees bes, {
    f''2 ~ |
    f''8 f''8 e''8 f''8 |
    g''8. e''16 c''4 ~ |
    c''8 g''8 f''8 e''8 |

    d''2 ~ |
    d''8 d''8-\prall cis''8 d''8 |
    e''8. cis''16 a'8 bes''16 a''16 |
    g''16 f''16 e''16 d''16 e''16 d''16 cis''16-\prall bes'16 |
}

altosaxnotescoda = \transpose ees bes, {
    \tuplet 3/2 { d'''8-\prall cis'''8 e'''8 } \tuplet 3/2 { d'''8 cis'''8 bes''8 } |
    a''8 r8 a''4-^ |
}

altosaxnotessectionTDE = \transpose ees bes, {
    \altosaxnotestransition
    \altosaxnotessectionDa
    \altosaxnotessectionDb
    \altosaxnotessectionE
    \codaspacer
    \altosaxnotescoda
}

altosaxnotessectionTDEmidi = \transpose ees bes, {
    \altosaxnotestransition
    \altosaxnotessectionDa
    \altosaxnotessectionDb
    \altosaxnotessectionE
    \altosaxnotessectionDa
    \altosaxnotessectionDb
    \altosaxnotessectionE
    \altosaxnotessectionDa
    \altosaxnotescoda
}

altosaxnotes = {
    \key e \minor
    \time 3/8
    \altosaxnotessectionABC
%    \time 2/4
%    \altosaxnotessectionTDE
}

altosaxnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \altosaxnotessectionABC
    \altosaxnotessectionABC
%    \time 2/4
%    \altosaxnotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotessectionABC = {
    \repeat volta 2 {
        gis'8.\f a'16 gis'16 b'16 |
        e''8. f''16 e''16 f''16 |
        gis''8 gis''8 gis''8 |
        gis''8. f''16 e''16 b'16 |

        gis'8. a'16 gis'16 b'16 |
        e''8. f''16 e''16 f''16 |
        gis''4 gis''8 |
        gis''8. e''16 e''16 b'16 |

        gis'8. a'16 gis'16 b'16 |
        e''8. f''16 e''16 f''16 |
        gis''8 gis''8 gis''8 |
        gis''8. f''16 e''16 b'16 |

        d''8. c''16 b'16 a'16 |
        b'8. a'16 gis'16 f'16 |
    }
    \alternative {
        {
            gis'4 a'8 |
            gis'4 a'8 |
        }
        {
            gis'8. gis'16 b'8 |
            gis'4 r8 |
        }
    }

    \repeat volta 2 {
        c'''8. b''16 a''16 gis''16 |
        gis''8. f''16 e''16 gis''16 |
        gis''16 b''16 a''8 a''8 |
        a''16 ( e''16 ) e''16 ( a''16 ) a''16 ( e''16 ) |
        gis''8 a''8 b''16 a''16 |
        b''8 e''16 a''16 gis''16 f''16 |
        f''16 a''16 gis''8 gis''8 |
    }
    \alternative {
        {
            gis''16 ( b''16 ) b''16 ( gis''16 ) gis''16 ( e''16 ) |
        }
        {
            gis''16 ( e''16 ) e''16 b'16 e''8 |
        }
    }

    \repeat volta 2 {
        b'8 c''8 d''16 c''16 |
        b'8. a'16 gis'16 f'16 |
        f'16 a'16 a'16 f'16 f'16 a'16 |
        f'8. a'16 d''16 a'16 |
        f''8. e''16 d''16 c''16 |
        d''8. c''16 b'16 a'16 |
    }
    \alternative {
        {
            b'8. a'16 gis'16 f'16 |
            gis'8 b'8 gis'8 |
        }
        {
            gis'8. gis'16 gis'16 b'16 |
            gis'4 r8 |
        }
    }
}

tenorsaxnotestransition = {
    r8 e''8 r8 e''8 | r8 e''8 r8 e''8 |
}

tenorsaxnotessectionDa = {
    a''8 a''8 r8 a''8 | r8 f''8 r8 f''8 |
    r8 a''8 r8 a''8 | r8 a''8 r8 g''8 |

    a''8 r8 a''4 | r8 f''8 r8 f''8 |
    r8 a''8 r8 bes''8 | a''8 r8 a''4 |

    a''8 a''8 r8 a''8 | r8 f''8 r8 f''8 |
    r8 a''8 r8 a''8 | r8 a''8 r8 g''8 |

    a''8 r8 a''4 | r8 f''8 r8 f''8 |
}

tenorsaxnotessectionDb = {
     r8 a''8 \tuplet 3/2 { r8 g''8 bes''8 } | a''4 r4 |
}

tenorsaxnotessectionE = {
    a''8. a''16 a''8 a''8 ~ | a''8 a''8 a''8 a''8 |
    g''8. g''16 g''8 g''8 ~ | g''8 g''8 g''8 g''8 |
    f''8. f''16 f''8 f''8 ~ | f''8 f''8 f''8 f''8 |
    e''8. e''16 e''4 ~ | e''8 e''8 ~ e''8 e''8 |
}

tenorsaxnotescoda = {
    r8 g''8 r8 bes''8 | a''8 r8 a''4 |
}

tenorsaxnotessectionTDE = \transpose ees bes, {
    \tenorsaxnotestransition
    \tenorsaxnotessectionDa
    \tenorsaxnotessectionDb
    \tenorsaxnotessectionE
    \codaspacer
    \tenorsaxnotescoda
}

tenorsaxnotessectionTDEmidi = \transpose ees bes, {
    \tenorsaxnotestransition
    \tenorsaxnotessectionDa
    \tenorsaxnotessectionDb
    \tenorsaxnotessectionE
    \tenorsaxnotessectionDa
    \tenorsaxnotessectionDb
    \tenorsaxnotessectionE
    \tenorsaxnotessectionDa
    \tenorsaxnotescoda
}

tenorsaxnotes = {
    \key a \minor
    \time 3/8
    \tenorsaxnotessectionABC
%    \time 2/4
%    \tenorsaxnotessectionTDE
}

tenorsaxnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \tenorsaxnotessectionABC
    \tenorsaxnotessectionABC
%    \time 2/4
%    \tenorsaxnotessectionTDEmidi
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotessectionABC = {
    \repeat volta 2 {
        e'8.\f f'16 e'16 f'16 |
        gis'8. a'16 gis'16 a'16 |
        \acciaccatura { ais'16 } b'8 b'8 b'8 |
        b'8. a'16 gis'16 f'16 |

        e'8. f'16 e'16 f'16 |
        gis'8. a'16 gis'16 a'16 |
        b'4 e''8 |
        e''4 r8 |

        e'8. f'16 e'16 f'16 |
        gis'8. a'16 gis'16 a'16 |
        \acciaccatura { ais'16 } b'8 b'8 b'8 |
        b'8. a'16 gis'16 f'16 |

        b'8. a'16 gis'16 f'16 |
        gis'8. f'16 e'16 d'16 |
    }
    \alternative {
        { e'4 b8 | e'4 b8 | }
        { e'8. e''16 b'16 gis'16 | e'4 r8 | }
    }

    \repeat volta 2 {
        e''8. d''16 c''16 b'16 |
        e''8. d''16 c''16 b'16 |
        b'16 d''16 c''8 c''8 |
        c''4. |
        b'8 c''8 \acciaccatura { e''16 } d''16 c''16 |
        d''8. c''16 b'16 a'16 |
        a'16 c''16 b'8 b'8 |
    }
    \alternative {
        { b'4 e'8 | }
        { b'4 r8 | }
    }

    \repeat volta 2 {
        gis'8 a'8 \acciaccatura { c''16 } b'16 a'16 |
        gis'8. f'16 e'16 d'16 |
        d'8 d'8 d'8 |
        d''4. |
        d''8. c''16 b'16 a'16 |
        b'8. a'16 gis'16 f'16 |
    }
    \alternative {
        { gis'8. f'16 e'16 d'16 | e'4 r8 | }
        { e'8. e''16 b'16 gis'16 | e'4 r8 | }
    }
}

trumpetnotestransition = {
    R2*2 |
}

trumpetnotessectionDa = {
    a'4 cis''8-\trill bes'16 a'16 |
    e''8 d''8 ~ d''8 d''8-\trill ( |
    \tuplet 3/2 { cis''8 ) d''8 e''8 } \tuplet 3/2 { f''8 e''8 d''8 } |
    \tuplet 3/2 { e''8 d''8 cis''8 } \tuplet 3/2 { d''8-\trill cis''8 bes'8 } |

    a'4 cis''8-\trill bes'16 a'16 |
    e''8 d''8 ~ d''8 d'8-\trill ( |
    cis'16 ) d'16 e'16 f'16 gis'16 a'16 f'16 a'16 |
    e'4 a'4 |

    a'8 a'8 cis''8-\trill bes'16 a'16 |
    e''8 d''8 ~ d''8 d''8-\trill ( |
    \tuplet 3/2 { cis''8 ) d''8 e''8 } \tuplet 3/2 { f''8 e''8 d''8 } |
    \tuplet 3/2 { e''8 d''8 cis''8 } \tuplet 3/2 { d''8-\trill cis''8 bes'8 } |

    a'4 cis''8-\trill bes'16 a'16 |
    e''8 d''8 ~ d''8 d''8 |
}

trumpetnotessectionDb = {
     \tuplet 3/2 { d''8-\prall cis''8 e''8 } \tuplet 3/2 { d''8 cis''8 bes'8 } |
     \tuplet 3/2 { a'8 a'8 e'8 } \tuplet 3/2 { c'8 d'8 e'8 } |
}

trumpetnotessectionE = {
    f'2 ~ |
    f'8 f'8 e'8 f'8 |
    g'8. e'16 c'4 ~ |
    c'8 g'8 f'8 e'8 |

    d'2 ~ |
    d'8 d'8-\prall cis'8 d'8 |
    e'8. cis''16 a'8 bes''16 a''16 |
    g''16 f''16 e''16 d''16 e''16 d''16 cis''16-\prall bes'16 |
}

trumpetnotescoda = {
    \tuplet 3/2 { d''8-\prall cis''8 e''8 } \tuplet 3/2 { d''8 cis''8 bes'8 } |
    a'8 r8 a'4-> |
}

trumpetnotessectionTDE = \transpose ees bes, {
    \trumpetnotestransition
    \trumpetnotessectionDa
    \trumpetnotessectionDb
    \trumpetnotessectionE
    \codaspacer
    \trumpetnotescoda
}

trumpetnotessectionTDEmidi = \transpose ees bes, {
    \trumpetnotestransition
    \trumpetnotessectionDa
    \trumpetnotessectionDb
    \trumpetnotessectionE
    \trumpetnotessectionDa
    \trumpetnotessectionDb
    \trumpetnotessectionE
    \trumpetnotessectionDa
    \trumpetnotescoda
}

trumpetnotes = {
    \key a \minor
    \time 3/8
    \trumpetnotessectionABC
%    \time 2/4
%    \trumpetnotessectionTDE
}

trumpetnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \trumpetnotessectionABC
    \trumpetnotessectionABC
%    \time 2/4
%    \trumpetnotessectionTDEmidi
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

violinnotessectionABC = {
    \repeat volta 2 {
        d''8.\ff ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        a''4 d'''8 |
        d'''4. |

        d''8. ees''16 d''16 ees''16 |
        fis''8. g''16 fis''16 g''16 |
        \acciaccatura { gis''16 } a''8 a''8 a''8 |
        a''8. g''16 fis''16 ees''16 |

        a''8. g''16 fis''16 ees''16 |
        fis''8. ees''16 d''16 c''16 |
    }
    \alternative {
        {
            d''4 a'8 |
            d''4 a'8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }

    \repeat volta 2 {
        d'''8. c'''16 bes''16 a''16 |
        d'''8. c'''16 bes''16 a''16 |
        a''16 c'''16 bes''8 bes''8 |
        bes''4. |

        a''8 bes''8 \acciaccatura { d'''16 } c'''16 bes''16 |
        c'''8. bes''16 a''16 g''16-2 |
        g''16 bes''16 a''8 a''8 |
    }
    \alternative {
        {
            a''4 d''8 |
        }
        {
            a''4 r8 |
        }
    }

    \repeat volta 2 {
        fis''8 ( g''8 ) \acciaccatura { bes''16 } a''16 g''16 |
        fis''8. ees''16 d''16 c''16 |
        c''8 c''8 c''8 |
        c'''4. |
        c'''8. bes''16 a''16-3 g''16 |
        a''8. g''16 fis''16 ees''16 |
    }
    \alternative {
        {
            fis''8. ees''16 d''16 c''16 |
            d''4 r8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }
}

violinnotestransition = {
    R2*2 |
}

violinnotessectionDa = {
    < g' g'' >4 b'8-\trill aes'16 g'16 |
    d''8 c''8 ~ c''8 c''8-\trill ( |
    \tuplet 3/2 { b'8 ) c''8 d''8 } \tuplet 3/2 { ees''8 d''8 c''8 } |
    \tuplet 3/2 { d''8 c''8 b'8 } c''8-\trill b'16 aes'16 |

    g'4 b'8-\trill aes'16 g'16 |
    d''8 c''8 ~ c''8 c''8-\trill ( |
    b'16 ) c''16 d''16 ees''16 fis''16 g''16 ees''16 g''16 |
    d''4 g'4 |

    g'8 g'8 b'8-\trill aes'16 g'16 |
    d''8 c''8 ~ c''8 c''8-\trill ( |
    \tuplet 3/2 { b'8 ) c''8 d''8 } \tuplet 3/2 { ees''8 d''8 c''8 } |
    \tuplet 3/2 { d''8 c''8 b'8 } c''8-\trill b'16 aes'16 |

    g'4 b'8-\trill aes'16 g'16 |
    d''8 c''8 ~ c''8 c''8 |
}

violinnotessectionDb = {
     \tuplet 3/2 { c''8-\prall b'8 d''8 } \tuplet 3/2 { c''8 b'8 aes'8 } |
     \tuplet 3/2 { g'8 g'8 aes'8 } \tuplet 3/2 { bes'8 c''8 d''8 } |
}

violinnotessectionE = {
    ees''2 ~ |
    ees''8 ees''8 d''8 ees''8 |
    f''8. d''16 bes'4 ~ |
    bes'8 f''8 ees''8 d''8 |

    c''2 ~ |
    c''8 c''8-\prall b'8 c''8 |
    d''8. b'16 g'8 a''16 g''16 |
    f''16 ees''16 d''16 c''16 d''16 c''16 bes'16-\prall a'16 |
}

violinnotescoda = {
    \tuplet 3/2 { c''8-\prall b'8 d''8 } \tuplet 3/2 { c''8 b'8 a'8 } |
    g'8 r8 g''4 |
}

violinnotessectionTDE = \transpose ees bes, {
    \violinnotestransition
    \violinnotessectionDa
    \violinnotessectionDb
    \violinnotessectionE
    \codaspacer
    \violinnotescoda
}

violinnotessectionTDEmidi = \transpose ees bes, {
    \violinnotestransition
    \violinnotessectionDa
    \violinnotessectionDb
    \violinnotessectionE
    \violinnotessectionDa
    \violinnotessectionDb
    \violinnotessectionE
    \violinnotessectionDa
    \violinnotescoda
}

violinnotes = {
    \key g \minor
    \time 3/8
    \violinnotessectionABC
%    \time 2/4
%    \violinnotessectionTDE
}

violinnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \violinnotessectionABC
    \violinnotessectionABC
%    \time 2/4
%    \violinnotessectionTDEmidi
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
        d''8.\ff ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >8 < fis'' a'' >8 < fis'' a'' >8 |
        < fis'' a'' >8. g''16 fis''16 ees''16 |

        d''8. ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >4 < fis'' a'' d''' >8 |
        < fis'' a'' d''' >4. |

        d''8. ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >8 < fis'' a'' >8 < fis'' a'' >8 |
        < fis'' a'' >8. g''16 fis''16 ees''16 |

        a''8. g''16 fis''16 ees''16 |
        fis''8. ees''16 d''16 c''16 |
    }
    \alternative {
        {
            d''4 \< a'8 |
            d''4 a'8 \! |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }

    \repeat volta 2 {
        d'''8. c'''16 bes''16 a''16 |
        d'''8. c'''16 bes''16 a''16 |
        a''16 c'''16 < g'' bes'' >8 < g'' bes'' >8 |
        < g'' bes'' >4. |

        a''8 bes''8 c'''16 bes''16 |
        c'''8. bes''16 a''16 g''16 |
        g''16 bes''16 < fis'' a'' >8 < fis'' a'' >8 |
    }
    \alternative {
        {
            < fis'' a'' >4 d''8 |
        }
        {
            < fis'' a'' >4 r8 |
        }
    }

    \repeat volta 2 {
        fis''8 g''8 a''16 g''16 |
        fis''8. ees''16 d''16 c''16 |
        c''8 c''8 c''8 |
        \acciaccatura { c''16 } < ees'' c''' >4. |
        c'''8. bes''16 a''16 g''16 |
        a''8. g''16 fis''16 ees''16 |
    }
    \alternative {
        {
            fis''8. ees''16 d''16 c''16 |
            d''4 r8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }
}

pianorightuppernotestransition = {
    R2*2 |
}

pianorightuppernotessectionDa = {
    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
    \tuplet 3/2 { b''8 c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8 b''16 aes''16 |

    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c''8 |
    b'16 c''16 d''16 ees''16 fis''16 g''16 ees''16 g''16 |
    d''4 g''4 |

    g''8 g''8 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
    \tuplet 3/2 { b''8 c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8 b''16 aes''16 |

    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
}

pianorightuppernotessectionDb = {
     \tuplet 3/2 { c'''8 b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 aes''8 } |
     \tuplet 3/2 { g''8 g'8 aes'8 } \tuplet 3/2 { bes'8 c''8 d''8 } |
}

pianorightuppernotessectionE = {
    ees''2 ~ |
    ees''8 ees''8 d''8 ees''8 |
    f''8. d''16 bes'4 ~ |
    bes'8 f''8 ees''8 d''8 |

    c''2 ~ |
    c''8 c''8 b'8 c''8 |
    d''8. b'16 g'8 a''16 g''16 |
    f''16 ees''16 d''16 c''16 d''16 c''16 bes'16 a'16 |
}

pianorightuppernotescoda = {
    \tuplet 3/2 { c'''8 b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 a''8 } |
    < g' g'' >8 r8 < g' g'' >4 |
}

pianorightuppernotessectionTDE = \transpose ees bes, {
    \pianorightuppernotestransition
    \pianorightuppernotessectionDa
    \pianorightuppernotessectionDb
    \pianorightuppernotessectionE
    \codaspacer
    \pianorightuppernotescoda
}

pianorightuppernotessectionTDEmidi = \transpose ees bes, {
    \pianorightuppernotestransition
    \pianorightuppernotessectionDa
    \pianorightuppernotessectionDb
    \pianorightuppernotessectionE
    \pianorightuppernotessectionDa
    \pianorightuppernotessectionDb
    \pianorightuppernotessectionE
    \pianorightuppernotessectionDa
    \pianorightuppernotescoda
}

pianorightuppernotes = {
    \key g \minor
    \time 3/8
    \pianorightuppernotessectionABC
%    \time 2/4
%    \pianorightuppernotessectionTDE
}

pianorightlowernotessectionABC = {
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
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
        }
        {
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }
}

pianorightlowernotestransition = {
    s2 | s2 |
}

pianorightlowernotessectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

pianorightlowernotessectionDb = {
     s2 | s2 |
}

pianorightlowernotessectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

pianorightlowernotescoda = {
    s2 | s2 |
}

pianorightlowernotessectionTDE = \transpose ees bes, {
    \pianorightlowernotestransition
    \pianorightlowernotessectionDa
    \pianorightlowernotessectionDb
    \pianorightlowernotessectionE
    \codaspacer
    \pianorightlowernotescoda
}

pianorightlowernotessectionTDEmidi = \transpose ees bes, {
    \pianorightlowernotestransition
    \pianorightlowernotessectionDa
    \pianorightlowernotessectionDb
    \pianorightlowernotessectionE
    \pianorightlowernotessectionDa
    \pianorightlowernotessectionDb
    \pianorightlowernotessectionE
    \pianorightlowernotessectionDa
    \pianorightlowernotescoda
}

pianorightlowernotes = {
    \pianorightlowernotessectionABC
%    \time 2/4
%    \pianorightlowernotessectionTDE
    \stemDown
}

pianoleftuppernotessectionABC = {
    \repeat volta 2 {
        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |

        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |
        < d fis a >4 < d fis a >8-. |
        d8. ( d'16 a16 fis16 ) |

        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |
        < d fis a >4 a,8-. |

        < d fis a >4 < d fis a >8 |
        < c g a >4 < c g a >8 |
    }
    \alternative {
        { < d fis a >4 a,8-. | < d fis a >4 a,8-. | }
        { < d fis a >4 a,8-. | < d fis a >4 < d fis a >8 | }
    }

    \repeat volta 2 {
        < g bes d' >4 d8-. |
        < fis c' d' >4 d8-. |
        < g bes d' >4 < g bes d' >8-. |
        < g bes d' >4 d8-. |
        < g bes d' >4 d8-. |
        < g bes d' >4 d8-. |
        < fis c' d' >4 < fis c' d' >8-. |
    }
    \alternative {
        { < fis c' d' >4 d8-. | }
        { < fis c' d' >4 d8-. | }
    }

    \repeat volta 2 {
        < d fis a >4 < d fis a >8 |
        < d fis a >4 < d fis a >8 |
        < c ees g >4 < c ees g >8 |
        < c ees g >4 < c ees g >8 |

        < c ees g >4 < c ees g >8 |
        < c ees g >4 < c ees g >8 |
    }
    \alternative {
        {
            < d fis a >4 < c ees g >8 |
            < d fis a >4 a,8-. |
        }
        {
            < d fis a >4 a,8 |
            < d fis a >4 r8 |
        }
    }
}

pianoleftuppernotestransition = {
    g,8 g8 d8 g8 | g,8 g8 d8 g8 |
}

pianoleftuppernotessectionDa = {
    g,8 g8 d8 g8 | c8 c'8 g8 c'8 | g,8 g8 c8 g8 | g,8 g8 f8 aes8 |
    g,8 g8 d8 g8 | c8 c'8 g8 c'8 | f8 aes8 c8 aes8 | g,8 g8 d8 g8 |
    g,8 g8 d8 g8 | c8 c'8 g8 c'8 | g,8 g8 c8 g8 | g,8 g8 f8 aes8 |
    g,8 g8 d8 g8 | c8 c'8 g8 c'8 |
}

pianoleftuppernotessectionDb = {
     f8 aes8 c8 aes8 | g,8 g8 bes,8 d8 |
}

pianoleftuppernotessectionE = {
    ees,8 ees8 bes,8 ees8 | ees,8 ees8 bes,8 ees8 |
    bes,8 d8 bes,8 bes,8 | d8 g,8 a,8 b,8 |
    c8 c'8 ees8 c'8 | c8 c'8 ees8 c'8 | g,8 b,8 g,8 f,8 | f,8 f8 aes,8 f8 |
}

pianoleftuppernotescoda = {
    f8 aes8 c8 aes8 | < g, g >8 r8 < g, g >4-> |
}

pianoleftuppernotessectionTDE = \transpose ees bes, {
    \pianoleftuppernotestransition
    \pianoleftuppernotessectionDa
    \pianoleftuppernotessectionDb
    \pianoleftuppernotessectionE
    \codaspacer
    \pianoleftuppernotescoda
}

pianoleftuppernotessectionTDEmidi = \transpose ees bes, {
    \pianoleftuppernotestransition
    \pianoleftuppernotessectionDa
    \pianoleftuppernotessectionDb
    \pianoleftuppernotessectionE
    \pianoleftuppernotessectionDa
    \pianoleftuppernotessectionDb
    \pianoleftuppernotessectionE
    \pianoleftuppernotessectionDa
    \pianoleftuppernotescoda
}

pianoleftuppernotes = {
    \key g \minor
    \time 3/8
    \pianoleftuppernotessectionABC
%    \time 2/4
%    \pianoleftuppernotessectionTDE
}

pianoleftlowernotessectionABC = {
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
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
        }
        {
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }
}

pianoleftlowernotestransition = {
    s2 | s2 |
}

pianoleftlowernotessectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

pianoleftlowernotessectionDb = {
     s2 | s2 |
}

pianoleftlowernotessectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

pianoleftlowernotescoda = {
    s2 | s2 |
}

pianoleftlowernotessectionTDE = \transpose ees bes, {
    \pianoleftlowernotestransition
    \pianoleftlowernotessectionDa
    \pianoleftlowernotessectionDb
    \pianoleftlowernotessectionE
    \codaspacer
    \pianoleftlowernotescoda
}

pianoleftlowernotessectionTDEmidi = \transpose ees bes, {
    \pianoleftlowernotestransition
    \pianoleftlowernotessectionDa
    \pianoleftlowernotessectionDb
    \pianoleftlowernotessectionE
    \pianoleftlowernotessectionDa
    \pianoleftlowernotessectionDb
    \pianoleftlowernotessectionE
    \pianoleftlowernotessectionDa
    \pianoleftlowernotescoda
}

pianoleftlowernotes = {
    \pianoleftlowernotessectionABC
%    \time 2/4
%    \pianoleftlowernotessectionTDE
    \stemDown
}

pianorightnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \pianorightuppernotessectionABC
    \pianorightuppernotessectionABC
%    \time 2/4
%    \pianorightuppernotessectionTDEmidi
}

pianoleftnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \pianoleftuppernotessectionABC
    \pianoleftuppernotessectionABC
%    \time 2/4
%    \pianoleftuppernotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppernotessectionABC = {
    \repeat volta 2 {
        d''8.\ff ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >8 < fis'' a'' >8 < fis'' a'' >8 |
        < fis'' a'' >8. g''16 fis''16 ees''16 |

        d''8. ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >4 < fis'' d''' >8 |
        < fis'' a'' >4. |

        d''8. ees''16 d''16 ees''16 |
        < d'' fis'' >8. < ees'' g'' >16 < d'' fis'' >16 < ees'' g'' >16 |
        < fis'' a'' >8 < fis'' a'' >8 < fis'' a'' >8 |
        < fis'' a'' >8. g''16 fis''16 ees''16 |

        a''8. g''16 fis''16 ees''16 |
        fis''8. ees''16 d''16 c''16 |
    }
    \alternative {
        {
            d''4 \< a'8 |
            d''4 a'8 \! |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }

    \repeat volta 2 {
        d'''8. c'''16 bes''16 a''16 |
        d'''8. c'''16 bes''16 a''16 |
        a''16 c'''16 < g'' bes'' >8 < g'' bes'' >8 |
        < g'' bes'' >4. |

        a''8 bes''8 c'''16 bes''16 |
        c'''8. bes''16 a''16 g''16 |
        g''16 bes''16 a''8 < fis'' a'' >8 |
    }
    \alternative {
        {
            < fis'' a'' >4 d''8 |
        }
        {
            < fis'' a'' >4 r8 |
        }
    }

    \repeat volta 2 {
        fis''8 g''8 a''16 g''16 |
        fis''8. ees''16 d''16 c''16 |
        c''8 c''8 c''8 |
        \acciaccatura { c''16 } < ees'' c''' >4. |
        c'''8. bes''16 a''16 g''16 |
        a''8. g''16 fis''16 ees''16 |
    }
    \alternative {
        {
            fis''8. ees''16 d''16 c''16 |
            d''4 r8 |
        }
        {
            d''8. d'''16 a''16 fis''16 |
            d''4 r8 |
        }
    }
}

accordionrightuppernotestransition = {
    R2*2 |
}

accordionrightuppernotessectionDa = {
    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
    \tuplet 3/2 { b''8 c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8 b''16 aes''16 |

    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c''8 |
    b'16 c''16 d''16 ees''16 fis''16 g''16 ees''16 g''16 |
    d''4 g''4 |

    g''8 g''8 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
    \tuplet 3/2 { b''8 c'''8 d'''8 } \tuplet 3/2 { ees'''8 d'''8 c'''8 } |
    \tuplet 3/2 { d'''8 c'''8 b''8 } c'''8 b''16 aes''16 |

    g''4 b''8 aes''16 g''16 |
    d'''8 c'''8 ~ c'''8 c'''8 |
}

accordionrightuppernotessectionDb = {
     \tuplet 3/2 { c'''8 b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 aes''8 } |
     \tuplet 3/2 { g''8 g'8 aes'8 } \tuplet 3/2 { bes'8 c''8 d''8 } |
}

accordionrightuppernotessectionE = {
    ees''2 ~ |
    ees''8 ees''8 d''8 ees''8 |
    f''8. d''16 bes'4 ~ |
    bes'8 f''8 ees''8 d''8 |

    c''2 ~ |
    c''8 c''8 b'8 c''8 |
    d''8. b'16 g'8 a''16 g''16 |
    f''16 ees''16 d''16 c''16 d''16 c''16 bes'16 a'16 |
}

accordionrightuppernotescoda = {
    \tuplet 3/2 { c'''8 b''8 d'''8 } \tuplet 3/2 { c'''8 b''8 a''8 } |
    < g' g'' >8 r8 < g' g'' >4 |
}

accordionrightuppernotessectionTDE = \transpose ees bes, {
    \accordionrightuppernotestransition
    \accordionrightuppernotessectionDa
    \accordionrightuppernotessectionDb
    \accordionrightuppernotessectionE
    \codaspacer
    \accordionrightuppernotescoda
}

accordionrightuppernotessectionTDEmidi = \transpose ees bes, {
    \accordionrightuppernotestransition
    \accordionrightuppernotessectionDa
    \accordionrightuppernotessectionDb
    \accordionrightuppernotessectionE
    \accordionrightuppernotessectionDa
    \accordionrightuppernotessectionDb
    \accordionrightuppernotessectionE
    \accordionrightuppernotessectionDa
    \accordionrightuppernotescoda
}

accordionrightuppernotes = {
    \key g \minor
    \time 3/8
    \accordionrightuppernotessectionABC
%    \time 2/4
%    \accordionrightuppernotessectionTDE
}

accordionrightlowernotessectionABC = {
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
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
        }
        {
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }
}

accordionrightlowernotestransition = {
    s2 | s2 |
}

accordionrightlowernotessectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

accordionrightlowernotessectionDb = {
     s2 | s2 |
}

accordionrightlowernotessectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

accordionrightlowernotescoda = {
    s2 | s2 |
}

accordionrightlowernotessectionTDE = \transpose ees bes, {
    \accordionrightlowernotestransition
    \accordionrightlowernotessectionDa
    \accordionrightlowernotessectionDb
    \accordionrightlowernotessectionE
    \codaspacer
    \accordionrightlowernotescoda
}

accordionrightlowernotessectionTDEmidi = \transpose ees bes, {
    \accordionrightlowernotestransition
    \accordionrightlowernotessectionDa
    \accordionrightlowernotessectionDb
    \accordionrightlowernotessectionE
    \accordionrightlowernotessectionDa
    \accordionrightlowernotessectionDb
    \accordionrightlowernotessectionE
    \accordionrightlowernotessectionDa
    \accordionrightlowernotescoda
}

accordionrightlowernotes = {
    \accordionrightlowernotessectionABC
%    \time 2/4
%    \accordionrightlowernotessectionTDE
    \stemDown
}

accordionleftuppernotessectionABC = {
    \repeat volta 2 {
        < d, d' >4^"M" a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |

        < d, d' >4^"M" a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4 a,8-. |
        < d, d' >4^"M" a,8-. |
        < a, a >4^"7" a,8-. |
    }
    \alternative {
        { < d, d' >4 a,8-. | < d, d' >4 a,8-. | }
        { < d, d' >4 a,8-. | < d, d' >4 < d, d' >8 | }
    }

    \repeat volta 2 {
        < g, g >4^"m" d,8-. |
        < a d' >4^"7" d,8-. |
        < g, g >4^"m" d,8-. |
        < g, g >4 d,8-. |

        < g, g >4 d,8-. |
        < fis, d' >4^"7"_- d,8-. |
        c,8-4^"B.S." d,8-3 < d, d' >8^"7" |
    }
    \alternative {
        { < d, d' >4^"7" d,8-. | }
        { < d, d' >4^"7" d,8-. | }
    }

    \repeat volta 2 {
        < d, d' >4^"M" < d, d' >8-. |
        < d, d' >4 < d, d' >8-. |
        < c c' >4^"m" < c c' >8-. |
        < c c' >4 < c c' >8-. |

        < c c' >4^"m" < c c' >8-. |
        < c c' >4 c8-. |
    }
    \alternative {
        { < d, d' >4^"M" a,8-. | < d, d' >4 a,8-. | }
        { < d, d' >4^"M" a,8-. | < d, d' >4 r8 | }
    }
}

accordionleftuppernotestransition = {
    g,8 g8^"M" d8 g8 | g,8 g8 d8 g8 |
}

accordionleftuppernotessectionDa = {
    g,8 g'8^"M" d8 g'8 | c8 c'8^"m" g8 c'8 |
    g,8 g'8^"M" c8^"m" g'8 | g,8 g8 f8^"m" aes8 |
    g,8 g'8^"M" d8 g'8 | c8 c'8^"m" g8 c'8 |
    f8^"m" aes8 c8 aes8 | g,8 g'8^"M" d8 g'8 |
    g,8 g'8^"M" d8 g'8 | c8 c'8^"m" g8 c'8 |
    g,8 g'8^"M" c8^"m" g'8 | g,8 g8^"M" f8^"m" aes8 |
    g,8 g'8^"M" d8 g'8 | c8 c'8^"m" g8 c'8 |
}

accordionleftuppernotessectionDb = {
     f8^"m" aes8 c8 aes8 | g,8 g8^"M" bes,8^"M" d8 |
}

accordionleftuppernotessectionE = {
    ees,8 ees8^"M" bes,8 ees8 | ees,8 ees8 bes,8 ees8 |
    bes,8^"M" d8 bes,8 bes,8 | d8 g,8^"M" a,8 b,8 |
    c8^"m" c'8 ees8 c'8 | c8 c'8 ees8 c'8 |
    g,8^"M" b,8 g,8 f,8 | f,8^"m" f8 aes,8 f8 |
}

accordionleftuppernotescoda = {
    f8^"m" aes8 c8 aes8 | < g, g >8^"M" r8 < g, g >4-> |
}

accordionleftuppernotessectionTDE = \transpose ees bes, {
    \accordionleftuppernotestransition
    \accordionleftuppernotessectionDa
    \accordionleftuppernotessectionDb
    \accordionleftuppernotessectionE
    \codaspacer
    \accordionleftuppernotescoda
}

accordionleftuppernotessectionTDEmidi = \transpose ees bes, {
    \accordionleftuppernotestransition
    \accordionleftuppernotessectionDa
    \accordionleftuppernotessectionDb
    \accordionleftuppernotessectionE
    \accordionleftuppernotessectionDa
    \accordionleftuppernotessectionDb
    \accordionleftuppernotessectionE
    \accordionleftuppernotessectionDa
    \accordionleftuppernotescoda
}

accordionleftuppernotes = {
    \key g \minor
    \time 3/8
    \accordionleftuppernotessectionABC
%    \time 2/4
%    \accordionleftuppernotessectionTDE
}

accordionleftlowernotessectionABC = {
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
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
        }
        {
            s4. |
        }
    }

    \repeat volta 2 {
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
        s4. |
    }
    \alternative {
        {
            s4. |
            s4. |
        }
        {
            s4. |
            s4. |
        }
    }
}

accordionleftlowernotestransition = {
    s2 | s2 |
}

accordionleftlowernotessectionDa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

accordionleftlowernotessectionDb = {
     s2 | s2 |
}

accordionleftlowernotessectionE = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

accordionleftlowernotescoda = {
    s2 | s2 |
}

accordionleftlowernotessectionTDE = \transpose ees bes, {
    \accordionleftlowernotestransition
    \accordionleftlowernotessectionDa
    \accordionleftlowernotessectionDb
    \accordionleftlowernotessectionE
    \codaspacer
    \accordionleftlowernotescoda
}

accordionleftlowernotessectionTDEmidi = \transpose ees bes, {
    \accordionleftlowernotestransition
    \accordionleftlowernotessectionDa
    \accordionleftlowernotessectionDb
    \accordionleftlowernotessectionE
    \accordionleftlowernotessectionDa
    \accordionleftlowernotessectionDb
    \accordionleftlowernotessectionE
    \accordionleftlowernotessectionDa
    \accordionleftlowernotescoda
}

accordionleftlowernotes = {
    \accordionleftlowernotessectionABC
%    \time 2/4
%    \accordionleftlowernotessectionTDE
}

accordionrightnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \accordionrightuppernotessectionABC
    \accordionrightuppernotessectionABC
%    \time 2/4
%    \accordionrightuppernotessectionTDEmidi
}

accordionleftnotesmidi = {
    \time 3/8
    \preintro
    \time 3/8
    \accordionleftuppernotessectionABC
    \accordionleftuppernotessectionABC
%    \time 2/4
%    \accordionleftuppernotessectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionABC = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 14 { << sna8\pp hhc >> r8 \snareruffeight | }
    }
    \alternative {
        { \repeat percent 2 { << sna8 hhc >> r8 \snareruffeight | } }
        { \repeat percent 2 { << sna8 hhc >> r8 \snareruffeight | } }
    }
    \repeat volta 2 {
        \repeat percent 7 { << sna8 hhc >> r8 \snareruffeight | }
    }
    \alternative {
        { << sna8 hhc >> r8 \snareruffeight | }
        { << sna8 hhc >> r8 \snareruffeight | }
    }
    \repeat volta 2 {
        \repeat percent 6 { << sna8 hhc >> r8 \snareruffeight | }
    }
    \alternative {
        { \repeat percent 2 { << sna8 hhc >> r8 \snareruffeight | } }
        { << sna8 hhc >> r8 \snareruffeight | << sna8\p hhc >> r8 cymc8 |}
    }
}

drumshightransition = \drummode {
    hhc8\pp sna8 hhc8 sna8 | hhc8 sna8 hhc8 cymc8->\f |
}

drumshighsectionDa = \drummode {
    \repeat percent 2 {
        sna8\p sna16 sna16 sna8 sna8 | sna16 sna16 sna16 sna16 sna8 sna8 |
    }
    \repeat percent 3 {
        sna8 sna16 sna16 sna8 sna8 | sna16 sna16 sna16 sna16 sna8 sna8 |
    }
    \repeat percent 2 {
        sna8 sna16 sna16 sna8 sna8 | sna16 sna16 sna16 sna16 sna8 sna8 |
    }
}

drumshighsectionDb = \drummode {
     \snarerolltwohalves |
}

drumshighsectionE = \drummode {
    < cymc wbh >8\f^"Woodblock" wbh16 wbh16 wbh8 wbh8 |
    wbh16 wbh16 wbh16 wbh16 wbh8 wbh8 |
    \repeat unfold 3 {
        wbh8 wbh16 wbh16 wbh8 wbh8 |
        wbh16 wbh16 wbh16 wbh16 wbh8 wbh8 |
    }
}

drumshighcoda = \drummode {
    \snarerollhalf | cymc8-> r8 r4 |
}

drumshighsectionTDE = \drummode {
    \drumshightransition
    \drumshighsectionDa
    \drumshighsectionDb
    \drumshighsectionE
    \codaspacer
    \drumshighcoda
}

drumshighsectionTDEmidi = {
    \drumshightransition
    \drumshighsectionDa
    \drumshighsectionDb
    \drumshighsectionE
    \drumshighsectionDa
    \drumshighsectionDb
    \drumshighsectionE
    \drumshighsectionDa
    \drumshighcoda
}

drumshigh = \drummode {
    \stemUp
    \drumshighsectionABC
%    \time 2/4
%    \drumshighsectionTDE
}

drumshighmidi = \drummode {
    \time 3/8
    \preintro
    \time 3/8
    \drumshighsectionABC
    \drumshighsectionABC
%    \time 2/4
%    \drumshighsectionTDEmidi
}

drumslowsectionABC = \drummode {
    \hideDynamics
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 14 { bda8 s8 bda8 | }
    }
    \alternative {
        { \repeat percent 2 { bda8 s8 bda8 | } }
        { \repeat percent 2 { bda8 s8 bda8 | } }
    }
    \repeat volta 2 {
        \repeat percent 7 { bda8 s8 bda8 | }
    }
    \alternative {
        { bda8 s8 bda8 | }
        { bda8 s8 bda8 | }
    }
    \repeat volta 2 {
        \repeat percent 6 { bda8 s8 bda8 | }
    }
    \alternative {
        { \repeat percent 2 { bda8 s8 bda8 | } }
        { bda8 s8 bda8 | bda8 s4 }
    }
}

drumslowtransition = \drummode {
    bda8 s8 bda8 s8 | bda8 s8 bda8 s8 |
}

drumslowsectionDa = \drummode {
    \repeat percent 2 {
        bda4 bda4 | bda4 bda4 | 
    }
    \repeat percent 3 {
        bda4 bda4 | bda4 bda4 | 
    }
    \repeat percent 2 {
        bda4 bda4 | bda4 bda4 | 
    }
}

drumslowsectionDb = \drummode {
    bda4 bda4 | bda4 bda4 | 
}

drumslowsectionE = \drummode {
    \repeat unfold 4 { bda4 bda4 | bda4 bda4 | }
}

drumslowcoda = \drummode {
    bda4 bda4 | bda4 s4 |
}

drumslowsectionTDE = \drummode {
    \drumslowtransition
    \drumslowsectionDa
    \drumslowsectionDb
    \drumslowsectionE
    \codaspacer
    \drumslowcoda
}

drumslowsectionTDEmidi = {
    \drumslowtransition
    \drumslowsectionDa
    \drumslowsectionDb
    \drumslowsectionE
    \drumslowsectionDa
    \drumslowsectionDb
    \drumslowsectionE
    \drumslowsectionDa
    \drumslowcoda
}

drumslow = \drummode {
    \stemDown
    \drumslowsectionABC
%    \time 2/4
%    \drumslowsectionTDE
}

drumslowmidi = \drummode {
    \time 3/8
    \preintro
    \time 3/8
    \drumslowsectionABC
    \drumslowsectionABC
%    \time 2/4
%    \drumslowsectionTDEmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d4. | d4. | d4. | d4. |
}

previewnotes = {
    \key g \minor
    \time 3/8
    \markA \positionA
    \bar ".|:"
    d''8.\ff ees''16 d''16 ees''16 |
    fis''8. g''16 fis''16 g''16 |
    \acciaccatura { gis''16 } a''8 a''8 a''8 |
    a''8. g''16 fis''16 ees''16 |
}

\version "2.18.2"

bandmextraintro =  {
    \tempo \tempostring
    s2 | \breakINone s2 | \breakIN
}

restsextraintro =  { r2 | r2 | }

bandmsectiona =  {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \bar ".|:-||"
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft
    }
    \alternative { { s2 | \breakBsxt } { s2 | } }
    \markDSsimple \positionDS
    \bar ".|:-||"
    \breakB
}

ktorestsintro = { }

ktobandm = {
    \repeat volta 2 {
        s2 | \breakCone \markC \positionC
        s2 | \breakCtwo s2 | \breakCtre s2 |
    }
    \breakC
    \repeat volta 2 {
        \markD \positionD
        \grace { s8. } s2 | \breakDone s2 | \breakDtwo
        s2 | \breakDtre s2 | \breakDfor
        \grace { s8. } s2 | \breakDfiv s2 | \breakDsix
        s2 | \breakDsev s2 |
        \breakD
        \bar "||"
        \markE \positionE
        s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
        s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev s2 |
    }
    \breakE
}

sidsbandmintro =  { \markF \positionF s1 | \breakFone s1 | \breakF \bar ".|:-||" }

sidsbandmsectiona =  {
    \markG \positionG
    \repeat volta 2 {
        s1 | \breakGone s1 | \breakGtwo s1 | \breakGtre s1 | \breakGfor
        s1 | \breakGfiv s1 | \breakGsix s1 | \breakGsev
    }
    \alternative { { s1 | \breakGeit } { \grace { s16 } s1 | } }
    \bar ".|:-||"
    \breakG
}

sidsbandmsectionb =  {
    \markH \positionH
    \repeat volta 2 {
        s1 | \breakHone s1 | \breakHtwo s1 | \breakHtre s1 | \breakHfor
        s1 | \breakHfiv s1 | \breakHsix s1 | \breakHsev
    }
    \alternative { { s1 | \breakHeit } { \grace { s16 } s1 | } }
    \bar "||"
    \breakH
}

sidsbandmsectionc =  {
    \markJ \positionJ
    s1 | \breakJone s1 | \breakJtwo s1 | \breakJtre s1 | \breakJfor
    s1 | \breakJfiv s1 | \breakJsix s1 | \breakJsev s1 | \breakJeit
    \bar "||"

    \markJII \positionJII
    s1 | \breakJnin s1 | \breakJten s1 | \breakJelv s1 | \breakJtwl
    s1 | \breakJtht \grace { s16 } s1 | \breakJfrt
    s1 | \breakJfft \markToG \positionToG s1 | \breakJsxt
    \bar "||"

    \markJIII \positionJIII
    s1 | \breakJsvt s1 | \breakJett s1 | \breakJnnt s1 | \breakJtwy
    s1 | \breakJtto s1 | \breakJttw s1 | \breakJttr
    s1 | \breakJtfr s1 |
}

bandmNV =  {
    \time 2/4
    \bandmextraintro
    \bandmsectiona
    \bandmsectionb

    \ktobandm

    \time 4/4
    \sidsbandmintro
    \sidsbandmsectiona
    \sidsbandmsectionb
    \sidsbandmsectionc
    \bar "|."
}

bandm = { \bandmNV }

leadsheetbandmNV =  { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomeextraintro =  { s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronomesectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

ktometronome = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | }
    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 |
        \grace { s8. } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

sidsmetronomeextra =  { s1 | }

sidsmetronomeintro =  { s1 | s1 |
}

sidsmetronomesectiona =  {
    \repeat volta 2 { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }
    \alternative { { s1 | } { \grace { s16 } s1 | } }
}

sidsmetronomesectionb =  {
    \repeat volta 2 { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }
    \alternative { { s1 | } { \grace { s16 } s1 | } }
}

sidsmetronomesectionc =  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    \tempo 4 = 90
    s1 | s1 |
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 80
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \tempo 4 = 110
    \ktometronome

    \time 4/4
    \tempo 4 = 110
    \sidsmetronomeextra
    \sidsmetronomeintro
    \sidsmetronomesectiona
    \sidsmetronomesectionb
    \sidsmetronomesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro =  { r2 | r2 | }

melodysectiona =  {
    \repeat volta 2 {
        a'16\f d''16 f''16 d''16 d''16 f''16 a''16 f''16 |
        g''8 g''16 f''16 g''16 a''16 f''8 |
        f''16 a''16 c'''16 a''16 f''16 a''16 c'''16 f''16 |
        g''8 g''16 f''16 g''16 a''16 f''8 |

        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
        d''4 d''16 g''16 f''8 |
        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

melodysectionb =  {
    \repeat volta 2 {
        d''4. c''16 bes'16 |
        a'4. a'8 |
        d''16 a'16 d''16 a'16 d''8 c''16 bes'16 |
        a'4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8 c''16 bes'16 |
        a'4 r8 a''8 |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8 g''8 |
        g''16 d''16 d''16 g''16 g''16 d''16 d''16 g''16 |
        g''16 d''16 d''16 g''16 g''8 f''8 |

        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
        d''4 d''16 bes''16 a''16 g''16 |
        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
    }
    \alternative { { d''4. a''8 | } { d''4. r8 | } }
}

ktomelody = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    }
    \repeat volta 2 {
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8\mf a''4 a''8 |
        g''8 g''8 a''8. g''16 |
        f''8 e''8 f''8 g''8 |
        a''8 r8 a''4 |
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 a''4 a''8 |
        g''8 g''8 a''8. g''16 |
        f''8 f''8 e''8 e''8 |
        d''8 r8 d''8 r8 |

        e''8 a'8 a''8. g''16 |
        f''8 e''16 f''16 g''16 f''16 e''16 d''16 |
        cis''8 d''16 e''16 a'8 b'16 cis''16 |
        d''16 cis''16 d''16 e''16 f''8 d''8 |
        e''8 a'8 a''8. g''16 |
        f''8 e''16 f''16 g''16 f''16 e''16 d''16 |
        cis''8 d''16 e''16 a'8 b'16 cis''16 |
        d''8 r8 d''8-> r8 |
    }
}

sidsmelodyintro =  { r1 | r2 r4 r16 g'16 c''16 ees''16 | }

sidsmelodysectiona =  {
    \repeat volta 2 {
        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''4 \afterGrace f''8 ( aes''16 ) ges''8 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
        fis''8 g''8 ~ g''2 r16 g'16 c''16 ees''16 |

        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''16 f''16 g''16 a''16 bes''16 a''8\prall ges''16 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2. r16 g'16 c''16 ees''16 | }
        { \grace { s16 } c''2 r8 bes'8 ees''8 f''8 | }
    }
}

sidsmelodysectionb = {
    \repeat volta 2 {
        g''4 f''8 \trill f''16 ees''16 ees''8 f''8 ees''8 \trill ees''16 d''16 |
        d''8 ees''8 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
        r8 bes'8 c''8 d''8 ees''16 d''16 ees''8 e''16 f''16 d''8 |
        ees''4 ~ ees''16 g''16 aes''16 a''16 a''16\glissando bes''4.. |

        g''4. f''16 ees''16 f''4 ees''16 f''16 ees''16 d''16 |
        ees''4 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
        ees''8. d''16 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2 r8 bes'8 ees''8 f''8 | } { \grace { s16 } c''2 r8 bes'8 c''8 d''8 | }
    }
}

sidsmelodysectionc = {
    ees''4 f''4 g''4 aes''4 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 a''8 c'''8 bes''8 g''16 bes''16 aes''16 g''16 aes''8 |
    g''4. f''8 g''16 aes''16 g''16 f''16 ees''4 |
 
    bes'8 ees''8 ees''8 f''8 f''8 ges''8 f''8 ees''8 |
    f''16 ges''16 a''16 bes''16 a''16 bes''16 a''16 ges''16 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2 r8 bes'8 c''8 d''8 |

    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 aes''8\prall g''16 aes''16 g''16 f''16 ees''4 |

    \tuplet 3/2 { bes'8 ees''8 f''8 } \tuplet 3/2 { ges''8 f''8 ees''8 } \tuplet 3/2 { f''8 ges''8 a''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } |
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2. r16 g'16 c''16 ees''16 |
 
    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 g''16 aes''16 g''16 aes''16 g''16 f''16 ees''4 |

    bes'8 ees''8 r8 ees''8 f''8 ges''8 f''8 ees''8 | 
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 d''8 d''8 \tuplet 3/2 { a'16 bes'16 b'16 } \tuplet 6/4 { c''16 des''16 d''16 ees''16 e''16 f''16 }
    \tuplet 6/4 { ges''16 g''16 aes''16 a''16 bes''16 b''16 } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

melody = {
    \time 2/4
    \key d \minor
    \melodyextraintro
    \melodysectiona
    \melodysectionb

    \ktomelody

    \time 4/4
    \key c \minor
    \sidsmelodyintro
    \sidsmelodysectiona
    \sidsmelodysectionb
    \sidsmelodysectionc
}

melodymidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb

    \ktomelody

    \time 4/4
    \key c \minor
    \sidsmetronomeextra
    \sidsmelodyintro
    \sidsmelodysectiona
    \sidsmelodysectionb
    \sidsmelodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro =  { r2 | r2 | }

basslinesectiona =  {
    \repeat volta 2 {
        d4 a,4 | g,4 d4 | f4 c4 | e4 c4 |
        cis4 a,4 | d4 a,4 | cis4 a,4 |
    }
    \alternative { { d4-> d4-> | } { d4-> d4-> | } }
}

basslinesectionb =  {
    \repeat volta 2 {
        d4. a16 d'16 ~ | d'4. a8 | d4. a16 d'16 ~ | d'4. a8 |
        d4. a16 d'16 ~ | d'4. a8 | d4. g16 d'16 ~ | d'4. a8 |
        f4 c4 | f4 g4 | c4 g4 | c4 f4 |
        cis4 a,4 | d4 a,4 | cis4 a,4 |
    }
    \alternative { { d8 d'8 a8 f8 | } { d8 r8 d'8 r8 | } }
}

ktobassline = {
    \repeat volta 2 {
        d8\3\ff [ f8\3 ] d8\3 [ a8\2 ] |
        bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
        d8\3 [ a8\2 ] a,8\4 [ f8\3 ] |
        d8\3 r8 d4\3-> |
    }

    \repeat volta 2 {
        \grace { s8. } d8\3 [ f8\3 ] d8\3 [ a8\2 ] |
        bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
        d8\3 [ a8\2 ] a,8\4 [ f8\3 ] |
        d8\3 r8 d4\3-> |
        \grace { s8. } d8\3 [ f8\3 ] d8\3 [ a8\2 ] |
        bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
        d8\3 [ d8\3 ] a,8\4 [ a,8\4 ] |
        d8\3 r8 d8\3 r8 |

        a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
        d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
        a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
        d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
        a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
        d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
        a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
        d8\3 r8 d8\3-> r8 |
    }
}


sidsbassintro =  {
    c4\3 g,4\4 c8\3 g,8\4 a,8\4 b,8\3 |
    c4\3 g,4\4 c8\3 g,8\4 a,8\4 b,8\3 |
}

sidsbasssectiona =  {
    \repeat volta 2 {
        c4\3 g,4\4 c8\3 d8\3 ees8\2 e8\2 |
        f4\2 c4\3 f4\2 c4\3 |
        g4\2 aes4\2 a4\2 b4\1 |
        c'4\1 g4\2 c8\3 g,8\4 a,8\4 b,8\3 |
        c4\3 g,4\4 c8\3 d8\3 ees8\2 e8\2 |
        f4\2 c4\3 f4\2 c4\3 |
%        < g,\4 g\2 >4 < aes,\4 aes\2 >4 < a,\4 a\2 >4 < b,\3 b\1>4 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    }
    \alternative {
        { c4 g,4 c8 g,8 a,8\4 b,8 | } { \grace { s16 } c'4 g4\2 c8\4 bes,8\4 c8\4 d8\3 | }
    }
}

sidsbasssectionb =  {
% measure 12
    \repeat volta 2 {
        ees4\3 bes,4\4 d4\3 bes,4\4 |
        ees4\3 bes,4\4 d4\3 bes,4\4 |
        ees4\3 bes,4\4 ees4\3 bes,4\4 |
        ees4\3 d4\3 c8\4 bes,8\4 c8\4 d8\3 |
        ees4\3 bes,4\4 d4\3 bes,4\4 |
        ees4\3 bes,4\4 d4\3 bes,4\4 |
        g4\2 aes4\2 a4\2 b4\1 |
    }
    \alternative {
        {
            c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
        }
        {
            \grace { s16 } c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
        }
    }
}

sidsbasssectionc =  {
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees8\3 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 f4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
    c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees8\3 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 f4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
    c'4\1 g4\2 c8\3 g,8\4 a,8\4 b,8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees8\3 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 f4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
    c'4\1-\fermata r4 g4\2-\fermata r4 |
    c4\3-\fermata r4 r2
}

bassline = {
    \time 2/4
    \key d \minor
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb

    \ktobassline

    \key c \minor
    \time 4/4
    \sidsbassintro
    \sidsbasssectiona
    \sidsbasssectionb
    \sidsbasssectionc
}

basslinemidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb

    \ktobassline

    \key c \minor
    \time 4/4
    \sidsbassintro
    \sidsbasssectiona
    \sidsbasssectionb
    \sidsbasssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro =  { s2 | s2 | }

guitarsectiona =  {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

guitarsectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

ktoguitarnotes =  {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 |
        \grace { s8. } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

guitarnotes =  {
    \time 2/4
    \key d \minor
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb

    \ktoguitarnotes

    \key c \minor
    \time 4/4
}

guitarnotesmidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb

    \ktoguitarnotes

    \key c \minor
    \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro =  { s2 | s2 | }

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min | g2:min | f2 | c2:7 | a2:7 | d2:min | a2:7 |
    }
    \alternative {
        { d2:min | }
        {
            \chordChangesOff
            d2:min |
            \chordChangesOn
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2:min |
        \chordChangesOn
        d2:min | d2:min | d2:min |
        d2:min | d2:min | d4:min g4:min | d2:min |
        f2 | f4 g4:min | c2:7 | c4:7 f4 |
        a2:7 | d2:min | a2:7 |
    }
    \alternative {
        { d2:min | }
        {
            \chordChangesOff
            d2:min |
            \chordChangesOn
        }
    }
}

ktochordletters = \chordmode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        \chordChangesOff
        \grace { d8.:min }
        \chordChangesOn
        d2:min | g4:min a4:7 | d2:min | d2:min |
        \grace { d8.:min } d2:min | g4:min a4:7 | d4:min a4:7 | d2:min |

        a2:7 | d2:min | a2:7 | d2:min | a2:7 | d2:min | a2:7 | d2:min |
    }
}

sidschordlettersintro = \chordmode { s1 | s1 | }

sidschordletterssectiona = \chordmode {
    \repeat volta 2 {
        c1:min | f1:min | g1 | c1:min | c1:min | f1:min | g1 |
    }
    \alternative {
        { c1:min | }
        {
            \chordChangesOff
            \grace { s16 } 
            c2:min
            \chordChangesOn
            c8:min bes8 bes4 |
        }
    }
}

sidschordletterssectionb = \chordmode {
    \repeat volta 2 {
        ees2 bes2 | ees2 bes2 | ees1 | ees1 | ees2 bes2 | ees2 bes2 | g1 |
    }
    \alternative { { c2:min c8:min bes8 bes4 | } { \chordChangesOff \grace { s16 } \chordChangesOn c2:min c8:min bes8 bes4 | } }
}

sidschordletterssectionc = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min c8:min bes8 bes4 |
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c1:min |
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min g2 | c1:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersextraintro
    \chordletterssectiona
    \chordletterssectionb

    \ktochordletters

    \time 4/4
    \sidschordlettersintro
    \sidschordletterssectiona
    \sidschordletterssectionb
    \sidschordletterssectionc
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

fluteextraintro =  { r2 | r2 | }

flutesectiona =  \transpose c bes {
    \repeat volta 2 {
        g'8 b'8 b'8 e''16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 d''16 |
        b'8 g'16 d''16 b'8 g'16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 g'16 a'16 b'16 c''16 b'16 g'16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        { g'16 e'16 b'16 a'16 g'8 r8 | }
        { g'16 e'16 b'16 a'16 g'8 r8 | }
    }
}

flutesectionb =  \transpose c bes {
    \repeat volta 2 {
        g'16 e'16 b'16 a'16 g'8 a'8 |
        g'16 e'16 g'16 e'16 g'8 r8 |
        g'8 g'8 g'16 e'16 d''16 c''16 |
        g'16 ( e'16 ) e'16 ( fis'16 ) g'8 r8 |

        g'16 b'16 g'16 b'16 g'8 r8 |
        r16 b'16 b'16 b'16 b'8 r8 |
        g'8 g'8 a'16 c''16 b'16 a'16 |
        g'16 fis'16 e'16 fis'16 g'8 d''8-^ |

        b'4 d''8 d''16 e''16 |
        d''4 d''8-\trill ( c''8 ) |
        c''8 r8 c''8 r8 |
        c''4 c''8 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'16 e'16 g'16 a'16 b'16 a'16 b'16 c''16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        { g'8 e'8-^ g'8-^ b'8-^ | } { g'8 r8 g'8 r8 | }
    }
}

ktoflutemelody =  \transpose c' bes {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    }
    \repeat volta 2 {
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8\ff b''4 b''8 |
        a''8 a''8 b''8. a''16 |
        g''8 fis''8 g''8 a''8 |
        b''8 r8 b''4-^ |
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 b''4 b''8 |
        a''8 a''8 b''8. a''16 |
        g''8 g''8 fis''8 fis''8 |
        e''8 r8 e''8 r8 |

        fis''8 fis''8 b''8. a''16 |
        g''8 fis''16 g''16 a''16 g''16 fis''16 e''16 |
        dis''8 e''16 fis''16 b'8 cis''16 dis''16 |
        e''16 ( dis''16 ) e''16 fis''16 g''8 e''8 |
        fis''8 fis''8 b''8. a''16 |
        g''8 fis''16 g''16 a''16 ( g''16 ) fis''16 e''16 |
        dis''8 e''16 fis''16 b'8 cis''16 dis''16 |
        e''8 r8 e''8-^ r8 |
    }
}

ktoflutetenor =  \transpose c' bes {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    }
    \repeat volta 2 {
        \grace { s8. } e''8 g''4 g''8 |
        fis''8 e''8 dis''16 fis''16 b'16 dis''16 |
        e''8 dis''8 e''8 fis''8 |
        g''8 r8 g''4-^ |
        \grace { s8. } e''8 g''4 g''8 |
        fis''8 e''8 dis''16 fis''16 b'16 dis''16 |
        e''8 b'8 a'8 a'8 |
        g'8 r8 g'8 r8 |

        dis''8 dis''8 dis''16 fis''16 b'16 dis''16 |
        e''8 b'8 e''8 r8 |
        fis'8 g'16 a'16 dis'8 e'16 fis'16 |
        g'16 fis'16 g'16 b'16 e''16 ( b'16 ) b'16 ( g'16 ) |
        b'8 dis''8 dis''16 fis''16 b'16 dis''16 |
        e''8 b'8 e''8 r8 |
        fis'8 g'16 a'16 dis'8 e'16 fis'16 |
        g'8 r8 g'8-^ r8 |
    }
}

ktoflute =  {
    << \ktoflutemelody \\ \ktoflutetenor >>
}

sidsfluteintro =  \transpose c c' {
    r1 |
    r1 |
}

sidsflutesectiona =  \transpose c c' {
    \repeat volta 2 {
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4 ( |
        c'8 ) g8 r8 g8 c'8 g16 g16 g8 g8 |
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8 ( c'8 ) g8 a8 b8 | }
        { \grace { s16 } c'8 g8 r8 g8 ( c'8 ) bes8 c'8 d'8 | }
    }
}

sidsflutesectionb =  \transpose c c' {
    \repeat volta 2 {
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 ( |
        ees'8 ) bes16 bes16 bes8 bes8 ees'8 bes16 bes16 bes8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8 ( c'8 ) bes8 c'8 d'8 | }
        { \grace { s16 } c'8 g8 r8 g8 ( c'8 ) bes8 c'8 d'8 | }
    }
}

sidsflutesectionc =  \transpose c c' {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 ( |
    fis'8 ) g'8 ees'8 bes8 g8 bes8 r8 bes8 | bes4 a8 bes8 bes4 aes16 g16 aes8 | g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 | g4 aes4 a4 b4 |
    c'8 g8 r8 g8 ( c'8 ) bes8 c'8 d'8 |
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 ( |
    fis'8 ) g'8 ees'8 bes8 g8 bes8 r8 bes8 | bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 | ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 ( c'8 ) g8 a8 b8 |
    
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 ( | fis'8 ) g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'4-\fermata r4 g'4-\fermata r4 | c''4-\fermata r4 r2 |
}

flutenotes =  {
    \time 2/4
    \key d \minor
    \fluteextraintro
    \flutesectiona
    \flutesectionb

    \ktoflute

    \time 4/4
    \key c \minor
    \sidsfluteintro
    \sidsflutesectiona
    \sidsflutesectionb
    \sidsflutesectionc
}

flutenotesmidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \fluteextraintro
    \flutesectiona
    \flutesectionb
    \flutesectiona
    \flutesectionb

    \ktoflute

    \time 4/4
    \key c \minor
    \sidsfluteintro
    \sidsflutesectiona
    \sidsflutesectionb
    \sidsflutesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  { r2 | r2 | }

clarinetsectiona =  \transpose bes c' {
    \repeat volta 2 {
        a'16\ff ( d''16 ) f''16 d''16 d''16 ( f''16 ) a''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |
        f''16 ( a''16 ) c'''16 a''16 f''16 ( a''16 ) c'''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( g''16 f''8 ) |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a'8 | } }
}

clarinetsectionb =  \transpose bes c' {
    \repeat volta 2 {
        d''4. c''16 bes'16 |
        a'4. a'8 |
        d''16 ( a'16 ) d''16 ( a'16 ) d''8 c''16 bes'16 |
        a'4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8 c''16 ( bes'16 ) |
        a'4 r8 a''8-^ |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8-\trill ( g''8 ) |
        g''16 ( d''16 ) d''16 ( g''16 ) g''16 ( d''16 ) d''16 ( g''16 ) |
        g''16 ( d''16 ) d''16 ( g''16 ) g''8-\trill ( f''8 ) |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 bes''16 a''16 g''16 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative {
        {
            d''8 d''8-^ f''8-^ a''8-^ |
        }
        {
            d''8 r8 d''8 r8 |
        }
    }
}

ktoclarinet = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 
    \repeat volta 2 {
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8\ff b''4 b''8 |
        a''8 [ a''8 ] b''8. [ a''16 ] |
        g''8 [ fis''8 ] g''8 [ a''8 ] |
        b''8 r8 b''4-^ |
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 b''4 b''8 |
        a''8 [ a''8 ] b''8. [ a''16 ] |
        g''8 [ g''8 ] fis''8 [ fis''8 ] |
        e''8 r8 e''8 r8 |

        fis''8 [ fis''8 ] b''8. [ a''16 ] |
        g''8 [ fis''16 g''16 ] a''16 [ g''16 fis''16 e''16 ] |
        dis''8 [ e''16 fis''16 ]   b'8 [ cis''16 dis''16 ] |
        e''16 [ ( dis''16 ) e''16 fis''16 ] g''8 [ e''8 ] |
        fis''8 [ fis''8 ] b''8. [ a''16 ] |
        g''8 [ fis''16 g''16 ] a''16 [ ( g''16 ) fis''16 e''16 ] |
        dis''8 [ e''16 fis''16 ] b'8 [ cis''16 dis''16 ] |
        e''8 r8 e''8-^ r8 |
    }
}

sidsclarinetintro =  \transpose bes c' {
    r1 |
    r2 r4 r16 g'16 c''16 ees''16 |
}

sidsclarinetsectiona =  \transpose bes c' {
    \repeat volta 2 {
        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''4 \afterGrace f''8 ( aes''16 ) ges''8 f''4. ees''8 |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
        fis''8 g''8 ~ g''2 r16 g'16 c''16 ees''16 |

        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''16 f''16 g''16 a''16 bes''16 a''8\prall ges''16 f''4. ees''8 |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2. r16 g'16 c''16 ees''16 | } { \grace { s16 } c''2 r8 bes'8 ees''8 f''8 | }
    }
}

sidsclarinetsectionb =  \transpose bes c' {
    \repeat volta 2 {
        g''4 f''8 \trill f''16 ees''16 ees''8 f''8 ees''8 \trill ees''16 d''16 |
        d''8 ees''8 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
        r8 bes'8 c''8 d''8 ees''16 d''16 ees''8 e''16 f''16 d''8 |
    
        ees''4 ~ ees''16 g''16 aes''16 a''16 a''16 bes''4.. |
        g''4. f''16 ees''16 f''4 ees''16 f''16 ees''16 d''16 |
        ees''4 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
    
        ees''8. d''16 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2 r8 bes'8 ees''8 f''8 | } { \grace { s16 } c''2 r8 bes'8 c''8 d''8 | }
    }
}

sidsclarinetsectionc =  \transpose bes c' {
    ees''4 f''4 g''4 aes''4 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 a''8 c'''8 bes''8 g''16 bes''16 aes''16 g''16 aes''8 |
    g''4. f''8 g''16 aes''16 g''16 f''16 ees''4 |
    
    bes'8 ees''8 ees''8 f''8 f''8 ges''8 f''8 ees''8 |
    f''16 ges''16 a''16 bes''16 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2 r8 bes'8 c''8 d''8 |

    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 aes''8\prall g''16 aes''16 g''16 f''16 ees''4 |

    \tuplet 3/2 { bes'8 ees''8 f''8 } \tuplet 3/2 { ges''8 f''8 ees''8 } \tuplet 3/2 { f''8 ges''8 a''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } |
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2. r16 g'16 c''16 ees''16 |
    
    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 g''16 aes''16 g''16 aes''16 g''16 f''16 ees''4 |

    bes'8 ees''8 r8 ees''8 f''8 ges''8 f''8 ees''8 |
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 \tuplet 3/2 { a'16 bes'16 b'16 } \tuplet 6/4 { c''16 des''16 d''16 ees''16 e''16 f''16 } \tuplet 6/4 { ges''16 g''16 aes''16 a''16 bes''16 b''16 } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

clarinetnotes =  {
    \time 2/4
    \key e \minor
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb

    \ktoclarinet

    \time 4/4
    \key d \minor
    \sidsclarinetintro
    \sidsclarinetsectiona
    \sidsclarinetsectionb
    \sidsclarinetsectionc
}

clarinetnotesmidi =  {
    \time 2/4
    \key e \minor
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb

    \ktoclarinet

    \time 4/4
    \key d \minor
    \sidsclarinetintro
    \sidsclarinetsectiona
    \sidsclarinetsectionb
    \sidsclarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  { r2 | r2 | }

tenorsaxsectiona =  {
    \repeat volta 2 {
        g'8 b'8 b'8 e''16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 d''16 |
        b'8 g'16 d''16 b'8 g'16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 g'16 a'16 b'16 c''16 b'16 g'16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
    }
}

tenorsaxsectionb =  {
    \repeat volta 2 {
        g'16 e'16 b'16 a'16 g'8 a'8 |
        g'16 e'16 g'16 e'16 g'8 r8 |
        g'8 g'8 g'16 e'16 d''16 c''16 |
        g'16 ( e'16 ) e'16 ( fis'16 ) g'8 r8 |

        g'16 b'16 g'16 b'16 g'8 r8 |
        r16 b'16 b'16 b'16 b'8 r8 |
        g'8 g'8 a'16 c''16 b'16 a'16 |
        g'16 fis'16 e'16 fis'16 g'8 d''8-^ |

        b'4 d''8 d''16 e''16 |
        d''4 d''8-\trill ( c''8 ) |
        c''8 r8 c''8 r8 |
        c''4 c''8 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'16 e'16 g'16 a'16 b'16 a'16 b'16 c''16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'8 e'8-^ g'8-^ b'8-^ |
        }
        {
            g'8 r8 g'8 r8 |
        }
    }
}

ktotenorsax = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 
    \repeat volta 2 {
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8\ff g''4 g''8 |
        fis''8 [ e''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ dis''8 e''8 fis''8 ] |
        g''8 r8 g''4-^ |
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 g''4 g''8 |
        fis''8 [ e''8 ] dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 ]   a'8 [ a'8 ] |
        g'8 r8 g'8 r8 |

        dis''8 [ dis''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 e''8 ] r8 |
        fis'8 [ g'16 a'16 ]   dis'8 [ e'16 fis'16 ] |
        g'16 [ fis'16 g'16 b'16 ]   e''16 [ ( b'16 ) b'16 ( g'16 ) ] |
        b'8 [ dis''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 e''8 ] r8 |
        fis'8 [ g'16 a'16 ]   dis'8 [ e'16 fis'16 ] |
        g'8 r8 g'8-^ r8 |
    }
}

sidstenorsaxintro =  {
    r1 |
    r1 |
}

sidstenorsaxsectiona =  {
    \repeat volta 2 {
        r8 f''8 d''8 f''8 r8 f''8 d''8 f''8 |
        r8 bes'8 d''8 bes'8 r8 bes'8 d''8 bes'8 |
        r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 |
        r8 d''8 a'8 d''8 f''8 f''16 f''16 d''8 f''8 ~ |

        f''8 f''8 d''8 f''8 r8 f''8 d''8 f''8 |
        r8 bes'8 d''8 bes'8 r8 bes'8 d''8 bes'8 |
        r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
    }
    \alternative {
        { d''8 d''8 f''8 a'8 d''8 r8 r4 | }
        % this next gliss represents the gliss from the note before the alternatives
        { \grace { \glissnogap \inote cis''16 \glissando } d''8 d''8 f''8 a'8 d''8 r8 r4 | }
    }
}

sidstenorsaxsectionb =  {
    \repeat volta 2 {
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
        r8 a''8 f''8 a''8 r8 c'''16 c'''16 c'''16 c'''16 c'''16 c'''16 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
    }
    \alternative {
        { d''8 f''8 r8 f''8 d''8 r8 r4 | }
        % this next gliss represents the gliss from the note before the alternatives
        { \grace { \glissnogap \inote cis''16 \glissando } d''8 d''8 f''8 a'8 d''8 r8 r4 }
    }
}

sidstenorsaxsectionci =  {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
    d''8 d''8 f''8 a'8 d''8 r8 r4 |
}

sidstenorsaxsectioncii =  {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
    d''8 d''8 f''8 a'8 d''8 r8 r4 |
}

sidstenorsaxsectionciii =  {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
    d''4-\fermata r4 a'4-\fermata r4 |
    d''4-\fermata r4 r2 |
}

sidstenorsaxsectionc =  {
    \sidstenorsaxsectionci
    \sidstenorsaxsectioncii
    \sidstenorsaxsectionciii
}

tenorsaxnotes =  {
    \time 2/4
    \key e \minor
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb

    \ktotenorsax

    \time 4/4
    \key f \major
    \sidstenorsaxintro
    \sidstenorsaxsectiona
    \sidstenorsaxsectionb
    \sidstenorsaxsectionc
}

tenorsaxnotesmidi =  {
    \time 2/4
    \key e \minor
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb

    \ktotenorsax

    \time 4/4
    \key f \major
    \sidstenorsaxintro
    \sidstenorsaxsectiona
    \sidstenorsaxsectionb
    \sidstenorsaxsectionc
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  { r2 | r2 | }

altosaxsectiona =  \transpose ees bes, {
    \repeat volta 2 {
        g'8 b'8 b'8 e''16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 d''16 |
        b'8 g'16 d''16 b'8 g'16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 g'16 a'16 b'16 c''16 b'16 g'16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
    }
}

altosaxsectionb = \transpose ees bes, {
    \repeat volta 2 {
        g'16 e'16 b'16 a'16 g'8 a'8 |
        g'16 e'16 g'16 e'16 g'8 r8 |
        g'8 g'8 g'16 e'16 d''16 c''16 |
        g'16 ( e'16 ) e'16 ( fis'16 ) g'8 r8 |

        g'16 b'16 g'16 b'16 g'8 r8 |
        r16 b'16 b'16 b'16 b'8 r8 |
        g'8 g'8 a'16 c''16 b'16 a'16 |
        g'16 fis'16 e'16 fis'16 g'8 d''8-^ |

        b'4 d''8 d''16 e''16 |
        d''4 d''8-\trill ( c''8 ) |
        c''8 r8 c''8 r8 |
        c''4 c''8 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'16 e'16 g'16 a'16 b'16 a'16 b'16 c''16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'8 e'8-^ g'8-^ b'8-^ |
        }
        {
            g'8 r8 g'8 r8 |
        }
    }
}

ktoaltosax = \transpose ees bes, {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 
    \repeat volta 2 {
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8\ff g''4 g''8 |
        fis''8 [ e''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ dis''8 e''8 fis''8 ] |
        g''8 r8 g''4-^ |
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 g''4 g''8 |
        fis''8 [ e''8 ] dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 ]   a'8 [ a'8 ] |
        g'8 r8 g'8 r8 |

        dis''8 [ dis''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 e''8 ] r8 |
        fis'8 [ g'16 a'16 ]   dis'8 [ e'16 fis'16 ] |
        g'16 [ fis'16 g'16 b'16 ]   e''16 [ ( b'16 ) b'16 ( g'16 ) ] |
        b'8 [ dis''8 ]   dis''16 [ fis''16 b'16 dis''16 ] |
        e''8 [ b'8 e''8 ] r8 |
        fis'8 [ g'16 a'16 ]   dis'8 [ e'16 fis'16 ] |
        g'8 r8 g'8-^ r8 |
    }
}

sidsaltosaxintro =  \transpose c a { r1 | r1 | }

sidsaltosaxsectiona =  \transpose c a {
    \repeat volta 2 {
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4 |
        c'8 g8 r8 g8 c'8 g16 g16 g8 g8 |
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8 c'8 g8 a8 b8 | }
        { \grace { s16 } c'8 g8 r8 g8 c'8 bes8 c'8 d'8 | }
    }
}

sidsaltosaxsectionb =  \transpose c a {
    \repeat volta 2 {
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes16 bes16 bes8 bes8 ees'8 bes16 bes16 bes8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8 c'8 g8 aes8 bes8 | }
        { \grace { s16 } c'8 g8 r8 g8 c'8 g8 aes8 bes8 | }
    }
}

sidsaltosaxsectionc =  \transpose c a {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 c'8 bes8 c'8 d'8 |
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 c'8 g8 a8 b8 |
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'4-\fermata r4 g4-\fermata r4 |
    c'4-\fermata r4 r2 |
}

altosaxnotes =  {
    \time 2/4
    \key b \minor
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb

    \ktoaltosax

    \time 4/4
    \key a \minor
    \sidsaltosaxintro
    \sidsaltosaxsectiona
    \sidsaltosaxsectionb
    \sidsaltosaxsectionc
}

altosaxnotesmidi =  {
    \time 2/4
    \key b \minor
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb

    \ktoaltosax

    \time 4/4
    \key a \minor
    \sidsaltosaxintro
    \sidsaltosaxsectiona
    \sidsaltosaxsectionb
    \sidsaltosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmony =  { }

altoharmonymidi =  { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro =  \transpose bes c {
    f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    d''4 r8 a'8  |
}

trumpetsectiona =  \transpose bes c {
    \repeat volta 2 {
        a'16\ff ( d''16 ) f''16 d''16 d''16 ( f''16 ) a''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |
        f''16 ( a''16 ) c'''16 a''16 f''16 ( a''16 ) c'''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( g''16 f''8 ) |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

trumpetsectionb =  \transpose bes c' {
    \repeat volta 2 {
        d''4. c''16 bes'16 |
        a'4. a'8 |
        d''16 ( a'16 ) d''16 ( a'16 ) d''8 c''16 bes'16 |
        a'4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8 c''16 ( bes'16 ) |
        a'4 r8 a'8-^ |

        f'16 g'16 a'16 bes'16 a'16 bes'16 a'16 bes'16 |
        a'16 bes'16 a'16 bes'16 a'8-\trill ( g'8 ) |
        g'16 ( d'16 ) d'16 ( g'16 ) g'16 ( d'16 ) d'16 ( g'16 ) |
        g'16 ( d'16 ) d'16 ( g'16 ) g'8-\trill ( f'8 ) |

        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
        d'4 d'16 bes'16 a'16 g'16 |
        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
    }
    \alternative {
        {
            d'8 d'8-^ f'8-^ a'8-^ |
        }
        {
            d'8 r8 d''8 r8 |
        }
    }
}

ktotrumpet = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 

    \repeat volta 2 {
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8\mf b'4 b'8 |
        a'8 [ a'8 ]   b'8. [ a'16 ] |
        g'8 [ fis'8 ]   g'8 [ a'8 ] |
        b'8 r8 b'4-> |
        \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 b'4 b'8 |
        a'8 [ a'8 ]   b'8. [ a'16 ] |
        g'8 [ g'8 ]   fis'8 [ fis'8 ] |
        e'8 r8 e'8 r8 |

        fis'8 [ fis'8 ] b'8. [ ( a'16 ) ] |
        g'8 [ fis'16 g'16 ]   a'16 [ ( g'16 ) fis'16 e'16 ] |
        dis'8 [ e'16 ( fis'16 ) ] b8 [ cis'16 ( dis'16 ) ] |
        e'16 [ ( dis'16 ) e'16 fis'16 ] g'8 [ e'8 ] |
        fis'8 [ fis'8 ]   b'8. [ ( a'16 ) ] |
        g'8 [ fis'16 g'16 ] a'16 [ ( g'16 ) fis'16 e'16 ] |
        dis'8 [ e'16 ( fis'16 ) ] b8 [ cis'16 ( dis'16 ) ] |
        e'16 [ ( b16 ) g'16 fis'16 ] e'8 r8 |
    }
}

sidstrumpetintro =  \transpose bes c {
    r1 |
    r2 r4 r16 g'16 c''16 ees''16 |
}

sidstrumpetsectiona =  \transpose bes c {
    \repeat volta 2 {
        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''4 \afterGrace f''8 ( aes''16 ) ges''8 f''4. ees''8 |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
        fis''8 g''8 ~ g''2 r16 g'16 c''16 ees''16 |

        g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8 \trill ees''8 |
        f''16 f''16 g''16 a''16 bes''16 a''8\prall ges''16 f''4. ees''8 |
        ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2. r16 g'16 c''16 ees''16 | } { \grace { s16 } c''2 r8 bes'8 ees''8 f''8 | }
    }
}

sidstrumpetsectionb =  \transpose bes c {
    \repeat volta 2 {
        g''4 f''8 \trill f''16 ees''16 ees''8 f''8 ees''8 \trill ees''16 d''16 |
        d''8 ees''8 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
        r8 bes'8 c''8 d''8 ees''16 d''16 ees''8 e''16 f''16 d''8 |
    
        ees''4 ~ ees''16 g''16 aes''16 a''16 a''16 bes''4.. |
        g''4. f''16 ees''16 f''4 ees''16 f''16 ees''16 d''16 |
        ees''4 d''8 \trill d''16 c''16 ees''16 d''8\prall c''16 bes'4 |
    
        ees''8. d''16 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    }
    \alternative {
        { c''2 r8 bes'8 ees''8 f''8 | } { \grace { s16 } c''2 r8 bes'8 c''8 d''8 | }
    }
}

sidstrumpetsectionc =  \transpose bes c {
    ees''4 f''4 g''4 aes''4 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 a''8 c'''8 bes''8 g''16 bes''16 aes''16 g''16 aes''8 |
    g''4. f''8 g''16 aes''16 g''16 f''16 ees''4 |
    
    bes'8 ees''8 ees''8 f''8 f''8 ges''8 f''8 ees''8 |
    f''16 ges''16 a''16 bes''16 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2 r8 bes'8 c''8 d''8 |

    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 aes''8\prall g''16 aes''16 g''16 f''16 ees''4 |

    \tuplet 3/2 { bes'8 ees''8 f''8 } \tuplet 3/2 { ges''8 f''8 ees''8 } \tuplet 3/2 { f''8 ges''8 a''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } |
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    c''2. r16 g'16 c''16 ees''16 |
    
    ees''8. bes'16 f''8. bes'16 g''8. bes'16 aes''8. bes'16 |
    a''8 bes''8 ~ bes''2. |
    bes''8. a''16 \afterGrace a''8 ( c'''16 ) bes''8 bes''8 aes''16 bes''16 aes''16 g''16 aes''8 |
    g''4 ~ g''16 f''16 g''16 aes''16 g''16 aes''16 g''16 f''16 ees''4 |

    bes'8 ees''8 r8 ees''8 f''8 ges''8 f''8 ees''8 |
    \acciaccatura { a''16 } bes''4 a''16 bes''16 a''16 ges''16 f''4. ees''8 |
    ees''8 d''8 d''8 \tuplet 3/2 { a'16 bes'16 b'16 } \tuplet 6/4 { c''16 des''16 d''16 ees''16 e''16 f''16 } \tuplet 6/4 { ges''16 g''16 aes''16 a''16 bes''16 b''16 } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

trumpetnotes =  {
    \time 2/4
    \key e \minor
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb

    \ktotrumpet

    \time 4/4
    \key d \minor
    \sidstrumpetintro
    \sidstrumpetsectiona
    \sidstrumpetsectionb
    \sidstrumpetsectionc
}

trumpetnotesmidi =  {
    \time 2/4
    \key e \minor
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb

    \ktotrumpet

    \time 4/4
    \key d \minor
    \sidstrumpetintro
    \sidstrumpetsectiona
    \sidstrumpetsectionb
    \sidstrumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro =  { r2 | r2 | }

trombonesectiona =  {
    \repeat volta 2 {
        d2\ff |
        bes4 bes8 a8 |
        f2 |
        bes4 bes8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 a8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 a8 d8 r8 |
        }
        {
            d'8 a8 d8 r8 |
        }
    }
}

trombonesectionb =  {
    \repeat volta 2 {
        d4. c'16 bes16 |
        a8 d8 f8 a8 |
        d'8 d'8 a8 d'8 |
        f'8 d'8 a8 f8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d'4 bes4 |
        a4 r8 a8 |

        f4 a8 c'8 |
        c'4 ( bes4 ) |
        c'4 d'8 g8 |
        c4 f8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 f8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 d8 ( a8 f8 ) |
        }
        {
            d'8 r8 d8-^ r8 |
        }
    }
}

ktotrombone = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 
    \repeat volta 2 {
        \acciaccatura { a,16 [ bes,16 c16 ] } d2 |
        e8 [ e8 ]   cis8. [ e16 ] |
        d8 [ cis8 ]   d8 [ e8 ] |
        f8 r8 f4-^ |
        \acciaccatura { a,16 [ bes,16 c16 ] } d2 |
        e8 [ e8 ]   cis8. [ e16 ] |
        d8 [ d8 a,8 a,8 ] |
        d8 [ r8 d8-^ ] r8 |

        cis8 e8 ] a,4 |
        a2 |
        e8 [ r8 a,8 ] r8 |
        d16 [ cis16 d16 e16 ]   f8 [ d8 ] |
        cis8 [ e8 ] a,4 |
        a2 |
        e8 [ r8 a,8 ] r8 |
        d8 [ r8 d8-^ ] r8 |
    }
}

sidstromboneintro = 
{
    r1 |
    r1 |
}

sidstrombonesectiona = 
{
    \repeat volta 2 {
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4\glissando |
        c'8 g8 r8 g8 c'8 g16 g16 g8 g8 |
        c'8 g8 r8 g8 c'8 g8 r8 g8 |
        f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8\glissando c'8 g8 a8 b8 | }
        { \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 | }
    }
}

sidstrombonesectionb = 
{
    \repeat volta 2 {
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8\glissando |
        ees'8 bes16 bes16 bes8 bes8 ees'8 bes16 bes16 bes8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
        g4 aes4 a4 b4 |
    }
    \alternative {
        { c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 | }
        { \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 | }
    }
}

sidstrombonesectionc = 
{
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 | bes4 a8 bes8 bes4 aes16 g16 aes8 | g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 | g4 aes4 a4 b4 |
    c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 |
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 | bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 | ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8\glissando c'8 g8 a8 b8 |
    
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando | fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |
    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'4-\fermata r4 g4-\fermata r4 | c4-\fermata r4 r2 |
}

trombonenotes =  {
    \time 2/4
    \key d \minor
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb

    \ktotrombone

    \time 4/4
    \key c \minor
    \sidstromboneintro
    \sidstrombonesectiona
    \sidstrombonesectionb
    \sidstrombonesectionc
}

trombonenotesmidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb

    \ktotrombone

    \time 4/4
    \key c \minor
    \sidstromboneintro
    \sidstrombonesectiona
    \sidstrombonesectionb
    \sidstrombonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro =  { r2 | r2 | }

violinsectiona =  {
    \repeat volta 2 {
        a'16\f ( d''16 ) f''16 d''16 d''16 ( f''16 ) a''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 ) f''8 |
        f''16 ( a''16 ) c'''16 a''16 f''16 ( a''16 ) c'''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 ) f''8 |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( g''16 ) f''8 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

violinsectionb =  {
    \repeat volta 2 {
        d'''4. c'''16 bes''16 |
        a''4. ( a''8 ) |
        d'''16 a''16 d'''16 a''16 d'''8 c'''16 bes''16 |
        a''4. ( a''8 ) |

        d'''4. ( c'''8 ) |
        e'''4. ( d'''8 ) |
        d'''16 a''16 d'''16 a''16 d'''8 c'''16 bes''16 |
        a''4 r8 a''8^\upbow_3 |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8-\trill g''8 |
        g''16 ( d''16 ) d''16 ( g''16 ) g''16 ( d''16 ) d''16 ( g''16 ) |
        g''16 ( d''16 ) d''16 g''16 g''8-\trill f''8 |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( bes''16 ) a''16 g''16 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative {
        {
            d''4. a''8 |
        }
        {
            d''4. r8 |
        }
    }
}

ktoviolin =  {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    }

    \repeat volta 2 {
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8\ff a''4 a''8 |
        g''8 [ g''8 ]   a''8. [ g''16 ] |
        f''8 [ e''8 ]   f''8 [ g''8 ] |
        a''8 r8 a''4 |
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 a''4 a''8 |
        g''8 [ g''8 ]   a''8. [ g''16 ] |
        f''8 [ f''8 ]   e''8 [ e''8 ] |
        d''8 r8 d''8 r8 |

        e''8 [ a'8 ]   a''8. [ g''16 ] |
        f''8 [ e''16 f''16 ]   g''16 [ f''16 e''16 d''16 ] |
        cis''8 [ d''16 e''16 ]   a'8 [ b'16 cis''16 ] |
        d''16 [ cis''16 d''16 e''16 ]   f''8 [ d''8 ] |
        e''8 [ a'8 ]   a''8. [ g''16 ] |
        f''8 [ e''16 f''16 ]   g''16 [ f''16 e''16 d''16 ] |
        cis''8 [ d''16 e''16 ]   a'8 [ b'16 cis''16 ] |
        d''16 [ a'16 f''16 e''16 ] d''8 r8 |
    }
}

violinnotes =  {
    \time 2/4
    \key d \minor
    \violinextraintro
    \violinsectiona
    \violinsectionb

    \ktoviolin

    \key c \minor
    \time 4/4
    \sidsmelodyintro
    \sidsmelodysectiona
    \sidsmelodysectionb
    \sidsmelodysectionc
}

violinnotesmidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb

    \ktoviolin

    \key c \minor
    \time 4/4
    \sidsmelodyintro
    \sidsmelodysectiona
    \sidsmelodysectionb
    \sidsmelodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  { \bassline }

bassnotesmidi =  { \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
   \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro =  {
    f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 | d'8 r8 < f' a' d'' >8-> r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        a16\ff d'16 f'16 d'16 d'16 f'16 a'16 f'16 |
        << { g'8 g'16 f'16 g'16 a'16 f'8 } \\ { bes4 bes8 a8 } >> |
        f'16 a'16 c''16 a'16 f'16 a'16 c''16 f'16 |
        << { g'8 g'16 f'16 g'16 a'16 f'8 } \\ { bes4 bes8 a8 } >> |

        f'16-3 g'16-4 g'16 f'16 f'16 e'16 e'16 d'16 |
        d'4 d'16 ( g'16 f'8 ) |
        f'16-3 g'16-4 g'16 f'16 f'16 e'16 e'16 d'16 |
    }
    \alternative { { d'4 r8 a8 | } { d'4 r8 a'8 | } }
}

pianorightuppersectionb =  {
    \repeat volta 2 {
        < f' d'' >4. c''16 bes'16 |
        < f' a' >4. a'8 |
        d''16 a'16 d''16 a'16 d''8-\trill c''16 bes'16 |
        < a' f' >4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8-4 c''16 bes'16 |
        < f' a' >4 r8 a'8-> |

        f'16 g'16 a'16 bes'16 a'16 bes'16 a'16 bes'16 |
        a'16 bes'16 a'16 bes'16 a'8-\trill g'8 |
        g'16 ( d'16 d'16 g'16 g'16 d'16 d'16 g'16 ) |
        g'16 ( d'16 d'16 g'16 ) g'8-\trill f'8 |

        f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 |
        d'4 d'16 ( g'16 f'8 ) |
        f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 |
    }
    \alternative {
        {
            d'8-. d'8 f'8 a'8 |
        }
        {
            d'8 r8 < f' a' d'' >8-> r8 |
        }
    }
}

ktopianorightupper = {
    \repeat volta 2 {
        r2 | r2 | r2 | r2 |
    } 

    \repeat volta 2 {
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8\f < f'' a'' >4 < f'' a'' >8 |
        < e'' g'' >8 [ < e'' g'' >8 ] < cis'' a'' >8. [ < e'' g'' >16 ] |
        < d'' f'' >8 [ < cis'' e'' >8 ] < d'' f'' >8 [ < e'' g'' >8 ] |
        < f'' a'' >8 r8 < f'' a'' >4 |
        \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 < f'' a'' >4 < f'' a'' >8 |
        < e'' g'' >8 [ < e'' g'' >8 ] < cis'' a'' >8. [ < e'' g'' >16 ] |
        < d'' f'' >8 [ < d'' f'' >8 ] < a' cis'' e'' >8 [ < a' cis'' e'' >8 ] |
        < f' a' d'' >8 r8 < f' a' d'' >8 r8 |

        e''8 [-3 a'8-4 ]   a''8. [-5 g''16 ] |
        f''8 [-3 e''16 f''16 ]   g''16 [-4 f''16 e''16 d''16-1 ] |
        cis''8 [-3 d''16 e''16 ]   a'8 [ b'16 cis''16 ] |
        d''16 [ cis''16 d''16 e''16 ]   f''8 [ d''8 ] |
        e''8 [-3 a'8 ]   a''8. [-5 g''16 ] |
        f''8 [-3 e''16 f''16 ]   g''16 [-4 f''16 e''16 d''16-1 ] |
        cis''8 [-3 d''16 e''16 ]   a'8 [ b'16 cis''16 ] |
        < f' a' d'' >8 r8 < f' a' d'' >8-> r8 |
    }
}


sidspianorightnotesintro =  {
% measure 1
    r1 |
    r2 r4 r16 g'16 [ c''16 ees''16 ] |
}

sidspianorightnotessectiona =  {
    \repeat volta 2 {
        < c'' g'' >4 g''8 aes''8 < c'' g'' >4 f''8 ees''8 |
        < c'' f'' >4 f''8 ges''8 < c'' f'' >4.-> ees''8 |
        ees''8 f''4 ees''8 ees''8 d''8 d''8 c''8 |
        g''8 g'8 c''8 ees''8 \tuplet 3/2 { g''8 f''8 ees''8 } \tuplet 3/2 { ees''8 d''8 c''8 } |

        < c'' g'' >4 g''8 aes''8 < c'' g'' >4 f''8 ees''8 |
        < c'' f'' >4 \tuplet 3/2 { bes''8 a''8 ges''8 } < c'' f'' >4.-> ees''8 |
        ees''8 bes'8 bes'8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    }
    \alternative {
        {
            < c'' ees'' g'' >2.-> r16 g'16 c''16 ees''16 |
        }
        {
            \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 ees''8 f''8 |
        }
    }
}

sidspianorightnotessectionb =  {
    \repeat volta 2 {
        < ees'' g'' >4 f''8 ees''8 < d'' f'' >4 ees''8 d''8 |
        < ees'' bes'' >4 d''8 c''8 \tuplet 3/2 { ees''8 d''8 c''8 } < bes' d'' >4 |
        r8 bes'8 c''8 d''8 ees''8 d''8 f''8 d''8 |
        ees''4. g''8 bes''8 aes''8 g''8 f''8 |

        < ees'' g'' >4 f''8 ees''8 < d'' f'' >4 ees''8 d''8 |
        < bes' ees'' >4 d''8 c''8 \tuplet 3/2 { ees''8 d''8 c''8 } < bes' d'' >4 |
        ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    }
    \alternative {
        {
            < c'' ees'' g'' >2-> r8 g'8 c''8 ees''8 |
        }
        {
            \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 c''8 d''8 |
        }
    }
}

sidspianorightnotessectionc =  {
    ees''4 f''4 g''4 aes''4 |
    a''16 c'''16 bes''8 a''16 c'''16 bes''8 bes''4. a''8 |
    bes''8 a''8 a''8 bes''8 bes''8 aes''8 aes''8 g''8 |
    g''4. f''8 g''8 f''8 e''8 bes'8 |
   
    ees''4 \tuplet 3/2 { ges''8 f''8 ees''8 } f''8 ges''4 bes''8 |
    \tuplet 3/2 { a''8 bes''8 c'''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    < c'' ees'' g'' >2 r8 bes'8 c''8 d''8 |

    ees''4 f''4 g''4 aes''4 |
    a''16 c'''16 bes''8 a''16 c'''16 bes''8 bes''4. a''8 |
    bes''8 a''8 a''8 bes''8 bes''8 aes''8 aes''8 g''8 |
    g''4. f''8 g''8 f''8 e''8 bes'8 |
   
    ees''4 \tuplet 3/2 { ges''8 f''8 ees''8 } f''8 ges''4 bes''8 |
    \tuplet 3/2 { a''8 bes''8 c'''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    < c'' ees'' g'' >2. r16 bes'16 c''16 d''16 |

    ees''4 f''4 g''4 aes''4 |
    a''16 c'''16 bes''8 a''16 c'''16 bes''8 bes''4. a''8 |
    bes''8 a''8 a''8 bes''8 bes''8 aes''8 aes''8 g''8 |
    g''4. f''8 g''8 f''8 e''8 bes'8 |
   
    ees''4 \tuplet 3/2 { ges''8 f''8 ees''8 } f''8 ges''4 bes''8 |
    \tuplet 3/2 { a''8 bes''8 c'''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } f''4. ees''8 |
    ees''8 d''8 d''8 \tuplet 3/2 { a'16 bes'16 b'16 } \tuplet 6/4 { c''16 des''16 d''16 ees''16 e''16 f''16 }
    \tuplet 6/4 { ges''16 g''16 aes''16 a''16 bes''16 b''16 } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

pianorightuppernotes =  {
    \time 2/4
    \key d \minor
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb

    \ktopianorightupper

    \key c \minor
    \time 4/4
    \sidspianorightnotesintro
    \sidspianorightnotessectiona
    \sidspianorightnotessectionb
    \sidspianorightnotessectionc
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro =  {
    a,8 < cis g >8 a,8 < cis g >8 | < d f >8 r8 < d d, >8-> r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        d,8 d8 a,8 d8 |
        d,8 d8 a,8 d8 |
        f,8 f8 c8 f8 |
        << { c,8 c8 c8 f,8 } \\ { c,4. f,8 } >> |

        a,8 < cis g >8 a,8 < cis g >8 |
        d8 < f a >8 < f a >8 < f a >8 |
        a,8 < cis g >8 a,8 < cis g >8 |
    }
    \alternative {
        {
            < d f >8 a,8 < d f >8 r8 |
        }
        {
            < d f >8 a,8 < d f >8 r8 |
        }
    }
}

pianoleftuppersectionb =  {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 < g-3 bes-2 >8 d'8 |
        d8 d'8 a8 d'8 |

        f8 < a c' >8 f8 < a c' >8 |
        f8 < a c' >8 bes,8 < d g >8 |
        c8 < e bes >8 c8 < e bes >8 |
        c8 < e bes >8 f8 < a c' >8 |

        a,8 < cis g >8 a,8 < cis g >8 |
        d8 < f a >8 < f a >8 < f a >8 |
        a,8 < cis g >8 a,8 < cis g >8 |
    }
    \alternative {
        { < d f >8-. d8 a8 f8 | }
        { < d f >8 r8 < d d, >8-> r8 | }
    }
}

ktopianoleftupper = {
    \repeat volta 2 {
        d8 [\ff < f a >8 ]   d8 [ < f a >8 ] |
        bes,8 [ bes8 ]   a,8 [ a8 ] |
        d8 [ < f a >8 ]   a,8 [ < f a >8 ] |
        < d f a >8 r8 < d, d >4-> |
    }

    \repeat volta 2 {
        \grace { s8. }   d8 [\f < f a >8 ]   d8 [ < f a >8 ] |
        bes,8 [ bes8 ]   a,8 [ a8 ] |
        d8 [ < f a >8 ]   a,8 [ < f a >8 ] |
        < d f a >8 r8 < d, d >4-> |
        \grace { s8. }   d8 [ < f a >8 ]   d8 [ < f a >8 ] |
        < bes, bes >8 [ < bes, bes >8 ]   a,8 [ a8 ] |
        < d a >8 [ < d a >8 ] < a, a >8 [ < a, a >8 ] |
        d8 r8 < d, d >8 r8 |

        cis8 [ < g a >8 ]   a,8 [ < g a >8 ] |
        d8 [ < f a >8 ]   a,8 [ < f a >8 ] |
        e8 [ < g a >8 ]   a,8 [ < g a >8 ] |
        d8 [ < f a >8 ]   d8 [ < f a >8 ] |
        cis8 [ < g a >8 ]   a,8 [ < g a >8 ] |
        d8 [ < f a >8 ]   a,8 [ < f a >8 ] |
        e8 [ < g a >8 ]   a,8 [ < g a >8 ] |
        d8 r8 < d, d >8-> r8 |
    }
}

sidspianoleftintro = 
{
    r1 | r1 |
}

sidspianoleftnotessectiona =  {
    \repeat volta 2 {
        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        f8 < aes c' >8 c8 < aes c' >8 f8 < aes c' >8 c8 < aes c' >8 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |

        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        f8 < aes c' >8 c8 < aes c' >8 f8 < aes c' >8 c8 < aes c' >8 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    }
    \alternative {
        {
            c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        }
        {
            \grace { s16 } c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        }
    }
}

sidspianoleftnotessectionb =  {
    \repeat volta 2 {
        ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
        ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
        ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
        ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

        ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
        ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    }
    \alternative {
        {
            < c c' >2 c8 bes,8 c8 d8 |
        }
        {
            \grace { s16 } < c c' >2 c8 bes,8 c8 d8 |
        }
    }
}

sidspianoleftnotessectionc =  {
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    < c c' >2 c8 bes,8 c8 d8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    < c c' >2 c8 g,8 a,8 b,8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    < c c' >4->-\fermata r4 < g g, >4->-\fermata r4 |
    < c, c >4->-\fermata r4 r2 |
}

pianoleftuppernotes =  {
    \time 2/4
    \key d \minor
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb

    \ktopianoleftupper

    \key c \minor
    \time 4/4
    \sidspianoleftintro
    \sidspianoleftnotessectiona
    \sidspianoleftnotessectionb
    \sidspianoleftnotessectionc
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \time 2/4
    \key d \minor
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb

    \ktopianorightupper

    \key c \minor
    \time 4/4
    \sidspianorightnotesintro
    \sidspianorightnotessectiona
    \sidspianorightnotessectionb
    \sidspianorightnotessectionc
}

pianoleftnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb

    \ktopianoleftupper

    \key c \minor
    \time 4/4
    \sidspianoleftintro
    \sidspianoleftnotessectiona
    \sidspianoleftnotessectionb
    \sidspianoleftnotessectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    << sna4 cymr4 >> r8 cymc8 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
        sna16 sna16 cymr8 << cymr8 sna >> sna16 sna16 |
        << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
        sna16 sna16 cymr8 << cymr8 sna >> sna16 sna16 |

        << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
        sna16 sna16 cymr8 << cymr8 sna >> sna16 sna16 |
        << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
    }
    \alternative {
        {
            << cymr8 sna >> sna16 sna16 r8 cymc8 |
        }
        {
            << cymr8 sna >> sna16 sna16 r8 cymc8 |
        }
    }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |

        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        << sna4 cymr4 >> r8 cymc8 |

        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |

        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    }
    \alternative {
        {
            << sna4 cymr4 >> r8 cymc8 |
        }
        {
            << sna4 cymr4 >> r8 cymc8 |
        }
    }
}

ktodrumshigh = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s8. } s2 |
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sidsdrumshighextra = \drummode {
    \stemUp \hideDynamics
    hhc4 hhc4 hhc4 hhc4 |
}

sidsdrumshighintro = \drummode {
    \stemUp \hideDynamics
    s1 | s1 |
}

sidsdrumshighsectiona = \drummode {
    \stemUp \hideDynamics
    \repeat volta 2 {
        \stemUp \hideDynamics
        sna8\p sna16 sna16 sna8 sna8
        sna16 sna16 sna16 sna16 sna8 sna8 |
        \repeat percent 3 {
            \stemUp \hideDynamics
            sna8 sna16 sna16 sna8 sna8
            sna16 sna16 sna16 sna16 sna8 sna8 |
        }
        \repeat percent 3 {
            \stemUp \hideDynamics
            sna8 sna16 sna16 sna8 sna8
            sna16 sna16 sna16 sna16 sna8 sna8 |
        }
    }
    \alternative {
        {
            \stemUp \hideDynamics
            sna8 sna16 sna16 sna8 sna8
            sna16 sna16 sna16 sna16 sna8 sna8 |
        }
        {
            \stemUp \hideDynamics
            \grace { s16 } sna8 sna16 sna16 sna8 sna8
            sna16 sna16 sna16 sna16 sna8 sna8 |
        }
    }
}

sidsdrumshighsectionb = \drummode {
    \stemUp \hideDynamics
    \repeat volta 2 {
        \repeat percent 4 {
            \stemUp \hideDynamics
              hhc8  sna8 hhc8 sna8     hhc8  sna8 hhc8 sna8   |
        }
        \repeat percent 3 {
            \stemUp \hideDynamics
              hhc8  sna8 hhc8 sna8     hhc8  sna8 hhc8 sna8   |
        }
    }
    \alternative {
        {
            \stemUp \hideDynamics
              hhc8  sna8 hhc8 sna8     hhc8  sna8 hhc8 sna8   |
        }
        {
            \stemUp \hideDynamics
            \grace { s16 } hhc8  sna8 hhc8 sna8     hhc8  sna8 hhc8 sna8   |
        }
    }
}

sidsdrumshighsectionc = \drummode {
    \stemUp \hideDynamics
    \repeat percent 4 {
        \stemUp \hideDynamics
        wbh8 \fff wbh16 wbh16     wbh8  wbh8
        wbh8  wbh16 wbh16     wbh8  wbh8   |
    }
    \repeat percent 4 {
        \stemUp \hideDynamics
        wbh8  wbh16 wbh16     wbh8  wbh8  
        wbh8  wbh16 wbh16     wbh8  wbh8   |
    }

    \repeat percent 4 {
        \stemUp \hideDynamics
        wbh8  wbh16 wbh16     wbh8  wbh8  
        wbh8  wbh16 wbh16     wbh8  wbh8   |
    }
    \repeat percent 4 {
        \stemUp \hideDynamics
        wbh8  wbh16 wbh16     wbh8  wbh8  
        wbh8  wbh16 wbh16     wbh8  wbh8   |
    }

    \repeat percent 4 {
        \stemUp \hideDynamics
        sna8 \p sna16 sna16     sna8  sna8  
        sna16  sna16 sna16 sna16     sna8  sna8   |
    }
    \repeat percent 3 {
        \stemUp \hideDynamics
        sna8  sna16 sna16     sna8  sna8  
        sna16  sna16 sna16 sna16     sna8  sna8   |
    }
    << sna4 \hideDynamics cymc^>\fff >> r4 << sna4 cymc^> >> r4 |
    << sna4 cymc^> >> r4 r2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb

    \stemUp
    \dynamicUp
    \ktodrumshigh

    \time 4/4
    \hideDynamics
    \sidsdrumshighintro
    \sidsdrumshighsectiona
    \sidsdrumshighsectionb
    \sidsdrumshighsectionc
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb

    \ktodrumshigh

    \time 4/4
    \sidsdrumshighintro
    \sidsdrumshighsectiona
    \sidsdrumshighsectionb
    \sidsdrumshighsectionc
}

drumslowextraintro = \drummode {
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 {
        bda4 bda8 bda8 ~ |
        bda8 bda8 bda4 |
        bda4 bda8 bda8 ~ |
        bda8 bda8 bda4 |

        bda4 bda8 bda8 ~ |
        bda8 bda8 bda4 |
        bda4 bda8 bda8 ~ |
    }
    \alternative { { bda8 s8 s4 | } { bda8 s8 s4 | } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        bda4 bda8 bda8 | s8 bda8 bda4 |
        bda4 bda8 bda8 | s8 bda8 bda4 |

        bda4 bda8 bda8 | s8 bda8 bda4 |
        bda4 bda8 bda8 | bda4 s8 s8 |

        bda4 bda8 bda8 | s8 bda8 bda4 |
        bda4 bda8 bda8 | s8 bda8 bda4 |

        bda4 bda8 bda8 | s8 bda8 bda4 |
        bda4 bda8 bda8 |
    }
    \alternative {
        { bda8 s8 s4 | }
        { bda8 s8 s4 | }
    }
}

ktodrumslow = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        \grace { s8. } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s8. } s2 |
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

sidsdrumslowextra = \drummode {
    \stemDown
    bda4 s4 s4 s4 |
}

sidsdrumslowintro = \drummode {
    \stemDown
    r1 |
    r1 |
}

sidsdrumslowsectiona = \drummode {
    \stemDown
    \repeat volta 2 {
        bda4 bda4 bda4 bda4 |
        \repeat percent 3 { bda4 bda4 bda4 bda4 | }
        \repeat percent 3 { bda4 bda4 bda4 bda4 | }
    }
    \alternative {
        { bda4 bda4 bda4 bda4 | }
        { \grace { s16 } bda4 bda4 bda4 bda4 | }
    }
}

sidsdrumslowsectionb = \drummode {
    \stemDown
    \repeat volta 2 {
        \repeat percent 4 { bda4 bda4 bda4 bda4 | }
        \repeat percent 3 { bda4 bda4 bda4 bda4 | }
    }
    \alternative {
        { bda4 bda4 bda4 bda4 | }
        { \grace { s16 } bda4 bda4 bda4 bda4 | }
    }
}

sidsdrumslowsectionc = \drummode {
    \stemDown
    \repeat percent 4 { bda4 bda4 bda4 bda4 | }
    \repeat percent 4 { bda4 bda4 bda4 bda4 | }

    \repeat percent 4 { bda4 bda4 bda4 bda4 | }
    \repeat percent 4 { bda4 bda4 bda4 bda4 | }

    \repeat percent 4 { bda4 bda4 bda4 bda4 | }
    \repeat percent 3 { bda4 bda4 bda4 bda4 | }
    bda4 s4 bda4 s4 |
    bda4 s4 s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb

    \stemDown
    \ktodrumslow

    \time 4/4
    \sidsdrumslowintro
    \sidsdrumslowsectiona
    \sidsdrumslowsectionb
    \sidsdrumslowsectionc
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb

    \ktodrumslow

    \time 4/4
    \sidsdrumslowintro
    \sidsdrumslowsectiona
    \sidsdrumslowsectionb
    \sidsdrumslowsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \time 2/4
    \key d \minor
    \melodyextraintro
    \melodysectiona
    \melodysectionb

    \ktomelody

    \time 4/4
    \key c \minor
    \sidsmelodyintro
    \sidsmelodysectiona
    \sidsmelodysectionb
    \sidsmelodysectionc
}
tenorharmony =  \transpose c' ees { \altosaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | g2:min | f2 | c2:7 |
}

previewnotes = {
    \time 2/4
    \key d \minor
    \bar ".|:"
    a'16 d''16 f''16 d''16 d''16 f''16 a''16 f''16 |
    g''8 g''16 f''16 g''16 a''16 f''8 |
    f''16 a''16 c'''16 a''16 f''16 a''16 c'''16 f''16 |
    g''8 g''16 f''16 g''16 a''16 f''8 |
}

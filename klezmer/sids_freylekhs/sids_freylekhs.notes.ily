\version "2.18.2"

bandmintro = {
    \tempo \tempostring
    s1 | s1 |
}

bandmsectionaa = {
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
}

bandmsectionab = { s1 | \breakAeit }

bandmsectionac = { \grace { s16 } s1 | }

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \grace { s16 } s1 | } }
    \bar ".|:-||" \breakA
}

bandmsectionba = {
  s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
  s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev
}

bandmsectionbb = { s1 | \breakBeit }

bandmsectionbc = { \grace { s16 } s1 | }

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 { \bandmsectionba }
    \alternative { { \bandmsectionbb } { \grace { s16 } s1 | } }
    \bar "||" \breakB
}

bandmsectionci = {
    \markC \positionC
    s1 | \breakCIone s1 | \breakCItwo s1 | \breakCItre s1 | \breakCIfor
    s1 | \breakCIfiv s1 | \breakCIsix s1 | \breakCIsev s1 |
    \bar "||" \breakCI
}

bandmsectioncii = {
    \markCII \positionCII
    s1 | \breakCIIone s1 | \breakCIItwo s1 | \breakCIItre s1 | \breakCIIfor
    s1 | \breakCIIfiv \grace { s16 } s1 | \breakCIIsix
    s1 | \breakCIIsev \markToA \positionToA s1 |
    \bar "||"
    \breakCII
}

bandmsectionciii = {
    \markCIII \positionCIII
    s1 | \breakCIIIone s1 | \breakCIIItwo s1 | \breakCIIItre s1 | \breakCIIIfor
    s1 | \breakCIIIfiv \grace { s16 } s1 | \breakCIIIsix s1 | \breakCIIIsev
    s1 | \breakCIIIeit s1 |
    \bar "|."
}

bandmsectionc = {
    \bandmsectionci
    \bandmsectioncii
    \bandmsectionciii
}

bandmNV = {
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronomeextra = { s1 | }

metronomeintro = { s1 | s1 | }

metronomesectionaa = { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }

metronomesectionab = { s1 | }

metronomesectionac = { \grace { s16 } s1 | }

metronomesectiona = {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \grace { s16 } s1 | } }
}

metronomesectionba = { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }

metronomesectionbb = { s1 | }

metronomesectionbc = { \grace { s16 } s1 | }

metronomesectionb = {
    \repeat volta 2 { \metronomesectionba }
    \alternative { { \metronomesectionbb } { \grace { s16 } s1 | } }
}

metronomesectionci = { s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | }

metronomesectioncii = {
    s1 | s1 | s1 | s1 | s1 | \grace { s16 } s1 | s1 | s1 |
}

metronomesectionciii = {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    \tempo 4 = 80
    s1 | s1 |
}

metronome =  \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 100
    \metronomeextra
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionci
    \metronomesectioncii
    \metronomesectionaa
    \metronomesectionac
    \metronomesectionba
    \metronomesectionbc
    \metronomesectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
  r1 |
  r2 r4 r16 g'16 [ c''16 ees''16 ] |
}

melodysectionaa = {
    g''4 \afterGrace g''8 [ ( bes''16 ) aes''8 ] g''4 f''8\trill [ ees''8 ] |
    f''4 \afterGrace f''8 [ ( aes''16 ) ges''8 ] f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''16 \glissando |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    fis''8 [ g''8 ] ~ g''2 r16 g'16 [ c''16 ees''16 ] |

    g''4 \afterGrace g''8 [ ( bes''16 ) aes''8 ] g''4 f''8\trill [ ees''8 ] |
    f''16 [ f''16 g''16 a''16 bes''16 ] a''8\prall [ ges''16 ] f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''16 \glissando |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
}

melodysectionab = {
    c''2. r16 g'16 [ c''16 ees''16 ] |
}

melodysectionac = {
    \grace { s16 } c''2 r8 bes'8 [ ees''8 f''8 ] |
}

melodysectiona = {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \grace { s16 } c''2 r8 bes'8 [ ees''8 f''8 ] } }
}

melodysectionba = {
    g''4 f''8\trill [ f''16 ees''16 ] ees''8 [ f''8 ] ees''8\trill [ ees''16 d''16 ] |
    d''8 [ ees''8 ] d''8\trill [ d''16 c''16 ] ees''16 [ d''8\prall c''16 ] bes'4 |
    r8 bes'8 [ c''8 d''8 ] ees''16 [ d''16 ees''8 ] e''16 [ f''16 d''8 ] |
    ees''4 ~ ees''16 [ g''16 aes''16 a''16 ] a''16\glissando bes''4.. |

    g''4. f''16 [ ees''16 ] f''4 ees''16 [ f''16 ees''16 d''16 ] |
    ees''4 d''8\trill [ d''16 c''16 ] ees''16 [ d''8\prall c''16 ] bes'4 |
    ees''8. [ d''16 ] d''8 [ ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
}

melodysectionbb = {
    c''2 r8 bes'8 [ ees''8 f''8 ] |
}

melodysectionbc = {
    \grace { s16 } c''2 r8 bes'8 [ c''8 d''8 ] |
}

melodysectionb = {
    \repeat volta 2 { \melodysectionba }
    \alternative { { \melodysectionbb } { \grace { s16 } c''2 r8 bes'8 [ c''8 d''8 ] } }
}

melodysectionci = {
    ees''4 f''4 g''4 aes''4 |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] a''8 [ c'''8 ] bes''8 [ g''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4. f''8 g''16 [ aes''16 ] g''16 [ f''16 ] ees''4 |
    
    bes'8 [ ees''8 ees''8 f''8 ] f''8 [ ges''8 f''8 ees''8 ] |
    f''16 [ ges''16 a''16 bes''16 ] a''16 [ bes''16 a''16 ges''16 ] f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    c''2 r8 bes'8 [ c''8 d''8 ] |
}

melodysectioncii = {
    ees''8. [ bes'16 ] f''8. [ bes'16 ] g''8. [ bes'16 ] aes''8. [ bes'16 ] |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] \afterGrace a''8 [ ( c'''16 ) bes''8 ] bes''8 [ aes''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4 ~ g''16 [ f''16 aes''8\prall ] g''16 [ aes''16 g''16 f''16 ] ees''4 |

    \tuplet 3/2 { bes'8 [ ees''8 f''8 ] } \tuplet 3/2 { ges''8 [ f''8 ees''8 ] } \tuplet 3/2 { f''8 [ ges''8 a''8 ] } \tuplet 3/2 { bes''8 [ a''8 ges''8 ] } |
    \acciaccatura { a''16 } bes''4 a''16 [ bes''16 a''16 ges''16 ] f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    c''2. r16 g'16 [ c''16 ees''16 ] |
}

melodysectionciii = {
    ees''8. [ bes'16 ] f''8. [ bes'16 ] g''8. [ bes'16 ] aes''8. [ bes'16 ] |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] \afterGrace a''8 [ ( c'''16 ) bes''8  ] bes''8 [ aes''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4 ~ g''16 [ f''16 g''16 aes''16 ] g''16 [ aes''16 g''16 f''16 ] ees''4 |

    bes'8 [ ees''8 r8 ees''8 ] f''8 [ ges''8 f''8 ees''8 ] | 
    \acciaccatura { a''16 } bes''4 a''16 [ bes''16 a''16 ges''16 ] f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote c''4*1/4 \glissando |
    ees''8 [ d''8 d''8 ] \tuplet 3/2 { a'16 [ bes'16 b'16 ] } \tuplet 6/4 { c''16 [ des''16 d''16 ees''16 e''16 f''16 ] }
    \tuplet 6/4 { ges''16 [ g''16 aes''16 a''16 bes''16 b''16 ] } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

melodysectionc = {
    \melodysectionci
    \melodysectioncii
    \melodysectionciii
}

%-------------------------------------------------

melody = {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

melodymidi = {
    \preintro
    \metronomeextra
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionci
    \melodysectioncii
    \melodysectionaa
    \melodysectionac
    \melodysectionba
    \melodysectionbc
    \melodysectionciii
}

%-------------------------------------------------

melodynoglissintro = {
  r1 |
  r2 r4 r16 g'16 [ c''16 ees''16 ] |
}

melodynoglisssectionaa = {
    g''4 \afterGrace g''8 [ ( bes''16 ) aes''8 ] g''4 f''8\trill [ ees''8 ] |
    f''4 \afterGrace f''8 [ ( aes''16 ) ges''8 ] f''4. ees''8 |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    fis''8 [ g''8 ] ~ g''2 r16 g'16 [ c''16 ees''16 ] |

    g''4 \afterGrace g''8 [ ( bes''16 ) aes''8 ] g''4 f''8\trill [ ees''8 ] |
    f''16 [ f''16 g''16 a''16 ] bes''16 [ a''8\prall ges''16 ] f''4. ees''8 |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
}

melodynoglisssectionab = {
    c''2. r16 g'16 [ c''16 ees''16 ] |
}

melodynoglisssectionac = {
    \grace { s16 } c''2 r8 bes'8 [ ees''8 f''8 ] |
}

melodynoglisssectiona = {
    \repeat volta 2 { \melodynoglisssectionaa }
    \alternative { { \melodynoglisssectionab } { \grace { s16 } c''2 r8 bes'8 [ ees''8 f''8 ] | } }
}

melodynoglisssectionba = {
    g''4 f''8\trill [ f''16 ees''16 ] ees''8 [ f''8 ] ees''8\trill [ ees''16 d''16 ] |
    d''8 [ ees''8 ] d''8\trill [ d''16 c''16 ] ees''16 [ d''8\prall c''16 ] bes'4 |
    r8 bes'8 [ c''8 d''8 ] ees''16 [ d''16 ees''8 ] e''16 [ f''16 d''8 ] |
    ees''4 ~ ees''16 [ g''16 aes''16 a''16 a''16 ] bes''4.. |

    g''4. f''16 [ ees''16 ] f''4 ees''16 [ f''16 ees''16 d''16 ] |
    ees''4 d''8\trill [ d''16 c''16 ] ees''16 [ d''8\prall c''16 ] bes'4 |
    ees''8. [ d''16 ] d''8 [ ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
}

melodynoglisssectionbb = {
    c''2 r8 bes'8 [ ees''8 f''8 ] |
}

melodynoglisssectionbc = {
    \grace { s16 } c''2 r8 bes'8 [ c''8 d''8 ] |
}

melodynoglisssectionb = {
    \repeat volta 2 { \melodynoglisssectionba }
    \alternative { { \melodynoglisssectionbb } { \grace { s16 } c''2 r8 bes'8 [ c''8 d''8 ] | } }
}

melodynoglisssectionci = {
    ees''4 f''4 g''4 aes''4 |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] a''8 [ c'''8 ] bes''8 [ g''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4. f''8 g''16 [ aes''16 ] g''16 [ f''16 ] ees''4 |
    
    bes'8 [ ees''8 ees''8 f''8 ] f''8 [ ges''8 f''8 ees''8 ] |
    f''16 [ ges''16 a''16 bes''16 ] a''16 [ bes''16 a''16 ges''16 ] f''4. ees''8 |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    c''2 r8 bes'8 [ c''8 d''8 ] |
}

melodynoglisssectioncii = {
    ees''8. [ bes'16 ] f''8. [ bes'16 ] g''8. [ bes'16 ] aes''8. [ bes'16 ] |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] \afterGrace a''8 [ ( c'''16 ) bes''8 ] bes''8 [ aes''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4 ~ g''16 [ f''16 aes''8\prall ] g''16 [ aes''16 g''16 f''16 ] ees''4 |

    \tuplet 3/2 { bes'8 [ ees''8 f''8 ] } \tuplet 3/2 { ges''8 [ f''8 ees''8 ] } \tuplet 3/2 { f''8 [ ges''8 a''8 ] } \tuplet 3/2 { bes''8 [ a''8 ges''8 ] } |
    \acciaccatura { a''16 } bes''4 a''16 [ bes''16 a''16 ges''16 ] f''4. ees''8 |
    ees''8 [ d''8 d''8 ees''8 ] ees''8 [ des''16 ees''16 ] des''8 [ c''8 ] |
    c''2. r16 g'16 [ c''16 ees''16 ] |
}

melodynoglisssectionciii = {
    ees''8. [ bes'16 ] f''8. [ bes'16 ] g''8. [ bes'16 ] aes''8. [ bes'16 ] |
    a''8 [ bes''8 ] ~ bes''2. |
    bes''8. [ a''16 ] \afterGrace a''8 [ ( c'''16 ) bes''8  ] bes''8 [ aes''16 bes''16 ] aes''16 [ g''16 aes''8 ] |
    g''4 ~ g''16 [ f''16 g''16 aes''16 ] g''16 [ aes''16 g''16 f''16 ] ees''4 |

    bes'8 [ ees''8 r8 ees''8 ] f''8 [ ges''8 f''8 ees''8 ] | 
    \acciaccatura { a''16 } bes''4 a''16 [ bes''16 a''16 ges''16 ] f''4. ees''8 |
    ees''8 [ d''8 d''8 ] \tuplet 3/2 { a'16 [ bes'16 b'16 ] } \tuplet 6/4 { c''16 [ des''16 d''16 ees''16 e''16 f''16 ] }
    \tuplet 6/4 { ges''16 [ g''16 aes''16 a''16 bes''16 b''16 ] } |
    c'''4-\fermata r4 g''4-\fermata r4 |
    c''4-\fermata r4 r2 |
}

melodynoglisssectionc = {
    \melodynoglisssectionci
    \melodynoglisssectioncii
    \melodynoglisssectionciii
}

%-------------------------------------------------

melodynogliss = {
    \melodynoglissintro
    \melodynoglisssectiona
    \melodynoglisssectionb
    \melodynoglisssectionc
}

melodynoglissmidi = {
    \preintro
    \metronomeextra
    \melodynoglissintro
    \melodynoglisssectiona
    \melodynoglisssectionb
    \melodynoglisssectionci
    \melodynoglisssectioncii
    \melodynoglisssectionaa
    \melodynoglisssectionac
    \melodynoglisssectionba
    \melodynoglisssectionbc
    \melodynoglisssectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored for C instrument.

flutenotes = {
    \key c \minor
    \time 4/4
    \autoBeamOff
    \melodynogliss
}

flutenotesmidi = {
    \key c \minor
    \time 4/4
    \melodynoglissmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes =  \transpose c d {
    \key c \minor
    \time 4/4
    \autoBeamOff
    \melodynogliss
}

clarinetnotesmidi =  \transpose c d {
    \key c \minor
    \time 4/4
    \melodynoglissmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    r1 |
    r1 |
}

tenorsaxsectionaa = {
    r8 f''8 d''8 f''8 r8 f''8 d''8 f''8 |
    r8 bes'8 d''8 bes'8 r8 bes'8 d''8 bes'8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 |
    r8 d''8 a'8 d''8 f''8 f''16 f''16 d''8 f''8 ~ |

    f''8 f''8 d''8 f''8 r8 f''8 d''8 f''8 |
    r8 bes'8 d''8 bes'8 r8 bes'8 d''8 bes'8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8 \glissando |
}

tenorsaxsectionac = {
    \grace { \glissnogap \inote cis''16 \glissando } d''8 d''8 f''8 a'8 d''8 r8 r4 |
}

tenorsaxsectiona = {
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

tenorsaxsectionba = {
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
        r8 a''8 f''8 a''8 r8 c'''16 c'''16 c'''16 c'''16 c'''16 c'''16 |

        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8\glissando |
}

tenorsaxsectionbc = {
    \grace { \glissnogap \inote cis''16 \glissando } d''8 d''8 f''8 a'8 d''8 r8 r4
}

tenorsaxsectionb = {
    \repeat volta 2 {
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
        r8 a''8 f''8 a''8 r8 c'''16 c'''16 c'''16 c'''16 c'''16 c'''16 |

        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 a''8 f''8 a''8 r8 g''8 e''8 g''8 |
        r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8\glissando |
    }
    \alternative {
        {  d''8 f''8 r8 f''8 d''8 r8 r4 | }
        % this next gliss represents the gliss from the note before the alternatives
        { \grace { \glissnogap \inote cis''16 \glissando } d''8 d''8 f''8 a'8 d''8 r8 r4 }
    }
}

tenorsaxsectionci = {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8\glissando |
    d''8 d''8 f''8 a'8 d''8 r8 r4 |
}

tenorsaxsectioncii = {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8\glissando |
    d''8 d''8 f''8 a'8 d''8 r8 r4 |
}

tenorsaxsectionciii = {
    r8 a''8 r8 g''8 r8 a''8 r8 bes''8 |
    b''8 c'''8 a''8 f''8 c''2 |
    r8 a''8 gis''8 a''8 r8 a''8 g''16 f''16 g''8 |
    f''8 a''8 f''8 a''8 r8 a''8 f''8 a''8 |
    r8 aes''8 f''8 aes''8 r8 aes''8 f''8 aes''8 |
    r8 aes''8 f''8 aes''8 r8 g''8 e''8 g''8 |
    r8 cis''8 a'8 cis''8 r8 cis''8 a'8 cis''8\glissando |
    d''4-\fermata r4 a'4-\fermata r4 |
    d''4-\fermata r4 r2 |
}

tenorsaxsectionc = {
    \tenorsaxsectionci
    \tenorsaxsectioncii
    \tenorsaxsectionciii
}

tenorsaxnotes = {
    \key f \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorsaxnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionci
    \tenorsaxsectioncii
    \tenorsaxsectionaa
    \tenorsaxsectionac
    \tenorsaxsectionba
    \tenorsaxsectionbc
    \tenorsaxsectionciii
}

tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes =  \transpose c' d {
    \key c \minor
    \time 4/4
    \melodynogliss
}

trumpetnotesmidi =  \transpose c' d {
    \key c \minor
    \time 4/4
    \melodynoglissmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% trombone bumped up and transposed.

altosaxintro = {
% measure 1
    r1 |
    r1 |
}

altosaxsectionaa = {
    c'8 g8 r8 g8 c'8 g8 r8 g8 |
    f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 c'8 g16 g16 g8 g8 |

    c'8 g8 r8 g8 c'8 g8 r8 g8 |
    f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
    g4 aes4 a4 b4 |
}

altosaxsectionab = {
    c'8 g8 r8 g8 c'8 g8 a8 b8 | 
}

altosaxsectionac = {
     \grace { s16 } c'8 g8 r8 g8 c'8 bes8 c'8 d'8 |
}

altosaxsectiona = {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \grace { s16 } c'8 g8 r8 g8 c'8 bes8 c'8 d'8 | } }
}

altosaxsectionba = {
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes16 bes16 bes8 bes8 ees'8 bes16 bes16 bes8 bes8 |

    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
}

altosaxsectionbb = {
    c'8 g8 r8 g8 c'8 g8 aes8 bes8 |
}

altosaxsectionbc = {
    \grace { s16 } c'8 g8 r8 g8 c'8 g8 aes8 bes8 |
}

altosaxsectionb = {
    \repeat volta 2 { \altosaxsectionba }
    \alternative { { \altosaxsectionbb } { \grace { s16 } c'8 g8 r8 g8 c'8 g8 aes8 bes8 | } }
}

altosaxsectionci = {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |

    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 c'8 bes8 c'8 d'8 |
}

altosaxsectioncii = {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8 |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |

    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8 c'8 g8 a8 b8 |
}

altosaxsectionciii = {
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

altosaxsectionc = {
    \altosaxsectionci
    \altosaxsectioncii
    \altosaxsectionciii
}

altosaxnotes =  \transpose c a {
    \key c \minor
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altosaxnotesmidi =  \transpose c a {
    \key c \minor
    \time 4/4
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionci
    \altosaxsectioncii
    \altosaxsectionaa
    \altosaxsectionac
    \altosaxsectionba
    \altosaxsectionbc
    \altosaxsectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
% measure 1
    r1 |
    r1 |
}

trombonesectionaa = {
    c'8 g8 r8 g8 c'8 g8 r8 g8 |
    f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
    g4 aes4 a4 b4\glissando |
    c'8 g8 r8 g8 c'8 g16 g16 g8 g8 |

    c'8 g8 r8 g8 c'8 g8 r8 g8 |
    f8 c'8 r8 c'8 f8 c'8 r8 c'8 |
    g4 aes4 a4 b4 |
}

trombonesectionab = {
     c'8 g8 r8 g8\glissando c'8 g8 a8 b8 | 
}

trombonesectionac = {
     \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 |
}

trombonesectiona = {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 | } }
}

trombonesectionba = {
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8\glissando |
    ees'8 bes16 bes16 bes8 bes8 ees'8 bes16 bes16 bes8 bes8 | ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
}

trombonesectionbb = {
    c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 |
}

trombonesectionbc = {
    \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 |
}

trombonesectionb = {
    \repeat volta 2 { \trombonesectionba }
    \alternative { { \trombonesectionbb } { \grace { s16 } c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 | } }
}

trombonesectionci = {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |

    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8\glissando c'8 bes8 c'8 d'8 |
}

trombonesectioncii = {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |

    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'8 g8 r8 g8\glissando c'8 g8 a8 b8 |
}

trombonesectionciii = {
    r8 ees'8 r8 d'8 r8 ees'8 r8 f'8\glissando |
    fis'8 g'8 ees'8 bes8 g8 bes8 r8 bes8 |
    bes4 a8 bes8 bes4 aes16 g16 aes8 |
    g2 g2 |

    ees'8 bes8 r8 bes8 ees'8 bes8 r8 bes8 |
    ees'8 bes8 r8 bes8 d'8 bes8 r8 bes8 |
    g4 aes4 a4 b4 |
    c'4-\fermata r4 g4-\fermata r4 |
    c4-\fermata r4 r2 |
}

trombonesectionc = {
    \trombonesectionci
    \trombonesectioncii
    \trombonesectionciii
}

trombonenotes = {
    \key c \minor
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

trombonenotesmidi = {
    \key c \minor
    \time 4/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionci
    \trombonesectioncii
    \trombonesectionaa
    \trombonesectionac
    \trombonesectionba
    \trombonesectionbc
    \trombonesectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored for C instrument.

violinnotes = {
    \key c \minor
    \time 4/4
    \autoBeamOff
    \melody
}

violinnotesmidi = {
    \key c \minor
    \time 4/4
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
% measure 1
    s1 |
    s1 |
}

chordletterssectionaa = \chordmode {
    c1:min | f1:min | g1 | c1:min | c1:min | f1:min | g1 |
}

chordletterssectionab = \chordmode { c1:min | }

chordletterssectionac = \chordmode {
    \chordChangesOff \grace { s16 } c2:min \chordChangesOn c8:min bes4. |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative {
        { \chordletterssectionab }
        { \chordChangesOff \grace { s16 } c2:min \chordChangesOn c8:min bes4. | }
    }
}

chordletterssectionba = \chordmode {
    ees2 bes2 | ees2 bes2 | ees1 | s1 | ees2 bes2 | ees2 bes2 | g1 |
}

chordletterssectionbb = \chordmode {
    c2:min c8:min bes4. |
}

chordletterssectionbc = \chordmode {
    \chordChangesOff \grace { s16 } c2:min \chordChangesOn c8:min bes4. |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
    \alternative {
        { \chordletterssectionbb }
        { \chordChangesOff \grace { s16 } c2:min \chordChangesOn c8:min bes4. | }
    }
}

chordletterssectionci = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min c8:min bes4. |
}

chordletterssectioncii = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c1:min |
}

chordletterssectionciii = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min g2 | c1:min |
}

chordletterssectionc = \chordmode {
    \chordletterssectionci
    \chordletterssectioncii
    \chordletterssectionciii
}

chordletters = \chordmode {
    \chordlettersintro
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

melodychordnames = \context ChordNames = "melodychordnames" {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \key c \minor
    \time 4/4
}

guitarnotesmidi = {
    \key c \minor
    \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    c4\3 g,4\4 c8\3 g,8\4 a,8\4 b,8\3 | c4\3 g,4\4 c8\3 g,8\4 a,8\4 b,8\3 |
}

basssectionaa = {
        c4\3 g,4\4 c8\3 d8\3 ees8\2 e8\2 | f4\2 c4\3 f4\2 c4\3 |
        g4\2 aes4\2 a4\2 b4\1 | c'4\1 g4\2 c8\3 g,8\4 a,8\4 b,8\3 |

        c4\3 g,4\4 c8\3 d8\3 ees8\2 e8\2 | f4\2 c4\3 f4\2 c4\3 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
}

basssectionab = {
         c4 g,4 c8 g,8 a,8\4 b,8 | 
}

basssectionac = {
     \grace { s16 } c'4 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
}

basssectiona = {
    \repeat volta 2 { \basssectionaa }
    \alternative { { \basssectionab } { \grace { s16 } c'4 g4\2 c8\4 bes,8\4 c8\4 d8\3 | } }
}

basssectionba = {
    ees4\3 bes,4\4 d4\3 bes,4\4 | ees4\3 bes,4\4 d4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 | ees4\3 d4\3 c8\4 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 d4\3 bes,4\4 | ees4\3 bes,4\4 d4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
}

basssectionbb = {
    c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
}

basssectionbc = {
    \grace { s16 } c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
}

basssectionb = {
    \repeat volta 2 { \basssectionba }
    \alternative { { \basssectionbb } { \grace { s16 } c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 | } }
}

basssectionci = {
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees8\3 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 f4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
    c'4\1 g4\2 c8\4 bes,8\4 c8\4 d8\3 |
}

basssectioncii = {
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 ees8\3 bes,8\4 c8\4 d8\3 |
    ees4\3 bes,4\4 ees4\3 bes,4\4 |
    ees4\3 bes,4\4 f4\3 bes,4\4 |
    g4\2 aes4\2 a4\2 b4\1 |
    c'4\1 g4\2 c8\3 g,8\4 a,8\4 b,8\3 |
}

basssectionciii = {
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

basssectionc = {
    \basssectionci
    \basssectioncii
    \basssectionciii
}

bassnotes = {
    \key c \minor
    \time 4/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
}

bassnotesmidi = {
    \key c \minor
    \time 4/4
    \preintro
    \metronomeextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionci
    \basssectioncii
    \basssectionaa
    \basssectionac
    \basssectionba
    \basssectionbc
    \basssectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { \bassnotes }
euphoniumnotesmidi = { \bassnotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochordsintro = {
    r1 | r1 |
}

pianochordssectionaa = \chordmode {
    c1:min | f1:min | g1 | c1:min | c1:min | f1:min | g1 |
}

pianochordssectionab = \chordmode { c1:min | }

pianochordssectionac = \chordmode { \chordChangesOff \grace { s16 } c2:min \chordChangesOn r8 bes4. | }

pianochordssectiona = \chordmode {
    \repeat volta 2 { \pianochordssectionaa }
    \alternative { { \pianochordssectionab } { \chordChangesOff \grace { s16 } c2:min \chordChangesOn r8 bes4. | } }
}

pianochordssectionba = \chordmode {
    ees2 bes2 | ees2 bes2 | ees1 | ees1 | ees2 bes2 | ees2 bes2 | g1 |
}

pianochordssectionbb = \chordmode {
    c2:min r8 bes4. |
}

pianochordssectionbc = \chordmode {
    \chordChangesOff \grace { s16 } c2:min \chordChangesOn r8 bes4. |
}

pianochordssectionb = \chordmode {
    \repeat volta 2 { \pianochordssectionba }
    \alternative { { \pianochordssectionbb } { \chordChangesOff \grace { s16 } c2:min \chordChangesOn r8 bes4. | } }
}

pianochordssectionci = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min s8 bes8 s4 |
}

pianochordssectioncii = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c1:min |
}

pianochordssectionciii = \chordmode {
    ees1 | ees1 | ees1 | ees1 |
    ees1:min | ees2:min bes2 | g1 | c2:min g2 | c1:min |
}

pianochordssectionc = \chordmode {
    \pianochordssectionci
    \pianochordssectioncii
    \pianochordssectionciii
}

pianochords = \chordmode {
    \pianochordsintro
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionc
}

pianochordsmidi = \chordmode {
    \preintro
    \metronomeextra
    \pianochordsintro
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionci
    \pianochordssectioncii
    \pianochordssectionaa
    \pianochordssectionac
    \pianochordssectionba
    \pianochordssectionbc
    \pianochordssectionciii
}

pianoleftintro = {
    r1 | r1 |
}

pianoleftnotessectionaa = {
        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        f8 < aes c' >8 c8 < aes c' >8 f8 < aes c' >8 c8 < aes c' >8 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |

        c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
        f8 < aes c' >8 c8 < aes c' >8 f8 < aes c' >8 c8 < aes c' >8 |
        < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
}

pianoleftnotessectionab = {
         c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 | 
}

pianoleftnotessectionac = {
     \grace { s16 } c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 |
}

pianoleftnotessectiona = {
    \repeat volta 2 { \pianoleftnotessectionaa }
    \alternative { { \pianoleftnotessectionab } { \grace { s16 } c8 < ees g >8 g,8 < ees g >8 c8 < ees g >8 g,8 < ees g >8 | } }
}

pianoleftnotessectionba = {
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
}

pianoleftnotessectionbb = {
    < c c' >2 c8 bes,8 c8 d8 |
}

pianoleftnotessectionbc = {
    \grace { s16 } < c c' >2 c8 bes,8 c8 d8 |
}

pianoleftnotessectionb = {
    \repeat volta 2 { \pianoleftnotessectionba }
    \alternative { { \pianoleftnotessectionbb } { \grace { s16 } < c c' >2 c8 bes,8 c8 d8 | } }
}

pianoleftnotessectionci = {
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    < c c' >2 c8 bes,8 c8 d8 |
}

pianoleftnotessectioncii = {
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |

    ees8 < g bes >8 g,8 < g bes >8 ees8 < g bes >8 g,8 < g bes >8 |
    ees8 < g bes >8 g,8 < g bes >8 d8 < g bes >8 g,8 < g bes >8 |
    < g, g >4 < aes, aes >4 < a, a >4 < b, b >4 |
    < c c' >2 c8 g,8 a,8 b,8 |
}

pianoleftnotessectionciii = {
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

pianoleftnotessectionc = {
    \pianoleftnotessectionci
    \pianoleftnotessectioncii
    \pianoleftnotessectionciii
}

pianoleftnotes = {
    \pianoleftintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
}

%-------------------------------------------------

pianorightnotesintro = {
% measure 1
    r1 |
    r2 r4 r16 g'16 c''16 ees''16 |
}

pianorightnotessectionaa = {
        < c'' g'' >4 g''8 aes''8 < c'' g'' >4 f''8 ees''8 |
        < c'' f'' >4 f''8 ges''8 < c'' f'' >4.-> ees''8 |
        ees''8 f''4 ees''8 ees''8 d''8 d''8 c''8 |
        g''8 g'8 c''8 ees''8 \tuplet 3/2 { g''8 f''8 ees''8 } \tuplet 3/2 { ees''8 d''8 c''8 } |

        < c'' g'' >4 g''8 aes''8 < c'' g'' >4 f''8 ees''8 |
        < c'' f'' >4 \tuplet 3/2 { bes''8 a''8 ges''8 } < c'' f'' >4.-> ees''8 |
        ees''8 bes'8 bes'8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
}

pianorightnotessectionab = {
         < c'' ees'' g'' >2.-> r16 g'16 c''16 ees''16 | 
}

pianorightnotessectionac = {
     \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 ees''8 f''8 |
}

pianorightnotessectiona = {
    \repeat volta 2 { \pianorightnotessectionaa }
    \alternative { { \pianorightnotessectionab } { \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 ees''8 f''8 | } }
}

pianorightnotessectionba = {
    < ees'' g'' >4 f''8 ees''8 < d'' f'' >4 ees''8 d''8 |
    < ees'' bes'' >4 d''8 c''8 \tuplet 3/2 { ees''8 d''8 c''8 } < bes' d'' >4 |
    r8 bes'8 c''8 d''8 ees''8 d''8 f''8 d''8 |
    ees''4. g''8 bes''8 aes''8 g''8 f''8 |

    < ees'' g'' >4 f''8 ees''8 < d'' f'' >4 ees''8 d''8 |
    < bes' ees'' >4 d''8 c''8 \tuplet 3/2 { ees''8 d''8 c''8 } < bes' d'' >4 |
    ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
}

pianorightnotessectionbb = {
    < c'' ees'' g'' >2-> r8 g'8 c''8 ees''8 |
}

pianorightnotessectionbc = {
    \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 c''8 d''8 |
}

pianorightnotessectionb = {
    \repeat volta 2 { \pianorightnotessectionba }
    \alternative { { \pianorightnotessectionbb } { \grace { s16 } < c'' ees'' g'' >2-> r8 bes'8 c''8 d''8 | } }
}

pianorightnotessectionci = {
    ees''4 f''4 g''4 aes''4 |
    a''16 c'''16 bes''8 a''16 c'''16 bes''8 bes''4. a''8 |
    bes''8 a''8 a''8 bes''8 bes''8 aes''8 aes''8 g''8 |
    g''4. f''8 g''8 f''8 e''8 bes'8 |
    
    ees''4 \tuplet 3/2 { ges''8 f''8 ees''8 } f''8 ges''4 bes''8 |
    \tuplet 3/2 { a''8 bes''8 c'''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    < c'' ees'' g'' >2 r8 bes'8 c''8 d''8 |
}

pianorightnotessectioncii = {
    ees''4 f''4 g''4 aes''4 |
    a''16 c'''16 bes''8 a''16 c'''16 bes''8 bes''4. a''8 |
    bes''8 a''8 a''8 bes''8 bes''8 aes''8 aes''8 g''8 |
    g''4. f''8 g''8 f''8 e''8 bes'8 |
    
    ees''4 \tuplet 3/2 { ges''8 f''8 ees''8 } f''8 ges''4 bes''8 |
    \tuplet 3/2 { a''8 bes''8 c'''8 } \tuplet 3/2 { bes''8 a''8 ges''8 } f''4. ees''8 |
    ees''8 d''8 d''8 ees''8 ees''8 c''16 ees''16 \tuplet 3/2 { des''8 c''8 bes'8 } |
    < c'' ees'' g'' >2. r16 bes'16 c''16 d''16 |
}

pianorightnotessectionciii = {
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

pianorightnotessectionc = {
    \pianorightnotessectionci
    \pianorightnotessectioncii
    \pianorightnotessectionciii
}

%-------------------------------------------------

pianorightuppernotes = {
    \key c \minor
    \time 4/4
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
}

pianorightnotesmidi =  \transpose c c' {
    \key c \minor
    \time 4/4
    \pianochordsmidi
}

pianoleftuppernotes = {
    \key c \minor
    \time 4/4
    \pianoleftnotes
}

pianoleftnotesmidi = {
    \key c \minor
    \time 4/4
    \preintro
    \metronomeextra
    \pianoleftintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionci
    \pianoleftnotessectioncii
    \pianoleftnotessectionaa
    \pianoleftnotessectionac
    \pianoleftnotessectionba
    \pianoleftnotessectionbc
    \pianoleftnotessectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    \stemUp \hideDynamics
    hhc4 hhc4 hhc4 hhc4 |
}

drumshighintro = \drummode {
    \stemUp \hideDynamics
    s1 | s1 |
}

drumshighsectionaa = \drummode {
    \stemUp \hideDynamics
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        \stemUp \hideDynamics
        sna8\p sna16 sna16 sna8 sna8
        sna16 sna16 sna16 sna16 sna8 sna8 |
    }
}

drumshighsectionab = \drummode {
    \stemUp \hideDynamics
    sna8 sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 |
}

drumshighsectionac = \drummode {
    \stemUp \hideDynamics
    \grace { s16 } sna8 sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 |
}

drumshighsectiona = \drummode {
    \stemUp \hideDynamics
    \repeat volta 2 { \drumshighsectionaa }
    \alternative {
        { \drumshighsectionab }
        {
            \stemUp \hideDynamics
            \grace { s16 } sna8 sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 |
        }
    }
}

drumshighsectionba = \drummode {
    \stemUp \hideDynamics
    \repeat percent 7 {
        \stemUp \hideDynamics
        hhc8 sna8 hhc8 sna8 hhc8 sna8 hhc8 sna8 |
    }
}

drumshighsectionbb = \drummode {
    \stemUp \hideDynamics hhc8 sna8 hhc8 sna8 hhc8 sna8 hhc8 sna8 |
}

drumshighsectionbc = \drummode {
    \stemUp \hideDynamics
    \grace { s16 } hhc8 sna8 hhc8 sna8 hhc8 sna8 hhc8 sna8 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 { \drumshighsectionba }
    \alternative {
        { \drumshighsectionbb }
        {
            \stemUp \hideDynamics
            \grace { s16 } hhc8 sna8 hhc8 sna8 hhc8 sna8 hhc8 sna8 |
        }
    }
}

drumshighsectionci = \drummode {
    \stemUp \hideDynamics
    \repeat percent 8 {
        \stemUp \hideDynamics
        wbh8 \fff wbh16 wbh16 wbh8 wbh8
        wbh8 wbh16 wbh16 wbh8 wbh8 |
    }
}

drumshighsectioncii = \drummode {
    \repeat percent 8 {
        \stemUp \hideDynamics
        wbh8 wbh16 wbh16 wbh8 wbh8 
        wbh8 wbh16 wbh16 wbh8 wbh8 |
    }
}

drumshighsectionciii = \drummode {
    \repeat percent 7 {
        \stemUp \hideDynamics
        sna8 \p sna16 sna16 sna8 sna8 
        sna16 sna16 sna16 sna16 sna8 sna8 |
    }
    << sna4 \hideDynamics cymc^>\fff^\fermata >> r4 << sna4 cymc^>^\fermata >> r4 |
    << sna4 cymc^>^\fermata >> r4 r2 |
}

drumshighsectionc = \drummode {
    \drumshighsectionci
    \drumshighsectioncii
    \drumshighsectionciii
}

drumshigh = \drummode {
    \stemUp \hideDynamics
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \preintro
    \drumshighextra
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionci
    \drumshighsectioncii
    \drumshighsectionaa
    \drumshighsectionac
    \drumshighsectionba
    \drumshighsectionbc
    \drumshighsectionciii
}

drumslowextra = \drummode {
    \stemDown
    bda4 s4 s4 s4 |
}

drumslowintro = \drummode {
    \stemDown
    r1 |
    r1 |
}

drumslowsectionaa = \drummode {
    \stemDown
    \set countPercentRepeats = ##t
    \repeat percent 7 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionab = \drummode { bda4 bda4 bda4 bda4 | }

drumslowsectionac = \drummode { \grace { s16 } bda4 bda4 bda4 bda4 | }

drumslowsectiona = \drummode {
    \stemDown
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \grace { s16 } bda4 bda4 bda4 bda4 | } }
}

drumslowsectionba = \drummode {
    \stemDown
    \repeat percent 7 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionbb = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectionbc = \drummode {
    \grace { s16 } bda4 bda4 bda4 bda4 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 { \drumslowsectionba }
    \alternative { { \drumslowsectionbb } { \grace { s16 } bda4 bda4 bda4 bda4 | } }
}

drumslowsectionci = \drummode {
    \stemDown
    \repeat percent 8 { bda4 bda4 bda4 bda4 | }
}

drumslowsectioncii = \drummode {
    \repeat percent 8 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionciii = \drummode {
    \repeat percent 7 { bda4 bda4 bda4 bda4 | }
    bda4 s4 bda4 s4 |
    bda4 s4 s2 |
}

drumslowsectionc = \drummode {
    \drumslowsectionci
    \drumslowsectioncii
    \drumslowsectionciii
}

drumslow = \drummode {
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \preintro
    \drumslowextra
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionci
    \drumslowsectioncii
    \drumslowsectionaa
    \drumslowsectionac
    \drumslowsectionba
    \drumslowsectionbc
    \drumslowsectionciii
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key c \minor
    \time 4/4
    \autoBeamOff
    \melody
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 |
    c1:min | f1:min | g1 | c1:min |
}

previewnotes = {
    \key c \minor
    \time 4/4
    s2 s4 s16 g'16 c''16 ees''16 |
    \bar ".|:"
    g''4 \afterGrace g''8 ( bes''16 ) aes''8 g''4 f''8\trill ees''8 |
    f''4 \afterGrace f''8 ( aes''16 ) ges''8 f''4. \glissnogap ees''8*1/2 \glissando \glissnogap \inote d''4*1/4 \glissando |
    ees''8 d''8 d''8 ees''8 ees''8 des''16 ees''16 des''8 c''8 |
    fis''8 g''8 ~ g''2 r16 g'16 c''16 ees''16 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = { }

tenorharmonymidi = { }

counter = { }

countermidi = { }

bassline = { }

basslinemidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% THIS HAS AT LEAST ONE BIT OF MARKUP THAT IS OLD STYLE.
% SHOULD BE FIXED.  SEE TROMBONE SECTION.

bandmintro = { s1 | }

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
        s1 | \breakAnin s1 | \breakAten s1 | \breakAelv
    }
    \alternative { { s1 | \breakAtwl } { s1 | } }
    \breakA \bar ".|:-||"
}

bandmsectionba = {
    \markB \positionB
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix
    \bar "||"
}

bandmsectionbb = { \markTC \positionTC s1 | \breakBsev }

bandmsectionbc = { s1 | \breakBeit }

bandmsectionbd = { s1 | }

bandmsectionb = {
    \repeat volta 2 { \bandmsectionba \bandmsectionbb }
    \alternative { { \bandmsectionbc } { \bandmsectionbd } }
    \breakB \bar "||"

    \markC \positionC
    \grace { s16 } s1 | \breakCone s1 | \breakCtwo
    \grace { s16 } s1 | \breakCtre s1 | \breakCfor
    \grace { s16 } s1 | \breakCfiv s1 | \breakCsix
    s1 | \breakCsev s1 |
    \breakC \bar "||"
}

bandmsectiond = {
    \markD \positionD
    s1 | \breakDone s1 | \breakDtwo s1 | \breakDtre s1 | \breakDfor
    s1 | \breakDfiv s1 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 |
    \markDS \positionDS |
    \breakD \bar "||"
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda = { \markCC \positionCC s1 | \breakCCone s1 | \bar "|." }

bandmNV = {
    \tempo \tempostring
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectiond
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 | }

metronomeextra = { s1 | }

metronome =  \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \metronomeextra
    \bandmintro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectiond

    \tempo 4 = 125
    \bandmsectiona
    \tempo 4 = 126
    \bandmsectionba
    \tempo 4 = 127
    \bandmsectionbb
    \tempo 4 = 128
    \bandmsectionbc
    \tempo 4 = 129
    \bandmsectionba

    \tempo 4 = 120
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored in b-flat

clarinetintro = {
    r2 r8 a'8 d''8 [ f''8 ] |
}

clarinetsectiona = {
    \repeat volta 2 {
        a''2 ~
        a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a'8 ] d''8 [ f''8 ] |
        a''2 ~ a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |

        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |

        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
    }
    \alternative {
        {
            d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
        }
        {
            d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |
        }
    }
}

clarinetsectionba = {
    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |
    a''4 bes''4 cis'''4 d'''4 |

    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
}

clarinetsectionbb = {
      fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
}

clarinetsectionbc = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |
}

clarinetsectionbd = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ b''8 ] |
}

clarinetsectionb = {
    \repeat volta 2 {
        \clarinetsectionba
        \clarinetsectionbb
    }
    \alternative { { \clarinetsectionbc } { \clarinetsectionbd } }

    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4.   a''16 [ bes''16 ] |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''4 \acciaccatura { b''16 } c'''8 [ \acciaccatura { b''16 } c'''8 ] |

    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    c'''4   a''8. [ bes''16 ] c'''2 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ \acciaccatura { gis''16 } a''8 ] \acciaccatura { gis''16 } a''8 [ \acciaccatura { gis''16 } a''8 ] |
}

clarinetsectiond = {
    bes''2-> ~ bes''8 [ e''8 ] f''8 [ g''8 ] |
    a''2-> ~ a''8 [ a'8 ] d''8 [ f''8 ] |
    a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |

    a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
    f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
    bes''4 bes''4. e''8 f''8 [ g''8 ] |
    a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |

    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |

    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
}

clarinetcoda = {
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] a''16 [ a''16 gis''16 a''16 ] bes''16 [ b''16 c'''16 cis'''16 ] |
    d'''4 a''4 d''4 r4
}

%---------------------------------------

clarinetnotes =  \transpose c d {
    \key f \major
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiond
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi =  \transpose c d {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiond
    \clarinetsectiona
    \clarinetsectionba
    \clarinetsectionbb
    \clarinetsectionbc
    \clarinetsectionba
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is essentially a simplified version of the high melody transposed down an octave.
% in b-flat

trumpetintro = {
    r2 r8 a'8 d''8 [ f''8 ] |
}

trumpetsectiona = {
    \repeat volta 2 {
        a''2 ~
        a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a'8 ] d''8 [ f''8 ] |
        a''2 ~ a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
    }
    \alternative {
        {
            d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
        }
        {
            d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |
        }
    }
}

trumpetsectionba = {
    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |
    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
}

trumpetsectionbb = {
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
}

trumpetsectionbc = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |
}

trumpetsectionbd = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ b''8 ] |
}

trumpetsectionb = {
    \repeat volta 2 {
        \trumpetsectionba
        \trumpetsectionbb
    }
    \alternative { { \trumpetsectionbc } { \trumpetsectionbd } }

    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4.   a''16 [ bes''16 ] |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''4 \acciaccatura { b''16 } c'''8 [ \acciaccatura { b''16 } c'''8 ] |
    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    c'''4   a''8. [ bes''16 ] c'''2 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ \acciaccatura { gis''16 } a''8 ] \acciaccatura { gis''16 } a''8 [ \acciaccatura { gis''16 } a''8 ] |
}

trumpetsectiond = {
    bes''2-> ~ bes''8 [ e''8 ] f''8 [ g''8 ] |
    a''2-> ~ a''8 [ a'8 ] d''8 [ f''8 ] |
    a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |

    a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
    f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
    bes''4 bes''4. e''8 f''8 [ g''8 ] |
    a''8 [ g''16 a''16 ] g''8\prall [ f''8 ] f''8 [ e''16 f''16 ] e''8\prall [ d''8 ] |
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |

    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |

    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\prall [ f''8 ] f''16 [ e''16 d''8 ] |
    d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
}

trumpetcoda = {
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] a''16 [ a''16 gis''16 a''16 ] bes''16 [ b''16 c'''16 cis'''16 ] |
    d'''4 a''4 d''4 r4
}

trumpetnotes =  \transpose c' d {
    \key f \major
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiond
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi =  \transpose c' d {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiond
    \trumpetsectiona
    \trumpetsectionba
    \trumpetsectionbb
    \trumpetsectionbc
    \trumpetsectionba
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = { r1 | }

altosaxsectiona = {
    \repeat volta 2 {
        r8 f'8 r8 f'8
        r8 f'8 r8 f'8 |
        r8 f'8 r8 f'8 r8 f'8 r8 f'8 |
        r8 f'8 r8 f'8 r8 f'8 r8 f'8 |
        r8 f'8 r8 f'8 r8 f'8 r8 f'8 |

        r8 f'16 [ f'16 ] d'8 [ f'8 ] r8 g'16 [ g'16 ] d'8 [ g'8 ] |
        r8 g'16 [ g'16 ] d'8 [ g'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
        r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
        r8 f'16 [ f'16 ] d'8 [ f'8 ] r8 f'16 [ f'16 ] d'8 [ f'8 ] |
        r8 f'16 [ f'16 ] d'8 [ f'8 ] r8 g'16 [ g'16 ] d'8 [ g'8 ] |

        r8 g'16 [ g'16 ] d'8 [ g'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
        r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    }
    \alternative {
        {
            r8 f'16 [ f'16 ] d'8 [ f'8 ] f'16 [ f'16 f'16 f'16 ] d'8 [ f'8 ] |
        }
        {
            r8 f'16 [ f'16 ] d'8 [ f'8 ] d'8 r8 r4 |
        }
    }
}

altosaxsectionba = {
    r1 |
    r8 cis'8 [ a8 cis'8 ] r8 cis'8 [ a8 cis'8 ] |
    r8 cis'8 [ a8 cis'8 ] r8 cis'8 [ a8 cis'8 ] |
    r8 cis'8 [ a8 cis'8 ] r8 cis'16 [ cis'16 a8 cis'8 ] |
    r1 |

    r8 cis'8 [ a8 cis'8 ] r8 cis'8 [ a8 cis'8 ] |
}

altosaxsectionbb = {
    r8 cis'8 [ a8 cis'8 ] r8 cis'8 [ a8 cis'8 ] |
}

altosaxsectionbc = {
    r8 d'16 [ d'16 ] a8 [ d'8 ] f'8 r8 r4 |
}

altosaxsectionbd = {
    d'2 r2 |
}

altosaxsectionb = {
    \repeat volta 2 {
        \altosaxsectionba
        \altosaxsectionbb
    }
    \alternative { { \altosaxsectionbc } { \altosaxsectionbd } }

    \grace { \glissnogap \inote g16 \glissando } c'4*3/4 \glissnogap \inote g4*1/4 \glissando c'4 f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    r8 c'16 [ c'16 ] r8 c'8 f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    \grace { \glissnogap \inote g16 \glissando } c'8 [ c'16 c'16 ] c'8 [ c'8 ] f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    r8 c'16 [ c'16 ] r8 c'8 f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    \grace { \glissnogap \inote g16 \glissando } c'4*3/4 \glissnogap \inote g4*1/4 \glissando c'4 f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    r8 c'16 [ c'16 ] r8 c'8 f'8 [ c'16 c'16 ] c'8 [ c'8 ] |
    c'8 [ c'16 c'16 ] c'8 [ c'8 ] c'8 [ ( a8 ] c'4 ) |
    r8 c'16 [ c'16 ] r8 c'8 f'8 r8 r4 |
}

altosaxsectiond = {
    r8 cis'8 [ a8 cis'8 ] r8 cis'8 [ a8 cis'8 ] |
    r8 f'8 [ d'8 f'8 ] r8 f'8 [ d'8 f'8 ] |
    r8 f'8 [ d'8 f'8 ] r8 f'8 [ d'8 f'8 ] |

    r8 f'16 [ f'16 ] d'8 [ f'8 ] r8 f'16 [ f'16 ] d'8 [ f'8 ] |
    r8 f'16 [ f'16 ] d'8 [ f'8 ] r8 g'16 [ g'16 ] d'8 [ g'8 ] |
    r8 g'16 [ g'16 ] d'8 [ g'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    r8 f'16 [ f'16 ] d'8 [ f'8 ] d'8 r8 r4 |

    r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
      e'16 [ e'16 e'16 e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    r8 e'16 [ e'16 ] cis'8 [ e'8 ] e'16 [ e'16 e'16 e'16 ] cis'8 [ e'8 ] |
    r8 f'16 [ f'16 ] d'8 [ f'8 ] f'16 [ f'16 f'16 f'16 ] d'8 [ f'8 ] |

    r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    e'16 [ e'16 e'16 e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    r8 e'16 [ e'16 ] cis'8 [ e'8 ] e'16 [ e'16 e'16 e'16 ] cis'8 [ e'8 ] |
    f'8 r8 r4 r8 a8 d'8 [ f'8 ] |
}

altosaxcoda = {
    r8 e'16 [ e'16 ] cis'8 [ e'8 ] r8 e'16 [ e'16 ] cis'8 [ e'8 ] |
    d'4 a4 < d d' >4 r4
}

altosaxnotes =  \transpose c a {
    \key f \major
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiond
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi =  \transpose c a {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiond
    \altosaxsectiona
    \altosaxsectionba
    \altosaxsectionbb
    \altosaxsectionbc
    \altosaxsectionba
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    r1 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        r8 g''8 r8 g''8 r8 g''8 r8 g''8 |
        r8 g''8 r8 g''8 r8 g''8 r8 g''8 |
        r8 g''8 r8 g''8 r8 g''8 r8 g''8 |
        r8 g''8 r8 g''8 r8 g''8 r8 g''8 |

        r8 g''16 g''16 e''8 g''8 r8 a''16 a''16 e''8 a''8 |
        r8 a''16 a''16 e''8 a''8 r8 fis''16 fis''16 dis''8 fis''8 |
        r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
        r8 g''16 g''16 e''8 g''8 r8 g''16 g''16 e''8 g''8 |
        r8 g''16 g''16 e''8 g''8 r8 a''16 a''16 e''8 a''8 |

        r8 a''16 a''16 e''8 a''8 r8 fis''16 fis''16 dis''8 fis''8 |
        r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    }
    \alternative {
        {
            r8 g''16 g''16 e''8 g''8 g''16 g''16 g''16 g''16 e''8 g''8 |
        }
        {
            r8 g''16 g''16 e''8 g''8 e''8 r8 r4 |
        }
    }
}

tenorsaxsectionba = {
    r1 |
    r8 dis''8 b'8 dis''8 r8 dis''8 b'8 dis''8 |
    r8 dis''8 b'8 dis''8 r8 dis''8 b'8 dis''8 |
    r8 e''8 b'8 e''8 r8 e''16 e''16 b'8 e''8 |
    r1 |

    r8 dis''8 b'8 dis''8 r8 dis''8 b'8 dis''8 |
}

tenorsaxsectionbb = {
    r8 dis''8 b'8 dis''8 r8 dis''8 b'8 dis''8 |
}

tenorsaxsectionbc = {
    r8 e''16 e''16 b'8 e''8 g''8 r8 r4 |
}

tenorsaxsectionbd = {
    e''2 r2 |
}

tenorsaxsectionb = {
    \repeat volta 2 {
        \tenorsaxsectionba
        \tenorsaxsectionbb
    }
    \alternative { { \tenorsaxsectionbc } { \tenorsaxsectionbd } }

    \grace { \glissnogap \inote a'16 \glissando } d''4*3/4 \glissnogap \inote a'4*1/4 \glissando d''4 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |
    \grace { \glissnogap \inote a'16 \glissando } d''8*3/4 \glissnogap \inote a'4*1/8 \glissando d''16 d''16 d''8 d''8 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |

    \grace { \glissnogap \inote a'16 \glissando } d''4*3/4 \glissnogap \inote a'4*1/4 \glissando d''4 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |
    d''8 d''16 d''16 d''8 d''8 d''8 ( b'8 d''4 ) |
    r8 d''16 d''16 r8 d''8 g''8 r8 r4 |
}

tenorsaxsectiond = {
    r8 fis''8 dis''8 fis''8 r8 fis''8 dis''8 fis''8 |
    r8 g''8 e''8 g''8 r8 g''8 e''8 g''8 |
    r8 e''8 b'8 e''8 r8 e''8 b'8 e''8 |

    r8 g''16 g''16 e''8 g''8 g''8 g''16 g''16 e''8 g''8 |
    r8 g''16 g''16 e''8 g''8 r8 a''16 a''16 e''8 a''8 |
    r8 a''16 a''16 e''8 a''8 r8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    r8 g''16 g''16 e''8 g''8 e''8 r8 r4 |

    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    fis''16 fis''16 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''16 fis''16 dis''8 fis''8 fis''16 fis''16 fis''16 fis''16 dis''8 fis''8 |
    r8 g''16 g''16 e''8 g''8 g''16 g''16 g''16 g''16 e''8 g''8 |

    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    fis''16 fis''16 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    r8 fis''16 fis''16 dis''8 fis''8 fis''16 fis''16 fis''16 fis''16 dis''8 fis''8 |
    g''8 r8 r4 r8 b'8 e''8 g''8 |
}

tenorsaxcoda = {
    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    e''4 b'4 e'4 r4 |
}

tenorsaxnotes = {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key g \major
    \time 4/4
    \preintro
    \metronomeextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \tenorsaxsectiona
    \tenorsaxsectionba
    \tenorsaxsectionbb
    \tenorsaxsectionbc
    \tenorsaxsectionba
    \tenorsaxcoda
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = \transpose c c, {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \blankmeasure
    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    e''4 b'4 e''4 r4 |
}
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes,, {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \blankmeasure
    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    e''4 b'4 e''4 r4 |
}

tenorforflutesectionb = {
    \repeat volta 2 {
        \tenorsaxsectionba
        \tenorsaxsectionbb
    }
    \alternative { { \tenorsaxsectionbc } { \tenorsaxsectionbd } }

    \acciaccatura { c''16 } d''4 \acciaccatura { c''16 } d''4 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |
    \acciaccatura { c''16 } d''8 \acciaccatura { c''16 } d''16 d''16 d''8 d''8 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |

    \acciaccatura { c''16 } d''4 \acciaccatura { c''16 } d''4 g''8 d''16 d''16 d''8 d''8 |
    r8 d''16 d''16 r8 d''8 g''8 d''16 d''16 d''8 d''8 |
    d''8 d''16 d''16 d''8 d''8 d''8 ( b'8 d''4 ) |
    r8 d''16 d''16 r8 d''8 g''8 r8 r4 |
}

tenorforflutenotes = \transpose c bes, {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorforflutesectionb
    \tenorsaxsectiond
    \blankmeasure
    \tenorsaxcoda
}

altoflutecoda = {
    r8 fis''16 fis''16 dis''8 fis''8 r8 fis''16 fis''16 dis''8 fis''8 |
    e''4 b'4 e''4 r4 |
}

tenorforaltoflutenotes = \transpose c bes, {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorforflutesectionb
    \tenorsaxsectiond
    \blankmeasure
    \altoflutecoda
}

altoflutetenorharmony = \transpose g c {
    \tenorforaltoflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    r2 r8 a,8 d8 [ f8 ] |
}

trombonesectiona = {
    \repeat volta 2 {
        a2 ~
        a8 r8 r4 |
        r8 a8 d'8 [ e'8 ] f'4 r4 |
        a2 ~ a8 r8 r4 |
        r8 a8 d'8 [ e'8 ] f'4 r4 |

        f'2 ~ f'8 [ d'8 ] bes8 [ g8 ] |
        bes2 ~ bes8 [ e8 ] f8 [ g8 ] |
        a8 [ g16 a16 ] g8\prall [ f8 ] f8 [ e16 f16 ] e8\prall [ d8 ] |
        r8 a8 d'8 [ e'8 ] f'4 r4 |
        f'2 ~ f'8 [ d'8 ] bes8 [ g8 ] |

        bes2 ~ bes8 [ e8 ] f8 [ g8 ] |
        a8 [ g16 a16 ] g8\prall [ f8 ] f8 [ e16 f16 ] e8\prall [ d8 ] |
    }
    \alternative {
        {
            d2 r8 a,8 d8 [ f8 ] |
        }
        {
            d2 r8 a8 bes8 [ a8 ] |
        }
    }
}

trombonesectionba = {
    a4 bes4 cis'4 d'4 |
    dis'8 [ e'8 ] ~ e'4. a8 cis'8 [ e'8 ] |
    \afterGrace fis'8 [ ( a'16 ) g'8 ] ~ g'8 [ f'8 ] gis'8 [ \prall f'8 ] f'16 [ e'16 d'8 ] |
    gis'8 [ a'8 ] ~ a'8 [ g'16 a'16 ] bes'16 [ a'16 g'8 ]  f'16 [ e'16 d'8 ] |
    a4 bes4 cis'4 d'4 |
    dis'8 [ e'8 ] ~ e'4. a8 cis'8 [ e'8 ] |
}

trombonesectionbb = {
    \afterGrace fis'8 [ ( a'16 ) g'8 ] ~ g'8 [ f'8 ] gis'8 [ \prall f'8 ] f'16 [ e'16 d'8 ] |
}

trombonesectionbc = {
    d'2 r8 a8 bes8 [ a8 ] |
}

trombonesectionbd = {
    d'2 r2 |
}

trombonesectionb = {
    \repeat volta 2 {
        \trombonesectionba
        \trombonesectionbb
    }
    \alternative { { \trombonesectionbc } { \trombonesectionbd } }

    \grace { \glissnogap \inote c'16 \glissando } f'4*3/4 \glissnogap \inote c'4*1/4 \glissando f'4 f'8 [ f'16 f'16 ] f'8 [ f'8 ] |
    e'8 [ e'16 e'16 ] e'8 [ e'8 ] r8 f'8 r8 f'8 |
    \grace { s16 } f'8 [ f'16 f'16 ] c'8 [ f'8 ] f'16 [ f'16 f'16 f'16 ] f'8 [ f'8 ] |
    e'8 [ e'16 e'16 ] e'8 [ e'8 ] r8 f'8 r8 f'8 |

    \grace { \glissnogap \inote c'16 \glissando } f'4*3/4 \glissnogap \inote c'4*1/4 \glissando f'4 f'8 [ f'16 f'16 ] f'8 [ f'8 ] |
    e'8 [ e'16 e'16 ] e'8 [ e'8 ] r8 f'8 r8 f'8 |
    f'8 [ f'16 f'16 ] f'8 [ f'8 ] \glissnogap f'4*1/2 \glissando \glissnogap \inote d'4*1/2 \glissando f'4 |
    e'8 [ e'16 e'16 ] r8 e'8 f'8 r8 r4 |
}

trombonesectiond = {
    g'2_\markup { \line { \dynamic "f" \dynamic "p" " cresc." } } ~ g'8 [ cis'8 ] d'8 [ e'8 ] |
    f'2_\markup { \line { \dynamic "f" \dynamic "p" " cresc." } } ~ f'8 r8 r4 |
    a8 [ g16 a16 ] g8\prall [ f8 ] f8 [ e16 f16 ] e8\prall [ d8 ] |

    gis8 [ a8 ] ~ a4. a8 d'8 [ e'8 ] |
    f'2 ~ f'8 [ d'8 ] bes8 [ g8 ] |
    bes2 ~ bes8 [ e8 ] f8 [ g8 ] |
    a8 [ g16 a16 ] g8\prall [ f8 ] f8 [ e16 f16 ] e8\prall [ d8 ] |
    d2 r8 a8 bes8 [ a8 ] |

    a8 [ cis'16 cis'16 ] a8 [ cis'8 ] r8 cis'16 [ cis'16 ] a8 [ cis'8 ] |
    cis'16 [ cis'16 cis'16 cis'16 ] a8 [ cis'8 ] r8 cis'16 [ cis'16 ] a8 [ cis'8 ] |
    r8 cis'16 [ cis'16 ] a8 [ cis'8 ] cis'16 [ cis'16 cis'16 cis'16 ] a8 [ cis'8 ] |
    r8 d'16 [ d'16 ] a8 [ d'8 ] d'16 [ d'16 d'16 d'16 ] a8 [ d'8 ] |

    r8 cis'16 [ cis'16 ] a8 [ cis'8 ] r8 cis'16 [ cis'16 ] a8 [ cis'8 ] |
    cis'16 [ cis'16 cis'16 cis'16 ] a8 [ cis'8 ] r8 cis'16 [ cis'16 ] a8 [ cis'8 ] |
    r8 cis'16 [ cis'16 ] a8 [ cis'8 ] cis'16 [ cis'16 cis'16 cis'16 ] a8 [ cis'8 ] |
    d'8 [ f8 ] a8 [ f8 ] d8 r8 r4 |
}

trombonecoda = {
    \afterGrace fis'8 [ ( a'16 ) g'8 ] ~ g'8 [ f'8 ] gis'8 [ \prall f'8 ] f'16 [ e'16 d'8 ] |
    d'4 a4 d4 r4
}

trombonenotes = {
    \key f \major
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiond
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiond
    \trombonesectiona
    \trombonesectionba
    \trombonesectionbb
    \trombonesectionbc
    \trombonesectionba
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored for C instrument.

violinintro = {
    r2 r8 a'8 d''8 [ f''8 ] |
}

violinsectiona = {
    \repeat volta 2 {
        a''2 ~
        a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a'8 ] d''8 [ f''8 ] |
        a''2 ~ a''8 [ bes''16 a''16 ] g''8 [ f''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\trill [ f''8 ] f''8 [ e''16 f''16 ] e''8\trill [ d''8 ] |
        a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
        f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] |
        bes''4 bes''4. e''8 f''8 [ g''8 ] |
        a''8 [ g''16 a''16 ] g''8\trill [ f''8 ] f''8 [ e''16 f''16 ] e''8\trill [ d''8 ] |
    }
    \alternative {
        {
            d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
        }
        {
            d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |

        }
    }
}

violinsectionba = {
    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\trill [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |
    a''4 bes''4 cis'''4 d'''4 |
    dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
}

violinsectionbb = {
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\trill [ f''8 ] f''16 [ e''16 d''8 ] |
}

violinsectionbc = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |
}

violinsectionbd = {
    d''2 ~ d''8 [ a''8 ] bes''8 [ b''8 ] |
}

violinsectionb = {
    \repeat volta 2 {
        \violinsectionba
        \violinsectionbb
    }
    \alternative { { \violinsectionbc } { \violinsectionbd } }

    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4.   a''16 [ bes''16 ] |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''4 \acciaccatura { b''16 } c'''8 [ \acciaccatura { b''16 } c'''8 ] |
    \grace { s16 } c'''4   a''8. [ bes''16 ] c'''4. c'''8 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ a''8 ] c''4 |
    c'''4   a''8. [ bes''16 ] c'''2 |
    c'''16 [ bes''16 a''8 ] bes''16 [ a''16 g''8 ] f''8 [ \acciaccatura { gis''16 } a''8 ] \acciaccatura { gis''16 } a''8 [ \acciaccatura { gis''16 } a''8 ] |
}

violinsectiond = {
    bes''2-> ~ bes''8 [ e''8 ] f''8 [ g''8 ] |
    a''2-> ~ a''8 [ a'8 ] d''8 [ f''8 ] |
    a''8 [ g''16 a''16 ] g''8\trill [ f''8 ] f''8 [ e''16 f''16 ] e''8\trill [ d''8 ] |

    a''2 ~ a''8 [ a''8 ] d'''8 [ e'''8 ] |
    f'''2 ~ f'''8 [ d'''8 ] bes''8 [ g''8 ] | bes''4 bes''4. e''8 f''8 [ g''8 ] |
    a''8 [ g''16 a''16 ] g''8\trill [ f''8 ] f''8 [ e''16 f''16 ] e''8\trill [ d''8 ] |
    d''2 ~ d''8 [ a''8 ] bes''8 [ a''8 ] |

    a''4 bes''4 cis'''4 d'''4 |   dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\trill [ f''8 ] f''16 [ e''16 d''8 ] |
    gis''16 [ bes''16 a''8 ] ~ a''8 [ g''16 a''16 ] bes''16 [ a''16 g''8 ] f''16 [ e''16 d''8 ] |

    a''4 bes''4 cis'''4 d'''4 |   dis'''16 [ f'''16 e'''8 ] ~ e'''4. a'8 cis''8 [ e''8 ] |
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] gis''8\trill [ f''8 ] f''16 [ e''16 d''8 ] |
    d''2 ~ d''8 [ a'8 ] d''8 [ f''8 ] |
}

violincoda = {
    fis''16 [ a''16 g''8 ] ~ g''8 [ f''8 ] a''16 [ a''16 gis''16 a''16 ] bes''16 [ b''16 c'''16 cis'''16 ] |
    d'''4 a''4 d''4 r4
}

%-------------------------------------------------

violinnotes =  \transpose c' c {
    \key f \major
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiond
    \blankmeasure
    \violincoda
}

violinnotesmidi =  \transpose c' c {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiond
    \violinsectiona
    \violinsectionba
    \violinsectionbb
    \violinsectionbc
    \violinsectionba
    \violincoda
}

altosaxnotes = \transpose ees c' { \violinnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key f \major
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiond
    \blankmeasure
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \key f \major
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiond
    \blankmeasure
    \violincoda
}

altoflutenotes = \transpose g c {
    \flutenotes
}

flutenotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiond
    \violinsectiona
    \violinsectionba
    \violinsectionbb
    \violinsectionbc
    \violinsectionba
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 2/4
%    \guitarnotessectiona
%    \guitarnotessectionb
%    \guitarnotessectiond
%    \blankmeasure
%    \guitarnotescoda
}

guitarnotesmidi = {
    \time 2/4
%    \preintro
%    \metronomeextra
%    \bandmintro
%    \guitarnotessectiona
%    \guitarnotessectionb
%    \guitarnotessectiona
%    \guitarnotessectionba
%    \guitarnotessectionbb
%    \guitarnotessectionbc
%    \guitarnotessectionba
%    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode { s1 }

chordletterssectiona = \chordmode {
  \repeat volta 2 {
    d1:min | d1:min | d1:min | d1:min |
    d2:min g2:min | g2:min a2 | a1 | d1:min | d2:min g2:min |
    g2:min a2 | a1
  }
  \alternative {
    { d1:min }
    {
      \chordChangesOff
      d1:min
      \chordChangesOn
    }
  }
}

chordletterssectionb = \chordmode {
  \repeat volta 2 {
    a1 | a1 | a1 | d1:min | a1 | a1 | a1 |
  }
  \alternative {
    { d1:min }
    {
        \chordChangesOff
        d1:min
        \chordChangesOn
    }
  }

  \chordChangesOff
  \grace { f16 }
  \chordChangesOn
  f1 | c2 f2 |
  \chordChangesOff
  \grace { f16 } 
  \chordChangesOn
  f1 | c2 f2 |
  \chordChangesOff
  \grace { f16 } 
  \chordChangesOn
  f1 | c2 f2 | f1 | c2 f2 |
}

chordletterssectiond = \chordmode {
  a1:7 | d1:min | d1:min | d1:min |
  d2:min g2:min | d2:min a2 | a1 | d1:min |
  a1 | a1 | a1 | d1:min |
  a1 | a1 | a1 | d1:min |
}

chordletterscoda = \chordmode {
  \chordChangesOff
  a1 |
  \chordChangesOn
  d1:min |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiond
    \blankmeasure
    \chordletterscoda
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotesintro = {
    r1 |
}

bassnotessectiona = {
    \repeat volta 2 {
        d4\3 a,4\4 d4\3 a,4\4 |
        d4\3 a,4\4 d4\3 a,4\4 |
        d4\3 a,4\4 d4\3 a,4\4 |
        d4\3 a,4\4 d4\3 a,4\4 |

        d4\3 a,4\4 g,4\4 d4\3 |
        g,4\4 d4\3 cis4\3 a,4\4 |
        cis4 a,4\4 cis4\3 a,4\4 |
        d4\3 a,4\4 d4\3 a,4\4 |
        d4\3 a,4\4 g,4\4 d4\3 |

        g,4\4 d4\3 cis4\3 a,4\4 |
        cis4\3 a,4\4 e4\3 a,4\4 |
    }

    \alternative {
        {
            d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d4\3-. a,4\4 |
        }
        {
            d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d8\3 [ c8\3 ] bes,8\4 [ g,8\4 ] |

        }
    }
}

bassnotessectionba = {
    cis4\3 a,4\4 e4\3 a,4\4 |
    cis4\3 a,4\4 e4\3 a,4\4 |
    cis4\3 a,4\4 e4\3 a,4\4 |
    d4\3 a,4\4 d4\3 a,4\4 |
    cis4\3 a,4\4 e4\3 a,4\4 |

    cis4\3 a,4\4 e4\3 a,4\4 |
}

bassnotessectionbb = {
    e4\3 a,4\4 cis4\3 a,4\4 |
}

bassnotessectionbc = {
      d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d4\3-. a,4\4 |
}

bassnotessectionbd = {
      d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d8\3 [ c8\3 ] bes,8\4 [ g,8\4 ] |
}

bassnotessectionb = {
    \repeat volta 2 {
        \bassnotessectionba
        \bassnotessectionbb
    }
    \alternative { { \bassnotessectionbc } { \bassnotessectionbd } }

    \grace { s16 } f4\2 c4\3 f4\2 c4\3 |
    e4\2 c4\3 f4\2 c4\3 |
    \grace { s16 } f4\2 c4\3 f4\2 c4\3 |
    e4\2 c4\3   f8\2 [ c8\3 ] a,8\4 [ c8\3 ] |

    \grace { s16 } f4\2 c4\3 f4\2 c4\3 |
    e4\2 c4\3   f8\2 [ c8\3 ] a,8\4 [ c8\3 ] |
    f4\2 c4\3 f4\2 c4\3 |
    e4\2 c4\3   f8\2 [ c8\3 ] a,4\4 |
}

bassnotessectiond = {
    r8 cis8\3   d8\3 [ ees8\3 ] e4\3 r4 |
    d4\3 a,4\4 d4\3 a,4\4 |
    d4\3 a,4\4 d4\3 a,4\4 |

    d4\3 a,4\4 d4\3 a,4\4 |
    d4\3 a,4\4 g,4\4 d4\3 |
    g,4\4 d4\3 cis4 a,4\4 |
    cis4 a,4\4 e4\3 a,4\4 |
    d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d4\3-. a,4\4 |

    cis4\3 a,4\4 e4\3 a,4\4 |
    cis4\3 a,4\4 e4\3 a,4\4 |
    e4\3 a,4\4 cis4 a,4\4 |
    d4\3 a,4\4 d4\3 a,4\4 |

    cis4\3 a,4\4 e4\3 a,4\4 |
    cis4\3 a,4\4 e4\3 a,4\4 |
    e4\3 a,4\4 cis4\3 a,4\4 |
    d8\3 [ f8\3 ] gis8\2 [ a8\2 ] d4\3-. a,4\4 |
}

bassnotescoda = {
    e4\3 a,4\4 cis4\3 a,4\4 |
    d4\3 a,4\4 d4\3 r4
}

bassnotes = {
    \key f \major
    \time 4/4
    \bassnotesintro
    \bassnotessectiona
    \bassnotessectionb
    \bassnotessectiond
    \blankmeasure
    \bassnotescoda
}

bassnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \bassnotesintro
    \bassnotessectiona
    \bassnotessectionb
    \bassnotessectiond
    \bassnotessectiona
    \bassnotessectionba
    \bassnotessectionbb
    \bassnotessectionbc
    \bassnotessectionba
    \bassnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassnotes
}

euphoniumnotesmidi = {
    \bassnotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    r1 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        r4 < a d' f' >4 r4 < a d' f' >8 [ < a d' f' >8 ] |
        r4 < a d' f' >4 r4 < a d' f' >8 [ < a d' f' >8 ] |
        r4 < a d' f' >4 r4 < a d' f' >8 [ < a d' f' >8 ] |
        r4 < a d' f' >4 r4 < a d' f' >8 [ < a d' f' >8 ] |

        r4 < a d' f' >4 r4 < a c' d' fis' >4 |
        r4 < g bes d' >4 r4 < g bes e' >4 |
        r4 < a cis' e' >4 r4 < cis' g' a' >4 |
        r4 < a d' f' >4 < a d' f' >4 r4 |

        r4 < a d' f' >4 r4 < a c' d' fis' >4 |
        r4 < g bes d' >4 r4 < g bes e' >4 |
        r4 < a cis' e' >4 r4 < cis' g' a' >4 |
    }
    \alternative {
        {
            r4 < a d' f' >4 < a d' f' >4 r4 |
        }
        {
            r4 < a d' f' >4 < a d' f' >4 r4 |
        }
    }
}

pianorightuppersectionba = {
    r1 |
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |

    r1 |
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |
}

pianorightuppersectionbb = {
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |
}

pianorightuppersectionbc = {
    r8 a8 [ e'8 a'8 ] r8 a8 [ e'8 a'8 ] |
}

pianorightuppersectionbd = {
    r8 a8 [ e'8 a'8 ] d'4 r4 |
}

pianorightuppersectionb = {
    \repeat volta 2 {
        \pianorightuppersectionba
        \pianorightuppersectionbb
    }
    \alternative { { \pianorightuppersectionbc } { \pianorightuppersectionbd } }

    \grace { s16 } r8 c'8 [ < f' a' >8 c'8 ] r8 c'8 [ < f' a' >8 c'8 ] |
    r8 c'8 [ < f' a' >8 c'8 ] r8 c'8 [ < f' a' >8 c'8 ] |
    \grace { s16 } r8 c'8 [ < f' a' >8 c'8 ] r8 c'8 [ < f' a' >8 c'8 ] |
    r8 c'8 [ < e' g' >8 bes8 ] r8 a8 [ < c' f' >8 a8 ] |

    \grace { s16 } r8 c'8 [ < f' a' >8 c'8 ] r2 |
    f''8 [ e''8 ees''8 d''8 ] cis''8 [ c''8 b'8 bes'8 ] |
    a'8 [ aes'8 g'8 fis'8 ] f'2 |
    r8 c'8 [ < f' a' >8 c'8 ] r2 |
}

pianorightuppersectiond = {
    r8 g8 [ bes8 d'8 ] g'8 r8 r4 |
    r8 a8 [ d'8 f'8 ] a'4 r4 |
    r8 bes8 [ bes'8 bes8 ] r8 a8 [ a'8 a8 ] |
    r8 a8 [ a'8 a8 ] d'8 [ e'8 f'8 a'8 ] |

    r4 < a d' f' >8 [ < a d' f' >8 ] r4 < a c' d' fis' >4 |
    r4 < g bes d' >8 [ < g bes d' >8 ] r4 < g bes e' >4 |
    r4 < a cis' e' >8 [ < a cis' e' >8 ] r4 < cis' g' a' >4 |
    r4 < a d' f' >4 < a d' f' >4 r4 |

    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 d'8 [ d''8 d'8 ] r8 d'8 [ d''8 d'8 ] |

    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 a8 [ a'8 a8 ] r8 a8 [ a'8 a8 ] |
    r8 d'8 [ d''8 d'8 ] r8 d'8 [ d''8 d'8 ] |
}

pianorightuppercoda = {
    r8 g8 [ < bes e' >8 g8 ] r8 a8 [ < cis' e' >8 a8 ] |
    d'8 [ f'8 a'8 cis''8 ] < d' f' a' d'' >4 r4 |
}

pianoleftupperintro = {
    r1 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        d4 r4 a,4 r4 |
        d4 c4 bes,4 a,4 |
        d4 r4 a,4 r4 |
        d4 r4 a,4 r4 |

        d4 r4 d8 [ c8 bes,8 a,8 ] |
        g,4 r4 bes,4 r4 |
        a,4 r4 a,8 [ bes,8 b,8 cis8 ] |
        d4 e4 f8 [ e8 d8 a,8 ] |

        d4 r4 d8 [ c8 bes,8 a,8 ] |
        g,4 r4 bes,4 r4 |
        a,4 r4 a,8 [ bes,8 b,8 cis8 ] |
    }
    \alternative {
        {
            d2 d,4 r4 |
        }
        {
            d2 d,4 r4 |
        }
    }
}

pianoleftuppersectionba = {
    a,4 a4 a,4 a4 |
    a,4 a4 a,4 a4 |
    a,4 a4 a,4 a4 |
    d,4 d4 d,4 d4 |

    a,4 a4 a,4 a4 |
    a,4 a4 a,4 a4 |
}

pianoleftuppersectionbb = {
    a,4 a4 a,4 a4 |
}

pianoleftuppersectionbc = {
    d,4 d4 d,4 d4 |
}

pianoleftuppersectionbd = {
    d,2 r2 |
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        \pianoleftuppersectionba
        \pianoleftuppersectionbb
    }
    \alternative { { \pianoleftuppersectionbc } { \pianoleftuppersectionbd } }

    \grace { s16 } < f, a, >2 < f, a, >2 |
    < f, a, >2 < f, a, >2 |
    \grace { s16 } < f, a, >2 < f, a, >2 |
    < f, a, >4 a,4 < f, a, >2 |

    \grace { s16 } < f, a, >2 < f, a, >2 |
    f8 [ e8 ees8 d8 ] cis8 [ c8 b,8 bes,8 ] |
    a,8 [ aes,8 g,8 fis,8 ] f2 |
    < f, a, >2 < f, a, >2
}

pianoleftuppersectiond = {
    g,4 bes,4 d8 r8 r4 |
    d,4 f,4 a,4 r4 |
    bes,4 bes,4 a,4 a,4 |
    d4 e4 f4 a4 |

    d4 r4 d8 [ c8 bes,8 a,8 ] |
    g,4 r4 bes,4 r4 |
    a,4 r4 a,8 [ bes,8 b,8 cis8 ] |
    d4 a,4 d4 r4 |

    a,,4 a,4 a,,4 a,4 |
    a,,4 a,4 a,,4 a,4 |
    a,,4 a,4 a,,4 a,4 |
    d,4 d4 d,4 d4 |

    a,,4 a,4 a,,4 a,4 |
    a,,4 a,4 a,,4 a,4 |
    a,,4 a,4 a,,4 a,4 |
    d,4 d4 d,4 d4 |
}

pianoleftuppercoda = {
    a,,4 a,4 a,,4 a,4 |
    d,8 [ f,8 a,8 cis8 ] < d, d >4 r4 |
}

pianorightuppernotes = {
    \key f \major
    \time 4/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiond
    \blankmeasure
    \pianorightuppercoda
}

pianorightlowernotes = {
    \time 4/4
}

pianoleftuppernotes = {
    \key f \major
    \time 4/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiond
    \blankmeasure
    \pianoleftuppercoda
}

pianoleftlowernotes = {
    \time 4/4
}

pianorightnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiond
    \pianorightuppersectiona
    \pianorightuppersectionba
    \pianorightuppersectionbb
    \pianorightuppersectionbc
    \pianorightuppersectionba
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomeextra
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiond
    \pianoleftuppersectiona
    \pianoleftuppersectionba
    \pianoleftuppersectionbb
    \pianoleftuppersectionbc
    \pianoleftuppersectionba
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    < bda hhc >4 hhc4 hhc4 hhc4 |
}

drumshighintro = \drummode {
    s1 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative { { s1 | } { s1 | } }
}

drumshighsectionba = \drummode {
    s1 | s1 | s1 | s1 | s1 |
    s1 |
}

drumshighsectionbb = \drummode { s1 | }

drumshighsectionbc = \drummode { s1 | }

drumshighsectionbd = \drummode { s1 | }

drumshighsectionb = \drummode {
    \repeat volta 2 {
        \drumshighsectionba
        \drumshighsectionbb
    }
    \alternative { { \drumshighsectionbc } { \drumshighsectionbd } }

    \grace { s16 } s1 | s1 | \grace { s16 } s1 | s1 |
    \grace { s16 } s1 | s1 | s1 | s1 |
}

drumshighsectiond = \drummode {
    s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumshighcoda = \drummode {
    s1 | s1 |
}

drumshigh = \drummode {
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiond
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \preintro
    \drumshighextra
    \drumshighintro

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiond

    \drumshighsectiona
    \drumshighsectionba
    \drumshighsectionbb
    \drumshighsectionbc
    \drumshighsectionba

    \drumshighcoda
}

drumslow = \drummode {
}
drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 |
    d1:min    | s1    | s1 | d1:min |
}

previewnotes = {
    \key f \major
    \time 4/4
    s2 s8 a'8 d''8 f''8 |
    \bar ".|:"
    a''2 ~ a''8 bes''16 a''16 g''8 f''8 |
    a''2 ~ a''8 a'8 d''8 f''8 |
    a''2 ~ a''8 bes''16 a''16 g''8 f''8 |
    a''2 ~ a''8 a''8 d'''8 e'''8 |
}

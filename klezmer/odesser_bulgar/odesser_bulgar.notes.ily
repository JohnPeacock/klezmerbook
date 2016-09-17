\version "2.18.0"

bandmsectionaa =  {
    \markA \positionA
    \tempo \tempostring
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt
    \bar "||"
    \markTC \positionTC
}

bandmsectionab =  { s2 | \breakAfft s2 | }

bandmsectiona =  {
    \repeat volta 2 {
        \bandmsectionaa
        \bandmsectionab
    }
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |

    }
    \breakB

    \markC \positionC
    \repeat volta 2 {
        \grace { s16 s16 } s2 | \breakCone s2 | \breakCtwo
        s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    }
    \breakC
}

bandmsectiond = {
    \markD \positionD
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
    s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
    \grace { s16 } s2 | \breakDtht s2 | \breakDfrt
    s2 | \breakDfft s2 |
    \markDCAC \positionDCAC
    \bar "||"
    \breakD
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = { \markCCRT \positionCCRT \grace { s8. } s2 | \breakCCone s2 | }

bandmNV = {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectiond
    \blankmeasure
    \markCCRT \positionCCRT \grace { s8. } s2 | \breakCCone s2 |
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 }

metronomesectionaa =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionab =  { s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa \metronomesectionab }
}

metronomesectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

metronomesectiond =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    \grace { s16 } s2 | s2 | s2 | s2 |
}

metronomecoda =  { \grace { s8. } s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \metronomesectiond
    \tempo 4 = 135
    \metronomesectiona
    \metronomesectionb
    \metronomesectiond
    \tempo 4 = 140
    \metronomesectionaa
    \tempo 4 = 100
    \metronomecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  {
    a'8\ff d''4 e''8 |
    f''8 e''8 d''8 a'8  |
    d''2\trill ~ |
    d''4. r8 |
    d'''8 a''4 d'''8 |
    c'''8 b''8 a''8 e''8  |
    a''2\trill ~ |
    a''4. r8 |
    c'''8 f''4 g''8 |
      a''8 f''8 bes''8 a''8  |
    g''2\trill ~ |
    g''4. r8 |
    d'''8 d''4 g''8 |
    f''8 e''8 d''8 a'8  |
}

melodysectionab =  {
    d''2\trill ~ |
    d''4. r8 |
}

melodysectiona =  { \repeat volta 2 { \melodysectionaa \melodysectionab } }

melodysectionb =  {
    \repeat volta 2 {
        c''8 f''4 g''8 |
        a''8 c'''8 bes''8 a''8  |
        \acciaccatura { bes''16 } a''8 g''8  g''4 |
        a''8-> g''8-> g''4-> |

        c''8 e''4 f''8 |
        g''8 bes''8 a''8 g''8  |
        \acciaccatura { a''16 } g''8 f''8  f''4 |
        g''8-> f''8->  f''4-> |

        c''8 f''4 g''8 |
        a''8 f''8 bes''8 a''8  |
        g''2\trill ~ |
        g''2 |

        d'''8 d''4 g''8 |
        f''8 e''8 d''8 a'8 |
        d''2\trill ~ |
        d''4. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8  |
        d''4. e''8 |
        f''8. e''16    g''8. f''16  |
        f''8. e''16  \acciaccatura { f''16 } e''8 d''8  |
        d''8 c''8 b'8 c''8  |
        d''2 |
        \acciaccatura { e'''16 } d'''8( c'''8)  \acciaccatura { d'''16 } c'''8( b''8)  |
        \acciaccatura { c'''16 } b''8( a''8)  a''4 |
    }
}

melodysectionda =  {
    a'8 d''4 c''8 |
    c''8\trill( b'8)    b'8\trill( a'8)  |
    a'8 d''4 c''8 |
    c''8\trill( b'8)    b'8\trill( a'8)  |

    a'8 f''4 e''8 |
    e''8\trill( d''8)    d''8\trill( c''8)  |
    c''8\trill( bes'8)    bes'8\trill( a'8)  |
    a'8\trill( g'8)    g'8\trill( f'8)  |
}

melodysectiondb =  {
    a''8 f''4 g''8 |
    a''8 f''8 bes''8 a''8  |
    g''2\trill ~ |
    g''2 |

    \acciaccatura { cis'''16 } d'''8 d''4 g''8 |
    f''8 e''8 d''8 a'8  |
    d''4.   e''16 f''16  |
    d''4. r8 |
}

melodysectiond =  { \melodysectionda \melodysectiondb }

melodycoda =  {
    \acciaccatura { a''16[ bes''16 c'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

melody =  {
    \key f \major
    \time 2/4

    \melodysectiona
    \melodysectionb
    \melodysectiond
    \blankmeasure
    \acciaccatura { a''16[ bes''16 c'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

melodymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectiond
    \melodysectiona
    \melodysectionb
    \melodysectiond
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionaa =  {
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

altoharmonysectionab =  {
    s2 |
    s2 |
}

altoharmonysectiona =  {
    \repeat volta 2 { \altoharmonysectionaa \altoharmonysectionab }
}

altoharmonysectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
}

altoharmonysectiond =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | \grace { s16 } s2 | s2 | s2 | s2 |
}

altoharmonycoda =  {
    \grace { s8. } s2 |
    s2 |
}

altoharmony =  {
    \key f \major
    \time 2/4

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiond
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

altoharmonymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiond
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiond
    \altoharmonysectionaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    d4\3 f4\2 |
    d4\3 f4\2 |
    d4\3 f4\2 |
    d4\3 f4\2 |

    d4\3 f4\2 |
    d4\3 f4\2 |
    a,4\4 e4\3 |
    a,4\4 e4\3 |

    f,4\4 c4\3 |
    f,4\4 c4\3 |
    g,4\4 d4\3 |
    g,4\4 d4\3 |

    d4\3 f4\2 |
    d4\3 f4\2 |
}

basslinesectionab =  {
    d4\3 f4\2 |
    d4\3 f4\2 |
}

basslinesectiona =  {
    \repeat volta 2 {
        \basslinesectionaa
        \basslinesectionab
    }
}

basslinesectionb =  {
    \repeat volta 2 {
        f,4\4 c4\3 |
        f,4\4 c4\3 |
        g,4\4 d4\3 |
        g,4\4 d4\3 |

        c4\3 g4\2 |
        c4\3 g4\2 |
        f,4\4 c4\3 |
        f,4\4 c4\3 |

        f,4\4 c4\3 |
        f,4\4 c4\3 |
        g,4\4 d4\3 |
        g,4\4 d4\3 |

        d4\3 f4\2 |
        d4\3 a4\2 |
        d4\3 f4\2 |
        d4\3 a4\2 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } d4\3 f4\2 |
        d4\3 a4\2 |
        d4\3 f4\2 |
        d4\3 a4\2 |
        d4\3 f4\2 |
        d4\3 a4\2 |
        d4\3 f4\2 |
        d4\3 a4\2 |
    }
}

basslinesectiond =  {
    d4\3 f4\2 |
    d4\3 a4\2 |
    d4\3 f4\2 |
    d4\3 a4\2 |

    d4\3 f4\2 |
    d4\3 d4\3 |
    e4\2 c4\3 |
    f4\2 c4\3 |

    f,4\4 c4\3 |
    f,4\4 c4\3 |
    g,4\4 d4\3 |
    g,4\4 d4\3 |

    \grace { s16 } d4\3 f4\2 |
    d4\3 a4\2 |
    d4\3 f4\2 |
    d4\3 a4\2 |
}

basslinecoda =  {
    \grace { s8. } d8\3 r8 a8\2 r8 |
    d2\3\fermata |
}

bassline =  {
    \key f \major
    \time 2/4

    \basslinesectiona
    \basslinesectionb
    \basslinesectiond
    \blankmeasure
    \grace { s8. } d8\3 r8 a8\2 r8 |
    d2\3\fermata |
}

basslinemidi =  {
    \key f \major
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiond
    \basslinesectiona
    \basslinesectionb
    \basslinesectiond
    \basslinesectionaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa =  {
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

guitarnotessectionab =  {
    s2 |
    s2 |
}

guitarnotessectiona =  {
    \repeat volta 2 {
        \guitarnotessectionaa
        \guitarnotessectionab
    }
}

guitarnotessectionb =  {
    \repeat volta 2 {
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
        s2 | s2 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
}

guitarnotessectiond =  {
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

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotescoda =  {
    \grace { s8. } s2 |
    s2 |
}

guitarnotes =  {
    \key f \major
    \time 2/4

    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiond
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

guitarnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiond
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiond
    \guitarnotessectionaa
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectionaa =  \transpose c c' {
    b8\ff e'4 fis'8 |
    g'8 fis'8    e'8 b8  |
    e'2 ~ |
    e'4. r8 |

    e'8 b'4 e''8 |
    d''8 cis''8    b'8 fis'8  |
    b'2 ~ |
    b'4. r8 |

    d''8 g'4 a'8 |
    b'8 g'8    c''8 b'8  |
    a'2 ~ |
    a'8 c''8 b'8 a'8  |

    e''8 e'4 a'8 |
    g'8 fis'8    e'8 b8  |
}

clarinetsectionab =  \transpose c c' {
    e'2 ~ |
    e'4. r8 |
}

clarinetsectiona =  {
    \repeat volta 2 {
        \clarinetsectionaa
        \clarinetsectionab
    }
}

clarinetsectionb =  \transpose c c' {
    \repeat volta 2 {
        d'8 g'4 a'8 |
        b'8 d''8    c''8 b'8  |
        \grace { s16 }   b'8 a'8  a'4-^ |
        b'8-> a'8->  a'4-> |
        d'8 fis'4 g'8 |
        a'8 c''8    b'8 a'8  |
        \grace { s16 }   a'8 g'8  g'4-^ |
        a'8-> g'8->  g'4-> |
        d'8 g'4 a'8 |
        b'8 g'8    c''8 b'8  |
        a'2 ~ |
        a'8 c''8 b'8 a'8(  |
        e''8) e'4 a'8 |
        g'8 fis'8    e'8 b8  |
        e'2 ~ |
        e'4. r8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } e'8 d'8 cis'8 d'8  |
        e'4. fis'8 |
        g'8. fis'16 a'8. g'16  |
        g'8. fis'16 fis'8 e'8  |

        e'8 d'8 cis'8 d'8  |
        e'2 |
        \acciaccatura { fis'16 } e'8 d'8  \acciaccatura { e'16 } d'8 cis'8  |
        \acciaccatura { d'16 } cis'8 b8  b4 |
    }
}

clarinetsectiond =  {
    b'8 e''4-^ d''8 |
    d''8\trill( cis''8)    cis''8\trill( b'8)  |
    b'8 e''4-^ d''8 |
    d''8\trill( cis''8)    cis''8\trill( b'8)  |

    b'8 g''4-^ fis''8 |
    fis''8\trill( e''8)    e''8\trill( d''8)  |
    d''8( c'''8)    c'''8( b''8)  |
    b''8\trill( a''8)    a''8\trill( g''8)  |
    b''8 g''4 a''8 |
    b''8 g''8    c'''8 b''8  |
    a''2 ~ |
    a''8 c'''8 b''8 a''8  |

    \grace { s16 } e''8 e''4 a''8 |
    g''8 fis''8    e''8 b'8  |
    e''4.   fis''16 g''16  |
    e''4. r8 |
}

clarinetcoda =  {
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8-.-^ r8 b'8-.-^ r8 |
    e''2-^\fermata |
}

clarinetnotes =  {
    \key g \major
    \time 2/4

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiond
    \blankmeasure
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8-.-^ r8 b'8-.-^ r8 |
    e''2-^\fermata |
}

clarinetnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiond
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiond
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectionaa =  {
    fis'8\ff b'4 cis''8 |
    d''8 cis''8 b'8 fis'8  |
    b'4   fis'8 b'8 ~  |
    b'8 b'8 fis'8 b'8  |

    b''8 fis''4 b''8 |
    a''8 gis''8 fis''8 cis''8  |
    fis''4   cis''8 fis''8 ~  |
    fis''8 fis''8 g''8 gis''8  |

    a''8 d''4 e''8 |
    fis''8 d''8 g''8 fis''8  |
    e''4   b'8 e''8 ~  |
    e''8 e''8 b'8 e''8  |

    b''8 b'4 e''8 |
    d''8 cis''8 b'8 fis'8  |
}

altosaxsectionab =  {
    b'8( b''8)  r8 b''8 |
    r8 b''8 r8 b''8 |
}

altosaxsectiona =  {
    \repeat volta 2 {
        \altosaxsectionaa
        \altosaxsectionab
    }
}

altosaxsectionb =  {
    \repeat volta 2 {
        a'8 d''4 e''8 |
        fis''8  a''8 g''8 fis''8  |
        \acciaccatura { g''16 } fis''8  e''8  e''4 |

        \startOctVA
        fis'''8 -> e'''8->  e'''4 |
        \stopOctVA

        a'8 cis''4 d''8 |
        e''8  g''8 fis''8 e''8  |
        \acciaccatura { fis''16 } e''8  d''8  d''4 |
        e'''8->  d'''8->  d'''4-> |
        a'8 d''4 e''8 |
        fis''8 d''8 g''8 fis''8  |
        e''2 ~ |
        e''2( |
        b''8->) b'4 e''8 |
        d''8  cis''8 b'8 fis'8  |
        b'8 ( b''8)  r8 b''8 |
        r8 b''8 r8 b''8 |
    }


    \startOctVA
    \repeat volta 2 {
        \acciaccatura { b''16 [ cis'''16 ] } b''8 a''8 gis''8 a''8  |
        b''4. cis'''8 |
        d'''8.( cis'''16 ) e'''8.( d'''16 ) |
        d'''8.( cis'''16)  \acciaccatura { d'''16 } cis'''8. b''16  |
        b''8 a''8 gis''8 a''8  |
        b''4. r8 |
        \acciaccatura { cis'''16 } b''8( a''8)  \acciaccatura { b''16 } a''8( gis''8)  |
        \acciaccatura { a''16 } gis''8( fis''8)  fis''4 |
    }
    \stopOctVA
}

altosaxsectiond =  {
    fis''8 b''4 a''8 |
    a''8\trill( gis''8)    gis''8\trill( fis''8)  |
    fis''8 b''4 a''8 |
    a''8\trill( gis''8)    gis''8\trill( fis''8)  |

    fis''8 d'''4 c'''8 |
    c'''8\trill( b''8)    b''8\trill( a''8)  |
    a''8\trill( g''8)    g''8\trill( fis''8)  |
    fis''8\trill( e''8)    e''8\trill( d''8)  |

    fis''8 d''4 e''8 |
    fis''8 d''8 g''8 fis''8  |
    e''2 ~ |
    e''8 g''16( fis''16    eis''16 fis''16 gis''16 ais''16  |

    \grace { s16 } b''8->) b'4 e''8 |
    \acciaccatura { d''16[ e''16 ] }
    d''8 cis''8 b'8  fis'8  |
    b'4.   cis''16 d''16  |
    b'2 |
}

altosaxcoda =  {
    \acciaccatura { fis''16[ gis''16 ais''16 ] }
 b''8 r8 fis''8 r8 |
    b'2\fermata |
}

altosaxnotes =  {
    \key d \major
    \time 2/4

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiond
    \blankmeasure
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2\fermata |
}

altosaxnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiond
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiond
    \altosaxsectionaa
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa =  {
    g'8\ff g'4 a'8 |
    b'8 a'8 g'8 a'8  |
    g'8 b'4 \acciaccatura { b'16 } e''8 |
    r8 e''4 \acciaccatura { e''16 } g''8 |
    e''8 g''4 g''8 |
    fis''4 e''4 |
    d''8 fis''4-^ fis''8 |
    b'8 d''4-^ d''8 |
    g''8 b'4 d''8 |
    g''8 b'8    e''8 d''8  |
    c''8 e''8 e''8 d''8  |
    c''8 a'8 b'8 c''8  |
    b'8 g'4 c''8 |
    b'8 a'8 g'8 a'8  |
}

tenorsaxsectionab =  {
    g'8 b'4 b'8 |
    r8   b'8 b'8 b'8  |
}

tenorsaxsectiona =  {
    \repeat volta 2 {
        \tenorsaxsectionaa
        \tenorsaxsectionab
    }
}

tenorsaxsectionb =  {
    \repeat volta 2 {
        b'8 b'4 d''8 |
        g''8 b''8 a''8 g''8  |
        c''8 c''8  c''4-^ |
        e''8-^ c''8-^  c''4-^ |

        fis'8 a'4 b'8 |
        c''8 e''8 d''8 c''8  |
        b'8 b'8  b'4-^ |
        d''8-^ b'8-^  b'4-^ |

        b'8 b'4 c''8 |
        d''8 b'8 e''8 d''8  |
        c''8 e''8 e''8 d''8  |
        c''8 e''8 c''8 e''8  |

        b'8-^ g'4 c''8 |
        b'4 a'4 |
        g'8 b'8 g'8 b'8  |
        r8   b'16 b'16    b'8 b'8  |
    }

    \repeat volta 2 {
        \grace { s16 s16 } g'2 ~ |
        g'8 e'8 g'8 a'8  |
        b'8. a'16    c''8. b'16  |
        b'8. a'16    a'8 g'8  |
        g'2 ~ |
        g'8 e'8 g'8 b'8  |
        \acciaccatura { fis''16 } e''8 d''8  \acciaccatura { e''16 } d''8 cis''8  |
        \acciaccatura { d''16 } cis''8 b'8  b'4 |
    }
}

tenorsaxsectiond =  {
    g'8 g'4-^ g'8 |
    g'2 |
    e'8 g'4-^ g'8 |
    g'2 |
    g'8 b'4-^ a'8 |
    a'8( g'8)    g'8( fis'8)  |
    fis'8( e''8)    e''8( d''8)  |
    d''8( c''8)    c''8( b'8)  |
    d''8 b'4 c''8 |
    d''8 b'8    e''8 d''8  |
    c''8 e''16 e''16    e''8 e''8  |
    c''8 a'8 b'8 c''8  |

    \grace { s16 } b'8 g'4 c''8 |
    b'4 a'4 |
    g'8 b'8 b'8 a'8  |
    g'8 b'8 g'8  r8 |
}

tenorsaxcoda =  {
    \grace { s8. } g'8 r8 a'8 r8 |
    g'2-^\fermata |
}

tenorsaxnotes =  {
    \key g \major
    \time 2/4

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \blankmeasure
    \grace { s8. } g'8 r8 a'8 r8 |
    g'2-^\fermata |
}

tenorsaxnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiond
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa =  {
    b8\ff e'4( fis'8) |
    g'8 fis'8    e'8 b8  |
    e'2 ~ |
    e'4. r8 |
    e''8 b'4( e''8) |
    d''8 cis''8    b'8 fis'8  |
    b'2 ~ |
    b'4. r8 |
    d''8 g'4( a'8) |
    b'8 g'8    c''8 b'8  |
    a'2 ~ |
    a'4. r8 |
    e''8 e'4 a'8 |
    g'8 fis'8    e'8 b8  |
}

trumpetsectionab =  {
    e'2 ~ |
    e'4. r8 |
}

trumpetsectiona =  {
    \repeat volta 2 {
        \trumpetsectionaa
        \trumpetsectionab
    }
}

trumpetsectionb =  {
    \repeat volta 2 {
        d'8 g'4( a'8) |
        b'8 d''8    c''8 b'8  |
        \acciaccatura { c''16 } b'8 a'8  a'4 |
        b'8-> a'8->  a'4-> |
        d'8 fis'4 g'8 |
        a'8 c''8    b'8 a'8  |
        \acciaccatura { b'16 } a'8 g'8  g'4 |
        a'8-> g'8->  g'4-> |
        d'8 g'4 a'8 |
        b'8 g'8    c''8 b'8  |
        a'2 ~ |
        a'2( |
        e''8->) e'4 a'8 |
        g'8 fis'8    e'8 b8  |
        e'2 ~ |
        e'4. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { e'16 [ fis'16 ] } e'8 d'8    cis'8 d'8  |
        e'4. fis'8( |
        g'8.) fis'16    a'8. g'16  |
        g'8. fis'16  \acciaccatura { g'16 } fis'8 e'8  |

        e'8 d'8    cis'8 d'8  |
        e'2 |
        \acciaccatura { fis''16 } e''8 d''8  \acciaccatura { e''16 } d''8 cis''8  |
        \acciaccatura { d''16 } cis''8 b'8  b'4 |
    }
}

trumpetsectiond =  {
    b'8 e''4( d''8) |
    d''8\trill( cis''8)    cis''8\trill( b'8)  |
    b'8 e''4( d''8) |
    d''8\trill( cis''8)    cis''8\trill( b'8)  |

    b'8 g''4( fis''8) |
    fis''8\trill( e''8)    e''8\trill( d''8)  |
    d''8\trill( c''8)    cis''8\trill( b'8)  |
    b'8\trill( a'8)    a'8\trill( g'8)  |
    b'8 g'4( a'8) |
    b'8 g'8    c''8 b'8  |
    a'2 ~ |
    a'2( |

    \grace { s16 } e''8->) e'4 a'8 |
    g'8 fis'8    e'8 b8  |
    e'4.   fis'16 g'16  |
    e'4. r8 |
}

trumpetcoda =  {
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    e'2\fermata |
}

trumpetnotes =  {
    \key g \major
    \time 2/4

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiond
    \blankmeasure
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    e'2\fermata |
}

trumpetnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiond
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiond
    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa =  {
    d8\ff  r8 a,8  r8 |
    d8  r8 a,8  r8 |
    \repeat unfold 2 { d8  d'8 a8 d'8  | }

    d'8 a4 d'8 |
    c'8  b8 a8 e8  |
    \repeat unfold 2 { a,8  a8 c8 a8  } |

    \repeat unfold 2 { f8  r8 c8  r8 } |
    g8  g8 d8 g8  |
    g8  g8 d8 g8 (  |

    d'8 ) d4 g8 |
    f8  e8 d8 a,8  |
}

trombonesectionab =  { \repeat unfold 2 { d8 d'8 a8 d'8 | } }

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa \trombonesectionab }
}

trombonesectionba =  {
    \repeat unfold 2 { f8 r8 c8  r8 } |
    d8 g8  g4 |
    d8-> g8-> g4-> |

    \repeat unfold 2 {   c8 r8 g,8  r8 } |
    c8 f8  f4 |
    f8-> f8->  f4-> |

    \repeat unfold 2 {   f8 r8 c8  r8 } |
    g,8 g8 d8 g8  |
    g,8 g8 d8 g8(  |

    d'8-^) d4 a8 |
    f8 e8 d8 a,8  |
    \repeat unfold 2 {   d8 d'8 a8 d'8  } |
}

trombonesectionb =  {
    \repeat volta 2 { \trombonesectionba }

    \repeat volta 2 {
        \grace { s16 s16 } d8 r8 a,8  r8 |
        d8 r8 a,8  r8 |
        d8 r8 a,8  r8 |
        d8 r8 a,8  r8 |
        \repeat unfold 4 {   d8 r8 a,8  r8 | }
    }
}

trombonesectiond =  {
    a8 d'4 c'8 |
    c'8 r8   b8 a8  |
    a8 d'4 c'8 |
    c'8 r8   b8 a8  |

    a8 f'4 e'8 |
    e'8 r8 d'8 r8 |
    c'8 r8 bes8 r8 |
    a8 r8   g8 f8  |

    a8 f4 g8 |
    a8 f8 bes8 a8  |
    g8 g8 d8 g8  |
    g8 g8 d8 g8(  |

    \grace { s16 } d'8-^) d4 g8 |
    f8 e8 d8 a,8  |
    d4.   e16 f16  |
    d8 d'8 a8 d'8  |
}

trombonecoda =  {
    \acciaccatura { a,16[ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->\fermata |
}

trombonenotes =  {
    \key f \major
    \time 2/4

    \trombonesectiona
    \trombonesectionb
    \trombonesectiond
    \blankmeasure
    \acciaccatura { a,16[ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    d2->\fermata |
}

trombonenotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectiond

    \trombonesectionaa

    \trombonecoda
}

trombonefortrumpetnotes = \transpose bes c'' { \trombonenotes }
tromboneforflutenotes = \transpose c c'' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectionaa =  {
    a'8\ff d''4( e''8) |
    f''8 e''8 d''8 a'8  |
    d''2- ~ |
    d''4. r8 |
    d'''8 a''4( d'''8) |
    c'''8 b''8 a''8 e''8  |
    a''2- ~ |
    a''4. r8 |
    c'''8 f''4-1 g''8 |
    a''8 f''8 bes''8 a''8  |
    g''2- ~ |
    g''4. r8 |
    d'''8-4 d''4-1 g''8 |
    f''8 e''8 d''8 a'8-0  |
}

violinsectionab =  {
    d''2- ~ |
    d''4. r8 |
}

violinsectiona =  {
    \repeat volta 2 {
        \violinsectionaa
        \violinsectionab
    }
}

violinsectionb =  {
    \repeat volta 2 {
        c''8-2 f''4 g''8 |
        a''8-1 c'''8 bes''8 a''8  |
        \acciaccatura { bes''16 } a''8( g''8)  g''4 |
        a''8-> g''8->  g''4-> |

        c''8 e''4( f''8) |
        g''8 bes''8 a''8 g''8  |
        \acciaccatura { a''16 } g''8( f''8)  f''4 |
        g''8-> f''8->  f''4-> |

        c''8 f''4 g''8 |
        a''8 f''8 bes''8 a''8  |
        g''2 ~ |
        g''2( |

        d'''8) d''4 g''8 |
        f''8 e''8 d''8 a'8  |
        d''2 ~ |
        d''4. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { d''16 [ e''16 ] } d''8-3( c''8) b'8 c''8  |
        d''4. e''8 |
        f''8.-3 e''16    g''8. f''16  |
        f''8. e''16  \acciaccatura { f''16 } e''8 d''8  |
        d''8-3 c''8 b'8 c''8  |
        d''2 |
        \acciaccatura { e'''16 } d'''8 c'''8  \acciaccatura { d'''16 } c'''8 b''8  |
        \acciaccatura { c'''16 } b''8 a''8  a''4 |
    }
}

violinsectionda =  \transpose c c' {
    \startOctVA
    a'8 d''4( c''8) |
    c''8\trill( b'8)    b'8\trill( a'8)  |
    a'8 d''4( c''8) |
    c''8\trill( b'8)    b'8\trill( a'8)  |

    a'8 f''4( e''8) |
    e''8\trill( d''8)    d''8\trill( c''8)  |
    c''8\trill( bes'8)    bes'8\trill( a'8)  |
    a'8\trill( g'8)    g'8\trill( f'8)  |
    \stopOctVA
}

violinsectiondb =  {
    a''8 f''4( g''8) |
    a''8 f''8 bes''8 a''8  |
    g''2 ~ |
    g''2( |

    \grace { s16 } d'''8->) d''4 g''8 |
    f''8 e''8 d''8 a'8  |
    d''4.   e''16 f''16  |
    d''4. r8 |
}

violinsectiond =  {
    \violinsectionda
    \violinsectiondb
}

violincoda =  {
    \acciaccatura { a''16[ bes''16 c'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

violinnotes =  {
    \key f \major
    \time 2/4

    \violinsectiona
    \violinsectionb
    \violinsectiond
    \blankmeasure
    \acciaccatura { a''16[ bes''16 c'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

violinnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \violinsectiona
    \violinsectionb
    \violinsectionda
    \violinsectiondb
    \violinsectiona
    \violinsectionb
    \violinsectionda
    \violinsectiondb
    \violinsectionaa
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectionaa =  {
    a'8\ff d''4 e''8 |
    f''8[ e''8 d''8 a'8 ] |
    < f' a' d'' >2 ~ |
    < f' a' d'' >4. r8 |
    d'''8 a''4 d'''8 |
    c'''8[ b''8 a''8 e''8 ] |
    < c'' e'' a'' >2 ~ |
    < c'' e'' a'' >4. r8 |
    c'''8 f''4 g''8 |
    a''8[ f''8 bes''8 a''8 ] |
    < bes' d'' g'' >2 ~ |
    < bes' d'' g'' >4. r8 |
    d'''8 d''4 g''8 |
    f''8[ e''8 d''8 a'8 ] |
}

pianorightuppersectionab =  {
    < f' a' d'' >2 ~ |
    < f' a' d'' >4. r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        \pianorightuppersectionaa
        \pianorightuppersectionab
    }
}

pianorightuppersectionb =  {
    \repeat volta 2 {
        c''8 f''4 g''8 |
        a''8[ c'''8 bes''8 a''8 ] |
        \acciaccatura { bes''16 } a''8[ g''8 ] g''4 |
        < c'' d'' a'' >8[-> < bes' d'' g'' >8-> ] < bes' d'' g'' >4-> |

        c''8 e''4 f''8 |
        g''8[ bes''8 a''8 g''8 ] |
        \acciaccatura { a''16 } g''8[ f''8 ] f''4 |
        < bes' c'' g'' >8[-> < a' c'' f'' >8-> ] < a' c'' f'' >4-> |

        c''8 f''4 g''8 |
        a''8[ f''8 bes''8 a''8 ] |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >2 |

        d'''8 d''4 g''8 |
        f''8[ e''8 d''8 a'8 ] |
        < f' a' d'' >2 ~ |
        < f' a' d'' >4. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { d''16 [ e''16 ] } d''8[ c''8 b'8 c''8 ] |
        d''4. e''8 |
        f''8.[ e''16 ]   g''8.[ f''16 ] |
        f''8.[ e''16 ] \acciaccatura { f''16 } e''8[ d''8 ] |
        d''8[ c''8 b'8 c''8 ] |
        d''2 |
        \acciaccatura { e'''16 } d'''8[( c'''8) ] \acciaccatura { d'''16 } c'''8[( b''8) ] |
        \acciaccatura { c'''16 } b''8[( a''8) ] a''4 |
    }
}

pianorightuppersectionda =  {
    \startOctVA
    a''8 d'''4 c'''8 |
    c'''8[\trill( b''8) ]   b''8[\trill( a''8) ] |
    a''8 d'''4 c'''8 |
    c'''8[\trill( b''8) ]   b''8[\trill( a''8) ] |

    a''8 f'''4 e'''8 |
    e'''8[\trill( d'''8) ]   d'''8[\trill( c'''8) ] |
    c'''8[\trill( bes''8) ]   bes''8[\trill( a''8) ] |
    a''8[\trill( g''8) ]   g''8[\trill( f''8) ] |
    \stopOctVA
}

pianorightuppersectiondb =  {
    a''8 f''4 g''8 |
    a''8[ f''8 bes''8 a''8 ] |
    < bes' d'' g'' >2 ~ |
    < bes' d'' g'' >2 |

    \acciaccatura { cis'''16 } d'''8 d''4 g''8 |
    f''8[ e''8 d''8 a'8 ] |
    d''4.   e''16[ f''16 ] |
    < f' d'' >4. r8 |
}

pianorightuppersectiond =  {
    \pianorightuppersectionda
    \pianorightuppersectiondb
}

pianorightuppercoda =  {
    \acciaccatura { a''16[ bes''16 c'''16 ] } < f'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    \stemDown
    < f' a' d'' >2\fermata |
}

pianoleftuppersectionaa =  {
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |

    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    a,8[ a8 e8 a8 ] |
    a,8[ a8 e8 a8 ] |

    f,8[ f8 c8 f8 ] |
    f,8[ f8 c8 f8 ] |
    g,8[ g8 d8 g8 ] |
    g,8[ g8 d8 g8 ] |

    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
}

pianoleftuppersectionab =  {
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        \pianoleftuppersectionaa
        \pianoleftuppersectionab
    }
}

pianoleftuppersectionb =  {
    \repeat volta 2 {
        f,8[ f8 c8 f8 ] |
        f,8[ f8 c8 f8 ] |
        g,8[ g8 d8 g8 ] |
        g,8[ g8 d8 g8 ] |

        c8[ c'8 g8 c'8 ] |
        c8[ c'8 g8 c'8 ] |
        f,8[ f8 c8 f8 ] |
        f,8[ f8 c8 f8 ] |

        f,8[ f8 c8 f8 ] |
        f,8[ f8 c8 f8 ] |
        g,8[ g8 d8 g8 ] |
        g,8[ g8 d8 g8 ] |

        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
    }

    \repeat volta 2 {
        \grace { s16 s16 } d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
        d8[ d'8 f8 d'8 ] |
    }
}

pianoleftuppersectiond =  {
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |

    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    e8[ < g c' >8 ]   c8[ < g c' >8 ] |
    f8[ < a c' >8 ]   c8[ < a c' >8 ] |

    f,8[ f8 c8 f8 ] |
    f,8[ f8 c8 f8 ] |
    g,8[ g8 d8 g8 ] |
    g,8[ g8 d8 g8 ] |

    \grace { s16 } d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
    d8[ d'8 f8 d'8 ] |
}

pianoleftuppercoda =  {
    \grace { s8. } < d a >8 r8 < a, a >8 r8 |
    < d, d >2\fermata |
}

pianorightuppernotes =  {
    \key f \major
    \time 2/4

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiond
    \blankmeasure
    \acciaccatura { a''16[ bes''16 c'''16 ] } < f'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    \stemDown
    < f' a' d'' >2\fermata |
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \key f \major
    \time 2/4

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiond
    \blankmeasure
    \grace { s8. } < d a >8 r8 < a, a >8 r8 |
    < d, d >2\fermata |
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionda
    \pianorightuppersectiondb
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionda
    \pianorightuppersectiondb
    \pianorightuppersectionaa
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiond
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiond
    \pianoleftuppersectionaa
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppersectionaa = {
    < f' a' >8\ff < f' d'' >4 < g' e'' >8 |
    < a' f'' >8 < g' e'' >8 < f' d'' >8 < g' a' >8 |
    < f' d'' >2 ~ |
    < f' d'' >4. r8 |

    < f'' d''' >8 < f'' a'' >4 < f'' d''' >8 |
    < e'' c''' >8 < d'' b'' >8 < c'' a'' >8 < d'' e'' >8 |
    < c'' a'' >2 ~ |
    < c'' a'' >4. r8 |

    < c'' c''' >8 < a' f'' >4 < bes' g'' >8 |
    < c'' a'' >8 f''8 < d'' bes'' >8 < c'' a'' >8 |
    < bes' g'' >2 ~ |
    < bes' g'' >8 bes''8 a''8 g''8 |

    \acciaccatura { cis'''16 } d'''8-> d''4 < bes' g'' >8 |
    < a' f'' >8 < g' e'' >8 < f' d'' >8 < g' a' >8 |
}

accordionrightuppersectionab = {
    < f' d'' >2 ~ |
    < f' d'' >4. r8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        \accordionrightuppersectionaa \accordionrightuppersectionab
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        < a' c'' >8 < a' f'' >4 < c'' g'' >8 |
        < f'' a'' >8 < a'' c''' >8 < g'' bes'' >8 < f'' a'' >8 |
        \acciaccatura { bes''16 } a''8 g''8 g''4 |
        < c'' d'' a'' >8 -> < bes' d'' g'' >8-> < bes' d'' g'' >4-> |

        < bes' c'' >8 < bes' e'' >4 < a' f'' >8 |
        < bes' g'' >8 < d'' bes'' >8 < c'' a'' >8 < bes' g'' >8 |
        \acciaccatura { a''16 } < a' g'' >8 < a' f'' >8 < a' f'' >4 |
        < bes' c'' g'' >8 -> < a' c'' f'' >8-> < a' c'' f'' >4-> |

        < a' c'' >8 < a' f'' >4 < c'' g'' >8 |
        < c'' a'' >8 f''8 < d'' bes'' >8 < c'' a'' >8 |
        < bes' g'' >2 ~ |
        < bes' g'' >8 bes''8 a''8 g''8 |

        d'''8 d''4 < bes' g'' >8 |
        < a' f'' >8 < g' e'' >8 < f' d'' >8 < g' a' >8 |
        < f' d'' >2 ~ |
        < f' d'' >4. r8 |
    }

    \repeat volta 2 {
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. e''8 |
        f''8. e''16 g''8. f''16 |
        f''8. e''16 \acciaccatura { f''16 } e''8 d''8 |
        d''8 c''8 b'8 c''8 |
        d''2 |
        \acciaccatura { e'''16 } d'''8 c'''8 \acciaccatura { d'''16 } c'''8 b''8 |
        \acciaccatura { c'''16 } b''8 a''8 a''4 |
    }
}

accordionrightuppersectionda = {
    \startOctVA
    a''8 d'''4 c'''8 |
    c'''8\prall ( b''8 ) b''8\prall ( a''8 ) |
    a''8 d'''4 c'''8 |
    c'''8\prall ( b''8 ) b''8\prall ( a''8 ) |

    a''8 f'''4 e'''8 |
    e'''8\prall ( d'''8 ) d'''8\prall ( c'''8 ) |
    c'''8\prall ( bes''8 ) bes''8\prall ( a''8 ) |
    a''8\prall ( g''8 ) g''8\prall ( f''8 ) |
    \stopOctVA
}

accordionrightuppersectiondb = {
    < c'' a'' >8 < a' f'' >4 < bes' g'' >8 |
    < c'' a'' >8 f''8 < d'' bes'' >8 < c'' a'' >8 |
    < bes' g'' >2 ~ |
    < bes' g'' >8 bes''8 a''8 g''8 |

    \acciaccatura { cis'''16 } d'''8-> d''4 < bes' g'' >8 |
    < a' f'' >8 < g' e'' >8 < f' d'' >8 < g' a' >8 |
    < f' d'' >4. << { \stemUp e''16 f''16 \stemNeutral } \\ { \stemDown g'8 \stemNeutral } >> |
    < f' d'' >4. r8 |
}

accordionrightuppersectiond = {
    \accordionrightuppersectionda
    \accordionrightuppersectiondb
}

accordionrightuppercoda = {
    \acciaccatura { a'16 [ b'16 cis''16 ] } < f' d'' >8-.-> r8 < cis'' g'' a'' >8-.-> r8 |
    \stemDown
    < f' a' d'' >2^>^\fermata |
}

accordionleftuppersectionaa = {
    d,8 d'8^"m" a,8 a8^"7" |
    d,8_4^"B.S." a,8_3 d,8_4 cis,8_3_- |
    d,8_3 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8 d'8 |

    d,8 d'8 d,8 d'8 |
    a,8_3^"B.S." e,8_2 a,8_3 gis,8_2_- |
    a,8 a8^"m" e,8 a8 |
    a,8 a8^"m" a,8^"B.S." g,8 |

    f,8 f8^"M" c8 c'8^"7" |
    f,8 f8^"M" f,8 f8 |
    g,8 g8^"m" d,8 g8 |
    g,8 g8 g,8 g8 |

    d,8 d'8^"m" d,8 g8^"m" |
    d,8^"B.S." a,8 d,8 a,8 |
}

accordionleftuppersectionab = {
    d,8 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        \accordionleftuppersectionaa \accordionleftuppersectionab
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        f,8 f8^"M" c8 c'8^"7" |
        f,8 f8^"M" c8 f8 |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |

        g,8 c'8^"7" g,8_3^"B.S." f,8_4 |
        e,8_3_- c'8 c8 c'8 |
        f,8 f8^"M" c8 f8 |
        f,8 f8 c8 f8 |

        f,8 f8^"M" c8 c'8^"7" |
        f,8 f8^"M" f,8 f8 |
        g,8 g8^"M" d,8 g8 |
        g,8 g8 g,8 g8 |

        d,8 d'8^"m" d,8 g8^"m" |
        d,8^"B.S." a,8 d,8 a,8 |
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
    }

    \repeat volta 2 {
        \grace { s16 s16 } d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 a8^"7" |
        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"m" a,8 d'8 |

        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
    }
}

accordionleftuppersectiond = {
    d,8 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
    d,8 d'8 a,8 d'8 |
    d,8 d'8 a,8 d'8 |

    d,8 d'8 a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"m" |
    c8 c'8^"7" f,8 f8^"M" |
    c8 c'8^"7" f,8 f8^"M" |

    f,8 f8 c8 c'8^"7" |
    f,8 f8^"M" f,8 f8 |
    g,8 g8^"m" d,8 g8 |
    g,8 g8 g,8 g8 |

    \grace { s16 } d,8 d'8^"m" d,8 g8^"m" |
    d,8^"B.S." a,8 d,8 a,8 |
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 d'8 |
}

accordionleftuppercoda = {
    \grace { s8. } < d, d' >8^"m"_._> r8 < a, a >8^"7"_._> r8 |
    < d, d' >2^>^"m"_\fermata |
}

accordionrightuppernotes = {
    \key f \major
    \time 2/4

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectiond
    \blankmeasure
    \acciaccatura { a'16 [ b'16 cis''16 ] } < f' d'' >8-.-> r8 < cis'' g'' a'' >8-.-> r8 |
    \stemDown
    < f' a' d'' >2^>^\fermata |
}

accordionrightlowernotes = {
    \time 2/4
}

accordionleftuppernotes = {
    \key f \major
    \time 2/4

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiond
    \blankmeasure
    \grace { s8. } < d, d' >8^"m"_._> r8 < a, a >8^"7"_._> r8 |
    < d, d' >2^>^"m"_\fermata |
}

accordionleftlowernotes = {
    \time 2/4
}

accordionrightnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionda
    \accordionrightuppersectiondb
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionda
    \accordionrightuppersectiondb
    \accordionrightuppersectionaa
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiond
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiond
    \accordionleftuppersectionaa
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionaa = \drummode {
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

drumshighsectionab = \drummode {
    s2 |
    s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        \drumshighsectionaa
        \drumshighsectionab
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
    }

    \repeat volta 2 {
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumshighsectiond = \drummode {
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

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |
}

drumshighcoda = \drummode {
    \grace { s8. } s2 |
    s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiond
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiond
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiond
    \drumshighsectionaa
    \drumshighcoda
}

drumslowsectionaa = \drummode {
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

drumslowsectionab = \drummode {
    s2 |
    s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        \drumslowsectionaa
        \drumslowsectionab
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
    }

    \repeat volta 2 {
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumslowsectiond = \drummode {
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

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |
}

drumslowcoda = \drummode {
    \grace { s8. } s2 |
    s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiond
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiond
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiond
    \drumslowsectionaa
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min | a2:min | a2:min |
    f2 | f2 | g2:min | g2:min |
    d2:min | d2:min |
}

chordletterssectionab = \chordmode {
    \chordChangesOff d2:min \chordChangesOn | d2:min |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordletterssectionaa
        \chordletterssectionab
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        f2 | f2 | g2:min | g2:min |
        c2:7 | c2:7 | f2 | f2 |
        f2 | f2 | g2:min | g2:min |
        d2:min | d2:min | d2:min | d2:min |
    }

    \repeat volta 2 {
        \chordChangesOff \grace { d8:min } \chordChangesOn d2:min | d2:min |
        d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
    }
}

chordletterssectiond = \chordmode {
    \chordChangesOff d2:min \chordChangesOn | d2:min | d2:min | d2:min |
    d2:min | d2:min | c2:7 | f2 |
    f2 | f2 | g2:min | g2:min |
    \grace { d16:min } d2:min | d2:min | d2:min | d2:min |
}

chordletterscoda = \chordmode {
    \chordChangesOff \grace { d8.:min } \chordChangesOn d4:min a4:7 | d2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiond
    \blankmeasure
    \chordChangesOff \grace { d8.:min } \chordChangesOn d4:min a4:7 | d2:min |
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

leadsheetnotes = { \melody }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = { \melody }

flutenotesmidi = { \melodymidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { \bassline }

euphoniumnotesmidi = { \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = { \bassline }

bassnotesmidi = { \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | s2 | s2 | s2 |
}

previewnotes = {
    \key f \major
    \time 2/4
    a'8 d''4 e''8 | f''8 e''8 d''8 a'8  | d''2\trill ~ | d''4. r8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

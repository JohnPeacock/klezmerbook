\version "2.18.2"

% same song as Kammen Vol. 1, No. 20

bandmintro = {
    s2 | \breakINone
    s2 | \breakIN
}

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone
        s2 | \breakAtwo
        s2 | \breakAtre
        s2 | \breakAfor
        s2 | \breakAfiv
        s2 | \breakAsix
        s2 | \breakAsev
    }
    \alternative {
        { s2 | \breakAeit }
        { s2 | }
    }
    \bar ".|:-||" \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone
        s2 | \breakBtwo
        s2 | \breakBtre
        s2 | \breakBfor
        s2 | \breakBfiv
        s2 | \breakBsix
        s2 | \breakBsev
    }
    \alternative {
        { s2 | \breakBeit }
        { s2 | }
    }
    \bar ".|:-||" \breakB
}

bandmsectionca = {
    \markC \positionC
    s2 | \breakCone
    s2 | \breakCtwo
    s2 | \breakCtre
    s2 | \breakCfor
    \grace { s16 } s2 | \breakCfiv
    s2 | \breakCsix
    s2 | \breakCsev
    s2 | \breakCeit
    s2 | \breakCnin
    s2 | \breakCten
    \markTC \positionTC
    \bar "||"
}

bandmsectioncb = { s2 | \breakCelv }

bandmsectioncc = { s2 | \breakCtwl }

bandmsectioncd = { s2 | }

bandmsectionc = {
    \repeat volta 2 {
        \bandmsectionca
        \bandmsectioncb
    }
    \alternative { { \bandmsectioncc } { \bandmsectioncd } }
    \markDS \positionDS
    \bar "||" \breakC
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC
    s2 | \breakCCone
    s2 | \breakCCtwo
    s2 |
    \bar "|."
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 | }

metronomeextra = { s2 | s2 | }

metronomeintro = { s2 | s2 | }

metronomesectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronomesectionb = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronomesectionca = {
    s2 | s2 | s2 | s2 | \grace { s16 } s2 | s2 | s2 | s2 | s2 | s2  |
}

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

metronomecoda = { s2 | s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \tempo 4 = 80
    \preintro
    \tempo 4 = 80
    \metronomeextra
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \tempo 4 = 100
    \metronomesectiona
    \metronomesectionb
    \metronomesectionca
    \metronomecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteintro = {
    << r2 { s16 s16 s8 s8 s8 } >> |
    r2 |
}

flutesectiona = {
    \repeat volta 2 {
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        b'4 e''4->\sf |

        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        g'16 [ fis'16 a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'8 [ b8 ] e'4 |
        }
        {
            e'4. e'8 |
        }
    }
}

flutesectionb = {
    \repeat volta 2 {
        e'8 a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'8 |
        a'8 [ g'8 ] b'4 |
        ais'16\mp [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
        e'8 [ e'16 b16 ] e'8 [ e'8 ] |
        ais'16 [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'4. e'8 |
        }
        {
            e'4 r8 b'8\f |
        }
    }
}

flutesectionca = {
    e''4.\f   dis''16 [ fis''16 ] |
    e''4.^-   dis''16 [ fis''16 ] |
    e''8\p\< [ dis''16 fis''16 ] e''8 [ dis''16 fis''16 ] |
    e''8 [ dis''16 fis''16 ] e''8\prall\! r8 |

    \grace { s16 }   e''16\p [ d''16 d''16 cis''16 ] cis''16 [_"cresc." b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 ais'16 ] |
    ais'8. [ g'16 ] b'4 |

    e'8 [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    e'8 [ e'16 b16 ] e'8 [ e'8 ] |
}

flutesectioncb = {
    e'8 [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
}

flutesectioncc = {
    e'4. b'8 |
}

flutesectioncd = {
    e'8 r8 e''8 r8 |
}

flutesectionc = {
    \repeat volta 2 {
        \flutesectionca
        \flutesectioncb
    }
    \alternative {
        {
            \flutesectioncc
        }
        {
            \flutesectioncd
        }
    }
}

flutecoda = {
    <<
        {
            e'8 [_\mp a'16 g'16 ] fis'4\glissando |
            e''8_\f r8 b'8 r8
        }
        {
            s8.\< s16 s4 |
            s2\!
        }
    >> |
    e'4 r4
}

%-------------------------------------------------

flutenotes = \transpose c bes {
    \key g \major
    \time 2/4

    \dynamicDown

    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \blankmeasure
    \flutecoda
}

flutenotesmidi = \transpose c bes {
    \key g \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiona
    \flutesectionb
    \flutesectionca
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    r2 |
    r2 |
}

clarinetsectiona = {
    \repeat volta 2 {
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        b'4 e''4->\sf |

        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        g'16 [ fis'16 a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'8 [ b8 ] e'4 |
        }
        {
            e'4. e'8 |
        }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        e'8 a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'8 |
        a'8 [ g'8 ] b'4 |
        ais'16\mp [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
        e'8 [ e'16 b16 ] e'8 [ e'8 ] |
        ais'16 [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'4. e'8 |
        }
        {
            e'4 r8 b'8\f |
        }
    }
}

clarinetsectionca = {
    e''4.\f   dis''16 [ fis''16 ] |
    e''4.^-   dis''16 [ fis''16 ] |
    e''8\p\< [ dis''16 fis''16 ] e''8 [ dis''16 fis''16 ] |
    e''8 [ dis''16 fis''16 ] e''8\prall\! r8 |

    \grace { s16 }   e''16\p [ d''16 d''16 cis''16 ] cis''16 [_"cresc." b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 ais'16 ] |
    ais'8. [ g'16 ] b'4 |

    e'8 [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    e'8 [ e'16 b16 ] e'8 [ e'8 ] |
}

clarinetsectioncb = {
    e'8 [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
}

clarinetsectioncc = {
    e'4. b'8 |
}

clarinetsectioncd = {
    e'8 r8 e''8 r8 |
}

clarinetsectionc = {
    \repeat volta 2 {
        \clarinetsectionca
        \clarinetsectioncb
    }
    \alternative {
        {
            \clarinetsectioncc
        }
        {
            \clarinetsectioncd
        }
    }
}

clarinetcoda = {
    <<
        {
            e'8_\mp [ a'16 g'16 ] fis'4\glissando |
            e''8_\f r8 b'8 r8
        }
        {
            s8.\< s16 s4 |
            s2\!
        }
    >> |
    e'4 r4
}

%-------------------------------------------------

clarinetnotes = \transpose c c' {
    \key g \major
    \time 2/4

    \dynamicDown

    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = \transpose c c' {
    \key g \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    << r2 { s8^"2-bar vamp" s8 s8 s8 } >> |
    r2 |
}

trumpetsectiona = {
    \repeat volta 2 {
        b16\mp [ e'16 g'16 b'16 ]
        ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        b'4 e''4->\sf |
        b16 [ e'16 g'16 b'16 ] ais'16 [ b'16 g'16 b'16 ] |
        ais'16 [ b'16 g'16 b'16 ] ais'16 [ g'16 fis'16 e'16 ] |
        g'16 [ fis'16 a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'8 [ b8 ] e'4 |
        }
        {
            e'4. e'8 |
        }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        e'8\mf a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'16 [ gis'16 ] |
        a'8 a'4 a'8 |
        a'8 [ g'8 ] b'4 |
        ais'16\mp [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
        e'8 [ e'16 b16 ] e'8 [ e'8 ] |
        ais'16 [ b'16 ais'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    }
    \alternative {
        {
            e'4. e'8 |
        }
        {
            e'4 r8 b'8 |
        }
    }
}

trumpetsectionca = {
    e''4.-\f   dis''16 [ fis''16 ] |
    e''4.--   dis''16 [ fis''16 ] |
    e''8\p\< [ dis''16 fis''16 ] e''8 [ dis''16 fis''16 ] |
    e''8 [ dis''16 fis''16 ] e''8\! r8 |

    \grace { s16 }   e''16\p [ d''16 d''16 cis''16 ] cis''16 [_"cresc." b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 e''16 ] |
    e''16 [ d''16 d''16 cis''16 ] cis''16 [ b'16 b'16 ais'16 ] |
    ais'8. [ g'16 ] b'4 |

    e'8\mp [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
    e'8 [ e'16 b16 ] e'8 [ e'8 ] |
}

trumpetsectioncb = {
      e'8 [ a'16 g'16 ] fis'16 [ e'16 fis'16 g'16 ] |
}

trumpetsectioncc = {
    e'4. b'8 |
}

trumpetsectioncd = {
    e'8 r8 e''8 r8 |
}

trumpetsectionc = {
    \repeat volta 2 {
        \trumpetsectionca
        \trumpetsectioncb
    }
    \alternative {
        {
            \trumpetsectioncc
        }
        {
            \trumpetsectioncd
        }
    }
}

trumpetcoda = {
      c''8 [ c''8 b'8 b'8 ] |
    e''8--^.\f r8 b'8--^. r8 |
    e'4--_. r4
}

%-------------------------------------------------

trumpetnotes = {
    \key g \major
    \time 2/4

    \dynamicDown

    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key g \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% this part lifted from Kammen, Vol. 1, Song 20.

tenorsaxintro = {
    r2 |
    r2 |
}

tenorsaxsectionaa = {
      g'8\mf [ b'8 ] \acciaccatura { dis''16 } e''4-^ |
    \acciaccatura { dis''16 } e''4-^   c''8 [ b'8 ] |
      g'8 [ b'8 ] e''8 [ e''16 fis''16 ] |
    g''8 e''4( b''8) |

      g'8\mf [ b'8 ] \acciaccatura { dis''16 } e''4-^ |
    \acciaccatura { dis''16 } e''4-^   c''8 [ b'8 ] |
      e''8 [ c''16 b'16 ] a'16 [ g'16 a'16 b'16 ] |
}

tenorsaxsectionab = {
    g'8 r8 g'4-^ |
}

tenorsaxsectionac = {
    g'8 b'4 b'8 |
}

tenorsaxsectiona = {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionba = {
    c''8 c''4 \acciaccatura { d''16 }   c''16 [ b'16 ] |
    c''8 c''4 \acciaccatura { d''16 }   c''16 [ b'16 ] |
    c''8 e''4 c''8 |
      b'8 [ e''8 ] g''8 [ e''8 ] |

      c''8 [ e''8 ] b'8 [ a'8 ] |
      g'8 [ g'16 e'16 ] g'8 [ b'8 ] |
      c''8 [( e''8) ] b'8 [ a'8 ] |
}

tenorsaxsectionbb = {
    g'8 b'4 b'8 |
}

tenorsaxsectionbc = {
      g'8 [ b'8 g'8 ] r8 |
}

tenorsaxsectionb = {
    \repeat volta 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxsectionca = {
    g'16 [ b'16 a'16 b'16 ] g'8 [ fis'16 a'16 ] |
    g'16 [ b'16 a'16 b'16 ] g'8 [ fis'16 a'16 ] |
    g'8 [( a'8) ] g'8 [( a'8) ] |
    g'8 [ a'8 g'8 b'8-^ ] |

    \acciaccatura { dis'16 } e'2 |
    \acciaccatura { dis'16 } e'2 |
    e'16 [( d''16) d''16( cis''16) ] cis''16 [( b'16) b'16( ais'16) ] |
    ais'8. [ g'16 ] b'8 [ e''8-^ ] |

    c''4 b'8 [ a'8 ] |
    g'8 [ g'16 e'16 ] g'8 [ b'8 ] |
}

tenorsaxsectioncb = {
      c''8 [ e''8 b'8 a' ] |
}

tenorsaxsectioncc = {
      g'8 [ b'8 g'8 a'8 ] |
}

tenorsaxsectioncd = {
    g'8 r8 g'8-^ r8 |
}

tenorsaxsectionc = {
    \repeat volta 2 { \tenorsaxsectionca \tenorsaxsectioncb }
    \alternative { { \tenorsaxsectioncc } { \tenorsaxsectioncd } }
}

tenorsaxcoda = {
    c'16 [ e'16 g'16 e'16 ] fis'8 [ dis'8 ] |
    e'8\f r8 b'8 r8 |
    b''4 r4
}

tenorsaxnotes = {
    \key g \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenonotesrsaxmidi = {
    \time 2/4
    \preintro
    \metronomeextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionca
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    << r2 { s8^"2-bar vamp" s8 s8 s8 } >> |
    r2 |
}

altosaxsectiona = {
    \repeat volta 2 {
        fis'8\mp b'8 ~ b'8 b'8 |
        b'16 [ cis''16 b'16 ais'16 ] b'16 [ fis'16 d'8 ] |
        fis'8 [ b'8 ] b'16 [ ais'16 b'16 cis'16 ] |
        d''4 b'4->\sf |
        fis'8 b'4 b'8 |
        b'16 [ cis''16 b'16 ais'16 ] b'16 [ fis'16 d'8 ] |
        fis'8 [ fis'8 ais'8 ais'8 ] |
    }
    \alternative {
        {
            b'4 b'4 |
        }
        {
            b'8 [ d''8 ] b'4 |
        }
    }
}

altosaxsectionb = {
    \repeat volta 2 {
        b'8\mf e''4 e''16 [ dis''16 ] |
        e''8 e''4 e''16 [ dis''16 ] |
        e''8 e''4 e''8 |
        e''8 [ d''8 ] fis''4\f |
        g'16\mp [ b'16 d''16 d''16 ] cis''8 [ ais'8 ]
        b'16 [ cis''16 d''16 e''16 ] fis''8 [ fis''8 ] |
        g'16 [ b'16 d''16 d''16 ] cis''8 [ ais''8 ] |
    }
    \alternative {
        {
            b'8 [ fis'8 ] b'4 |
        }
        {
            b'8 [ fis''8 b'8 fis''8\f ] |
        }
    }
}

altosaxsectionca = {
    b''4.\f   ais''16 [ cis'''16 ] |
    b''4.   ais''16 [ cis'''16 ] |
    b''8\p\< [ ais''16 cis'''16 ] b''8 [ ais''16 cis'''16 ] |
    b''8 [ ais''16 cis'''16 ] b''8\! r8 |

    \grace { s16 }   b''16\p [ a''16 a''16 gis''16 ] gis''16 [_"cresc." fis''16 fis''16 b''16 ] |
    b''16 [ a''16 a''16 gis''16 ] gis''16 [ fis''16 fis''16 b''16 ] |
    b''16 [ a''16 a''16 gis''16 ] gis''16 [ fis''16 fis''16 f''16 ] |
    f''8.\f [ d''16 ] fis''4 |

    g'16\mp [ b'16 d''16 d''16 ] cis''8 [ ais'8 ] |
    b'16 [ cis''16 d''16 e''16 ] fis''8 [ fis''8 ] |
}

altosaxsectioncb = {
    g'16 [ b'16 d''16 b'16 ] cis''8 [ ais'8 ] |
}

altosaxsectioncc = {
    b'8 [ fis'8 b'8 fis''8 ] |
}

altosaxsectioncd = {
    b'8 r8 b''8 r8 |
}

altosaxsectionc = {
    \repeat volta 2 {
        \altosaxsectionca
        \altosaxsectioncb
    }
    \alternative {
        {
            \altosaxsectioncc
        }
        {
            \altosaxsectioncd
        }
    }
}

altosaxcoda = {
    g'16 [ b'16 d''16 b'16 ] cis''8 [ ais'8 ] |
    b'8\f r8 fis'8 r8 |
    b4 r4
}

%-------------------------------------------------

altosaxnotes = {
    \key d \major
    \time 2/4

    \dynamicDown

    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \key d \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxcoda
}

altoforothersnotes = { \altosaxnotes }
altofortrumpetnotes = \transpose bes, ees, { \altoforothersnotes }
altofortenornotes = \transpose bes, ees, { \altoforothersnotes }
altoforclarinetnotes = \transpose bes, ees, { \altoforothersnotes }
altoforviolinnotes = \transpose c ees { \altoforothersnotes }
altoforflutenotes = \transpose c ees { \altoforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    d4 a,4 |
    d4 a,4 |
}

trombonesectiona = {
    \repeat volta 2 {
        d4 a,4 |
        d8 [ d8 ] a,4 |
        d8 [ e8 d8 e8 ] |
        f8 d4 a,8 |
        d8 [ d16 d16 ] a,8 [ a,8 ] |
        d8 [ d8 ] a,4 |
        a,8 [ a,8 cis8 cis8 ] |
    }
    \alternative {
        {
            d8 [ a,8 ] d4 |
        }
        {
            d8 [ a8 ] d4 |
        }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        g4\mf d4 |
        g8 [ g8 ] d4 |
        g8 [ g8 d8 d8 ] |
        g8 [ f8 ] a4\f |
        bes4\mp a4 |
        d8 [ d16 d16 ] f4 |
        bes4 a8 [ a8 ] |
    }
    \alternative {
        {
            d8 [ a,8 ] d4 |
        }
        {
            d8 [ a8 d8 ] r8 |
        }
    }
}

trombonesectionca = {
    r8 a8 d'4-\f |
    r8 a8 d'4-- |
    r8 d'16 [ d'16 ] r8 d'8 |
    r8 d'16 [ d'16 ] r8 d'8 |

    \grace { s16 } d'4\p   a8 [_"cresc." a8 ] |
    d'8 [ d'8 ] a4 |
    d'8 [ d'16 d'16 ] a8 [ a8 ] |
    d'8 [ d'16 d'16 ] a8 [ a8 ] |

    bes4 a4 |
    d8 [ f8 a8 a8 ] |
}

trombonesectioncb = {
    bes4 a4 |
}

trombonesectioncc = {
    d8 [ a,8 d8 ] r8 |
}

trombonesectioncd = {
    d8 r8 d'8 r8 |
}

trombonesectionc = {
    \repeat volta 2 {
        \trombonesectionca
        \trombonesectioncb
    }
    \alternative {
        {
            \trombonesectioncc
        }
        {
            \trombonesectioncd
        }
    }
}

trombonecoda = {
    bes4 a4 |
    d'8\f r8 a8 r8 |
    d4 r4
}

trombonenotes = {
    \key f \major
    \time 2/4
    \dynamicDown
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key f \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonecoda
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \key f \major
    \time 2/4
    \trombonenotes
}

euphoniumnotesmidi = {
    \key f \major
    \time 2/4
    \trombonenotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    << r2 { s8^"2-bar vamp" s8 s8 s8 } >> |
    r2 |
}

violinsectiona = {
    \repeat volta 2 {
        a'16 [ d''16 f''16 f''16 ] e''16 [ f''16 d''16 f''16 ] |
        e''16 [ f''16 d''16 f''16 ] e''16 [ d''16 a'16 f'16 ] |
        a'16 [ d''16 f''16 f''16 ] e''16 [ f''16 d''16 f''16 ] |
        f''4 f''4->\sf |
        a'16 [ d''16 f''16 f''16 ] e''16 [ f''16 d''16 f''16 ] |
        e''16 [ f''16 d''16 f''16 ] e''16 [ d''16 a'16 f'16 ] |
        cis'8 [ cis'8 g'8 a'8 ] |
    }
    \alternative {
        {
            f'4 f'4
        }
        {
            f'4 f'8 r8 |
        }
    }
}

violinsectionb = {
    \repeat volta 2 {
        bes'8 bes'4 bes'16 a'16 |
        bes'8 bes'4 bes'16 a'16 |
        bes'8 bes'4 bes'8 |
        bes'8 a'8 f'4 |
        < bes' d'' >8 [ < bes' d'' >8 < a' cis'' >8 < a' cis'' >8 ] |
        < f' a' >4 < f' a' >4 |
        < bes' d'' >8 [ < bes' d'' >8 < a' cis'' >8 < a' cis'' >8 ] |
    }
    \alternative {
        {
            < f' a' >4 < f' a' >4
        }
        {
            < f' a' >4. r8
        }
    }
}

violinsectionca = {
    f''4.--\f   e''16 [ g''16 ] |
    f''4.--\f   e''16 [ g''16 ] |
    f''8\sp [ e''16 g''16\< ] f''8 [ e''16 g''16 ] |
    f''8 [ e''16 g''16 ] f''8\! r8 |

    \grace { s16 }   d''16\p [ c''16 c''16 b'16 ] b'16 [_"cresc." a'16 a'16 d''16 ] |
    d''16 [ c''16 c''16 b'16 ] b'16 [ a'16 a'16 d''16 ] |
    d''16 [ c''16 c''16 b'16 ] b'16 [ a'16 a'16 gis'16 ] |
    gis'8.\f [ f'16 ] a'4 |

    < bes' d'' >8 [ < bes' d'' >8 < a' cis'' >8 < a' cis'' >8 ] |
    < f' a' >4 < f' a' >4 |
}

violinsectioncb = {
    < bes' d'' >8 [ < bes' d'' >8 < a' cis'' >8 < a' cis'' >8 ] |
}

violinsectioncc = {
    < f' a' >4. r8 |
}

violinsectioncd = {
    < f' a' >8 r8 < a' f'' >8 r8 |
}

violinsectionc = {
    \repeat volta 2 {
        \violinsectionca
        \violinsectioncb
    }
    \alternative {
        {
            \violinsectioncc
        }
        {
            \violinsectioncd
        }
    }
}

violincoda = {
    < bes' d'' >8 [ < bes' d'' >8 < a' cis'' >8 < a' cis'' >8 ] |
    d''8\f r8 a'8 r8 |
    d'4 r4
}

%-------------------------------------------------

violinnotes = {
    \key f \major
    \time 2/4

    \dynamicDown

    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key f \major
    \time 2/4
    \dynamicDown
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violincoda
}

melody = \transpose c' bes {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    d2:min | d2:min |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d2:min | \chordChangesOn d2:min | d2:min | d2:min |
        d2:min | s2 | e4:7 a4:7 |
    }
    \alternative {
        { \chordChangesOff d2:min \chordChangesOn | }
        { \chordChangesOff d2:min \chordChangesOn | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        g2:min | g2:min | g2:min | g4:min d4:min |
        e4:7 a4:7 | d2:min | e4:7 a4:7 |
    }
    \alternative {
        { d2:min | }
        { \chordChangesOff d2:min \chordChangesOn | }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d2:min \chordChangesOn | d2:min | d2:min | d2:min |
        \grace { d16:min } d2:min | d2:min | d2:min | d2:min |
        e4:min7 a4:7 | d2:min | e4:min7 a4:7 |
    }
    \alternative {
        { d2:min | }
        { \chordChangesOff d2:min \chordChangesOn | }
    }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    e4:min7 a4:7
    \chordChangesOn
    d4:min a4:7 | d4:min s4 |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
}

basssectiona = {
    \repeat volta 2 {
        d4\3 a,4\4 |
        d4\3 a,4\4 |
        d4\3 a,4\4 |
        d8\3 [ a,8\4 b,8\4 cis8\3 ] |
        d4\3 a,4\4 |
        d4\3 f,4\4 |
        e,4\4 a,4\3 |
    }
    \alternative {
        {
            d8\3 [ a,8\4 ] d4\3 |
        }
        {
            d4\3 d4\3 |
        }
    }
}

basssectionb = {
    \repeat volta 2 {
        g,4\4\mf d4\3 |
        g,4\4 d4\3 |
        g,4\4 d4\3 |
        g,8\4 [ g,8\4 ] f,4\4\f |
        e,4\4\mp a,4\3 |
        d4\3   a,8\4 [ f,8\4 ] |
        e,4\4 a,4\3 |
    }
    \alternative {
        {
            d8\3 [ a,8\4 d8\3 ] r8 |
        }
        {
            d8\3 [ a,8\4 d8\3 ] r8 |
        }
    }
}

basssectionca = {
    r8\f d8\3 d4\3 |
    r8 d8\3 d4\3 |
    r8 d8\3 r8 d8\3 |
    r8 d8\3 r8 d8\3 |

    \grace { s16 } d4\3\p a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3\f a,4\4 |

    e,4\4\mp a,4\3 |
    d8\3 [ a,8\4 f,8\4 a,8\4 ] |
}

basssectioncb = {
    e,4\4 a,4\3 |
}

basssectioncc = {
    d8\3 [ a,8\4 ] d4\3 |
}

basssectioncd = {
    d8\3 r8 d'8\1 r8 |
}

basssectionc = {
    \repeat volta 2 {
        \basssectionca
        \basssectioncb
    }
    \alternative {
        {
            \basssectioncc
        }
        {
            \basssectioncd
        }
    }
}

basscoda = {
    e4\3 a4\2 |
    d'8\1\f r8 a8\2 r8 |
    d4\3 r4
}

bassnotes = {
    \dynamicDown

    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \dynamicDown
    \preintro
    \metronomeextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionca
    \basscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightintro = \chordmode { r2 | r2 | }

pianorightsectiona = {
    \repeat volta 2 {
        a'16\mf d''16 f''16 a''16 gis''16 a''16 f''16 a''16 |
        gis''16 a''16 f''16 a''16 gis''16 f''16 e''16 d''16 |
        a'16 d''16 f''16 a''16 gis''16 a''16 f''16 a''16 |
        < f'' a'' >4 < f'' a'' d''' >4->\sf |

        a'16 d''16 f''16 a''16 gis''16 a''16 f''16 a''16 |
        gis''16 a''16 f''16 a''16 gis''16 f''16 e''16 d''16 |
        f''16 e''16 g''16 f''16 e''16 d''16 e''16 f''16 |
    }
    \alternative {
        {
            < f' a' d'' >4 < f' a' d'' >4->
        }
        {
            < f' a' d'' >4 r8 d''8
        }
    }
}

pianorightsectionb = {
    \repeat volta 2 {
        d''8\mf g''4 \acciaccatura { a''16 } g''16 fis''16 |
        g''8 g''4 \acciaccatura { a''16 } g''16 fis''16 |
        g''8 g''4 g''8 |
        \acciaccatura { a''16 } g''8 f''8 < f'' a'' >4\f |

        gis''16\mp a''16 gis''16 f''16 e''16 d''16 e''16 f''16 |
        d''8 d''16 a'16 d''8 d''8 |
        gis''16 a''16 gis''16 f''16 e''16 d''16 e''16 f''16 |
    }
    \alternative {
        {
            < f' a' d'' >4 < f' a' d'' >4-> |
        }
        {
            < f' a' d'' >4. a''8 |
        }
    }
}

pianorightsectionca = {
    < f'' d''' >4. cis'''16 e'''16 |
    < f'' d''' >4. cis'''16 e'''16 |
    < f'' d''' >8 cis'''16 e'''16 < f'' d''' >8 cis'''16 e'''16 |
    < f'' d''' >8 cis'''16 e'''16 < f'' d''' >8 r8 |

    \grace { s16 } d'''16 ( c'''16 ) c'''16 ( b''16 ) b''16 ( a''16 ) a''16 ( d'''16 ) |
    d'''16 ( c'''16 ) c'''16 ( b''16 ) b''16 ( a''16 ) a''16 ( d'''16 ) |
    d'''16 ( c'''16 ) c'''16 ( b''16 ) b''16 ( a''16 ) a''16 ( gis''16 ) |
    gis''8. f''16 < f'' a'' >4 |

    d''8 g''16 ( f''16 e''16 d''16 e''16 f''16 ) |
    d''8 d''16 a'16 d''8 d''8 |
}

pianorightsectioncb = {
    d''8 g''16 ( f''16 e''16 d''16 e''16 f''16 ) |
}

pianorightsectioncc = {
    d''4. a''8 |
}

pianorightsectioncd = {
    d''8 r8 < f'' a'' d''' >8 r8 |
}

pianorightsectionc = {
    \repeat volta 2 {
        \pianorightsectionca
        \pianorightsectioncb
    }
    \alternative {
        {
            \pianorightsectioncc
        }
        {
            \pianorightsectioncd
        }
    }
}

pianorightcoda = {
    d''8\mp \< g''16 f''16 e''4 \glissando |
    < f'' a'' d''' >8->\f \! r8 < d'' f'' a'' >8-> r8 |
    < a' d'' f'' >4-> r4 |
}

pianoleftupperintro = {
    r2 |
    r2 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        a,8 a8 cis8 a8 |
    }
    \alternative {
        {
            d8 d'8 a8 d'8 |
        }
        {
            d8 d'8 a8 d'8 |
        }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        d8 d'8 a8 d'8 |

        bes,8 < d gis >8 a,8 < cis g >8 |
        d8 < f a >8 a,8 < f a >8 |
        bes,8 < d gis >8 a,8 < cis g >8 |
    }
    \alternative {
        {
            d8 d'8 a8 d'8 |
        }
        {
            d8 d'8 a8 d'8 |
        }
    }
}

pianoleftuppersectionca = {
    r8\f < d f >8 < d f >4 |
    r8 < d f >8 < d f >4 |
    r8 < d f >8 r8 < d f >8 |
    r8 < d f >8 r8 < d f >8 |

    \grace { s16 } d8\p d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |
    d8\f d'8 a8 d'8 |

    bes,8\mp < d gis >8 a,8 < cis g >8 |
    d8 < f a >8 a,8 < f a >8 |
}

pianoleftuppersectioncb = {
    bes,8 < d gis >8 a,8 < cis g >8 |
}

pianoleftuppersectioncc = {
    d8 d'8 a8 d'8 |
}

pianoleftuppersectioncd = {
    < d f >8 a,8 < d, d >8 r8 |
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        \pianoleftuppersectionca
        \pianoleftuppersectioncb
    }
    \alternative {
        {
            \pianoleftuppersectioncc
        }
        {
            \pianoleftuppersectioncd
        }
    }
}

pianoleftuppercoda = {
    bes,8 < d gis >8 a,4 |
    < d d' >8 r8 < e e' >8 r8 |
    < d, d >4 r4
}

pianolefthigh = {
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \blankmeasure
    \pianoleftuppercoda
}

pianoleftlow = {
}

%-------------------------------------------------

pianorightuppernotes = {
    \key f \major
    \time 2/4
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \blankmeasure
    \pianorightcoda
}

pianorightnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionca
    \pianorightcoda
}

pianoleftuppernotes = <<
    \key f \major
    \time 2/4
    \pianolefthigh
    \pianoleftlow
>>

pianolefthighmidi = {
    \preintro
    \metronomeextra
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionca
    \pianoleftuppercoda
}

pianoleftlowmidi = {
}

pianoleftnotesmidi = <<
    \key f \major
    \time 2/4
    \pianolefthighmidi
    \pianoleftlowmidi
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumsextra = \drummode {
    < bda hhc >4 hhc4 |
    < bda hhc >4 hhc4 |
}

drumsintro = \drummode {
    s2 |
    s2 |
}

drumssectiona = \drummode {
    \repeat volta 2 {
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
        }
        {
            s2 |
        }
    }
}

drumssectionb = \drummode {
    \repeat volta 2 {
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
        }
        {
            s2 |
        }
    }
}

drumssectionca = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
}

drumssectioncb = \drummode {
    s2 |
}

drumssectioncc = \drummode {
    s2 |
}

drumssectioncd = \drummode {
    s2 |
}

drumssectionc = \drummode {
    \markC

    \repeat volta 2 {
        \drumssectionca
        \drumssectioncb
    }
    \alternative {
        {
            \drumssectioncc
        }
        {
            \drumssectioncd
        }
    }
}

drumscoda = \drummode {
    s2 |
    s2 |
    s2
}

drumshigh = \drummode {
    \drumsintro
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \blankmeasure
    \drumscoda
}

drumshighmidi = \drummode {
    \preintro
    \drumsextra
    \drumsintro
    \drumssectiona
    \drumssectionb
    \drumssectionc

    \drumssectiona
    \drumssectionb
    \drumssectionca
    \drumscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | s2 | s2 | s2 |
}

previewnotes = \transpose c' bes {
    \key g \major
    \time 2/4
    \bar ".|:"
    b16 e'16 g'16 b'16 ais'16 b'16 g'16 b'16 |
    ais'16 b'16 g'16 b'16 ais'16 g'16 fis'16 e'16 |
    b16 e'16 g'16 b'16 ais'16 b'16 g'16 b'16 |
    b'4 e''4->\sf |
}

\version "2.18.2"

bandmintro = {
  s1*3 | \breakINone
  s1 |
  \bar "||" \breakIN
}

bandmsectiona = {
    \markSA \positionSA
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 |
    \bar ".|:-||"
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
    }
    \alternative {
        {
            s1 | \breakBfor
        }
        {
            s1 |
        }
    }
    \bar "||" \breakB
}

bandmsectionc = {
    \markC \positionC
    s1 | \breakCone
    s1 | \breakCtwo
    s1 | \breakCtre
    s1 | \breakCfor
    s1 | \breakCfiv
    s1 | \breakCsix
    s1 | \breakCsev
    s1 |
    \bar ".|:-||" \breakC
}

bandmsectionda = {
    \markD \positionD
    s1 | \breakDone
    s1 | \breakDtwo
    s1 | \breakDtre
}

bandmsectiondb = {
    s1 | \breakDfor
}

bandmsectiondc = {
    \markCT \positionCT
    s1 |
    \markDS \positionDS
}

bandmsectiond = {
    \repeat volta 2 { \bandmsectionda }
    \alternative { { \bandmsectiondb } { \bandmsectiondc } }
    \bar "||" \breakD
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC s1 |
    \bar "|."
}

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronomeextra = { s1 | }

metronome = \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 105
    \metronomeextra
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectionda
    \bandmsectiondb
    \bandmsectionda
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% melody from lead sheet

fluteintro = { R1*3 | r2 r4 d'4 | }

flutesectiona = {
    \startOctVA
    bes'8. a'16 g'2 bes'4 |
    a'8. g'16 fis'2 d'4 |
    g'8 fis'8 g'8 a'8 bes'8 a'8 g'8 bes'8 |
    a'4. fis'8 d'4 d'4 |

    bes'8. a'16 g'2 bes'4 |
    a'8. g'16 fis'2 d'4 |
    g'8 fis'8 g'8 a'8 bes'8 a'8 g'8 fis'8 |
    g'2. d'4 |
    \stopOctVA
}

flutesectionb = {
    \repeat volta 2 {
        g'8 g'8 g'8 a'8 bes'4 bes'8 g'8 |
        bes'4 bes'8 g'8 bes'2 |
        c''4. bes'8 bes'8 a'8 a'8 g'8 |
    }
    \alternative {
        { g'8 bes'8 a'8 c''8 bes'4. d'8 | }
        { g'2. f'4 | }
    }
}

flutesectionc = {
      d''8 c''8 bes'8 c''8 bes'4. f'8 |
      d''8 c''8 bes'8 c''8 bes'4. f'8 |
      d''8 c''8 c''8 bes'8 bes'8 a'8 a'8 g'8 |

      a'8 c''8 bes'2 f'4 |
      d''8 c''8 bes'8 c''8 bes'4. f'8 |
      d''8 c''8 bes'8 c''8 bes'4. f'8 |

      d''8 c''8 c''8 bes'8 bes'8 a'8 a'8 g'8 |
      a'8 bes'8 g'2 d'4 |
}

flutesectionda = {
    g'8 g'8 g'8 a'8 bes'4 bes'8 g'8 |
    bes'4 bes'8 g'8 bes'2 |
    c''4. bes'8 bes'8 a'8 a'8 g'8 |
}

flutesectiondb = { g'8 bes'8 a'8 c''8 bes'4. d'8 | }

flutesectiondc = { a'8 bes'8 g'2 d'4 | }

flutesectiond = {
    \repeat volta 2 { \flutesectionda }
    \alternative { { \flutesectiondb } { \flutesectiondc } }
}

flutecoda = { a'8 bes'8 g'2 r4 | }

%-------------------------------------------------

flutenotes = \transpose c c' {
    \key g \minor
    \time 4/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \blankmeasure
    \flutecoda
}

flutenotesmidi = \transpose c c' {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectionda
    \flutesectiondb
    \flutesectionda
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
% measure 1
    R1*3 | r2 r4 e''4 |
}

clarinetsectiona = {
    c'''8 b''8 a''4 r8 e''8 a''8 c'''8 |
    b''8 \prall a''8 gis''4 r4 e''4 |
    a''8 \prall gis''8 a''8 b''8 c'''8 \prall b''8 a''8 c'''8 |
    b''4.\prall gis''8 e''4 e''4 |

    c'''8 b''8 a''2 \tuplet 3/2 { e''8 a''8 c'''8 } |
    b''8 \prall a''8 gis''4 r4 e''4 |
    \acciaccatura { a''16 [ b''16 ] } a''8 gis''8 a''8 b''8 \acciaccatura { c'''16 [ d'''16 ] } c'''8 b''8 a''8 gis''8 |
    a''2 r4 r8 e''8 |
}

clarinetsectionb = {
    \repeat volta 2 {
        e''8-> ( a''8 ) a''8 b''8 c'''4 c'''8 a''8 |
        c'''4 c'''8 a''8 c'''4. cis'''16 ( e'''16 |
        d'''4. ) c'''8 c'''8 b''16 ( c'''16 b''8 ) a''8 |
   }
    \alternative {
        { a''8 c'''8 b''8 d'''8 c'''4 r8 e''8 | }
        { a''2 r4 g''4 | }
    }
}

clarinetsectionc = {
    < e'' e''' >8 < d'' d''' >8 < c'' c''' >8 < d'' d''' >8 < c'' c''' >4. < g' g'' >8 |
    < e'' e''' >8 < d'' d''' >8 < c'' c''' >8 < d'' d''' >8 < c'' c''' >4. < e'' e''' >8 |
    < e'' e''' >8 < d'' d''' >8 < d'' d''' >8 < c'' c''' >8 < c'' c''' >8 < b' b'' >8 < b' b'' >8 < a' a'' >8 |

    < b' b'' >8 ( < d'' d''' >8 ) < c'' c''' >4 r4 r8 < g' g'' >8 |
    < e'' e''' >8 < d'' d''' >8 < c'' c''' >8 < d'' d''' >8 < c'' c''' >4. < g' g'' >8 |
    < e'' e''' >8 < d'' d''' >8 < c'' c''' >8 < d'' d''' >8 < c'' c''' >4. < e'' e''' >8 |

    < e'' e''' >8 < d'' d''' >8 < d'' d''' >8 < c'' c''' >8 < c'' c''' >8 < b' b'' >8 < b' b'' >8 < a' a'' >8 |
    < b' b'' >8 < c'' c''' >8 < a' a'' >2 r8 e''8 |
}

clarinetsectionda = {
    a''8 a''8 a''8 b''8 c'''4 c'''8 a''8 |
    c'''4 c'''8 a''8 c'''4. cis'''16 ( e'''16 |
    d'''4. ) c'''8 c'''8 b''8 b''8 a''8 |
}

clarinetsectiondb = { a''8 c'''8 b''8 d'''8 c'''4 r8 e''8 | }

clarinetsectiondc = { b''8 c'''8 a''4 r4 e''4 | }

clarinetsectiond = {
    \repeat volta 2 { \clarinetsectionda }
    \alternative { { \clarinetsectiondb } { \clarinetsectiondc } }
}

clarinetcoda = {
    b''8 c'''8 a''4 r2 |
}

%-------------------------------------------------

clarinetnotes = {
    \key a \minor
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key a \minor
    \time 4/4
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionda
    \clarinetsectiondb
    \clarinetsectionda
    \clarinetcoda
}

clarinetforothersnotes = { \clarinetnotes }
clarinetforaltonotes = \transpose ees bes, { \clarinetforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    R1*3 | r2 r4 e'4 |

}

trumpetsectiona = {
% measure 5
      c''8[ b'8 ] a'2 c''4 |
      b'8[ a'8 ] gis'4 r4 e'4 |
      a'8[ gis'8 a'8 b'8 ]   c''8[ b'8 a'8 c''8 ] |
    b'4. gis'8 e'4 e'4 |

% measure 9
      c''8[ b'8 ] a'2 c''4 |
      b'8[ a'8 ] gis'4 r4 e'4 |
      a'8[ gis'8 a'8 b'8 ]   c''8[ b'8 a'8 gis'8 ] |
    a'2 r2 |
}

trumpetsectionb = {
% measure 13
    \repeat volta 2 {
        R1*3 |
    }
    \alternative {
        {
            R1 |
        }

% measure 17
        {
            r2 r4 g'4 |
        }
    }
}

trumpetsectionc = {
      e''8[ d''8 c''8 d''8 ] c''4. g'8 |
      e''8[ d''8 c''8 d''8 ] c''4. e''8 |
      e''8[ d''8 d''8 c''8 ]   c''8[ b'8 b'8 a'8 ] |

% measure 21
      b'8[( d''8) ] c''4 r4 r8 g'8 |
      e''8[ d''8 c''8 d''8 ] c''4. g'8 |
      e''8[ d''8 c''8 d''8 ] c''4. e''8 |

% measure 24
      e''8[ d''8 d''8 c''8 ]   c''8[ b'8 b'8 a'8 ] |
      b'8[ c''8 ] a'2 r4 |
}

trumpetsectionda = {
      a'8[^"1st time Tacet" a'8 a'8 b'8 ] c''4   c''8[ a'8 ] |
    c''4   c''8[ a'8 ] c''2 |
    d''4. c''8   c''8[ b'8 b'8 a'8 ] |
}

trumpetsectiondb = {
    r2 r4 r8 e'8 |
}

trumpetsectiondc = {
      b'8[ c''8 ] a'4 r4 e'4 |
}

trumpetsectiond = {
    \repeat volta 2 { \trumpetsectionda }
    \alternative { { \trumpetsectiondb } { \trumpetsectiondc } }
}

trumpetcoda = {
      b'8[ c''8 ] a'4 r2 |
}

%-------------------------------------------------

trumpetnotes = {
    \key a \minor
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key a \minor
    \time 4/4
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionda
    \trumpetsectiondb
    \trumpetsectionda
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    R1*3 | R1 |
}

tenorsaxsectiona = {
    r4 e'4   a'8[ b'8 c''8 dis''8 ] |
    e''8 r8 r8 d''8   b'8[ gis'8 e'8 d'8 ] |
    c'4 r4 r4 dis'4 |
    e'8[ b'8 gis''8 a''8 ]   b''8[ gis''8 e''8 d''8 ] |

    e''4 r8 e''8   c'''8[ b''8 a''8 dis''8 ] |
    e''4. d''8   b'8[ gis'8 e''8 d''8 ] |
    c''8[ b'8 c''8 d''8 ]   e''8[ d''8 c''8 b'8 ] |
    c''2 r4 r8 e'8 |
}

tenorsaxsectionb = {
% measure 13
    \repeat volta 2 {
        c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4   e''8[ c''8 ] |
        \acciaccatura { dis''8 } e''4   e''8[ c''8 ] e''2 |
        f''4. e''8   e''8[ d''16( e''16 ]   d''8[) c''8 ] |
    }
    \alternative {
        {
            c''8[ e''8 d''8 f''8 ] e''4 r8 e'8 |
        }
        {
            c''2 r2 |
        }
    }
}

tenorsaxsectionc = {
    g'4.   fis'16[( g'16 ] gis'2) |
    a'2( aes'2 |
    g'2.) r4 |

    r8   g'8[ a'8 b'8 ]   c''8[ d''8 e''8 f''8 ] |
    g''4.   fis''16[ g''16 ] gis''2 |
    a''2 aes''2 |

    g''8[ f''16( g''16 ]   f''8[) e''16( f''16 ]   e''8[) d''16( e''16 ]   d''8[) c''8 ] |
    d''8[ e''8 ] c''2 r8 e'8 |
}

tenorsaxsectionda = {
    c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4    e''8[ c''8 ] |
    \acciaccatura { dis''8 } e''4    e''8[ c''8 ] e''2 |
    f''4. e''8   e''8[ d''16( e''16 ]   d''8[) c''8 ] |
}

tenorsaxsectiondb = {
    c''8[ e''8 d''8 f''8 ] e''4 r8 e'8 |
}

tenorsaxsectiondc = {
    d''8[ e''8 ] c''4 r2 |
}

tenorsaxsectiond = {
    \repeat volta 2 { \tenorsaxsectionda }
    \alternative { { \tenorsaxsectiondb } { \tenorsaxsectiondc } }
}

tenorsaxcoda = {
    d''8[ e''8 ] c''4 r2 |
}

%-------------------------------------------------

tenorsaxnotes = {
    \key a \minor
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key a \minor
    \time 4/4
    \preintro
    \metronomeextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectionda
    \tenorsaxsectiondb
    \tenorsaxsectionda
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforflutesectiona = {
    \transpose c c' {
        r4 e'4 a'8 b'8 c''8 dis''8 |
        e''8 r8 r8 d''8 b'8 gis'8 e'8 d'8 |
        c'4 r4 r4 dis'4 |
        e'8 b'8 gis'8 a'8 b'8 gis'8 e'8 d'8 | 
    }

    e''4 r8 e''8 c'''8 b''8 a''8 dis''8 |
    e''4. d''8 b'8 gis'8 e''8 d''8 |
    c''8 b'8 c''8 d''8 e''8 d''8 c''8 b'8 |
    c''2 r4 r8 e'8 |
}

tenorforflutesectionc = {
    \transpose c c' {
        g'4. fis'16 ( g'16 gis'2 ) |
        a'2 ( aes'2 |
        g'2. ) r4 |
    }

    r8 g'8 a'8 b'8 c''8 d''8 e''8 f''8 |
    g''4. fis''16 g''16 gis''2 |
    a''2 aes''2 |

    g''8 f''16 ( g''16 f''8 ) e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) c''8 |
    d''8 e''8 c''2 r8 e'8 |
}

tenorforflutenotes = \transpose c bes, {
    \key a \minor
    \time 4/4
    \tenorsaxintro
    \tenorforflutesectiona
    \tenorsaxsectionb
    \tenorforflutesectionc
    \tenorsaxsectiond
    \blankmeasure
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c' {
    \key g \minor
    \time 4/4
    \transpose c c' {
        \fluteintro
        \flutesectiona
    }
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \blankmeasure
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltoflutesectiona = {
    \transpose c c' {
        r4 e'4 a'8 b'8 c''8 dis''8 |
        e''8 r8 r8 d''8 b'8 gis'8 e'8 d'8 |
        c'4 r4 r4 dis'4 |
        e'8 b'8 gis'8 a'8 b'8 gis'8 e'8 d'8 | 
    }

    e''4 r8 e''8 c'''8 b''8 a''8 dis''8 |
    e''4. d''8 b'8 gis'8 e''8 d''8 |
    c''8 b'8 c''8 d''8 e''8 d''8 c''8 b'8 |
    c''2 r4 r8 e''8 |
}

tenorforaltoflutesectionb = {
% measure 13
    \repeat volta 2 {
        c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4   e''8[ c''8 ] |
        \acciaccatura { dis''8 } e''4   e''8[ c''8 ] e''2 |
        f''4. e''8   e''8[ d''16( e''16 ]   d''8[) c''8 ] |
    }
    \alternative {
        {
            c''8[ e''8 d''8 f''8 ] e''4 r8 e''8 |
        }
        {
            c''2 r2 |
        }
    }
}

tenorforaltoflutesectionc = {
    \transpose c c' {
        g'4. fis'16 ( g'16 gis'2 ) |
        a'2 ( aes'2 |
        g'2. ) r4 |
    }

    r8 g'8 a'8 b'8 c''8 d''8 e''8 f''8 |
    g''4. fis''16 g''16 gis''2 |
    a''2 aes''2 |

    g''8 f''16 ( g''16 f''8 ) e''16 ( f''16 e''8 ) d''16 ( e''16 d''8 ) c''8 |
    d''8 e''8 c''2 r8 e''8 |
}

tenorforaltoflutesectionda = {
    c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4    e''8[ c''8 ] |
    \acciaccatura { dis''8 } e''4    e''8[ c''8 ] e''2 |
    f''4. e''8   e''8[ d''16( e''16 ]   d''8[) c''8 ] |
}

tenorforaltoflutesectiondb = {
    c''8[ e''8 d''8 f''8 ] e''4 r8 e''8 |
}

tenorforaltoflutesectiondc = {
    d''8[ e''8 ] c''4 r2 |
}

tenorforaltoflutesectiond = {
    \repeat volta 2 { \tenorforaltoflutesectionda }
    \alternative { { \tenorforaltoflutesectiondb } { \tenorforaltoflutesectiondc } }
}

altoflutetenorharmony = \transpose g bes, {
    \key a \minor
    \time 4/4
    \tenorsaxintro
    \tenorforaltoflutesectiona
    \tenorforaltoflutesectionb
    \tenorforaltoflutesectionc
    \tenorforaltoflutesectiond
    \blankmeasure
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    R1*3 | R1 |
}

altosaxsectiona = {
% measure 5
    r4 e''4   a'8[ b'8 c''8 dis''8 ] |
    e''8 r8 r8 d'''8   b''8[ gis''8 e''8 d''8 ] |
    c''4 r4 r4 dis''4 |
      e''8[ b'8 gis''8 a''8 ]   b''8[ gis''8 e''8 d''8 ] |

% measure 9
    e''4 r8 e''8   c'''8[ b''8 a''8 dis''8 ] |
    e''4. d''8   b'8[ gis'8 e''8 d''8 ] |
      c''8[ b'8 c''8 d''8 ]   e''8[ d''8 c''8 b'8 ] |
    c''2 r4 r8 e''8 |
}

altosaxsectionb = {
% measure 13
    \repeat volta 2 {
        c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4 e''8[ c''8 ] |
        \acciaccatura { dis''8 } e''4 e''8[ c''8 ] e''2 |
        f''4. e''8   e''8[ d''16( e''16 ] d''8[) c''8 ] |
    }
    \alternative {
        {
              c''8[ e''8 d''8 f''8 ] e''4 r8 e''8 |
        }

% measure 17
        {
            c''2 r2 |
        }
    }
}

altosaxsectionc = {
    g'4.   fis'16[( g'16 ] gis'2) |
    a'2( aes'2 |
    g'2.) r4 |

% measure 21
    r8   g'8[ a'8 b'8 ]   c''8[ d''8 e''8 f''8 ] |
    g''4.   fis''16[ g''16 ] gis''2 |
    a''2 aes''2 |

% measure 24
      g''8[ f''16( g''16 ]   f''8[) e''16( f''16 ]   e''8[) d''16( e''16 ]   d''8[) c''8 ] |
      d''8[ e''8 ] c''2 r8 e''8 |
}

altosaxsectionda = {
    c''8[ c''8 c''8 d''8 ] \acciaccatura { dis''8 } e''4 e''8[ c''8 ] |
    \acciaccatura { dis''8 } e''4 e''8[ c''8 ] e''2 |
    f''4. e''8   e''8[ d''16( e''16 ]   d''8[) c''8 ] |
}

altosaxsectiondb = {
      c''8[ e''8 d''8 f''8 ] e''4 r8 e''8 |
}

altosaxsectiondc = {
      d''8[ e''8 ] c''4 r2 |
}

altosaxsectiond = {
    \repeat volta 2 { \altosaxsectionda }
    \alternative { { \altosaxsectiondb } { \altosaxsectiondc } }
}

altosaxcoda = {
      d''8[ e''8 ] c''4 r2 |
}

%-------------------------------------------------

altosaxnotes = \transpose d' a {
    \key a \minor
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = \transpose d' a {
    \key a \minor
    \time 4/4
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectionda
    \altosaxsectiondb
    \altosaxsectionda
    \altosaxcoda
}

altosaxmelodynotes = \transpose d' a {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    R1*3 | R1 |
}

trombonesectiona = {
% measure 5
    d'2 bes4 g4 |
    c'2 a4 fis4 |
    r4 bes4 d'4 des'4 |
    c'4. b8 a4 fis4 |

% measure 9
    g2   d'8[ c'8 ] bes4 |
    fis4 a4 c'4 fis4 |
    g4 d'4 c'2 |
    d'4 d4 g,4 r4 |
}

trombonesectionb = {
% measure 13
    \repeat volta 2 {
        g2( fis2 |
        f2 e2) |
        a4. g8 g4 fis4 |
    }
    \alternative {
        {
            d4 fis4 g4 r4 |
        }

% measure 17
        {
            g2 r2 |
        }
    }
}

trombonesectionc = {
    f2( fis2 |
    g2 ges2 |
    f2.) r4 |

% measure 21
    r8   f'8[ ees'8 d'8 ]   c'8[ bes8 a8 g ] |
    f2 fis2 |
    g2 ges 2 |

% measure 24
    f2 g4 fis4 |
    g4 d4 g,4 r4 |
}

trombonesectionda = {
    g2^"1st time Tacet" fis2 |
    f2 e2 |
    a4. g8 g4 fis4 |
}

trombonesectiondb = {
    R1 |
}

trombonesectiondc = {
    g4 d4 g,4 r4 |
}

trombonesectiond = {
    \repeat volta 2 { \trombonesectionda }
    \alternative { { \trombonesectiondb } { \trombonesectiondc } }
}

trombonecoda = {
    g4 d4 g,4 r4 |
}

%-------------------------------------------------

trombonenotes = {
    \key g \minor
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionda
    \trombonesectiondb
    \trombonesectionda
    \trombonecoda
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% melody from lead sheet

violinintro = {
    R1*3 |
    r2 r4 d'4 |
}

violinsectiona = {
% measure 5
      bes'8.[ a'16 ] g'2 bes'4 |
      a'8.[ g'16 ] fis'2 d'4 |
      g'8[ fis'8 g'8 a'8 ]   bes'8[ a'8 g'8 bes'8 ] |
    a'4. fis'8 d'4 d'4 |

% measure 9
      bes'8.[ a'16 ] g'2 bes'4 |
      a'8.[ g'16 ] fis'2 d'4 |
      g'8[ fis'8 g'8 a'8 ]   bes'8[ a'8 g'8 fis'8 ] |
    g'2. d'4 |
}

violinsectionb = {
% measure 13
    \repeat volta 2 {
          g'8[ g'8 g'8 a'8 ] bes'4   bes'8[ g'8 ] |
        bes'4   bes'8[ g'8 ] bes'2 |
        c''4. bes'8   bes'8[ a'8 a'8 g'8 ] |
    }
    \alternative {
        {
              g'8[ bes'8 a'8 c''8 ] bes'4. d'8 |
        }

% measure 17
        {
            g'2. f'4 |
        }
    }
}

violinsectionc = {
      d''8[ c''8 bes'8 c''8 ] bes'4. f'8 |
      d''8[ c''8 bes'8 c''8 ] bes'4. f'8 |
      d''8[ c''8 c''8 bes'8 ]   bes'8[ a'8 a'8 g'8 ] |

% measure 21
      a'8[ c''8 ] bes'2 f'4 |
      d''8[ c''8 bes'8 c''8 ] bes'4. f'8 |
      d''8[ c''8 bes'8 c''8 ] bes'4. f'8 |

% measure 24
      d''8[ c''8 c''8 bes'8 ]   bes'8[ a'8 a'8 g'8 ] |
      a'8[ bes'8 ] g'2 d'4 |
}

violinsectionda = {
      g'8[ g'8 g'8 a'8 ] bes'4   bes'8[ g'8 ] |
    bes'4   bes'8[ g'8 ] bes'2 |
    c''4. bes'8   bes'8[ a'8 a'8 g'8 ] |
}

violinsectiondb = {
      g'8[ bes'8 a'8 c''8 ] bes'4. d'8 |
}

violinsectiondc = {
      a'8[ bes'8 ] g'2 d'4 |
}

violinsectiond = {
    \repeat volta 2 { \violinsectionda }
    \alternative { { \violinsectiondb } { \violinsectiondc } }
}

violincoda = {
      a'8[ bes'8 ] g'2 r4 |
}

%-------------------------------------------------

violinnotes = {
    \key g \minor
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionda
    \violinsectiondb
    \violinsectionda
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NO MIDI DONE FROM THIS.
% WE HAVE THE ACTUAL NOTES TO GO IN THE MIDI
% THIS IS JUST GUIDANCE.

pianochordlettersintro = \chordmode {
    g2:min c2:min |
    g2:min d2:7 |
    g2:min ees2:7 |
    d1:7 |
}

pianochordletterssectiona = \chordmode {
% measure 5
    g2.:min ees4:7 |
    d1:7 |
    g2.:min ees4:7 |
    d1:7 |

% measure 9
    g2.:min ees4:7 |
    d1:7 |
    g2:min d2:7 |
    g2.:min d4:7 |
}

pianochordletterssectionb = \chordmode {
% measure 13
    \repeat volta 2 {
        g2:min g2:min7+ |
        g2:min7 g2:min6 |
        c2:min d2:7 |
    }
    \alternative {
        {
            g4:min d4:7 g2:min |
        }

% measure 17
        {
            \chordChangesOff s4 g2:min \chordChangesOn f4:7 |
        }
    }
}

pianochordletterssectionc = \chordmode {
    bes'2 bes'2:aug |
    bes'2:6 bes'2:aug |
    bes'2 c4:min7 f4:7 |

% measure 21
    bes'2. f4:7 |
    bes'2 bes'2:aug |
    bes':6 bes':aug |

% measure 24
    bes'2 ees4:7 d4:7 |
    g2.:min d4:7 |
}

pianochordletterssectionda = \chordmode {
    g2:min g2:maj7 |
    g2:min7 g2:min6 |
    c2:min d2:7 |
}

pianochordletterssectiondb = \chordmode {
    g4:min d4:7 g2:min |
}

pianochordletterssectiondc = \chordmode {
    \chordChangesOff g2.:min \chordChangesOn d4:7 |
}

pianochordletterssectiond = \chordmode {
    \repeat volta 2 { \pianochordletterssectionda }
    \alternative { { \pianochordletterssectiondb } { \pianochordletterssectiondc } }
}

pianochordletterscoda = \chordmode {
    g2.:min s4 |
}

chordletters = \chordmode {
    \pianochordlettersintro
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \pianochordletterssectiond
    \blankmeasure
    \pianochordletterscoda
}

guitarchordlettersintro = \chordmode {
    s1*3 | s2 s4 d4:7 |
}

guitarchordletterssectiona = \chordmode {
    s4 g4:min s4 ees4:7 |
    s4 d2.:7 |
    s4 g4:min s4 ees4:7 |
    s4 d2.:7 |

    s4 g4:min s4 ees4:7 |
    s4 d2.:7 |
    s4 g4:min s4 d4:7 |
    g2.:min d4:7 |
}

guitarchordletterssectionb = \chordmode {
    \repeat volta 2 {
        s4 g4:min s4 g4:min7+ |
        s4 g4:min7 s4 g4:min6 |
        s4 c4:min s4 d4:7 |
    }
    \alternative {
        {
            g4:min d4:7 g2:min |
        }
        {
            s4 \chordChangesOff g2:min \chordChangesOn f4:7 |
        }
    }
}

guitarchordletterssectionc = \chordmode {
    s4 bes'4 s4 bes'4:aug |
    s4 bes'4:6 s4 bes'4:aug |
    s4 bes' c4:min7 f4:7 |

    s4 bes'4 s4 f4:7 |
    s4 bes'4 s4 bes'4:aug |
    s4 bes'4:6 s4 bes'4:aug |

    s4 bes'4 ees4:7 d4:7 |
    s4 g4:min s4 d4:7 |
}

guitarchordletterssectionda = \chordmode {
    s4 g4:min  s4 g4:min7+ |
    s4 g4:min7 s4 g4:min6 |
    s4 c4:min  s4 d4:7 |
}

guitarchordletterssectiondb = \chordmode {
    g4:min d4:7 g2:min |
}

guitarchordletterssectiondc = \chordmode {
    \chordChangesOff s4 g2:min \chordChangesOn d4:7 |
}

guitarchordletterssectiond = \chordmode {
    \repeat volta 2 { \guitarchordletterssectionda }
    \alternative { { \guitarchordletterssectiondb } { \guitarchordletterssectiondc } }
}

guitarchordletterscoda = \chordmode {
    \chordChangesOff s4 g2:min \chordChangesOn s4 |
}


guitarchordletters = {
    \guitarchordlettersintro
    \guitarchordletterssectiona
    \guitarchordletterssectionb
    \guitarchordletterssectionc
    \guitarchordletterssectiond
    \blankmeasure
    \guitarchordletterscoda
}

hornchordletters = \chordmode {
    \guitarchordlettersintro
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \pianochordletterssectiond
    \blankmeasure
    \pianochordletterscoda
}

clarinetchordletters = \transpose bes, c \hornchordletters
tenorsaxchordletters = \transpose bes, c \hornchordletters
trumpetchordletters = \transpose bes, c \hornchordletters
altosaxchordletters = \transpose ees c \hornchordletters
%guitarchordletters = \chordletters
flutechordletters = \hornchordletters
violinchordletters = \hornchordletters
trombonechordletters = \hornchordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters

basschordlettersintro = \chordmode {
    s1*3 | s4 d2.:7 |
}

basschordletters = \chordmode {
    \basschordlettersintro
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \pianochordletterssectiond
    \blankmeasure
    \pianochordletterscoda
}

altoflutechordletters = \transpose g c \flutechordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychords = \chordmode {
    \pianochordlettersintro
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \pianochordletterssectiond
}

melodychordnames = \context ChordNames = "melodychordnamescontext" \with {
    chordChanges = ##f
}  {
    \time 4/4
    \melodychords
}

melody = {
    \key g \minor
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \blankmeasure
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    < d'' g'' bes'' d''' >8[\arpeggio d''8 g''8 d'''8 ] < c'' ees'' g'' c''' >8[\arpeggio ees''8 g''8 c'''8 ] |
    < bes' d'' g'' bes'' >8[\arpeggio d''8 g''8 bes''8 ] < a' d'' fis'' a'' >8[\arpeggio d''8 f''8 a''8 ] |
    < g' bes' d'' g'' >8[\arpeggio bes'8 d''8 g''8 ] < des' g' bes' ees'' >8[\arpeggio g'8 bes'8 ees''8 ] |
    < fis' a' c'' d'' >2.\arpeggio < fis a c' d' >4 |
}

pianorightuppersectiona = {
% measure 5
    r4 < d' g' >4 r4 < bes des' g' >4 |
    r4 < d' fis' >4 r4 < a c' fis' >4 |
    r4 < bes' d' g' >4 r4 < bes des' g' >4 |
    r4 < a c' fis' >4 r4 < a c' fis' >4 |

% measure 9
    r4 < d' g' >4 r4 < bes des' g' >4 |
    r4 < d' fis' >4 r4 < a c' fis' >4 |
    r4 < d' g' >4 r4 < d' fis' >4 |
    < bes d' g' >2 r4 < a c' fis' >4 |
}

pianorightuppersectionb = {
% measure 13
    \repeat volta 2 {
        r4 < bes d' >4 r4 < bes d' >4 |
        r4 < bes d' >4 r4 < bes d' >4 |
        r4 < g c' ees' >4 r4 < a c' fis' >4 |
    }
    \alternative {
        {
            < bes d' g' >4 < a c' fis' >4 < bes d' g' >4 < bes d' g' >4 |
        }

% measure 17
        {
            r4 < bes d' g' >4 < bes d' g' >4 < a c' ees' f' >4 |
        }
    }
}

pianorightuppersectionc = {
    r4 < bes d' >4 r4 < bes d' >4 |
    r4 < bes d' >4 r4 < bes d' >4 |
    r4 < d' f' >4 < c' ees' g' >4 < a c' ees' f' >4 |

% measure 21
    r4 < f bes d' >4 r4 < a c' ees' f' >4 |
    r4 < bes d' >4 r4 < bes d' >4 |
    r4 < bes d' >4 r4 < bes d' >4 |

% measure 24
    r4 < bes d' >4 < g bes des' ees' >4 < fis a c' d' >4 |
    r4 < bes d' g' >4 r4 < a c' fis' >4 |
}

pianorightuppersectionda = {
    r4 < bes d' >4 r4 < bes d' >4 |
    r4 < bes d' >4 r4 < bes d' >4 |
    r4 < g c' ees' >4 r4 < a c' fis' >4 |
}

pianorightuppersectiondb = {
    < bes d' g' >4 < a c' fis' >4 < bes d' g' >4 < bes d' g' >4 |
}

pianorightuppersectiondc = {
    < bes d' g' >2. < a c' fis' >4 |
}

pianorightuppersectiond = {
    \repeat volta 2 { \pianorightuppersectionda }
    \alternative { { \pianorightuppersectiondb } { \pianorightuppersectiondc } }
}

pianorightuppercoda = {
    < bes d' g' >2. r4 |
}

%-------------------------------------------------

pianorightlowerintro = {
    s1 |
    s1 |
    s1 |
    s1 |
}

pianorightlowersectiona = {
% measure 5
    bes2 s2 |
    c'2 s2 |
    s1 |
    s1 |

% measure 9
    bes2 s2 |
    c'2 s2 |
    bes2 c'2 |
    s1 |
}

pianorightlowersectionb = {
% measure 13
    \repeat volta 2 {
        g2 fis2 |
        f2 e2 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }

% measure 17
        {
            s1 |
        }
    }
}

pianorightlowersectionc = {
    < f f' >2 < fis fis' >2 |
    < g g' >2 < fis fis' >2 |
    < f f' >2 s2 |

% measure 21
    s1 |
    < f f' >2 < fis fis' >2 |
    < g g' >2 < fis fis' >2 |

% measure 24
    < f f' >2 s2 |
    s1 |
}

pianorightlowersectionda = {
    g2 fis2 |
    f2 e2 |
    s1 |
}

pianorightlowersectiondb = {
    s1 |
}

pianorightlowersectiondc = {
    s1 |
}

pianorightlowersectiond = {
    \repeat volta 2 { \pianorightlowersectionda }
    \alternative { { \pianorightlowersectiondb } { \pianorightlowersectiondc } }
}

pianorightlowercoda = {
    s1
}

%-------------------------------------------------

pianoleftupperintro = {
    < g, d bes >2\arpeggio < c g ees' >2\arpeggio |
    < g, d bes >2\arpeggio < a, c' >2\arpeggio |
    < g, d bes >2\arpeggio < ees, bes, g >2\arpeggio |
    < d, a, fis >4\arpeggio d,4 e,4 fis,4 |
}

pianoleftuppersectiona = {
% measure 5
    g,4 r4 d,4 ees,4 |
    d,4 r4 a,4 d,4 |
    g,4 r4 d,4 ees,4 |
    d,4 r4 a,4 d,4 |

% measure 9
    g,4 r4 d,4 ees,4 |
    d,4 r4 a,4 d,4 |
    g,4 r4 d,4 r4 |
    g,4 d,4 g,,4 d,4 |
}

pianoleftuppersectionb = {
% measure 13
    \repeat volta 2 {
        g,4 r4 d,4 r4 |
        g,4 r4 d,4 g,4 |
        c,4 r4 d,4 r4 |
    }
    \alternative {
        {
            g,4 d,4 g,4 r4 |
        }

% measure 17
        {
            g,4 d,4 g,4 f,4 |
        }
    }
}

pianoleftuppersectionc = {
    bes,,4 r4 bes,,4 r4 |
    bes,,4 r4 bes,,4 r4 |
    bes,,4 r4 c,4 f,4 |

% measure 21
    bes,,4 r4 f,4 f,4 |
    bes,,4 r4 bes,,4 r4 |
    bes,,4 r4 bes,,4 r4 |

% measure 24
    bes,,4 r4 ees,4 d,4 |
    g,4 r4 g,4 d,4 |
}

pianoleftuppersectionda = {
    g,4 r4 d,4 r4 |
    g,4 r4 d,4 g,4 |
    c,4 r4 d,4 r4 |
}

pianoleftuppersectiondb = {
    g,4 d,4 g,4 r4 |
}

pianoleftuppersectiondc = {
    g,4 d,4 g,4 d,4
}

pianoleftuppersectiond = {
    \repeat volta 2 { \pianoleftuppersectionda }
    \alternative { { \pianoleftuppersectiondb } { \pianoleftuppersectiondc } }
}

pianoleftuppercoda = {
    g,4 d,4 g,4 r4
}

%-------------------------------------------------

pianoleftlowerintro = {
    s1 |
    r4 < g bes >4 r4 < fis a >4 |
    s1 |
    s1 |
}

pianoleftlowersectiona = {
% measure 5
    s1 |
    s1 |
    s1 |
    s1 |

% measure 9
    s1 |
    s1 |
    s1 |
    s1 |
}

pianoleftlowersectionb = {
% measure 13
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }

% measure 17
        {
            s1 |
        }
    }
}

pianoleftlowersectionc = {
    s1 |
    s1 |
    s1 |

% measure 21
    s1 |
    s1 |
    s1 |

% measure 24
    s1 |
    s1 |
}

pianoleftlowersectionda = {
    s1 |
    s1 |
    s1 |
}

pianoleftlowersectiondb = {
    s1 |
}

pianoleftlowersectiondc = {
    s1 |
}

pianoleftlowersectiond = {
    \repeat volta 2 { \pianoleftlowersectionda }
    \alternative { { \pianoleftlowersectiondb } { \pianoleftlowersectiondc } }
}

pianoleftlowercoda = {
    s1
}

%-------------------------------------------------

pianorightuppernotes = {
    \key g \minor
    \time 4/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \blankmeasure
    \pianorightuppercoda
}

pianorightuppernotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectionda
    \pianorightuppersectiondb
    \pianorightuppersectionda
    \pianorightuppercoda
}

pianorightlowernotes = {
    \key g \minor
    \time 4/4
    \stemDown
    \pianorightlowerintro
    \pianorightlowersectiona
    \pianorightlowersectionb
    \pianorightlowersectionc
    \pianorightlowersectiond
    \blankmeasure
    \pianorightlowercoda
}

pianorightlowernotesmidi = {
    \key g \minor
    \time 4/4
    \stemDown
    \preintro
    \metronomeextra
    \pianorightlowerintro
    \pianorightlowersectiona
    \pianorightlowersectionb
    \pianorightlowersectionc
    \pianorightlowersectiond
    \pianorightlowersectiona
    \pianorightlowersectionb
    \pianorightlowersectionc
    \pianorightlowersectionda
    \pianorightlowersectiondb
    \pianorightlowersectionda
    \pianorightlowercoda
}

pianorightnotesmidi = <<
    \pianorightlowernotesmidi
    \pianorightuppernotesmidi
>>

pianoleftuppernotes = {
    \key g \minor
    \time 4/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \blankmeasure
    \pianoleftuppercoda
}

pianoleftuppernotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectionda
    \pianoleftuppersectiondb
    \pianoleftuppersectionda
    \pianoleftuppercoda
}

pianoleftlowernotes = {
    \key g \minor
    \time 4/4
    \stemUp
    \pianoleftlowerintro
    \pianoleftlowersectiona
    \pianoleftlowersectionb
    \pianoleftlowersectionc
    \pianoleftlowersectiond
    \blankmeasure
    \pianoleftlowercoda
}

pianoleftlowernotesmidi = {
    \key g \minor
    \time 4/4
    \stemUp
    \preintro
    \metronomeextra
    \pianoleftlowerintro
    \pianoleftlowersectiona
    \pianoleftlowersectionb
    \pianoleftlowersectionc
    \pianoleftlowersectiond
    \pianoleftlowersectiona
    \pianoleftlowersectionb
    \pianoleftlowersectionc
    \pianoleftlowersectionda
    \pianoleftlowersectiondb
    \pianoleftlowersectionda
    \pianoleftlowercoda
}

pianoleftnotesmidi = <<
    \pianoleftuppernotesmidi
    \pianoleftlowernotesmidi
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitardsevchord = < d a c' ges' >4
guitargminchord = < g bes d' g' >4
guitareessevchord = < ees bes des' g' >4
guitargmajsevchord = < g b ges' >4
guitargminmajsevchord = < fis bes d' g' >4
guitargminsevchord = < f bes d' g' >4
guitargminsixchord = < e bes d' g' >4
guitarcminchord = < c' ees' g'  >4
guitarfsevchord = < ees g c' f' >4
guitarbeschord = < bes d' f' >4
guitarbesaugchord = < bes d' fis' >4
guitarbessixchord = < bes d' g' >4
guitarcminsevchord = < c' ees' bes' >4

guitarnotesintro = {
    R1*3 |
    r2 r4 \guitardsevchord |
}

guitarnotessectiona = {
% measure 5
    r4 \guitargminchord r4 \guitareessevchord |
    r4 \guitardsevchord r4 \guitardsevchord |
    r4 \guitargminchord r4 \guitareessevchord |
    r4 \guitardsevchord r4 \guitardsevchord |

% measure 9
    r4 \guitargminchord r4 \guitareessevchord |
    r4 \guitardsevchord r4 \guitardsevchord |
    r4 \guitargminchord r4 \guitardsevchord |
    \guitargminchord \guitargminchord \guitargminchord \guitardsevchord |
}

guitarnotessectionb = {
% measure 13
    \repeat volta 2 {
        r4 \guitargminchord r4 \guitargminmajsevchord |
        r4 \guitargminsevchord r4 \guitargminsixchord |
        r4 \guitarcminchord r4 \guitardsevchord |
    }
    \alternative {
        {
            \guitargminchord \guitardsevchord \guitargminchord \guitargminchord |
        }

% measure 17
        {
            r4 \guitargminchord r4 \guitarfsevchord |
        }
    }
}

guitarnotessectionc = {
    r4 \guitarbeschord r4 \guitarbesaugchord |
    r4 \guitarbessixchord r4 \guitarbesaugchord |
    r4 \guitarbeschord \guitarcminsevchord \guitarfsevchord |

% measure 21
    r4 \guitarbeschord r4 \guitarfsevchord |
    r4 \guitarbeschord r4 \guitarbesaugchord |
    r4 \guitarbessixchord r4 \guitarbesaugchord |

% measure 24
    r4 \guitarbeschord \guitareessevchord \guitardsevchord |
    r4 \guitargminchord r4 \guitardsevchord |
}

guitarnotessectionda = {
    r4 \guitargminchord r4 \guitargminchord |
    r4 \guitargminchord r4 \guitargminchord |
    r4 \guitarcminchord r4 \guitardsevchord |
}

guitarnotessectiondb = {
    \guitargminchord \guitardsevchord \guitargminchord r4 |
}

guitarnotessectiondc = {
    r4 < g bes d' g' >4 r4 \guitardsevchord |
}

guitarnotessectiond = {
    \repeat volta 2 { \guitarnotessectionda }
    \alternative { { \guitarnotessectiondb } { \guitarnotessectiondc } }
}

guitarnotescoda = {
    r4 < g bes d' g' >4 r2 |
}

guitarnotes = {
    \key g \minor
    \time 4/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \blankmeasure
    \guitarnotescoda
}

guitarnotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectionda
    \guitarnotessectiondb
    \guitarnotessectionda
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fretdsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-o;3-2;2-1;1-2;" }
fretgminchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-5;3-3;2-3;1-3;" }
freteessevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-1;3-3;2-2;1-3;" }
fretgmajsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-o;2-o;1-2;" }
fretgminchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-5;3-3;2-3;1-3;" }
fretgminmajsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-4;3-3;2-3;1-3;" }
fretgminsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-3;3-3;2-3;1-3;" }
fretgminsixchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-2;3-3;2-3;1-3;" }
fretcminchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-5;2-4;1-3;" }
fretfsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-1;3-o;2-1;1-1;" }
fretbeschord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-3;2-3;1-1;" }
fretbesaugchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-3;2-3;1-2;" }
fretbessixchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-3;2-3;1-3;" }
fretcminsevchord = ^\markup \override #'(size . 0.75) { \fret-diagram #"6-x;5-x;4-x;3-5;2-4;1-6;" }

guitarstrumintro = { R1*3 | r2 r4 bes'4 | }

guitarstrumsectiona = {
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |

    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    bes'4 bes'4 bes'4 bes'4 |
}

guitarstrumsectionb = {
    \repeat volta 2 {
        r4 bes'4 r4 bes'4 |
        r4 bes'4 r4 bes'4 |
        r4 bes'4 r4 bes'4 |
    }
    \alternative {
        { bes'4 bes'4 bes'4 r4 | }
        { r4 bes'4 bes'4 bes'4 | }
    }
}

guitarstrumsectionc = {
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 bes'4 bes'4 |

    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |

    r4 bes'4 bes'4 bes'4 |
    r4 bes'4 r4 bes'4 |
}

guitarstrumsectionda = {
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
    r4 bes'4 r4 bes'4 |
}

guitarstrumsectiondb = {
    bes'4 bes'4 bes'4 r4 |
}

guitarstrumsectiondc = { r4 bes'4 bes'4 bes'4 | }

guitarstrumsectiond = {
    \repeat volta 2 { \guitarstrumsectionda }
    \alternative { { \guitarstrumsectiondb } { \guitarstrumsectiondc } }
}

guitarstrumcoda = { r4 bes'4 r2 | }

guitarstrumnotes = {
    \improvisationOn
    \key g \minor
    \time 4/4
    \guitarstrumintro
    \guitarstrumsectiona
    \guitarstrumsectionb
    \guitarstrumsectionc
    \guitarstrumsectiond
    \blankmeasure
    \guitarstrumcoda
    \improvisationOff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    R1*3 |
    r4 d4\3^"Pizz." e4\3 fis4\2 |
}

bassintronotext = {
    R1*3 |
    r4 d4\3 e4\3 fis4\2 |
}

basssectiona = {
% measure 5
    g4\2 r4 d4\3 ees4\3 |
    d4\3 r4 a4\2 d4\3 |
    f4\3 r4 d4\3 ees4\3 |
    d4\3 r4 a4\2 d4\3 |

% measure 9
    g4\2 r4 d4\3 ees4\3 |
    d4\3 r4 a4\2 d4\3 |
    g4\2 r4 d4\3 r4 |
    g4\2 d4\3 g,4\4 d4\3 |
}

basssectionb = {
% measure 13
    \repeat volta 2 {
        g4\2 r4 d4\3 r4 |
        g4\2 r4 d4\3 g4\2 |
        c4\3 r4 d4\3 r4 |
    }
    \alternative {
        {
            g4\2 d4\3 g4\2 r4 |
        }

% measure 17
        {
            g4\2 d4\3 g4\2 f4\2 |
        }
    }
}

basssectionc = {
    bes,4\3 r4 bes,4\3 r4 |
    bes,4\3 r4 bes,4\3 r4 |
    bes,4\3 r4 c4\3 f4\2 |

% measure 21
    bes,4\3 r4 f4\2 f,4\4 |
    bes,4\3 r4 bes,4\3 r4 |
    bes,4\3 r4 bes,4\3 r4 |

% measure 24
    bes,4\3 r4 ees4\2 d4\3 |
    g4\2 r4 d'4\1 d4\3 |
}

basssectionda = {
    g4\2 r4 d4\3 r4 |
    g4\2 r4 d4\3 g4\2 |
    c4\3 r4 d4\3 r4 |
}

basssectiondb = {
    g4\2 d4\3 g4\2 r4 |
}

basssectiondc = {
    g4\2 d4\3 g,4\4 d4\3 |
}

basssectiond = {
    \repeat volta 2 { \basssectionda }
    \alternative { { \basssectiondb } { \basssectiondc } }
}

basscoda = {
    g4\2 d4\3 g,4\4 r4 |
}

%-------------------------------------------------

bassnotes = {
    \key g \minor
    \time 4/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiond
    \blankmeasure
    \basscoda
}

bassnotestab = {
    \key g \minor
    \time 4/4
    \bassintronotext
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiond
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \key g \minor
    \time 4/4
    \preintro
    \metronomeextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiond
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionda
    \basssectiondb
    \basssectionda
    \basscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { \bassnotes }
euphoniumnotesmidi = { \bassnotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumsextra = \drummode {
    < bda hhc >4 hhc4 hhc4 hhc4 |
}

drumshighintro = \drummode {
    \stemUp
    R1*3 |
    r4 \stemUp \snarerollhalfdot |
}

drumshighsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 4 {
        \stemUp sna4 \stemUp \snarerollquarter \stemUp sna4 \stemUp \snarerollquarter |
    }
    \repeat percent 4 {
        \stemUp sna4 \stemUp \snarerollquarter \stemUp sna4 \stemUp \snarerollquarter |
    }
}

drumshighsectionb = \drummode {
    \stemUp
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 { < sna hhc >4^"closed high hat" hhc4 < sna hhc >4 hhc4 | }
    }
    \alternative {
        {
            \stemUp
            < sna hhc >4 hhc4 < sna hhc >4 hhc4 |
        }
        {
            \stemUp
            < sna hhc >4 hhc4 < sna hhc >4 hhc4 |
        }
    }
}

drumshighsectionc = \drummode {
    \stemUp
    \set countPercentRepeats = ##t
    \repeat percent 4 { cymr4^"  top cym." < sna cymr >4 cymr4 < sna cymr >4 }
    \repeat percent 4 { cymr4 < sna cymr >4 cymr4 < sna cymr >4 }
}

drumshighsectionda = \drummode {
    \stemUp
    \set countPercentRepeats = ##t
    \repeat percent 3 {
        hhc4^"closed high hat" < sna hhc >4 hhc4 < sna hhc >4 |
    }
}

drumshighsectiondb = \drummode {
    \stemUp
    hhc4 < sna hhc >4 hhc4 < sna hhc >4 |
}

drumshighsectiondc = \drummode {
    \stemUp
    hhc4 < sna hhc >4 < sna hhc >4 << \snarerollquarter { s8\< s8\! } >> |
}

drumshighsectiond = \drummode {
    \stemUp
    \repeat volta 2 { \drumshighsectionda }
    \alternative { { \drumshighsectiondb } { \drumshighsectiondb } }
}

drumshighcoda = \drummode {
    \stemUp
    hhc4 < sna hhc >4 < sna hhc >4 r4 |
}

drumshighmidi = \drummode {
    \stemUp
    \preintro
    \drumsextra
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectionda
    \drumshighsectiondb
    \drumshighsectionda
    \drumshighcoda
}

drumshigh = \drummode {
    \stemUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \blankmeasure
    \drumshighcoda
}

drumslowintro = \drummode {
    \stemDown
    s1*3 | s4 bda4 bda4 bda4 |
}

drumslowsectiona = \drummode {
    \stemDown
    \repeat percent 4 { bda4 s4 bda4 s4 | }
    \repeat percent 4 { bda4 s4 bda4 s4 | }
}

drumslowsectionb = \drummode {
    \stemDown
    \repeat volta 2 {
        \repeat percent 3 { bda4 s4 bda4 s4 }
    }
    \alternative {
        { bda4 s4 bda4 s4 | }
        { bda4 s4 bda4 s4 | }
    }
}

drumslowsectionc = \drummode {
    \stemDown
    \repeat percent 4 { bda4 s4 bda4 s4 }
    \repeat percent 4 { bda4 s4 bda4 s4 }
}

drumslowsectionda = \drummode {
    \stemDown
    \repeat percent 3 { bda4 s4 bda4 s4 }
}

drumslowsectiondb = \drummode {
    \stemDown
    bda4 s4 bda4 s4 |
}

drumslowsectiondc = \drummode {
    \stemDown
    bda4 s4 bda4 s4 |
}

drumslowsectiond = \drummode {
    \stemDown
    \repeat volta 2 { \drumslowsectionda }
    \alternative { { \drumslowsectiondb } { \drumslowsectiondc } }
}

drumslowcoda = \drummode {
    \stemDown
    bda4 bda4 bda4 s4 |
}

drumslowmidi = \drummode {
    \stemDown
    \preintro
    \metronomeextra
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectionda
    \drumslowsectiondb
    \drumslowsectionda
    \drumslowcoda
}

drumslow = \drummode {
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \blankmeasure
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 | g2.:min ees4:7 | d1:7 | g2.:min ees4:7 | d1:7 |
}

previewnotes = \transpose c c' {
    \key g \minor
    \time 4/4
    s2 s4 d'4 |
    \bar "||"
    bes'8. a'16 g'2 bes'4 |
    a'8. g'16 fis'2 d'4 |
    g'8 fis'8 g'8 a'8 bes'8 a'8 g'8 bes'8 |
    a'4. fis'8 d'4 d'4 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

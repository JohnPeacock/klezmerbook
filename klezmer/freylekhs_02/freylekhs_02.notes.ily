\version "2.18.2"

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt
    }
    \alternative {
        { s2 | \breakAfft s2 | \breakAsxt } { s2 | \breakAsvt s2 | } }
    \bar ".|:-||" \breakA
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
}

bandmsectionca = {
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten
    \grace { s4 } s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt
    \bar "||" \markTC \positionTC
}

bandmsectioncb = {
    s2 | \breakCfft s2 | \breakCsxt
}

bandmsectioncc = {
    s2 | \breakCsvt s2 |
}

bandmsectionc = {
    \repeat volta 2 { \bandmsectionca }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \markDC \positionDC
    \bar "||"
    \breakC
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
}

bandmNV = {
    \tempo \tempostring
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \stopStaff s2 \startStaff \breakBL
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

metronomeextraintro = {
    s2 | s2 |
}

metronomesectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
}

metronomesectionca = {
    s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    \grace { s4 } s2 | s2 | s2 | s2 |
}

metronomesectioncb = {
    s2 | s2 |
}

metronomesectioncc = {
    s2 | s2 |
}

metronomesectionc = {
    \repeat volta 2 {
        \metronomesectionca
    }
    \alternative {
        { \metronomesectioncb }
        { \metronomesectioncc }
    }
}

metronomecoda = {
    \grace { s8. } s2 | s2 |
}

metronome = \context Voice = "metronome" {
    \time 2/4

    \tempo 4 = 130
    \metronomeextraintro
    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 140
    \metronomesectiona
    \metronomesectionb
    \metronomesectionca
    \metronomesectioncb
    \metronomesectionca

    \tempo 4 = 120
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
          d''8[\ff bes''8 a''8 g''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
          d''8[ ees''8 c''8 ees''8 ] |
        d''2 |
          d''8[ ees''8 fis''8 g''8 ] |
          fis''8[ ees''8 d''8 ees''8 ] |
        fis''2 ~ |

          fis''8[ ees''8 ees''8 d''8 ] |
          d''8[ d'''8 c'''8 bes''8 ] |
          a''8[ g''8 fis''8 g''8 ] |
          c'''8[ bes''8 a''8 g''8 ] |
        fis''2 |
          fis''8[ c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
    }
    \alternative {
        {
            d''2 |
            d''4 r4 |
        }
        {
            d''2 |
            d''4 r4 |
        }
    }
}

melodysectionb = {
    \repeat volta 2 {
          fis''8[ g''8 ] a''8 r8 |
        a''8 r8 a''8 r8 |
          bes''8[ a''8 g''8 bes''8 ] |
        a''2 |
          d''8[ ees''8 ] fis''8 r8 |

        fis''8 r8 fis''8 r8 |
          g''8[ fis''8 ees''8 fis''8 ] |
        d''2 |
          fis''8[ g''8 ] a''8 r8 |
        a''8 r8 a''8 r8 |
          c'''8[ bes''8 a''8 g''8 ] |
        fis''2 |

          fis''8[ c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
        d''2 |
        d''4 r4 |
    }
}

melodysectionca = {
    fis''2\trill( |
    d''4) r4 |
    g''2\trill( |

    d''4) r4 |
      fis''8[ g''8 a''8 bes''8 ] |
      a''8[ g''8 fis''8 ees''8 ] |
      d''8[ ees''8 fis''8 g''8 ] |
      fis''8[ ees''8 d''8 c''8 ] |
    fis''2\trill( |
    d''4) r4 |

    \grace { s4 } d'''2\trill( |
    c'''4) r4 |
      c'''8[ bes''8 a''8 g''8 ] |
      fis''8[ c''8 d''8 ees''8 ] |
}

melodysectioncb = {
    d''2 |
    d''4 r4 |
}

melodysectioncc = {
    d''2 |
    d''4 r4 |
}

melodysectionc = {
    \repeat volta 2 {
        \melodysectionca
    }
    \alternative {
        { \melodysectioncb }
        { \melodysectioncc }
    }
}

melodycoda = {
    \grace { s8. } d'''8^.^> r8 a''8^.^> r8 |
    d''2^\fermata |
}

melody = {
    \key bes \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \stopStaff s2 \startStaff
    \melodycoda
}

melodymidi = {
    \key bes \major
    \time 2/4

    \metronomeextraintro

    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionca
    \melodysectioncb
    \melodysectionca

    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectiona = {
    \repeat volta 2 {
        c''8[\ff e''8 d''8 c''8 ] |
        b'8[ c''8 b'8 a'8 ] |
        gis'8[ a'8 f'8 a'8 ] |
        gis'8[ e'8 gis'8 b'8 ] |
        gis'8[ a'8 b'8 c''8 ] |
        b'8[ a'8 gis'8 a'8 ] |
        b'8[( e'8 gis'8 b'8 ] |

        e''8) r8   a'8[( gis'8) ] |
        a'8[ c''8 b'8 a'8 ] |
        d''8[ c''8 b'8 c''8 ] |
        f''8[ e''8 d''8 cis''8 ] |
        e''16[ b'16 e''8 ] e''8 r8 |
        gis''8[ d''8 e''8 f''8 ] |
        gis''8[ a''8 gis''8 f''8 ] |
    }
    \alternative {
        {
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        }
        {
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        }
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        e''8[ f''8 gis''8 e''8 ] |
        gis''8[( e''8) ]   gis''8[( e''8) ] |
        a''8[ e''8 c''8 a''8 ] |
        gis''8[ e''16 e''16 ]   b'8[ e''8 ] |
        gis'8[ b'8 e''8 b'8 ] |

        e''8[( b'8) ]   b'8[( e''8) ] |
        f''8[ e''8 ] d''4 |
        e''8[ e''16 e''16 ]   e''8[ e''8 ] |
        e''8[ f''8 gis''8 e''8 ] |
        gis''8[( d''8) ]   gis''8[( d''8) ] |
        a''8[ a''8 e''8 e''8 ] |
        e''8[ b'8 e''8 ] r8 |

        gis''8[ d''8 e''8 f''8 ] |
        gis''8[ a''8 gis''8 f''8 ] |
        r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
    }
}

tenorharmonysectionca = {
    e''4\marcato b'4 |
    r8   e''16[ e''16 ]   e''8[ e''8 ] |
    \acciaccatura { c''16[ d''16 ] } e''4\marcato c''4 |

    r8   e''16[ e''16 ]   e''8[ a''8 ] |
    gis''8[ a''8 b''8 c'''8 ] |
    b''8[ a''8 gis''8 f''8 ] |
    e''8[ f''8 gis''8 a''8 ] |
    e''8[ d''8 a'8 d''8 ] |
    e''4 b'4 |
    r8   e''16[ e''16 ]   e''8[ e''8 ] |

    \grace { s4 } a''4 g''4 |
    f''8[( a''8 f''8) ] r8 |
    f''8[ e''8 ] d''4 |
    d''8[ d''8 b'8 b'8 ] |
}

tenorharmonysectioncb = {
    gis'8 gis''4 gis''8 |
    r8 gis''4 gis''8 |
}

tenorharmonysectioncc = {
    gis'8 gis''4 gis''8 |
    r8 gis''4 gis''8 |
}

tenorharmonysectionc = {
    \repeat volta 2 {
        \tenorharmonysectionca
    }
    \alternative {
        { \tenorharmonysectioncb }
        { \tenorharmonysectioncc }
    }
}

tenorharmonycoda = {
    \grace { s8. } gis'8\ff r8 a'8 r8 |
    gis'2\fermata |
}

tenorharmony = \transpose c bes, {
    \key c \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \stopStaff s2 \startStaff
    \tenorharmonycoda
}

tenorharmonymidi = \transpose c bes, {
    \key c \major
    \time 2/4

    \metronomeextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonysectioncb
    \tenorharmonysectionca

    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmony = {
    \key bes \major
    \time 2/4
}

altoharmonymidi = {
    \key bes \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa = {
    \repeat percent 3 {   d8[\ff r8 a,8 ] r8 } |
      d8[ d16 d16 ]   a,8[ d8 ] |

      d8[ ees8 fis8 g8 ] |
      fis8[ ees8 d8 ees8 ] |
    d2 |
      d8[ d16 d16 ]   a,16[ a,16 d8 ] |

    \repeat percent 2 {   d8[ r8 a,8 ] r8 } |
      c8[ r8 c8 ] r8 |
    d4   a,8[ d8 ] |

    \repeat unfold 2 {   c8[ r8 g,8 ] r8 } |
}

countersectionab = {
    d2 ~ |
    d2 |
}

countersectionac = {
    d2 ~ |
    d2 |
}

countersectiona = {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionba = {
    d4( fis8) r8 |
      a8[ r8 d'8 ] r8 |
    g4 d'4 |
    a4 fis4 |

    d4( fis8) r8 |
      a8[ r8 d'8 ] r8 |
      g8[ fis8 ees8 fis8 ] |
      d8[ d16 d16 ]   a,8[ d8 ] |

    d4( fis8) r8 |
      a8[ r8 d8 ] r8 |
      c'8[ bes8 a8 g8 ] |
    d2 |

      c8[ r8 g,8 ] r8 |
    c4   g,8[ c8 ] |
    \repeat percent 2 {   d8[ d'8 a8 d'8 ] } |
}

countersectionb = { \repeat volta 2 { \countersectionba } }

countersectionca = {
    \repeat unfold 2 {   d8[ r8 a,8 ] r8 } |
    \repeat unfold 2 {   d8[ r8 g,8 ] r8 } |

      fis8[ g8 a8 bes8 ] |
      a8[ g8 fis8 ees8 ] |
      d8[ ees8 fis8 g8 ] |
      fis8[ ees8 d8 c8 ] |

    \repeat unfold 2 {   d8[ r8 a,8 ] r8 } |
      c8[ r8 g,8 ] r8 |
    \grace { s4 } c8[ r8 c8 ] r8 |

      c'8[ bes8 a8 g8 ] |
      fis8[ c8 d8 ees8 ] |
}

countersectioncb = {
    \repeat unfold 2 {   d8[ d'8 a8 d'8 ] } |
}

countersectioncc = {
    \repeat unfold 2 {   d8[ d'8 a8 d'8 ] } |
}

countersectionc = {
    \repeat volta 2 {
        \countersectionca
    }
    \alternative {
        { \countersectioncb }
        { \countersectioncc }
    }
}

countercoda = {
    \acciaccatura { a,16[ b,16 cis16 ] }   d8-^ r8 a,8-^ r8 |
    d2-^\fermata |
}

counter = \transpose c c' {
    \key bes \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \stopStaff s2 \startStaff
    \countercoda
}

countermidi = \transpose c c' {
    \time 2/4

    \metronomeextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionca
    \countersectioncb
    \countersectionca

    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \repeat volta 2 {
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        d8\3 r8 a,8\4 r8 |

        d8\3 r8 a8\2 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        c8\3 r8 g,8\4 r8 |
        d8\3 r8 a,8\4 r8 |
        c8\3 r8 g,8\4 r8 |
        c8\3 r8 g8\2 r8 |
    }
    \alternative {
        {
            d8\3 r8 a,8\4 r8 |
            d8\3 r8 a8\2 r8 |
        }
        {
            d8\3 r8 a,8\4 r8 |
            d8\3 r8 a8\2 r8 |
        }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        g,8\4 r8 d8\3 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a,8\4 r8 |

        d8\3 r8 a8\2 r8 |
        g,8\4 r8 d8\3 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
        c8\3 r8 g,8\4 r8 |
        d8\3 r8 a,8\4 r8 |

        c8\3 r8 g,8\4 r8 |
        c8\3 r8 g8\2 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a8\2 r8 |
    }
}

basslinesectionca = {
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |
    g,8\4 r8 d8\3 r8 |

    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |

    \grace { s4 } c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
}

basslinesectioncb = {
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |
}

basslinesectioncc = {
    d8\3 r8 a,8\4 r8 |
    d8\3 r8 a,8\4 r8 |
}

basslinesectionc = {
    \repeat volta 2 {
        \basslinesectionca
    }
    \alternative {
        { \basslinesectioncb }
        { \basslinesectioncc }
    }
}

basslinecoda = {
    \grace { s8. } d8\3^> r8 a,8\4^> r8 |
    d2\3^>^\fermata |
}

bassline = {
    \key bes \major
    \time 2/4

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \stopStaff s2 \startStaff
    \basslinecoda
}

basslinemidi = {
    \key bes \major
    \time 2/4

    \metronomeextraintro

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinesectioncb
    \basslinesectionca

    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \key bes \major
    \time 2/4
}

guitarnotesmidi = {
    \key bes \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2 | d2 | d2 | d2 |
        d2 | d2 | d2 | d2 |
        d2 | d2 | c2:min | d2 |
        c2:min | c2:min |
    }
    \alternative {
        {
            d2 |
            d2 |
        }
        {
            \chordChangesOff
            d2 |
            \chordChangesOn
            d2 |
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2 |
        \chordChangesOn
        d2 | g2:min | d2 |
        d2 | d2 | g2:min | d2 |
        d2 | d2 | c2:min | d2 |
        c2:min | c2:min | d2 | d2 |
    }
}

chordletterssectionca = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 | g2:min | g2:min |
    g2:min | g2:min | d2 | d2 |
    d2 | d2 | \grace { s4 } c2:min | c2:min |
    c2:min | c2:min |
}

chordletterssectioncb = \chordmode {
    d2 | d2 |
}

chordletterssectioncc = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordletterssectionca
    }
    \alternative {
        { \chordletterssectioncb }
        { \chordletterssectioncc }
    }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { d8. }
    \chordChangesOn
    d4 a4:7 | d2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \stopStaff s2 \startStaff
    \chordChangesOff
    \grace { d8. }
    \chordChangesOn
    d4 a4:7 | d2 |
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

melodystaff = \context Staff = "melodystaff" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c {
    \melody
}

flutenotesmidi = \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
          e''8[\ff c'''8 b''8 a''8 ] |
          gis''8[ a''8 gis''8 f''8 ] |
          e''8[ f''8 d''8 f''8 ] |
        e''2 |
          e''8[ f''8 gis''8 a''8 ] |
          gis''8[ f''8 e''8 f''8 ] |
        gis''2 ~ |

          gis''8[( f''8) f''8( e''8) ] |
          e''8[ e''8 d'''8 c'''8 ] |
          b''8[ a''8 gis''8 a''8 ] |
          d'''8[ c'''8 b''8 a''8 ] |
        gis''2 |
          gis''8[ d''8 e''8 f''8 ] |
          gis''8[ a''8 gis''8 f''8 ] |
    }
    \alternative {
        {
            e''2 |
            e''4 r4 |
        }
        {
            e''2 |
            e''4 r4 |
        }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
          gis''8[ a''8 ] b''8 r8 |
        b''8 r8 b''8 r8 |
          c'''8[ b''8 a''8 c'''8 ] |
        b''2 |
          e''8[ f''8 gis''8 ] r8 |

        gis''8 r8 gis''8 r8 |
          a''8[ gis''8 f''8 gis''8 ] |
        e''2 |
          gis''8[ a''8 ] b''8 r8 |
        b''8 r8 b''8 r8 |
          d'''8[ c'''8 b''8 a''8 ] |
        gis''2 |

          gis''8[ d''8 e''8 f''8 ] |
          gis''8[ a''8 gis''8 f''8 ] |
        e''2 ~ |
        e''4 r4 |
    }
}

clarinetsectionca = {
    gis''2\trill ~ |
    gis''4 r4 |
    a''2\trill( |

    e''4) r8 a''8\trill |
    gis''8 [ a''8 b''8 c'''8 ] |
    b''8 [ a''8 gis''8 f''8 ] |
    e''8 [ f''8 gis''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    gis''2 |
    e''4 r4 |

    \acciaccatura { a''16 [ b''16 c'''16 d'''16 ] } e'''2( |
    d'''4.) r8 |
    d'''8 [ c'''8 b''8 a''8 ] |
    gis''8 [ d''8 e''8 f''8 ] |
}

clarinetsectioncaMIDI = {
    gis''2\trill ~ |
    gis''4 r4 |
    a''2\trill( |

    e''4) r8 a''8\trill |
    gis''8 [ a''8 b''8 c'''8 ] |
    b''8 [ a''8 gis''8 f''8 ] |
    e''8 [ f''8 gis''8 a''8 ] |
    gis''8 [ f''8 e''8 d''8 ] |
    gis''2 |
    e''4 r4 |

    \acciaccatura { c'''16 [ d'''16 ] } e'''2( |
    d'''4.) r8 |
    d'''8 [ c'''8 b''8 a''8 ] |
    gis''8 [ d''8 e''8 f''8 ] |
}

clarinetsectioncb = {
    e''8 \acciaccatura { dis'''8 } e'''4 \acciaccatura { dis'''8 } e'''8 |
    r8 \acciaccatura { dis'''8 } e'''4 \acciaccatura { dis'''8 } e'''8 |
}

clarinetsectioncc = {
    e''8 \acciaccatura { dis'''8 } e'''4 \acciaccatura { dis'''8 } e'''8 |
    r8 \acciaccatura { dis'''8 } e'''4 \acciaccatura { dis'''8 } e'''8 |
}

clarinetsectionc = {
    \repeat volta 2 {
        \clarinetsectionca
    }
    \alternative {
        { \clarinetsectioncb }
        { \clarinetsectioncc }
    }
}

clarinetsectioncMIDI = {
    \repeat volta 2 {
        \clarinetsectioncaMIDI
    }
    \alternative {
        { \clarinetsectioncb }
        { \clarinetsectioncc }
    }
}

clarinetcoda = {
    \grace { s8. } e'''8\marcato\ff r8 b''8\marcato r8 |
    e''2\marcato\fermata |
}

clarinetnotes = {
    \key c \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \stopStaff s2 \startStaff
    \clarinetcoda
}

clarinetnotesmidi = {
    \time 2/4

    \metronomeextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectioncMIDI

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectioncaMIDI
    \clarinetsectioncb
    \clarinetsectioncaMIDI

    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona = {
    \repeat volta 2 {
          c''8[\ff e''8 d''8 c''8 ] |
          b'8[ c''8 b'8 a'8 ] |
          gis'8[ a'8 f'8 a'8 ] |
          gis'8[ e'8 gis'8 b'8 ] |
          gis'8[ a'8 b'8 c''8 ] |
          b'8[ a'8 gis'8 a'8 ] |
          b'8[( e'8 gis'8 b'8 ] |

        e''8) r8   a'8[( gis'8) ] |
          a'8[ c''8 b'8 a'8 ] |
          d''8[ c''8 b'8 c''8 ] |
          f''8[ e''8 d''8 cis''8 ] |
          e''16[ b'16 e''8 ] e''8 r8 |
          gis''8[ d''8 e''8 f''8 ] |
          gis''8[ a''8 gis''8 f''8 ] |
    }
    \alternative {
        {
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        }
        {
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
            r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
          e''8[ f''8 gis''8 e''8 ] |
          gis''8[( e''8) ]   gis''8[( e''8) ] |
          a''8[ e''8 c''8 a''8 ] |
          gis''8[ e''16 e''16 ]   b'8[ e''8 ] |
          gis'8[ b'8 e''8 b'8 ] |

          e''8[( b'8) ]   b'8[( e''8) ] |
          f''8[ e''8 ] d''4 |
          e''8[ e''16 e''16 ]   e''8[ e''8 ] |
          e''8[ f''8 gis''8 e''8 ] |
          gis''8[( d''8) ]   gis''8[( d''8) ] |
          a''8[ a''8 e''8 e''8 ] |
          e''8[ b'8 e''8 ] r8 |

          gis''8[ d''8 e''8 f''8 ] |
          gis''8[ a''8 gis''8 f''8 ] |
        r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
        r8 \acciaccatura { dis''8 } e''4\marcato \acciaccatura { dis''8 } e''8\marcato |
    }
}

tenorsaxsectionca = {
    e''4\marcato b'4 |
    r8   e''16[ e''16 ]   e''8[ e''8 ] |
    \acciaccatura { c''16[ d''16 ] } e''4\marcato c''4 |

    r8   e''16[ e''16 ]   e''8[ a''8 ] |
      gis''8[ a''8 b''8 c'''8 ] |
      b''8[ a''8 gis''8 f''8 ] |
      e''8[ f''8 gis''8 a''8 ] |
      e''8[ d''8 a'8 d''8 ] |
    e''4 b'4 |
    r8   e''16[ e''16 ]   e''8[ e''8 ] |

    \grace { s4 } a''4 g''4 |
      f''8[( a''8 f''8) ] r8 |
      f''8[ e''8 ] d''4 |
      d''8[ d''8 b'8 b'8 ] |
}

tenorsaxsectioncb = {
    gis'8 gis''4 gis''8 |
    r8 gis''4 gis''8 |
}

tenorsaxsectioncc = {
    gis'8 gis''4 gis''8 |
    r8 gis''4 gis''8 |
}

tenorsaxsectionc = {
    \repeat volta 2 {
        \tenorsaxsectionca
    }
    \alternative {
        { \tenorsaxsectioncb }
        { \tenorsaxsectioncc }
    }
}

tenorsaxcoda = {
    \grace { s8. } gis'8\ff r8 a'8 r8 |
    gis'2\fermata |
}

tenorsaxnotes = {
    \key c \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \stopStaff s2 \startStaff
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \time 2/4

    \metronomeextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionca
    \tenorsaxsectioncb
    \tenorsaxsectionca

    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona = {
    \repeat volta 2 {
          b'8[\ff g''8 fis''8 e''8 ] |
          dis''8[ e''8 dis''8 c''8 ] |
          b'8[ c''8 a'8 c''8 ] |
        b'2 |
          b'8[ c''8 dis''8 e''8 ] |
          dis''8[\trill c''8 b'8 c''8 ] |
        dis''8 \acciaccatura { ais''16 } b''4 b''8 |
        r8   b''8[ b''8 b''8 ] |
          b'8[ b''8 a''8 g''8 ] |
          fis''8[ e''8 dis''8 e''8 ] |
          a''8[ g''8 fis''8 e''8 ] |
        dis''2 |
          dis''8[\trill a'8 b'8 c''8 ] |
          dis''8[ e''8 dis''8 c''8 ] |
    }
    \alternative {
        {
              b'8[ b''8 fis''8 b''8 ] |
              b'8[ b''8 fis''8 b''8 ] |
        }
        {
              b'8[ b''8 fis''8 b''8 ] |
            b'4. r8 |
        }
    }
}

altosaxsectionb = {
    \repeat volta 2 {
          dis''8[ e''8 ] fis''8 r8 |
        fis''8 r8 fis''8 r8 |
          g''8[ fis''8 e''8 g''8 ] |
          fis''8[ b''16 b''16 ]   b''8[ b''8 ] |
          b'8[ c''8 ] dis''8 r8 |
        dis''8 r8 dis''8 r8 |
          e''8[ dis''8 c''8 dis''8 ] |
          b'8[ b''16 b''16 ]   fis''8[ b''8 ] |
          dis''8[ e''8 ] fis''8 r8 |
        fis''8 r8 fis''8 r8 |
          a''8[ g''8 fis''8 e''8 ] |
        dis''4. r8 |
          dis''8[ a'8 b'8 c''8 ] |
          dis''8[ e''8 dis''8 c''8 ] |
          b'8[ \acciaccatura { ais''16 } b''8 ] r8 \acciaccatura { ais''16 } b''8 |
        r8 \acciaccatura { ais''16 }   b''8[ b''8 b''8 ] |
    }
}

altosaxsectionca = {
    dis''2\trill( |
      b'8[) b'16 b'16 ]   b'8[ b'8 ] |
    e''2\trill( |
      b'8[) b'16 b'16 ]   b'8[ e''8\trill ] |
      dis''8[ e''8 fis''8 g''8 ] |
      fis''8[ e''8 dis''8 c''8 ] |
      b'8[ c''8 dis''8 e''8 ] |
      dis''8[\trill c''8 b'8 a'8 ] |
    dis''2\trill( |
      b'8[) b'16 b'16 ]   b'8[ b''8 ] |
    \grace { s4 } b''2\trill( |
    a''4.) r8 |
      a''8[ g''8 fis''8 e''8 ] |
      dis''8[\trill a'8 b'8 c''8 ] |
}

altosaxsectioncb = {
      b'8[ b''8 fis''8 b''8 ] |
      b'8[ b''16 b''16 ]   b''8[ b''8 ] |
}

altosaxsectioncc = {
      b'8[ b''8 fis''8 dis''8 ] |
    b'4. r8 |
}

altosaxsectionc = {
    \repeat volta 2 {
        \altosaxsectionca
    }
    \alternative {
        { \altosaxsectioncb }
        { \altosaxsectioncc }
    }
}

altosaxcoda = {
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2\fermata |
}

altosaxnotes = {
    \key g \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \stopStaff s2 \startStaff
    \altosaxcoda
}

altosaxnotesmidi = {
    \time 2/4

    \metronomeextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxsectioncb
    \altosaxsectionca

    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \repeat volta 2 {
          d''8[\f bes''8 a''8 g''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
          d''8[ ees''8 c''8 ees''8 ] |
        d''2 |
          d''8[ ees''8 fis''8 g''8 ] |
          fis''8[ ees''8 d''8 ees''8 ] |
        fis''2 ~ |

          fis''8[ ees''8 ees''8 d''8 ] |
          d''8[ d'''8 c'''8 bes''8 ] |
          a''8[ g''8 fis''8 g''8 ] |
          c'''8[ bes''8 a''8 g''8 ] |
        fis''2 |
          fis''8[ c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
    }
    \alternative {
        {
            d''2 |
            d''4 r4 |
        }
        {
            d''2 |
            d''4 r4 |
        }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
          fis''8[ g''8 ] a''8 r8 |
        a''8 r8 a''8 r8 |
          bes''8[ a''8 g''8 bes''8 ] |
        a''2 |
          d''8[ ees''8 ] fis''8 r8 |

        fis''8 r8 fis''8 r8 |
          g''8[ fis''8 ees''8 fis''8 ] |
        d''2 |
          fis''8[ g''8 ] a''8 r8 |
        a''8 r8 a''8 r8 |
          c'''8[ bes''8 a''8 g''8 ] |
        fis''2 |

          fis''8[ c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
        d''2 |
        d''4 r4 |
    }
}

trumpetsectionca = {
    fis''2 |
    d''4 r4 |
    g''2 |
    d''4 r4 |

      fis''8[ g''8 a''8 bes''8 ] |
      a''8[ g''8 fis''8 ees''8 ] |
      d''8[ ees''8 fis''8 g''8 ] |
      fis''8[ ees''8 d''8 c''8 ] |

    fis''2( |
    d''4) r4 |
    \grace { s4 } d'''2( |
    c'''4) r4 |

      c'''8[ bes''8 a''8 g''8 ] |
      fis''8[ c''8 d''8 ees''8 ] |
}

trumpetsectioncb = {
    d''2 |
    d''4 r4 |
}

trumpetsectioncc = {
    d''2 |
    d''4 r4 |
}

trumpetsectionc = {
    \repeat volta 2 {
        \trumpetsectionca
    }
    \alternative {
        { \trumpetsectioncb }
        { \trumpetsectioncc }
    }
}

trumpetcoda = {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''4 a''4 |
    << { d'''2^\fermata } \\ { d''2 } >> |
}

trumpetnotes = \transpose c' d {
    \key bes \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \stopStaff s2 \startStaff
    \trumpetcoda
}

trumpetnotesmidi = \transpose c' d {
    \key bes \major
    \time 2/4

    \metronomeextraintro

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetsectioncb
    \trumpetsectionca

    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 |
}

trombonesectionaa = {
    \repeat unfold 3 { d8\ff [ r8 a,8 ] r8 } |
    d8 [ d16 d16 ] a,8 [ d8 ] |

    d8 [ ees8 fis8 g8 ] |
    fis8 [ ees8 d8 ees8 ] |
    d2 |
    d8 [ d16 d16 ] a,16 [ a,16 d8 ] |

    \repeat unfold 2 { d8 [ r8 a,8 ] r8 } |
    c8 [ r8 c8 ] r8 |
    d4 a,8 [ d8 ] |

    \repeat unfold 2 { c8 [ r8 g,8 ] r8 } |
}

trombonesectionab = {
    d2 ~ |
    d2 |
}

trombonesectionac = {
    d2 ~ |
    d2 |
}

trombonesectiona = {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionba = {
    d4( fis8) r8 |
    a8 [ r8 d'8 ] r8 |
    g4 d'4 |
    a4 fis4 |

    d4( fis8) r8 |
    a8 [ r8 d'8 ] r8 |
    g8 [ fis8 ees8 fis8 ] |
    d8 [ d16 d16 ] a,8 [ d8 ] |

    d4( fis8) r8 |
    a8 [ r8 d8 ] r8 |
    c'8 [ bes8 a8 g8 ] |
    d2 |

    c8 [ r8 g,8 ] r8 |
    c4 g,8 [ c8 ] |
    \repeat unfold 2 { d8 [ d'8 a8 d'8 ] } |
}

trombonesectionb = { \repeat volta 2 { \trombonesectionba } }

trombonesectionca = {
    \repeat unfold 2 { d8 [ r8 a,8 ] r8 } |
    \repeat unfold 2 { d8 [ r8 g,8 ] r8 } |

    fis8 [ g8 a8 bes8 ] |
    a8 [ g8 fis8 ees8 ] |
    d8 [ ees8 fis8 g8 ] |
    fis8 [ ees8 d8 c8 ] |

    \repeat unfold 2 { d8 [ r8 a,8 ] r8 } |
    c8 [ r8 g,8 ] r8 |
    \grace { s4 } c8 [ r8 c8 ] r8 |

    c'8 [ bes8 a8 g8 ] |
    fis8 [ c8 d8 ees8 ] |
}

trombonesectioncb = {
    \repeat unfold 2 { d8 [ d'8 a8 d'8 ] } |
}

trombonesectioncc = {
    \repeat unfold 2 { d8 [ d'8 a8 d'8 ] } |
}

trombonesectionc = {
    \repeat volta 2 {
        \trombonesectionca
    }
    \alternative {
        { \trombonesectioncb }
        { \trombonesectioncc }
    }
}

trombonecoda = {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-^ r8 a,8-^ r8 |
    d2-^\fermata |
}

trombonenotes = {
    \key bes \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \stopStaff s2 \startStaff
    \trombonecoda
}

trombonenotesmidi = {
    \time 2/4

    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca

    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = \transpose c c {
    \melody
}

violinnotesmidi = \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    \repeat volta 2 {
          d''8[\ff bes''8 a''8 g''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
          d''8[ ees''8 c''8 ees''8 ] |
        < fis' d'' >2 |
          d''8[ ees''8 fis''8 g''8 ] |
          fis''8[^\trill ees''8 d''8 ees''8 ] |
        < d'' fis'' >2 ~ |

        < d'' fis'' >2 |
          d''8[ d'''8 c'''8 bes''8 ] |
          a''8[ g''8 fis''8 g''8 ] |
        < ees'' c''' > 8 bes''8[ a''8 g''8 ] |
        < d'' fis'' >2 |
          fis''8[^\trill c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
    }
    \alternative {
        {
              d''8[ \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 ] |
              d''8[ \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 ] |
        }
        {
              d''8[ \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 ] |
              d''8[ \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 ] |
        }
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        < d'' fis'' >8[ < ees'' g'' >8 ] < fis'' a'' >8 r8 |
        < fis'' a'' >8 r8 < fis'' a'' >8 r8 |
          bes''8[ a''8 g''8 bes''8 ] |
        < fis'' a'' >2 |
          d''8[ ees''8 ] < a' d'' fis'' >8 r8 |

        < a' d'' fis'' >8 r8 < a' d'' fis'' >8 r8 |
          g''8[ fis''8 ees''8 fis''8 ] |
        < fis' d'' >2 |
        < d'' fis'' >8[ < ees'' g'' >8 ] < fis'' a'' >8 r8 |
        < fis'' a'' >8 r8 < fis'' a'' >8 r8 |
          c'''8[ bes''8 a''8 g''8 ] |
        < d'' fis'' >2 |

          fis''8[^\trill c''8 d''8 ees''8 ] |
          fis''8[ g''8 fis''8 ees''8 ] |
          d''8[ \acciaccatura { cis'''8 } d'''8 ] r8 \acciaccatura { cis'''8 } d'''8 |
        r8 \acciaccatura { cis'''8 } d'''8 r8 \acciaccatura { cis'''8 } d'''8 |
    }
}

pianorightuppersectionca = {
    fis''2^\trill( |
    d''4) r4 |
    g''2^\trill( |
    d''4) r8 g''8^\trill-3 |

      fis''8[-2 g''8-1 a''8-2 bes''8-3 ] |
      a''8[-2 g''8-1 fis''8-3 ees''8-2 ] |
      d''8[-1 ees''8-3 fis''8-4 g''8-5 ] |
      fis''8[-4 ees''8 d''8 c''8 ] |

    fis''2^\trill( |
    d''4) r4 |
    \acciaccatura { g''16[ a''16 bes''16 c'''16 ] } d'''2( |
    < ees'' g'' c''' >4.) r8 |

      c'''8[ bes''8 a''8 g''8 ] |
      fis''8[^\trill c''8 d''8 ees''8 ] |
}

pianorightuppersectioncaMIDI = {
    fis''2^\trill( |
    d''4) r4 |
    g''2^\trill( |
    d''4) r8 g''8^\trill-3 |

    fis''8-2 [ g''8-1 a''8-2 bes''8-3 ] |
    a''8-2 [ g''8-1 fis''8-3 ees''8-2 ] |
    d''8-1 [ ees''8-3 fis''8-4 g''8-5 ] |
    fis''8-4 [ ees''8 d''8 c''8 ] |

    fis''2^\trill( |
    d''4) r4 |
    \acciaccatura { bes''16 [ c'''16 ] } d'''2( |
    < ees'' g'' c''' >4.) r8 |

    c'''8 [ bes''8 a''8 g''8 ] |
    fis''8^\trill [ c''8 d''8 ees''8 ] |
}

pianorightuppersectioncb = {
    < fis' a' d'' >2 |
    < fis' a' d'' >4 r4 |
}

pianorightuppersectioncc = {
    < fis' a' d'' >2 |
    < fis' a' d'' >4 r4 |
}

pianorightuppersectionc = {
    \repeat volta 2 {
        \pianorightuppersectionca
    }
    \alternative {
        { \pianorightuppersectioncb }
        { \pianorightuppersectioncc }
    }
}

pianorightuppersectioncMIDI = {
    \repeat volta 2 {
        \pianorightuppersectioncaMIDI
    }
    \alternative {
        { \pianorightuppersectioncb }
        { \pianorightuppersectioncc }
    }
}

pianorightuppercoda = {
    \acciaccatura { a''16[ b''16 cis'''16 ] } < fis'' d''' >8^>^. r8 < cis'' g'' a'' >8^>^. r8 |
    \stemDown
    < fis' a' d'' >2^\fermata |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'16 d'16 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |

          d8[( d'16 d'16 ]   a16[ a16 d'8) ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          c8[ c'8 g8 c'8 ] |
          d8[ d'8 a8 d'8 ] |
          c8[ c'8 g8 c'8 ] |
          c8[ c'8 g8 c'8 ] |
    }
    \alternative {
        {
              d8[ d'8 a8 d'8 ] |
              d8[ d'8 a8 d'8 ] |
        }
        {
              d8[ d'8 a8 d'8 ] |
              d8[ d'8 a8 d'8 ] |
        }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 < g bes >8 d'8 ] |
          d8[ d'16 d'16 ]   a8[ d'8 ] |
          d8[ d'8 a8 d'8 ] |

          d8[ d'8 a8 d'8 ] |
          d8[ d'8 < g bes >8 d'8 ] |
          d8[ d'16 d'16 ]   a8[ d'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
          ees8[ c'8 g8 c'8 ] |
          d8[ d'8 a8 d'8 ] |

          c8[ c'8 g8 c'8 ] |
          c8[ c'8 g8 c'8 ] |
          d8[ d'8 a8 d'8 ] |
          d8[ d'8 a8 d'8 ] |
    }
}

pianoleftuppersectionca = {
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      g8[ d'8 < g bes >8 d'8 ] |
      d8[ d'8 < g bes >8 d'8 ] |

      g8[ d'8 d8 d'8 ] |
      g8[ d'8 d8 d'8 ] |
      d8[-4 ees8-3 fis8-2 g8-1 ] |
      fis8[-2 ees8 d8 c8 ] |

      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
    \grace { s4 } c8[ c'8 g8 c'8 ] |
      c8[ c'8 g8 c'8 ] |

      c8[ c'8 g8 c'8 ] |
      c8[ c'8 g8 c'8 ] |
}

pianoleftuppersectioncb = {
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
}

pianoleftuppersectioncc = {
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        \pianoleftuppersectionca
    }
    \alternative {
        { \pianoleftuppersectioncb }
        { \pianoleftuppersectioncc }
    }
}

pianoleftuppercoda = {
    \grace { s8. } < d d' >8^> r8 < a, a >8^> r8 |
    < d, d >2_>_\fermata |
}

%-------------------------------------------------

pianoleftupper = {
    \time 2/4
    \key bes \major
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \stopStaff s2 \startStaff
    \pianoleftuppercoda
}

pianoleftuppermidi = {
    \time 2/4

    \metronomeextraintro

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionca
    \pianoleftuppersectioncb
    \pianoleftuppersectionca

    \pianoleftuppercoda
}

%-------------------------------------------------

pianorightuppernotes = {
    \key bes \major
    \time 2/4
%    \stemUp
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \stopStaff s2 \startStaff
    \pianorightuppercoda
}

%-------------------------------------------------

pianorightlowernotes = {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

pianoleftuppernotes = {
    \key bes \major
    \time 2/4
%    \stemUp
    \pianoleftupper
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key bes \major
    \time 2/4
    {
        \metronomeextraintro

        \pianorightuppersectiona
        \pianorightuppersectionb
        \pianorightuppersectioncMIDI

        \pianorightuppersectiona
        \pianorightuppersectionb
        \pianorightuppersectioncaMIDI
        \pianorightuppersectioncb
        \pianorightuppersectioncaMIDI

        \pianorightuppercoda
    }
}

pianoleftnotesmidi = {
    \key bes \major
    \time 2/4
    \pianoleftuppermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppersectionaa = {
    d''8\ff bes''8 a''8 g''8 |
    fis''8 g''8 fis''8 ees''8 |
    d''8 ees''8 c''8 ees''8 |
    d''2 |
 
    d''8 ees''8 fis''8 g''8 |
    fis''8^\prall ( ees''8 ) d''8 ees''8 |
    < d'' fis'' >2 ~ |
    < d'' fis'' >8 ees''8 ees''8 ( d''8 ) |

    d''8 d'''8 c'''8 bes''8 |
    a''8 g''8 fis''8 g''8 |
    < ees'' c''' >8 < d'' bes'' >8 < c'' a'' >8 < cis'' g'' >8 |
    < d'' fis'' >2 |

    fis''8^\prall ( c''8 ) d''8 ees''8 |
    fis''8 g''8 fis''8 ees''8 |
}

accordionrightuppersectionab = {
    d''8 \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 |
    d''8 \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 |
}

accordionrightuppersectionac = {
    d''8 \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 |
    d''8 \acciaccatura { cis'''16 } d'''8 a''8 \acciaccatura { cis'''16 } d'''8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 { \accordionrightuppersectionaa }
    \alternative {
        { \accordionrightuppersectionab } { \accordionrightuppersectionac }
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        < d'' fis'' >8 < ees'' g'' >8 < fis'' a'' >8 r8 |
        < fis'' a'' >8 r8 < fis'' a'' >8 r8 |
        < d'' bes'' >8 a''8 g''8 bes''8 |
        a''2 |

        d''8 ees''8 < d'' fis'' >8 r8 |
        < d'' fis'' >8 r8 < d'' fis'' >8 r8 |
        g''8 fis''8 ees''8 fis''8 |
        d''2 |

        < d'' fis'' >8 < ees'' g'' >8 < fis'' a'' >8 r8 |
        < fis'' a'' >8 r8 < fis'' a'' >8 r8 |
        < g'' c''' >8 bes''8 a''8 g''8 |
        fis''2 |
    
        fis''8^\prall ( c''8 ) d''8 ees''8 |
        fis''8 g''8 fis''8 ees''8 |
        d''8 \acciaccatura { cis'''8 } d'''8 r8 \acciaccatura { cis'''8 } d'''8 |
        r8 \acciaccatura { cis'''8 } d'''8 r8 \acciaccatura { cis'''8 } d'''8 |
    }
}

accordionrightuppersectionca = {
    << {
        \once \override TrillSpanner.padding = #1 fis''2^\startTrillSpan ( |
        d''4 ) r4 |
    } { s4. s16\stopTrillSpan } >>
    << {
        \once \override TrillSpanner.padding = #1 g''2^\startTrillSpan ( |
        d''4 ) r8 g''8^\prall |
    } { s4. s16\stopTrillSpan } >>

    fis''8 g''8 a''8 bes''8 |
    a''8 g''8 fis''8 ees''8 |
    d''8 ees''8 fis''8 g''8 |
    fis''8 ees''8 d''8 c''8 |

    << {
        \once \override TrillSpanner.padding = #1 fis''2\startTrillSpan ( |
        d''4 ) r4 |
    } { s4. s16\stopTrillSpan } >>
    \acciaccatura { g''16 [ a''16 bes''16 c'''16 ] } d'''2 ( |
    < ees'' g'' c''' >4. ) r8 |

    < ees'' c''' >8 < d'' bes'' >8 < c'' a'' >8 < c'' g'' >8 |
    fis''8^\prall ( c''8 ) d''8 ees''8 |
}

accordionrightuppersectioncaMIDI = {
    << {
        \once \override TrillSpanner.padding = #1 fis''2^\startTrillSpan ( |
        d''4 ) r4 |
    } { s4. s16\stopTrillSpan } >>
    << {
        \once \override TrillSpanner.padding = #1 g''2^\startTrillSpan ( |
        d''4 ) r8 g''8^\prall |
    } { s4. s16\stopTrillSpan } >>

    fis''8 g''8 a''8 bes''8 |
    a''8 g''8 fis''8 ees''8 |
    d''8 ees''8 fis''8 g''8 |
    fis''8 ees''8 d''8 c''8 |

    << {
        \once \override TrillSpanner.padding = #1 fis''2\startTrillSpan ( |
        d''4 ) r4 |
    } { s4. s16\stopTrillSpan } >>
    \acciaccatura { bes''16 [ c'''16 ] } d'''2 ( |
    < ees'' g'' c''' >4. ) r8 |

    < ees'' c''' >8 < d'' bes'' >8 < c'' a'' >8 < c'' g'' >8 |
    fis''8^\prall ( c''8 ) d''8 ees''8 |
}

accordionrightuppersectioncb = {
    d''2 ~ |
    d''4 r4 |
}

accordionrightuppersectioncc = {
    d''2 ~ |
    d''4 r4 |
}

accordionrightuppersectionc = {
    \repeat volta 2 { \accordionrightuppersectionca }
    \alternative {
        { \accordionrightuppersectioncb } { \accordionrightuppersectioncc }
    }
}

accordionrightuppersectioncMIDI = {
    \repeat volta 2 { \accordionrightuppersectioncaMIDI }
    \alternative {
        { \accordionrightuppersectioncb } { \accordionrightuppersectioncc }
    }
}

accordionrightuppercoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8^.^> r8 < a' cis'' g'' a'' >8^.^> r8 |
    < fis' a' d'' >2^>^\fermata |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8^"B.S." a,8 |
        d,8 a,8 c8 c'8^"m" |
        d,8 d'8^"M" a,8 d'8 |

        d,8^"B.S" a,8 d,8 g,8 |
        d,8 a,8 d,8 a,8 |
        d,8 d'8^"M" a,8 d'8 |
        d,8 a8^"d" a,8^"B.S" d,8 |

        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        c8_4^"B.S" d,8_2 e,4_5 |
        d,8_3 d'8^"M" a,8 d'8 |

        d,8 d'8 a,8 a8^"d" |
        d,8^"B.S" g,8 d,8 a,8 |
    }
    \alternative {
        {
            d,8 d'8^"M" a,8 d'8 |
            d,8 d'8 a,8 d'8 |
        }
        {
            d,8 d'8^"M" a,8 d'8 |
            d,8 d'8 a,8 d'8 |
        }
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        d,8^"B.S." a,8 d,8 d'8^"M" |
        d,8 d'8 d,8 d'8 |
        g,8 g8^"m" g,8 g8 |
        d,8 d'8 a,8 d'8 |

        d,8^"B.S." a,8 d,8 d'8^"M" |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |

        d,8^"B.S." a,8 d,8 d'8^"M" |
        d,8 d'8 d,8 d'8 |
        g,8 g8^"m" g,8 g8 |
        d,8 d'8^"M" a,8 d'8 |
    
        d,8 d'8 a,8 a8^"d" |
        d,8^"B.S" g,8 d,8 a,8 |
        d,8 d'8^"M" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
    }
}

accordionleftuppersectionca = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 d,8 d'8 |
    g,8 g8^"m" d,8 g8 |
    g,8 g8 d,8 g8 |

    g,8 g8 d,8 g8 |
    g,8 g8 d,8^"B.S." a,8 |
    d,8 a,8 d,8 a,8 |
    d,8 a,8 d,8 a,8 |

    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 d,8 d'8 |
    g,8 g8^"m" g,8 g8 |
    c8 c'8^"m" g,8 c'8 |

    c8_3^"B.S." d,8_2 ees,4_5 |
    d,8_3 d'8^"M" a,8_3 c'8_5^"m" |
}

accordionleftuppersectioncb = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectioncc = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectionc = {
    \repeat volta 2 { \accordionleftuppersectionca }
    \alternative {
        { \accordionleftuppersectioncb } { \accordionleftuppersectioncc }
    }
}

accordionleftuppercoda = {
    \grace { s8. } < d, d' >8^.^>^"M" r8 < a, a >8^.^>^"7" r8 |
    < d, d' >2^>^"M"_\fermata |
}

%-------------------------------------------------

accordionleftupper = {
    \time 2/4
    \key bes \major
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \stopStaff s2 \startStaff
    \accordionleftuppercoda
}

accordionleftuppermidi = {
    \time 2/4

    \metronomeextraintro

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionca
    \accordionleftuppersectioncb
    \accordionleftuppersectionca

    \accordionleftuppercoda
}

%-------------------------------------------------

accordionrightuppernotes = {
    \key bes \major
    \time 2/4
% \stemUp
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \stopStaff s2 \startStaff
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

accordionleftuppernotes = {
    \key bes \major
    \time 2/4
% \stemUp
    \accordionleftupper
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key bes \major
    \time 2/4
    {
        \metronomeextraintro

        \accordionrightuppersectiona
        \accordionrightuppersectionb
        \accordionrightuppersectioncMIDI

        \accordionrightuppersectiona
        \accordionrightuppersectionb
        \accordionrightuppersectioncaMIDI
        \accordionrightuppersectioncb
        \accordionrightuppersectioncaMIDI

        \accordionrightuppercoda
    }
}

accordionleftnotesmidi = {
    \key bes \major
    \time 2/4
    \accordionleftuppermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 hhc >> hhc4 | << sna4 hhc >> hhc4 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighextraintro
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda4 | bda4 bda4 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowextraintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

previewnotes = {
    \key bes \major
    \time 2/4
    d''8 bes''8 a''8 g''8 |
    fis''8 g''8 fis''8 ees''8 |
    d''8 ees''8 c''8 ees''8 |
    d''2 |
    d''8 ees''8 fis''8 g''8 |
    fis''8 ees''8 d''8 ees''8 |
    fis''2 ~ |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

\version "2.18.2"

bandmintro =  {
    s2 |
    \breakIN
}

bandmsectionaa =  {
    \markSA \positionSA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt
    \bar "||"
    \markTC \positionTC
}

bandmsectionab =  { s2 | \breakAfft s2 | \breakAsxt }

bandmsectionac =  { s2 | \breakAsvt s2 | }

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar ".|:-||" \breakA
}

bandmsectionba =  {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt
}

bandmsectionbb =  { s2 | \breakBfft s2 | \breakBsxt }

bandmsectionbc =  { s2 | \breakBsvt s2 | }

bandmsectionb =  {
    \repeat volta 2 { \bandmsectionba }
    \alternative { { \bandmsectionbb } { \bandmsectionbc } }
    \bar "||" \breakB
    \markDS \positionDS
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda =  {
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \blankmeasure
    \markCCRT \positionCCRT
    \grace { s8. } s2 | s2 |
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 }

metronomeintro =  { s2 }

metronomesectionaa =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionab =  { s2 | s2 | }

metronomesectionac =  { s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 {
        \metronomesectionaa
    }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionba =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionbb =  { s2 | s2 | }

metronomesectionbc =  { s2 | s2 | }

metronomesectionb =  {
    \repeat volta 2 {
        \metronomesectionba
    }
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronomecoda =  { \grace { s8. } s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 130
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 135
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 140
    \metronomesectionaa
    \tempo 4 = 125
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  {
    s8 a'8[ d''8 fis''8 ]
}

melodysectionaa =  {
      a''8[\ff g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]
      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]

    a''4 b''4 |
      a''8[ b''16 a''16 ]   g''8[ fis''8 ] |
    a''2 |
      d'''8[-.-> a'8 d''8 fis''8 ] |

      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]
      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8) ] |
}

melodysectionab =  {
    d''2 ~ |
      d''8[ a'8 d''8 fis''8 ] |
}

melodysectionac =  {
    d''2 ~ |
    d''4. r8 |
}

melodysectiona =  {
    \repeat volta 2 {
        \melodysectionaa
    }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionba =  {
      a''8[\f b''8 ] c'''4-> |
      b''8[ a''8 ] b''4-> |
      a''8[ g''8 ] a''4-> |
    g''8 fis''4.-> |

    a''4. b''8 |
      c'''8[ b''8 a''8 gis''8 ] |
    a''2( |
    d'''4.) r8 |

      a''8[ b''8 c'''8 d'''8 ] |
      b''8[( c'''8) ]   a''[( b''8) ] |
      g''8[( a''8) ]   fis''[( g''8) ] |
      fis''8[ g''16 fis''16 ]   e''8[ d''8 ] |

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8) ] |
}

melodysectionbb =  {
    d''2 ~ |
    d''4. r8 |
}

melodysectionbc =  {
    d''2 ~ |
      d''8[ a'8 d''8 fis''8 ] |
}

melodysectionb =  {
    \repeat volta 2 {
        \melodysectionba
    }
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melodycoda =  {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

melody =  {
    \key d \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \blankmeasure
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

melodymidi =  {
    \key d \major
    \time 2/4
    \preintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro =  {
    s8 r8 r4
}

basslinesectionaa =  {
    d4\3\ff a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a4\2 |
    d4\3 d4\3 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d8\3 [ d'8\1 a8\2 fis8\1 ] |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    cis4\3 a,4\4 |
    e4\3 a,4\4 |
    fis,4\4 g,4\4 |
    a,4\4 a,4\4 |
}

basslinesectionab =  {
    d4\3 a,4\4 |
    d4\3 a4\2 |
}

basslinesectionac =  {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
}

basslinesectiona =  {
    \repeat volta 2 {
        \basslinesectionaa
    }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionba =  {
    d4\3\f a4\2 |
    d4\3 b4\1 |
    d4\3 a4\2 |
    d4\3 a4\2 |

    d4\3 a4\2 |
    d4\3 a4\2 |
    d4\3 a4\2 |
    d8\3 [ d'16\1 d'16\1 ] a8\2 [ a8\2 ] |

    d4\3 a4\2 |
    g4\2 fis4\2 |
    e4\3 d4\3 |
    d4\3 a,4\4 |
    fis,4\4 g,4\4 |
    a,4\4 a,4\4 |
}

basslinesectionbb =  {
    d4\3 a,4\4 |
    a4\2 a,4\4 |
}

basslinesectionbc =  {
    d4\3\ff a,4\4 |
    d8\3 [ d8\3 a8\2 d'8\1 ] |
}

basslinesectionb =  {
    \repeat volta 2 {
        \basslinesectionba
    }
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

basslinecoda =  {
    \grace { s8. } a8\2 r8 a8\2 r8 |
    d2\3\fermata |
}

bassline =  {
    \key d \major
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \blankmeasure
    \grace { s8. } a8\2 r8 a8\2 r8 |
    d2\3\fermata |
}

basslinemidi =  {
    \key d \major
    \time 2/4
    \preintro
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectionaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotesintro =  {
    s8 s4.
}

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

guitarnotessectionac =  {
    s2 |
    s2 |
}

guitarnotessectiona =  {
    \repeat volta 2 {
        \guitarnotessectionaa
    }
    \alternative { { \guitarnotessectionab } { \guitarnotessectionac } }
}

guitarnotessectionba =  {
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

guitarnotessectionbb =  {
    s2 |
    s2 |
}

guitarnotessectionbc =  {
    s2 |
    s2 |
}

guitarnotessectionb =  {
    \repeat volta 2 {
        \guitarnotessectionba
    }
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotescoda =  {
    \grace { s8. } s2 |
    s2 |
}

guitarnotes =  {
    \key d \major
    \time 2/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

guitarnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionaa
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s2 |
}

chordletterssectionaa = \chordmode {
    d2 | d2 | d2 | d2 | d4 g4 | d2 | d2 | d2 |
    d2 | d2 | a2:7 | a2:7 | d4 a4:7 | d4 a4:7 |
}

chordletterssectionab = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
}

chordletterssectionac = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordletterssectionaa
    }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionba = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    g2 | d2 | d2 | d2 | d2 | d2 | d2 |
    d2 | g2 | d2 | d2 | d4 a4:7 | d4 a4:7 |
}

chordletterssectionbb = \chordmode { d2 | d2 | }

chordletterssectionbc = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    d2 |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordletterssectionba
    }
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { d8. }
    \chordChangesOn
    d4 a4:7 | d2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \blankmeasure
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

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  {
    \melody
}

flutenotesmidi =  {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro =  {
    s8 c'8[ f'8 a'8 ] |
}

clarinetsectionaa =  {
      c''8[\ff bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |
      c''8[ bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |

    c''4 d''4 |
      c''8[ d''16 c''16 ]   bes'8[ a'8 ] |
    c''2( |
    f''8)   c'8[ f'8 a'8 ] |
      c''8[ bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |
      bes'8[ a'8 ] g'4 |
    r8   g'8[ a'8 bes'8 ] |
      c''8[\trill( a'8) ]   bes'8[\trill( g'8) ] |
      a'8[\trill( f'8) ]   g'8[\trill( e'8) ] |
}

clarinetsectionab =  {
    f'2 ~ |
      f'8[ c'8 ]   f'8[ a'8 ] |
}

clarinetsectionac =  {
    f'2 ~ |
    f'4. r8 |
}

clarinetsectiona =  {
    \repeat volta 2 {
        \clarinetsectionaa
    }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionba =  {
      c''8[ d''8 ] ees''4-> |
      d''8[ c''8 ] d''4-> |
      c''8[ bes'8 ] c''4-> |
    bes'8 a'4.-> |

    c''4. d''8 |
      ees''8[\< d''8 ]   c''8[ b'8 ] |
    c''2(\! |
    f''4->) r4 |

      c''8[ d''8 ]   ees''8[ f''8 ] |
      d''8[ ees''8 ]   c''8[ d''8 ] |
      bes'8[ c''8 ]   a'8[ bes'8 ] |
      a'8[ bes'16 a'16 ]   g'8[ f'8 ] |

      c''8[\trill( a'8) ]   bes'8[\trill( g'8) ] |
      a'8[\trill( f'8) ]   g'8[\trill( e'8) ] |
}

clarinetsectionbb =  {
    f'2 ~ |
    f'4. r8 |
}

clarinetsectionbc =  {
    f'2 ~ |
      f'8[ c'8 ]   f'8[ a'8 ] |
}

clarinetsectionb =  {
    \repeat volta 2 {
        \clarinetsectionba
    }
    \alternative { { \clarinetsectionbb } { \clarinetsectionbc } }
}

clarinetcoda =  {
    \acciaccatura { c'16[ d'16 e'16 ] } f'8-^\ff r8 c'8-^ r8 |
    f'2-^\fermata |
}

clarinetnotes =  \transpose f e' {
    \key f \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \blankmeasure
    \acciaccatura { c'16[ d'16 e'16 ] } f'8-^\ff r8 c'8-^ r8 |
    f'2-^\fermata |
}

clarinetnotesmidi =  \transpose f e' {
    \key f \major
    \time 2/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro =  {
    s8 fis'8 [ b'8 dis''8 ] |
}

altosaxsectionaa =  {
      fis''8[ e''8 ]   dis''8[( b''8) ] |
    r8   fis'8[ b'8 dis''8 ] |
      fis''8[ e''8 ]   dis''8[( b''8) ] |
    r8   fis'8[ b'8 dis''8 ] |

    fis''4 gis''4 |
      fis''8[ gis''16 fis''16 ]   e''8[ dis''8 ] |
    fis''2( |
      b''8[) fis'8( b'8 dis''8) ] |
      fis''8[ e''8 ] dis''4 |

    r8   fis'8[ b'8 dis''8 ] |
      e''8[ dis''8 ] cis''4 |
    r8   cis''8[ dis''8 e''8 ] |
      fis''8[\trill( dis''8) ]   e''8[\trill( cis''8) ] |
      dis''8[\trill( b'8) ]   cis''8[\trill( ais'8) ] |
}

altosaxsectionab =  {
    b'2 ~ |
      b'8[ fis'8 b'8 dis''8 ] |
}

altosaxsectionac =  {
    b'2 ~ |
      b'8[ fis''8 b''8 ] r8 |
}

altosaxsectiona =  {
    \repeat volta 2 {
        \altosaxsectionaa
    }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionba =  {
      fis''8[ gis''8 ] a''4-> |
      gis''8[ fis''8 ] gis''4-> |
      fis''8[ e''8 ] fis''4-> |
    e''8 dis''4.-> |

    fis''4. gis''8 |
      a''8[ gis''8 fis''8 eis''8 ] |
    fis''2( |
    ais''4.->) r8 |
      fis''8[ gis''8 a''8 b''8 ] |
      gis''8[ a''8 fis''8 gis''8 ] |
      e''8[ fis''8 dis''8 e''8 ] |
      dis''8[ e''16 dis''16 ]   cis''8[ b'8 ] |
      fis''8[\trill( dis''8) ]   e''8[\trill( cis''8) ] |
      dis''8[\trill( b'8) ]   cis''8[\trill( ais'8) ] |
}

altosaxsectionbb =  {
    b'2 ~ |
    b'4. r8 |
}

altosaxsectionbc =  {
    b'2 ~ |
      b'8[ fis'8 b'8 dis''8 ] |
}

altosaxsectionb =  {
    \repeat volta 2 {
        \altosaxsectionba
    }
    \alternative { { \altosaxsectionbb } { \altosaxsectionbc } }
}

altosaxcoda =  {
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2\fermata |
}

altosaxnotes =  {
    \key b \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \blankmeasure
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    b'2\fermata |
}

altosaxnotesmidi =  {
    \key b \major
    \time 2/4
    \preintro
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionaa
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro =  {
    s8 gis'8[ b'8 e''8 ] |
}

tenorsaxsectionaa =  {
    gis''8[\ff fis''8 ]   e''8[ gis'8-^ ] |
    b'8-^ r8 r4 |
    gis''8[ fis''8 ]   e''8[ gis'8-^ ] |
    b'8-^ r8 r4 |

    gis''8[( e''8) ]   a''8[( e''8) ] |
    gis''8[ a''16 gis''16 ]   fis''8[ e''8 ] |
    gis''8[ b''16 b''16 ]   e''8[ gis''8 ] |
    b'8[ gis'8 b'8 e''8 ] |

    gis''8[ fis''8 ]   e''8[ gis'8-^ ] |
    b'8-^ r8 r4 |
    gis''8[ fis''8 ]   e''8[ gis'8-^ ] |
    b'8[ dis''8( e''8 fis''8) ] |

    gis''8[ e''8 ] cis''4 |
    b'4 a'4 |
}

tenorsaxsectionab =  {
    gis'8[ b'8 ]   gis'8[ b'8 ] |
    e'8[ gis'8( b'8 e''8) ] |
}

tenorsaxsectionac =  {
    gis'8[ b'8 ]   e'8[ gis'8 ] |
    gis'8[ b'8 ]   b'8[ e''8 ] |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionba =  {
    gis''8[ a''8 ] b''4-^ |
    a''8[ gis''8 ] a''4-^ |
    gis''8[ fis''8 ] gis''4-^ |
    fis''8[ e''8 b'8 e''8 ] |

    gis''8[ fis''8 gis''8 a''8 ] |
    b''8[\< a''8 gis''8 fis''8 ] |
    gis''8[\! e''8 gis''8 e''8 ] |
    r8   b''16[\> b''16 ]   b''8[ b''8\! ] |

    gis''8[ a''8 b''8 gis''8 ] |
    a''8[( fis''8) gis''8( e''8) ] |
    fis''8[( dis''8) e''8( cis''8) ] |
    b'8[ cis''16 b'16 ]   a'8[ gis'8 ] |

    e''4 cis''4 |
    b'4 a'4 |
}

tenorsaxsectionbb =  {
    gis'8[ b'8 e'8 gis'8 ] |
    gis'8[ b'8 b'8 e''8 ] |
}

tenorsaxsectionbc =  {
      gis'8[ b'8 gis'8 b'8 ] |
      e'8[ gis'8( b'8 e''8) ] |
}

tenorsaxsectionb =  {
    \repeat volta 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxcoda =  {
    \grace { s8. } gis'8-^\ff r8 a'8-^ r8 |
    gis'2-^\fermata |
}

tenorsaxnotes =  {
    \key e \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \blankmeasure
    \grace { s8. } gis'8-^\ff r8 a'8-^ r8 |
    gis'2-^\fermata |
}

tenorsaxnotesmidi =  {
    \key e \major
    \time 2/4
    \preintro
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro =  {
    s8 c'8[ f'8 a'8 ] |
}

trumpetsectionaa =  {
      c''8[\ff bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |
      c''8[ bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |

    c''4 d''4 |
      c''8[( d''16 c''16) ]   bes'8[ a'8 ] |
    c''2( |
      f''8[-.->) c'8 ]   f'8[ a'8 ] |
      c''8[ bes'8 ] a'4 |
    r8   c'8[ f'8 a'8 ] |
      bes'8[ a'8 ] g'4 |
    r8   g'8[ a'8 bes'8 ] |
      c''8[\trill( a'8) ]   bes'8[\trill( g'8) ] |
      a'8[\trill( f'8) ]   g'8[\trill( e'8) ] |
}

trumpetsectionab =  {
    f'2 ~ |
      f'8[ c'8 ]   f'8[ a'8 ] |
}

trumpetsectionac =  {
    f'2 ~ |
    f'4. r8 |
}

trumpetsectiona =  {
    \repeat volta 2 {
        \trumpetsectionaa
    }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionba =  {
      c''8[ d''8 ] ees''4-> |
      d''8[ c''8 ] d''4-> |
      c''8[ bes'8 ] c''4-> |
    bes'8 a'4.-> |

    c''4. d''8 |
      ees''8[ d''8 ]   c''8[ b'8 ] |
    c''2( |
    f''4.->) r8 |

      c''8[ d''8 ]   ees''8[ f''8 ] |
      d''8[ ees''8 ]   c''8[ d''8 ] |
      bes'8[ c''8 ]   a'8[ bes'8 ] |
      a'8[( bes'16 a'16) ]   g'8[( f'8) ] |

      c''8[\trill( a'8) ]   bes'8[\trill( g'8) ] |
      a'8[\trill( f'8) ]   g'8[\trill( e'8) ] |
}

trumpetsectionbb =  {
    f'2 ~ |
    f'4. r8 |
}

trumpetsectionbc =  {
    f'2 ~ |
      f'8[ c'8 ]   f'8[ a'8 ] |
}

trumpetsectionb =  {
    \repeat volta 2 {
        \trumpetsectionba
    }
    \alternative { { \trumpetsectionbb } { \trumpetsectionbc } }
}

trumpetcoda =  {
    \acciaccatura { c''16[ d''16 e''16 ] } f''8 r8 c''8 r8 |
    f'2\fermata |
}

trumpetnotes =  \transpose f e {
    \key f \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \blankmeasure
    \acciaccatura { c''16[ d''16 e''16 ] } f''8 r8 c''8 r8 |
    f'2\fermata |
}

trumpetnotesmidi =  \transpose f e {
    \key f \major
    \time 2/4
    \preintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro =  {
    s8 r8 r4
}

trombonesectionaa =  {
      d8[\ff d'8 a8 d'8 ] |
    d8 r8 r4 |
      d8[ a8 ]   a,8[ a8 ] |
      d8[ a,8 d8 fis8 ] |

    fis4 g4 |
      fis8[ g16 fis16 ]   e8[ d8 ] |
      d8[ a8 ]   a,8[ a8 ] |
      d8[-^ d'8 ]   a8[ fis8 ] |

      d8[ a8 fis8 a8 ] |
      d8[ a,8 d8 fis8 ] |
      e8[ d8 ] cis4 |
      cis8[ g8 fis8 e8 ] |

    fis4 g4 |
    a4 a,4 |
}

trombonesectionab =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[\< d'8 ]   a8[ d'8\! ] |
}

trombonesectionac =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[\< a8 ]   a,8[ a8\! ] |
}

trombonesectiona =  {
    \repeat volta 2 {
        \trombonesectionaa
    }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionba =  {
      fis8[\f g8 ] a4-^ |
      g8[ fis8 ] g4-^ |
      fis8[ e8 ] fis4-^ |
    e8 d4-^ r8 |

      d8[ r8 a,8 ] r8 |
      d8[ g8 fis8 e8 ] |
      d8[ d'8 a8 d'8 ] |
      a8[\< d'16 d'16 ]   a8[ d'8\! ] |

      a8[ b8 c'8 d'8 ] |
    g4 fis4 |
    e4 d4 |
      fis8[ g16 fis16 ]   e8[ d8 ] |

    fis4 e4 |
    a4 a,4 |
}

trombonesectionbb =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[ a8 ]   a,8[ a8 ] |
}

trombonesectionbc =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[ d'8 ]   a8[ d'8 ] |
}

trombonesectionb =  {
    \repeat volta 2 {
        \trombonesectionba
    }
    \alternative { { \trombonesectionbb } { \trombonesectionbc } }
}

trombonecoda =  {
    \acciaccatura { a,16[ b,16 cis16 ] } d8 r8 a,8 r8 |
    d2\fermata |
}

trombonenotes =  {
    \key d \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \blankmeasure
    \acciaccatura { a,16[ b,16 cis16 ] } d8 r8 a,8 r8 |
    d2\fermata |
}

trombonenotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \trombonesectionaa
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro =  {
    s8 a'8[ d''8 fis''8 ]
}

violinsectionaa =  {
      a''8[\ff g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]
      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]

    a''4 b''4 |
      a''8[( b''16 a''16) ]   g''8[ fis''8 ] |
    a''2-1( |
      d'''8[-.->) a'8-0 ]   d''8[ fis''8 ] |

      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]
      a''8[ g''8 ] fis''4 |
    r8   a'8[ d''8 fis''8 ]

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8-2) ] |
}

violinsectionab =  {
    d''2 ~ |
      d''8[ a'8 ]   d''8[ fis''8 ] |
}

violinsectionac =  {
    d''2 ~ |
    d''4. r8 |
}

violinsectiona =  {
    \repeat volta 2 {
        \violinsectionaa
    }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionba =  {
      a''8[-1 b''8 ] c'''4-> |
      b''8[ a''8 ] b''4-> |
      a''8[ g''8-2 ] a''4-> |
    g''8 fis''4.-> |

    a''4.-1( b''8) |
      c'''8[ b''8 ]   a''8[ gis''8-1 ] |
    a''2-1( |
    d'''4.) r8 |

      a''8[ b''8 c'''8 d'''8 ] |
      b''8[( c'''8) ]   a''[( b''8) ] |
      g''8[-2( a''8) ]   fis''[( g''8) ] |
      fis''8[( g''16 fis''16) ]   e''8[( d''8) ] |

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8) ] |
}

violinsectionbb =  {
    d''2 ~ |
    d''4. r8 |
}

violinsectionbc =  {
    d''2 ~ |
      d''8[ a'8 d''8 fis''8 ] |
}

violinsectionb =  {
    \repeat volta 2 {
        \violinsectionba
    }
    \alternative { { \violinsectionbb } { \violinsectionbc } }
}

violincoda =  {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

violinnotes =  {
    \key d \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \blankmeasure
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2\fermata |
}

violinnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb
    \violinsectionaa
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro =  {
    s8 a'8[\ff d''8 fis''8 ]
}

pianorightuppersectionaa =  {
    < fis'' a'' >8[ < e'' g'' >8 ] < d'' fis'' >4 |
    r8   a'8[ d''8 fis''8 ]
    < fis'' a'' >8[ < e'' g'' >8 ] < d'' fis'' >4 |
    r8   a'8[ d''8 fis''8 ]

    < fis'' a'' >4 < g'' b'' >4 |
      a''8[ b''16 a''16 ]   g''8[ fis''8 ] |
    < fis'' a'' >2 ~ |
    < fis'' a'' d'''>8[-.-> a'8 d''8 fis''8 ] |

    < fis'' a'' >8[ < e'' g'' >8 ] < d'' fis'' >4 |
    r8   a'8[ d''8 fis''8 ]
    < fis'' a'' >8[ < e'' g'' >8 ] < d'' fis'' >4 |
    r8   a'8[ d''8 fis''8 ]

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8) ] |
}

pianorightuppersectionab =  {
    < fis' a' d'' >2\< ~ |
    < fis' a' d'' > 8 a'8[\! d''8 fis''8 ] |
}

pianorightuppersectionac =  {
    < fis' a' d'' >2\< ~ |
    < fis' a' d'' >4.\!\> r8\! |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        \pianorightuppersectionaa
    }
    \alternative { { \pianorightuppersectionab } { \pianorightuppersectionac } }
}

pianorightuppersectionba =  {
    < fis'' a'' >8[\f < g'' b''>8 ] < a'' c''' >4-> |
    < g'' b'' >8[ < fis'' a'' >8 ] < g'' b'' >4-> |
    < fis'' a'' >8[ < e'' g'' >8 ] < fis'' a'' >4-> |
    < e'' g'' >8 < d'' fis'' >4.-> |

    < a' a'' >4.\< < b' b'' >8 |
    < c'' c''' >8[ < b' b'' >8 < a' a'' >8\! < gis' gis'' >8 ] |
    < fis'' a'' >2(
    < fis'' a'' d''' >4.\>) r8\! |

      a''8[ b''8 c'''8 d'''8 ] |
      b''8[( c'''8) ]   a''[( b''8) ] |
      g''8[( a''8) ]   fis''[( g''8) ] |
      fis''8[ g''16 fis''16 ]   e''8[ d''8 ] |

      a''8[\trill( fis''8) ]   g''8[\trill( e''8) ] |
      fis''8[\trill( d''8) ]   e''8[\trill( cis''8) ] |
}

pianorightuppersectionbb =  {
    < fis' a' d'' >2 ~ |
    < fis' a' d'' >4. r8 |
}

pianorightuppersectionbc =  {
    < fis' a' d'' >2 ~ |
    < fis' a' d'' > 8 a'8[ d''8 fis''8 ] |
}

pianorightuppersectionb =  {
    \repeat volta 2 {
        \pianorightuppersectionba
    }
    \alternative { { \pianorightuppersectionbb } { \pianorightuppersectionbc } }
}

pianorightuppercoda =  {
    \acciaccatura { a''16[ b''16 cis'''16 ] } < fis'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    \stemDown
    < fis' a' d'' >2\fermata |
}

pianoleftupperintro =  {
    s8 r8 r4
}

pianoleftuppersectionaa =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ d'8 a8 d'8 ] |

      d8[ < fis a d' >8 ]   d8[ < g b d' >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ d'8 a8 fis8 ] |

      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      e8[ < g a >8 ]   a,8[ < g a >8 ] |
      e8[ < g a >8 ]   a,8[ < g a >8 ] |

      fis,8[ fis8 ]   g,8[ g8 ] |
      a,8[ a8 ]   a,8[ < g a >8 ] |
}

pianoleftuppersectionab =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ d'8 a8 d'8 ] |
}

pianoleftuppersectionac =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        \pianoleftuppersectionaa
    }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionba =  {
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 b8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |

      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'16 d'16 ]   a8[ d'8 ] |

      d8[ d'8 a8 d'8 ] |
      g8[ d'8 ]   fis8[ d'8 ] |
      e8[ d'8 ]   d8[ d'8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |

      fis,8[ fis8 ]   g,8[ g8 ] |
      a,8[ a8 ]   a,8[ < g a >8 ] |
}

pianoleftuppersectionbb =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
}

pianoleftuppersectionbc =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ d'8 a8 d'8 ] |
}

pianoleftuppersectionb =  {
    \repeat volta 2 {
        \pianoleftuppersectionba
    }
    \alternative { { \pianoleftuppersectionbb } { \pianoleftuppersectionbc } }
}

pianoleftuppercoda =  {
    \grace { s8. } < d a >8 r8 < a, a >8 r8 |
    < d, d >2\fermata |
}

pianorightuppernotes =  {
    \key d \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \blankmeasure
    \acciaccatura { a''16[ b''16 cis'''16 ] } < fis'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    \stemDown
    < fis' a' d'' >2\fermata |
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \key d \major
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \blankmeasure
    \grace { s8. } < d a >8 r8 < a, a >8 r8 |
    < d, d >2\fermata |
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionaa
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \key d \major
    \time 2/4
    \preintro
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionaa
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperintro = {
    s8 a'8 d''8 fis''8 
}

accordionrightuppersectionaa = {
    < fis'' a'' >8\ff < e'' g'' >8 < d'' fis'' >4 |
    r8 a'8 d''8 fis''8 
    < fis'' a'' >8 < e'' g'' >8 < d'' fis'' >4 |
    r8 a'8 d''8 fis''8 

    < fis'' a'' >4 < g'' b'' >4 |
    < fis'' a'' >8 < g'' b'' >16 < fis'' a'' >16 < e'' g'' >8 < d'' fis'' >8 |
    \tieDown < fis'' a'' >2 ~ \( |
    < fis'' d'''>8-> \) \tieNeutral a'8 d''8 fis''8 |

    < fis'' a'' >8 < e'' g'' >8 < d'' fis'' >4 |
    r8 a'8 d''8 fis''8 
    < fis'' a'' >8 < e'' g'' >8 < d'' fis'' >4 |
    r8 a'8 d''8 fis''8 

    a''8 \prall ( fis''8 ) g''8 \prall ( e''8 ) |
    fis''8 \prall ( d''8 ) e''8 \prall ( cis''8 ) |
}

accordionrightuppersectionab = {
    << {
        d''2 ~ |
        d''8 a'8 d''8 fis''8 |
    } {
        s4. \< s8 \! | s2 |
    } >>
}

accordionrightuppersectionac = {
    << {
        d''2 ~ |
        d''4. r8 |
    } {
        s4. \< s8 \! | s4 \> s4 \!
    } >>
}

accordionrightuppersectiona = {
    \repeat volta 2 { \accordionrightuppersectionaa }
    \alternative {
        { \accordionrightuppersectionab } { \accordionrightuppersectionac }
    }
}

accordionrightuppersectionba = {
    < fis'' a'' >8 \f < g'' b''>8 < a'' c''' >4-> |
    < g'' b'' >8 < fis'' a'' >8 < g'' b'' >4-> |
    < fis'' a'' >8 < e'' g'' >8 < fis'' a'' >4-> |
    < e'' g'' >8 < d'' fis'' >4.-> |

    < fis'' a'' >4. < g'' b'' >8 |
    < a'' c''' >8 < g'' b'' >8 < fis'' a'' >8 < eis'' gis'' >8 |
    \tieDown < fis'' a'' >2 ~ \( |
    < fis'' d'''>4.-> \) \tieNeutral r8 |

    a''8 b''8 c'''8 d'''8 |
    b''8 ( c'''8) a'' ( b''8) |
    g''8 ( a''8) fis'' ( g''8) |
    fis''8 g''16 fis''16 e''8 d''8 |

    a''8 \prall ( fis''8 ) g''8 \prall ( e''8 ) |
    fis''8 \prall ( d''8 ) e''8 \prall ( cis''8 ) |
}

accordionrightuppersectionbb = {
    d''2 ~ |
    d''4. r8 |
}

accordionrightuppersectionbc = {
    d''2 ~ |
    d''8 a'8 d''8 fis''8 |
}

accordionrightuppersectionb = {
    \repeat volta 2 { \accordionrightuppersectionba }
    \alternative {
        { \accordionrightuppersectionbb } { \accordionrightuppersectionbc }
    }
}

accordionrightuppercoda = {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8-.-> r8 < cis'' g'' a'' >8^> r8 |
    < fis' a' d'' >2^>^\fermata |
}

accordionleftupperintro = {
    s8 r8 r4
}

accordionleftuppersectionaa = {
    d,8_3^"B.S" a,8_2 d,8 a,8 |
    d,8 d'8^"M" a,8 d'8 |
    d,8_3^"B.S" a,8_2 d,8 a,8 |
    d,8 d'8^"M" a,8 d'8 |

    d,8 d'8^"M" g,8 g8^"M" |
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
    d,8 d'8 a,8 d'8 |

    d,8^"B.S" a,8 d,8 a,8 |
    d,8 d'8^"M" a,8 d'8 |
    a,8_3^"B.S." d,8_4 a,8_3 e,8_2 |
    a,8_3 a8^"7" a,8 a8 |

    d,8 d'8^"M" a,8 a8^"7" |
    d,8 d'8^"M" a,8 a8^"7" |
}

accordionleftuppersectionab = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectionac = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectiona = {
    \repeat volta 2 { \accordionleftuppersectionaa }
    \alternative { { \accordionleftuppersectionab } { \accordionleftuppersectionac } }
}

accordionleftuppersectionba = {
    d,8_3^"B.S." g,8_4 d,8_3 d'8^"M" |
    g,8_3^"B.S." d,8_2 g,8 g8^"M" |
    d,8_3^"B.S." a,8_2 d,8_3 d'8^"M" |
    cis,8_3_-^"B.S." d,8_4 b,8_2 a,8_3 |

    d,8_3 d'8^"M" d,8 g8^"M" |
    d,8^"B.S." g,8 d,8 d'8^"d" |
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |

    d,8^"B.S." g,8 d,8 d'8^"M" |
    g,8_3^"B.S." ( c8_4 ) d,8_2 ( b,8_4_- ) |
    e,8_2 ( a,8_3 ) d,8_3 ( g,8_4 ) |
    a,8_3 a8^"7" a,8 d'8^"M" |

    d,8 d'8 a,8 a8^"7" |
    d,8 d'8^"M" a,8 a8^"7" |
}

accordionleftuppersectionbb = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectionbc = {
    d,8 d'8^"M" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
}

accordionleftuppersectionb = {
    \repeat volta 2 { \accordionleftuppersectionba }
    \alternative { { \accordionleftuppersectionbb } { \accordionleftuppersectionbc } }
}

accordionleftuppercoda = {
    \grace { s8. } < d, d' >8^"M"_._> r8 < a, a >8^"7"_._> r8 |
    < d, d' >2^>^"M"_\fermata |
}

accordionrightuppernotes = {
    \key d \major
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \blankmeasure
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8-.-> r8 < cis'' g'' a'' >8^> r8 |
    < fis' a' d'' >2^>^\fermata |
}

accordionrightlowernotes = {
    \time 2/4
}

accordionleftuppernotes = {
    \key d \major
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \blankmeasure
    \grace { s8. } < d, d' >8^"M"_._> r8 < a, a >8^"7"_._> r8 |
    < d, d' >2^>^"M"_\fermata |
}

accordionleftlowernotes = {
    \time 2/4
}

accordionrightnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionaa
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionaa
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    s2 |
}

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

drumshighsectionac = \drummode {
    s2 |
    s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        \drumshighsectionaa
    }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionba = \drummode {
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

drumshighsectionbb = \drummode {
    s2 |
    s2 |
}

drumshighsectionbc = \drummode {
    s2 |
    s2 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        \drumshighsectionba
    }
    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
}

drumshighcoda = \drummode {
    \grace { s8. } s2 |
    s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionaa
    \drumshighcoda
}

drumslowintro = \drummode {
    s2 |
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

drumslowsectionac = \drummode {
    s2 |
    s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        \drumslowsectionaa
    }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionba = \drummode {
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

drumslowsectionbb = \drummode {
    s2 |
    s2 |
}

drumslowsectionbc = \drummode {
    s2 |
    s2 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \drumslowsectionba
    }
    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
}

drumslowcoda = \drummode {
    \grace { s8. } s2 |
    s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \blankmeasure
    \grace { s8. } s2 |
    s2 |
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionaa
    \drumslowcoda
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 |
    d2 | s2 | s2 | s2 | s4 g4 | d2 | s2 | s2 |
}

previewnotes = {
    \key d \major
    \time 2/4
    s8 a'8 d''8 fis''8 |
    \bar ".|:"
    a''8 g''8 fis''4 |
    r8 a'8 d''8 fis''8 |
    a''8 g''8 fis''4 |
    r8 a'8 d''8 fis''8 |
    a''4 b''4 |
    a''8 b''16 a''16 g''8 fis''8 |
    a''2 ( |
    d'''8-.-> ) a'8 d''8 fis''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

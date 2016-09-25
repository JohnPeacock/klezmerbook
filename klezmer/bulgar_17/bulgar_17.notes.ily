\version "2.18.2"

bandmintro =  {
    \partial 4. s4.
}

bandmsectionaa =  {
    \markSA \positionSA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt
    \markTC \positionTC
}

bandmsectionab =  { s2 | \breakAfft s2 | \breakAsxt }

bandmsectionac =  { s2 | \breakAsvt s2 | \bar ".|:-||" }

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \breakA
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
    \bar "||"
    \markDS \positionDS
    \breakB
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda =  {
    \markCCRT \positionCCRT
    \grace { s16 s16 s16 } s2 | \breakCCone \grace { s16 } s2 |
}

bandmNV =  {
    \tempo \tempostring
    \time 2/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

metronomeintro =  { \partial 4. s4. }

metronomesectionaa =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionab =  { s2 | s2 | }

metronomesectionac =  { s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionba =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectionbb =  { s2 | s2 | }

metronomesectionbc =  { s2 | s2 | }

metronomesectionb =  {
    \repeat volta 2 { \metronomesectionba }
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronomecoda =  { \grace { s16 s16 } s2 | \grace { s16 } s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \tempo 4 = 125
    \metronomeintro
    \tempo 4 = 125
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 135
    \metronomesectionaa
    \tempo 4 = 110
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  {
    \partial 4.   c'8[\ff f'8 a'8 ]
}

melodysectionaa =  {
      c''8[ r8 bes'8 ] r8 |
      a'8[ g'8 a'8 \acciaccatura { c''16 } bes'8 ] |
    a'4. g'8 |
    \acciaccatura { bes'16 }   a'8[ g'8 ] f'4 |

    f'8 g'4 f'8 |
    c''8 r8 \tuplet 3/2 {   bes'8[( a'8 bes'8) ] } |
    a'2 ~ |
      a'8[ a'8 bes'8 b'8 ] |

    c''4. d''8 |
      ees''8[ d''8 c''8 bes'8 ] |
      a'8[ g'8 c''8 bes'8 ] |
      a'8[ g'8 ] f'4 |

    f'8 \acciaccatura { a'16 } g'4 f'8 |
    \tuplet 3/2 {   a'8[( g'8 f'8) ] } \tuplet 3/2 {   f'8[( e'8 d'8) ] } |
}

melodysectionab =  {
    d'2 ~ |
      d'8[ c'8( f'8 a'8) ] |
}

melodysectionac =  {
    d'2 ~ |
      d'8[ d''8 e''8 f''8 ] |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionba =  {
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \acciaccatura { gis''16 }   a''8[ gis''8 ] a''4 ~ |
      a''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    g''4. gis''8 |
    \tuplet 3/2 {   a''8[( g''8 f''8) ] } \tuplet 3/2 {   f''8[( e''8 d''8) ] } |
}

melodysectionbb =  {
    d''2 ~ |
    d''8   d''8[( e''8 f''8) ] |
}

melodysectionbc =  {
    d''2 ~ |
    d''8   c'8[ f'8 a'8 ] |
}

melodysectionb =  {
    \repeat volta 2 { \melodysectionba }
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melodycoda =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    \grace { s16 } d''2\fermata |
}

melody =  {
    \key f \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \blankmeasure
    \melodycoda
}

melodymidi =  {
    \key f \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro =  {
    \partial 4.   b'8 d''8 g''8
}

tenorharmonysectionaa =  {
    b''8\ff r8 a''8 r8 |
    g''8 r8   d''8 e''8 |
    d''8 g''8 d''4 ~ |
    d''8 c''8 b'8 d'' |

    d''8 fis''4 g''8 |
    fis''8 d''8 a''4 |
    g''8 d''8 b'8 d''8 |
    g'8 g'8( a'8 ais'8) |

    b'8 a'8 b'8 c''8 |
    d''8 c''8 b'8 e''8 |
    d''4 fis''8 e''8 |
    dis''4 e''8 b'8 |

    e''8 c''4 b'8 |
    \tuplet 3/2 { dis''8 ( c''8 b'8 ) } b'8 r8 |
}

tenorharmonysectionab =  {
    g'4 g'8 b'8 |
    g'8 b'8 d''8 g''8 |
}

tenorharmonysectionac =  {
    g'4 g'8 b'8 |
    g'8 g'8 a'8 b'8 |
}

tenorharmonysectiona =  {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }
}

tenorharmonysectionba =  {
    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 ( a'8 b'8 ) } |
    \tuplet 3/2 { c''8 ( d''8 c''8 ) } b'8 e''8 |
    b'8 g'8 a'8 b'8 |

    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 ( a'8 b'8 ) } |
    e''4 g''8 b'8 |
    e''8 g'8 a'8 b'8 |

    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 ( a'8 b'8 ) } |
    \tuplet 3/2 { c''8 ( d''8 c''8 ) } b'8 e''8 |
    b'8 g'8 a'8 b'8 |

    c''8 e''8 e''4-^ |
    \tuplet 3/2 { dis''8 ( c''8 b'8 ) } \tuplet 3/2 { b'8 ( a'8 g'8 ) } |
}

tenorharmonysectionbb =  {
    g'8 b'4 b'8 |
    g'8 g'8 a'8 b'8 |
}

tenorharmonysectionbc =  {
    g'8 b'4-^ b'8 |
    g'8 b'8 d''8 g''8 |
}

tenorharmonysectionb =  {
    \repeat volta 2 { \tenorharmonysectionba }
    \alternative { { \tenorharmonysectionbb } { \tenorharmonysectionbc } }
}

tenorharmonycoda =  {
    \grace { s16 s16 s16 } g'8-^\ff r8 a'8-^ r8 |
    \grace { s16 } g'2-^\fermata |
}

tenorharmony =  \transpose c bes, {
    \key g \major
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi =  \transpose c bes, {
    \key g \major
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyintro =  {
    \partial 4. s4.
}

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

altoharmonysectionac =  {
    s2 |
    s2 |
}

altoharmonysectiona =  {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \altoharmonysectionac } }
}

altoharmonysectionba =  {
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

altoharmonysectionbb =  {
    s2 |
    s2 |
}

altoharmonysectionbc =  {
    s2 |
    s2 |
}

altoharmonysectionb =  {
    \repeat volta 2 { \altoharmonysectionba }
    \alternative { { \altoharmonysectionbb } { \altoharmonysectionbc } }
}

altoharmonycoda =  {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

altoharmony =  {
    \key f \major
    \time 2/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \blankmeasure
    \altoharmonycoda
}

altoharmonymidi =  {
    \key f \major
    \time 2/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro =  {
    \partial 4. r8 r4
}

countersectionaa =  {
    \repeat unfold 2 {   f8[ r8 c8 ] r8 } |
    a4. g8 |
      a8[ g8 ] f4 |

    f8 g4 f8 |
    e8 r8 c4 |
    \repeat unfold 2 {   a8[ f8 c8 f8 ] } |

    \repeat unfold 2 {   f8[ r8 c8 ] r8 } |
      a8[ g8 c'8 bes8 ] |
      a8[ cis'8 ] d'4 |

    f8 g4 f8 |
    \tuplet 3/2 {   a8[( g8 f8) ] } \tuplet 3/2 {   f8[( e8 d8) ] } |
}

countersectionab =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[ c8( f8 a8) ] |
}

countersectionac =  {
      d8[ a8 ]   a,8[ a8 ] |
      d8[ d'8 a8 f8 ] |
}

countersectiona =  {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionba =  {
    g4 f4 |
    g4 f4 |
    g8 r8 f4 ~ |
      f8[ d8 e8 f8 ] |

    \repeat unfold 2 { g4 f4 | }
      a8[ gis8 ] a4( |
      d'8[) d8( e8 f8) ] |

    \repeat unfold 2 { g4 f4 | }
    g8 r8 f4 ~ |
      f8[ d8 e8 f8 ] |

    g4. gis8 |
    a8 r8 a,8 r8 |
}

countersectionbb =  {
      d8[ a8 a,8 a8 ] |
      d8[ d'8 a8 f8 ] |
}

countersectionbc =  {
      d8[ a8 a,8 a8 ] |
      d8[ c8 f8 a8 ] |
}

countersectionb =  {
    \repeat volta 2 { \countersectionba }
    \alternative { { \countersectionbb } { \countersectionbc } }
}

countercoda =  {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    \grace { s16 } d2->\fermata |
}

counter =  \transpose c c' {
    \key f \major
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb
    \blankmeasure
    \countercoda
}

countermidi =  \transpose c c' {
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb

    \countersectiona
    \countersectionb

    \countersectionaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro =  {
    \partial 4. r8 r4
}

basslinesectionaa =  {
    f,4\4 c4\3 |
    f,4\4 c4\3 |
    f,4\4 c4\3 |
    f,4\4 c4\3 |

    f,4\4 c4\3 |
    c4\3 g4\2 |
    f,4\4 c4\3 |
    f,4\4 c4\3 |

    f,4\4 c4\3 |
    f,4\4 c4\3 |
    f,4\4 c4\3 |
    e8\3 [ a,8\4 ] d8\3 [ d8\3 ] |

    d4\3 a,4\4 |
    a,4\4 cis4\3 |
}

basslinesectionab =  {
    d4\3 a,4\4 |
    d8\3[ c8\3 f8\2 a8\1 ] |
}

basslinesectionac =  {
    d4\3 a,4\4 |
    d8\3 [ d'8\1 a8\2 f8\3 ] |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionba =  {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |

    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d8\3 [ d'8\1 a8\2 f8\3 ] |

    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |

    bes,8\4 [ g8\2 d8\3 bes,8\4 ] |
    a,4\4 cis4\3 |
}

basslinesectionbb =  {
    d4\3 a,4\4 |
    d8\3 [ d'8\1 a8\2 f8\3 ] |
}

basslinesectionbc =  {
    d4\3 a,4\4 |
    d8\3 r8 r4 |
}

basslinesectionb =  {
    \repeat volta 2 { \basslinesectionba }
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

basslinecoda =  {
    \grace { s16 s16 s16 } d8\3 r8 a,8\4 r8 |
    \grace { s16 } \stemDown d2\3\fermata |
}

bassline =  {
    \key f \major
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \blankmeasure
    \basslinecoda
}

basslinemidi =  {
    \key f \major
    \time 2/4
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
    \partial 4. s4.
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
    \repeat volta 2 { \guitarnotessectionaa }
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
    \repeat volta 2 { \guitarnotessectionba }
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotescoda =  {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

guitarnotes =  {
    \key f \major
    \time 2/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \blankmeasure
    \guitarnotescoda
}

guitarnotesmidi =  {
    \key f \major
    \time 2/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionaa
    \guitarnotescoda
}

guitarnotes =  {
    \key f \major
    \time 2/4
}

guitarnotesmidi =  {
    \key f \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 4. s4.
}

chordletterssectionaa = \chordmode {
    f2 | f2 | f2 | f2 |
    f2 | c2:7 | f2 | f2 |
    f2 | f2 | f2 | a4:7 d4:min |
    d2:min | a2:7 |
}

chordletterssectionab = \chordmode { d2:min | d2:min | }

chordletterssectionac = \chordmode {
    \chordChangesOff
    d2:min |
    \chordChangesOn
    d2:min |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionba = \chordmode {
    g4:min d4:min | g4:min d4:min | g4:min d4:min | d2:min |
    g4:min d4:min | g4:min d4:min | \grace { d16:min } d2:min | d2:min |
    g4:min d4:min | g4:min d4:min | g4:min d4:min | d2:min |
    g2:min | a2:7 |
}

chordletterssectionbb = \chordmode { d2:min | d2:min | }

chordletterssectionbc = \chordmode {
    \chordChangesOff
    d2:min |
    \chordChangesOn
    d2:min |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { d8.:min }
    \chordChangesOn
    d4:min a4:7 |
    \grace { s16 } d2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \blankmeasure
    \chordChangesOff
    \grace { d8.:min }
    \chordChangesOn
    d4:min a4:7 |
    \grace { s16 } d2:min |
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
    \partial 4.   d''8[ g''8 b''8 ]
}

clarinetsectionaa =  {
    d'''8\ff r8 c'''8 r8 |
      b''8[ a''8 b''8 \acciaccatura { d'''16 } c'''8 ] |
    b''4. a''8 |
      b''8[ a''8 ] g''4 |

    g''8 \acciaccatura { b''16 } a''4 g''8 |
    d'''8 r8 \tuplet 3/2 {   c'''8[( b''8 c'''8) ] } |
    b''2 ~ |
      b''8[ b'8( c''8 cis''8) ] |

    d''4. e''8 |
      f''8[ e''8 d''8 c'''8 ] |
      b''8[ a''8 d'''8 c'''8 ] |
      b''8[ a''8 ] g''4 |

    g''8 \acciaccatura { b''16 } a''4 g''8 |
    \tuplet 3/2 {   b''8[( a''8 g''8) ] } \tuplet 3/2 {   g''8[( fis''8 e''8) ] } |
}

clarinetsectionab =  {
    e''2 ~ |
      e''8[ d''8 g''8 b''8 ] |
}

clarinetsectionac =  {
    e''2 ~ |
      e''8[ e''8 fis''8 g''8 ] |
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionba =  {
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } g''4 ~ |
      g''8[ e''8 fis''8 g''8 ] |

    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
      b''8[ ais''8 ] b''4 ~ |
      b''8[ e''8 fis''8 g''8 ] |

    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } \tuplet 3/2 {   g''8[( fis''8 g''8) ] } |
    \tuplet 3/2 {   a''8[( b''8 a''8) ] } g''4 ~ |
      g''8[ e''8 fis''8 g''8 ] |

    a''4. ais''8 |
    \tuplet 3/2 {   b''8[( a''8 g''8) ] } \tuplet 3/2 {   g''8[( fis''8 e''8) ] } |
}

clarinetsectionbb =  {
    e''8 e'''4 e'''8( |
      e''8[) e''8( fis''8 g''8) ] |
}

clarinetsectionbc =  {
    e''8 e'''4 e'''8( |
      e''8[) d''8( g''8 b''8) ] |
}

clarinetsectionb =  {
    \repeat volta 2 { \clarinetsectionba }
    \alternative { { \clarinetsectionbb } { \clarinetsectionbc } }
}

clarinetcoda =  {
    \acciaccatura { b''16 [ cis'''16 dis'''16 ] } e'''8-^\ff r8 b''8-^ r8 |
    \grace { s16 } e''2-^\fermata |
}

clarinetnotes =  {
    \key g \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi =  {
    \key g \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    \partial 4. a'8 d''8 fis''8
}

altosaxsectionaa = {
    a''8 r8 g''8 r8 |
    fis''8 e''8 fis''8 g''8 |
    fis''4. e''8 |
    fis''8\trill e''8 d''4 |

    d''8 \acciaccatura { fis''16 } e''4 d''8 |
    a''8 r8 \tuplet 3/2 { g''8 [ ( fis''8 g''8 ) ] } |
    fis''2 ~ |
    fis''8 fis''8 g''8 gis''8 |

    a''4. b''8 |
    c'''8 b''8 a''8 g''8 |
    fis''8 e''8 a''8 g''8 |
    fis''8 e''8 d''4 |

    d''8 \acciaccatura { fis''16 } e''4 d''8 |
    \tuplet 3/2 { fis''8 [ ( e''8 d''8 ) ] } \tuplet 3/2 { d''8 [ cis''8 b'8 ] } |
}

altosaxsectionab = {
    b'2 ~ |
    b'8 a'8 d''8 fis''8 |
}

altosaxsectionac = {
    b'2 ~ |
    b'8 b'8 cis''8 d''8 |
}

altosaxsectiona = {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionba = {
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } d''4 ~ |
    d''8 b'8 cis''8 d''8 |

    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \acciaccatura { eis''16 } fis''8 eis''8 fis''4 ~ |
    fis''8 b'8 cis''8 d''8 |

    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 d''8 ) ] } |
    \tuplet 3/2 { e''8 [ ( fis''8 e''8 ) ] } d''4 ~ |
      d''8 b'8 cis''8 d''8 |

    e''4. eis''8 |
    \tuplet 3/2 { fis''8 [ ( e''8 d''8 ) ] } \tuplet 3/2 { d''8 [ ( cis''8 b'8 ) ] } |
}

altosaxsectionbb = {
    b'2 ~|
    b'8 b'8 ( cis''8 d''8 ) |
}

altosaxsectionbc = {
    b'2 ~ |
    b'8 a'8 d''8 fis''8 |
}

altosaxsectionb =  {
    \repeat volta 2 { \altosaxsectionba }
    \alternative { { \altosaxsectionbb } { \altosaxsectionbc } }
}

altosaxcoda =  {
    \acciaccatura { fis''16 [ gis''16 ais''16 ] } b''8 r8 fis''8 r8 |
    \acciaccatura { fis''16 } b'2^\fermata |
}

altosaxnotes =  {
    \key d \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi =  {
    \key d \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionaa
    \altosaxcoda
}

altosaxmelodynotes =  \transpose d' a {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro =  {
    \partial 4. b'8 d''8 g''8 |
}

tenorsaxsectionaa = {
    b''8\ff r8 a''8 r8 |
    g''8 r8 d''8 e''8 |
    d''8 g''8 d''4 ~ |
    d''8 c''8 b'8 d'' |

    d''8 fis''4 g''8 |
    fis''8 d''8 a''4 |
    g''8 d''8 b'8 d''8 |
    g'8 g'8 ( a'8 ais'8 ) |

    b'8 a'8 b'8 c''8 |
    d''8 c''8 b'8 e''8 |
    d''4 fis''8 e''8 |
    dis''4 e''8 b'8 |

    e''8 c''4 b'8 |
    \tuplet 3/2 { dis''8 [ ( c''8 b'8 ) ] } b'8 r8 |
}

tenorsaxsectionab = {
    g'4 g'8 b'8 |
    g'8 b'8 d''8 g''8 |
}

tenorsaxsectionac = {
    g'4 g'8 b'8 |
    g'8 g'8 a'8 b'8 |
}

tenorsaxsectiona = {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionba = {
    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 [ ( a'8 b'8 ) ] } |
    \tuplet 3/2 { c''8 [ ( d''8 c''8 ) ] } b'8 e''8 |
    b'8 g'8 a'8 b'8 |

    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 [ ( a'8 b'8 ) ] } |
    e''4 g''8 b'8 |
    e''8 g'8 a'8 b'8 |

    c''4 b'4 |
    c''4 \tuplet 3/2 { b'8 [ ( a'8 b'8 ) ] } |
    \tuplet 3/2 { c''8 [ ( d''8 c''8 ) ] } b'8 e''8 |
    b'8 g'8 a'8 b'8 |

    c''8 e''8  e''4_^ |
    \tuplet 3/2 { dis''8 [ ( c''8 b'8 ) ] } \tuplet 3/2 { b'8 [ ( a'8 g'8 ) ] } |
}

tenorsaxsectionbb =  {
    g'8 b'4 b'8 |
    g'8 g'8 a'8 b'8 |
}

tenorsaxsectionbc =  {
    g'8 b'4_^ b'8 |
    g'8 b'8 d''8 g''8 |
}

tenorsaxsectionb =  {
    \repeat volta 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxcoda =  {
    \grace { s16 s16 s16 } g'8_^\ff r8 a'8_^ r8 |
    \grace { s16 } g'2_^_\fermata |
}

tenorsaxnotes =  {
    \key g \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi =  {
    \key g \major
    \time 2/4
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
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro =  {
    \partial 4.   d'8[ g'8 b'8 ]
}

trumpetsectionaa =  {
    d''8\ff r8 c''8 r8 |
      b'8[ a'8 b'8 \acciaccatura { d''16 } c''8 ] |
    b'4. a'8 |
      b'8[ a'8 ] g'4 |

    g'8 \acciaccatura { b'16 } a'4 g'8 |
    d''8 r8 \tuplet 3/2 {   c''8[( b'8 c''8) ] } |
    b'2 ~ |
      b'8[ b'8 c''8 cis''8 ] |

    d''4. e''8 |
      f''8[ e''8 d''8 c''8 ] |
      b'8[ a'8 d''8 c''8 ] |
      b'8[ a'8 ] g'4 |

    g'8 \acciaccatura { b'16 } a'4 g'8 |
    \tuplet 3/2 {   b'8[( a'8 g'8) ] } \tuplet 3/2 {   g'8[( fis'8 e'8) ] } |
}

trumpetsectionab =  {
    e'2 ~ |
      e'8[ d'8( g'8 b'8) ] |
}

trumpetsectionac =  {
    e'2 ~ |
      e'8[ e'8 fis'8 g'8 ] |
}

trumpetsectiona =  {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionba =  {
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } g'4 ~ |
      g'8[ e'8 fis'8 g'8 ] |

    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \acciaccatura { ais'16 }   b'8[ ais'8 ] b'4 ~ |
      b'8[ e'8 fis'8 g'8 ] |

    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } \tuplet 3/2 {   g'8[( fis'8 g'8) ] } |
    \tuplet 3/2 {   a'8[( b'8 a'8) ] } g'4 ~ |
      g'8[ e'8 fis'8 g'8 ] |

    a'4. ais'8 |
    \tuplet 3/2 {   b'8[( a'8 g'8) ] } \tuplet 3/2 {   g'8[( fis'8 e'8) ] } |
}

trumpetsectionbb =  {
    e'2 ~ |
      e'8[ e'8 fis'8 g'8 ] |
}

trumpetsectionbc =  {
    e'2 ~ |
      e'8[ d'8 g'8 b'8 ] |
}

trumpetsectionb =  {
    \repeat volta 2 { \trumpetsectionba }
    \alternative { { \trumpetsectionbb } { \trumpetsectionbc } }
}

trumpetcoda =  {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    \grace { s16 } e''2\fermata |
}

trumpetnotes =  {
    \key g \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi =  {
    \key g \major
    \time 2/4
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
    \partial 4. r8 r4
}

trombonesectionaa =  {
    \set countPercentRepeats = ##t
    \repeat percent 2 { f8 [ r8 c8 ] r8 } |
    a4. g8 |
    a8 [ g8 ] f4 |

    f8 g4 f8 |
    e8 r8 c4 |
    \repeat percent 2 { a8 [ f8 c8 f8 ] } |

    \repeat percent 2 { f8 [ r8 c8 ] r8 } |
    a8 [ g8 c'8 bes8 ] |
    a8 [ cis'8 ] d'4 |

    f8 g4 f8 |
    \tuplet 3/2 { a8 [ ( g8 f8 ) ] } \tuplet 3/2 { f8 [( e8 d8 ) ] } |
}

trombonesectionab =  {
    d8 [ a8 ] a,8 [ a8 ] |
    d8 [ c8 ( f8 a8 ) ] |
}

trombonesectionac =  {
    d8 [ a8 ] a,8 [ a8 ] |
    d8 [ d'8 a8 f8 ] |
}

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionba =  {
    g4 f4 |
    g4 f4 |
    g8 r8 f4 ~ |
    f8 [ d8 e8 f8 ] |

    \set countPercentRepeats = ##t
    \repeat percent 2 { g4 f4 | }
    a8 [ gis8 ] a4 ( |
    d'8 [ ) d8 ( e8 f8 ) ] |

    \repeat percent 2 { g4 f4 | }
    g8 r8 f4 ~ |
    f8 [ d8 e8 f8 ] |

    g4. gis8 |
    a8 r8 a,8 r8 |
}

trombonesectionbb =  {
    d8 [ a8 a,8 a8 ] |
    d8 [ d'8 a8 f8 ] |
}

trombonesectionbc =  {
    d8 [ a8 a,8 a8 ] |
    d8 [ c8 f8 a8 ] |
}

trombonesectionb =  {
    \repeat volta 2 { \trombonesectionba }
    \alternative { { \trombonesectionbb } { \trombonesectionbc } }
}

trombonecoda =  {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 |
    \grace { s16 } d2->\fermata |
}

trombonenotes =  {
    \key f \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi =  {
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb

    \trombonesectiona
    \trombonesectionb

    \trombonesectionaa
    \trombonecoda
}

trombonefortrumpetnotes = \transpose bes c'' { \trombonenotes }
tromboneforflutenotes = \transpose c c'' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro =  \transpose c c' {
    \partial 4.   c'8[( f'8 a'8) ]
}

violinsectionaa =  \transpose c c' {
      c''8[\f r8 bes'8 ] r8 |
      a'8[ g'8 a'8 \acciaccatura { c''16 } bes'8 ] |
    a'4. g'8 |
      a'8[\trill g'8 ] f'4 |

    f'8 \acciaccatura { a'16 } g'4 f'8 |
    c''8 r8 \tuplet 3/2 {   bes'8[( a'8 bes'8) ] } |
    a'2 ~ |
      a'8[ a'8 bes'8 b'8 ] |

    c''4. d''8 |
      ees''8[ d''8 c''8 bes'8 ] |
      a'8[ g'8 c''8 bes'8 ] |
      a'8[ g'8 ] f'4 |

    f'8 \acciaccatura { a'16 } g'4 f'8 |
    \tuplet 3/2 {   a'8[( g'8 f'8) ] } \tuplet 3/2 {   f'8[( e'8 d'8) ] } |
}

violinsectionab =  \transpose c c' {
    d'2 ~ |
      d'8[ c'8( f'8 a'8) ] |
}

violinsectionac =  \transpose c c' {
    d'2 ~ |
      d'8[ d'8 e'8 f'8 ] |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionba =  {
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \acciaccatura { gis''16 }   a''8[ gis''8 ] a''4 ~ |
      a''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    g''4. gis''8 |
    \tuplet 3/2 {   a''8[( g''8 f''8) ] } \tuplet 3/2 {   f''8[( e''8 d''8) ] } |
}

violinsectionbb =  {
    d''2 ~ |
    d''8   d''8[ e''8 f''8 ] |
}

violinsectionbc =  {
    d''2 ~ |
    d''8   c''8[ f''8 a''8 ] |
}

violinsectionb =  {
    \repeat volta 2 { \violinsectionba }
    \alternative { { \violinsectionbb } { \violinsectionbc } }
}

violincoda =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    \grace { s16 } d''2\fermata |
}

violinnotes =  {
    \key f \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \blankmeasure
    \violincoda
}

violinnotesmidi =  {
    \key f \major
    \time 2/4
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

pianorightupperintro =  {
    \partial 4.   c'8[\ff f'8 a'8 ]
}

pianorightuppersectionaa =  {
    < a' c'' >8[ r8 < g' bes' >8 ] r8 |
    < f' a' >8[ g'8 a'8 \acciaccatura { c''16 } bes'8 ] |
    a'4. g'8 |
    \acciaccatura { bes'16 }   a'8[ g'8 ] f'4 |

    f'8 g'4 f'8 |
    < e' c'' >8 r8 \tuplet 3/2 {   bes'8[( a'8 bes'8) ] } |
    < f' a' >2 ~ |
    < f' a' >8[ a'8 bes'8 b'8 ] |

    c''4. d''8 |
      ees''8[ d''8 c''8 bes'8 ] |
      a'8[ g'8 c''8 bes'8 ] |
    << {   a'8[ g'8 ] f'4 } \\ { cis'4 d'4 } >> |

    f'8 \acciaccatura { a'16 } g'4 f'8 |
    \tuplet 3/2 {   a'8[( g'8 f'8) ] } \tuplet 3/2 {   f'8[( e'8 d'8) ] } |
}

pianorightuppersectionab =  {
    d'2 ~ |
      d'8[ c'8( f'8 a'8) ] |
}

pianorightuppersectionac =  {
    d'2 ~ |
      d'8[ d''8 e''8 f''8 ] |
}

pianorightuppersectiona =  {
    \repeat volta 2 { \pianorightuppersectionaa }
    \alternative { { \pianorightuppersectionab } { \pianorightuppersectionac } }
}

pianorightuppersectionba =  {
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \acciaccatura { gis''16 }   a''8[ gis''8 ] a''4 ~ |
      a''8[ d''8 e''8 f''8 ] |

    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } \tuplet 3/2 {   f''8[( e''8 f''8) ] } |
    \tuplet 3/2 {   g''8[( a''8 g''8) ] } f''4 ~ |
      f''8[ d''8 e''8 f''8 ] |

    g''4. gis''8 |
    \tuplet 3/2 {   a''8[( g''8 f''8) ] } \tuplet 3/2 {   f''8[( e''8 d''8) ] } |
}

pianorightuppersectionbb =  {
    < f' a' d'' >2 ~ |
    < f' a' d'' >8   d''8[( e''8 f''8) ] |
}

pianorightuppersectionbc =  {
    < f' a' d'' >2 ~ |
    < f' a' d'' >8   c'8[ f'8 a'8 ] |
}

pianorightuppersectionb =  {
    \repeat volta 2 { \pianorightuppersectionba }
    \alternative { { \pianorightuppersectionbb } { \pianorightuppersectionbc } }
}

pianorightuppercoda =  {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } < f'' d''' >8 r8 < cis'' g'' a'' >8 r8 |
    \grace { s16 } \stemDown < f' a' d'' >2\fermata |
}

pianoleftupperintro =  {
    \partial 4. r8 r4
}

pianoleftuppersectionaa =  {
    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |

    f,8 [ f8 c8 f8 ] |
    c8 [ c'8 g8 c'8 ] |
    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |

    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |
    f,8 [ f8 c8 f8 ] |
    < e, e >8 [ a,8 ]   d,8[ d8 ] |

    d,8 [ d8 a,8 d8 ] |
    a,8 [ a8 cis8 a8 ] |
}

pianoleftuppersectionab =  {
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
      d8[ c8 f8 a8 ] |
}

pianoleftuppersectionac =  {
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
      d8[ d'8 a8 f8 ] |
}

pianoleftuppersectiona =  {
    \repeat volta 2 { \pianoleftuppersectionaa }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionba =  {
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |

      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 f8 ] |

      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |
      d8[ d'8 a8 d'8 ] |

      bes,8[ g8 d8 bes,8 ] |
      a,8[ a8 cis8 a8 ] |
}

pianoleftuppersectionbb =  {
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
      d8[ d'8 a8 f8 ] |
}

pianoleftuppersectionbc =  {
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
    < d f a >8 r8 r4 |
}

pianoleftuppersectionb =  {
    \repeat volta 2 { \pianoleftuppersectionba }
    \alternative { { \pianoleftuppersectionbb } { \pianoleftuppersectionbc } }
}

pianoleftuppercoda =  {
    \grace { s16 s16 s16 } < d a >8 r8 < a, a >8 r8 |
    \grace { s16 } < d, d >2\fermata |
}

pianorightuppernotes =  {
    \key f \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \blankmeasure
    \pianorightuppercoda
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \key f \major
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \blankmeasure
    \pianoleftuppercoda
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \key f \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionaa
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \key f \major
    \time 2/4
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
    \partial 4. c'8 f'8 a'8 
}

accordionrightuppersectionaa = {
    < a' c'' >8\ff r8 < g' bes' >8 r8 |
    < f' a' >8 < e' g' >8 < f' a' >8 \acciaccatura { c''16 } < e' bes' >8 |
    < f' a' >4. < e' g' >8 |
    \grace { s16 } < f' a' >8 < e' g' >8 f'4 |

    f'8 < e' g' >4 f'8 |
    < e' c'' >8 r8 << { \tuplet 3/2 { bes'8 a'8 bes'8 } } \\ { e'4 } >> |
    < f' a' >2 ~ |
    < f' a' >8 < f' a' >8 < g' bes' >8 < gis' b' >8 |

    < a' c'' >4. < bes' d'' >8 |
    < c'' ees'' >8 < bes' d'' >8 < a' c'' >8 bes'8 |
    a'8 g'8 c''8 bes'8 |
    a'8 g'8 f'4 |

    f'8 \acciaccatura { a'16 } g'4 f'8 |
    \tuplet 3/2 { a'8 g'8 f'8 } \tuplet 3/2 { f'8 e'8 d'8 } |
}

accordionrightuppersectionab = {
    d'2 ~ |
    d'8 c'8 f'8 a'8 |
}

accordionrightuppersectionac = {
    d'2 ~ |
    d'8 d''8 e''8 f''8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 { \accordionrightuppersectionaa }
    \alternative {
        { \accordionrightuppersectionab } { \accordionrightuppersectionac }
    }
}

accordionrightuppersectionba = {
    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \tuplet 3/2 { g''8 a''8 g''8 } f''4 ~ |
    f''8 d''8 e''8 f''8 |

    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \acciaccatura { gis''16 } < f'' a'' >8 < f'' gis''>8 < f'' a'' >4 ~ |
    < f'' a'' >8 d''8 e''8 f''8 |

    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \tuplet 3/2 { g''8 a''8 g''8 } \tuplet 3/2 { f''8 e''8 f''8 } |
    \tuplet 3/2 { g''8 a''8 g''8 } f''4 ~ |
    f''8 d''8 e''8 f''8 |

    < d'' g'' >4. < d'' gis'' >8 |
    \tuplet 3/2 { < cis'' a'' >8 g''8 f''8 } \tuplet 3/2 { f''8 e''8 d''8 } |
}

accordionrightuppersectionbb = {
    d''2 ~ |
    d''8 d''8 e''8 f''8 |
}

accordionrightuppersectionbc = {
    d''2 ~ |
    d''8 c'8 f'8 a'8 |
}

accordionrightuppersectionb = {
    \repeat volta 2 { \accordionrightuppersectionba }
    \alternative {
        { \accordionrightuppersectionbb } { \accordionrightuppersectionbc }
    }
}

accordionrightuppercoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } f''8-.-> r8 < a' cis'' g'' a'' >8-.-> r8 |
    \grace { s16 } \stemDown < f' a' d'' >2->\fermata |
}

accordionleftupperintro = {
    \partial 4. r8 r4
}

accordionleftuppersectionaa = {
    f,8 f8^"M" c8 c'8^"7" |
    f,8_3^"B.S." c8_2 f,8 c8 |
    f,8 f8^"M" c8 c'8^"7" |
    f,8^"B.S." c8 f,8 f8^"M" |

    f,8_4^"B.S." c8_3 bes,8_5 a,8_2 |
    g,8_3 c'8_2^"7" c8 c'8 |
    f,8 f8^"M" c8 f8 |
    f,8_3^"B.S." f,8 e,8_2_- d,8_4_- |

    c8_3 f8_2^"M" f,8_3^"B.S." bes,8_4 |
    f,8 bes,8 f,8 bes,8 |
    c8 c'8^"7" c8^"B.S." e,8_4_- |
    a,8 a8^"7" d,8 d'8^"m" |

    d,8 g8^"m" d,8 d'8^"m" |
    a,8 a8^"7" a,8 a8 |
}

accordionleftuppersectionab = {
    d,8 d'8^"m" a,8 d'8 |
    < d, d' >8 r8 r4 |
}

accordionleftuppersectionac = {
    d,8 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8^"B.S." d,8 |
}

accordionleftuppersectiona = {
    \repeat volta 2 { \accordionleftuppersectionaa }
    \alternative {
        { \accordionleftuppersectionab } { \accordionleftuppersectionac }
    }
}

accordionleftuppersectionba = {
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8 a,8^"B.S." d,8 |

    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8 a,8^"B.S." d,8 |

    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8^"m" d,8 d'8^"m" |
    g,8 g8 a,8^"B.S." d,8 |

    bes,8_5 g8^"m" g,8_3^"B.S." f,8_5 |
    e,8 a8^"7" a,8 a8 |
}

accordionleftuppersectionbb = {
    d,8 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8^"B.S." d,8 |
}

accordionleftuppersectionbc = {
    d,8 d'8^"m" a,8 d'8 |
    < d, d' >8 r8 r4 |
}

accordionleftuppersectionb = {
    \repeat volta 2 { \accordionleftuppersectionba }
    \alternative {
        { \accordionleftuppersectionbb } { \accordionleftuppersectionbc }
    }
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < d, d' >8^"m"_._> r8 < a, a >8^"7"_._> r8 |
    \grace { s16 } < d, d' >2^>^"m"_\fermata |
}

accordionrightuppernotes = {
    \key f \major
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \blankmeasure
    \accordionrightuppercoda
}

accordionrightlowernotes = {
    \time 2/4
}

accordionleftuppernotes = {
    \key f \major
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \blankmeasure
    \accordionleftuppercoda
}

accordionleftlowernotes = {
    \time 2/4
}

accordionrightnotesmidi = {
    \key f \major
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionaa
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key f \major
    \time 2/4
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
    \partial 4. s4.
}

drumshighsectionaa = \drummode {
    \stemUp \dynamicDown
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        << hhc8\p sna >> sna16 sna16 hhc8 << hhc8 sna >> |
        sna16 sna16 hhc8 << hhc8 sna >> sna8 |
    }
}

drumshighsectionab = \drummode {
    \stemUp \dynamicDown
    << hhc8 sna >> sna16 sna16 hhc8 << hhc8 sna >> |
    sna16 sna16 hhc8 << hhc8 sna >> sna8 |
}

drumshighsectionac = \drummode {
    \stemUp
    \dynamicDown
    \drumhackfive |
    \drumhacksix |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionba = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        wbh8\f wbh16 wbh16 wbh8 \drumhackseven |
        \drumhackeight wbh8 wbh16 wbh16 wbh8 |
    }
}

drumshighsectionbb = \drummode {
    wbh8 wbh16 wbh16 wbh8 \drumhackseven |
    \drumhackeight wbh8 wbh16 wbh16 wbh8 |
}

drumshighsectionbc = \drummode {
    sna8\p hhc8 sna8 hhc8 |
    sna8 hhc8 sna8 hhc8 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 { \drumshighsectionba }
    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
}

drumshighcoda = \drummode {
    \grace { s16 s16 s16 } cymc4->\f cymc4-> |
    \grace { s16 } cymc2-> |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionaa
    \drumshighcoda
}

drumslowintro = \drummode {
    \partial 4. s4.
}

drumslowsectionaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        bda4. bda8 ~ |
        bda4 bda4 |
    }
}

drumslowsectionab = \drummode {
    bda4. bda8 ~ |
    bda4 bda4 |
}

drumslowsectionac = \drummode {
    bda4 bda4 |
    bda4 bda4 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionba = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 7 {
        bda4. bda8 ~ |
        bda4 bda4 |
    }
}

drumslowsectionbb = \drummode {
    bda4. bda8 ~ |
    bda4 bda4 |
}

drumslowsectionbc = \drummode {
    bda4 bda4 |
    bda4 bda4 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 { \drumslowsectionba }
    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
}

drumslowcoda = \drummode {
    \grace { s16 s16 s16 } bda4 bda4 |
    \grace { s16 } bda4 r4 |
}

drumslowcodaMIDI = \drummode {
    \grace { s16 s16 s16 } bda4 bda4 |
    \grace { s16 } bda2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionaa
    \drumslowcodaMIDI
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | f2 | s2 | s2 | s2 |
}

previewnotes = {
    \key f \major
    \time 2/4
    s8 c'8 f'8 a'8
    \bar ".|:"
    c''8 r8 bes'8 r8 |
    a'8 g'8 a'8 \acciaccatura { c''16 } bes'8|
    a'4. g'8 |
    \acciaccatura { bes'16 } a'8 g'8 f'4 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

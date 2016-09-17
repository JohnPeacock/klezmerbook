\version "2.18.0"

bandmsectiona =  {
    \markA \positionA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    \bar ".|:-||" \breakA
}

bandmsectionba =  {
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 |
    \bar "||" \breakB
}

bandmsectionc =  {
    \markC \positionC
    \grace { s8. } s2 | \breakCone s2 | \breakCtwo
    s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
    % this will have to be shifted right to be in the right place!!!
    \markDCAL \positionDCAL
    s2 |
    \bar "||" \breakC
}

bandmsectiond =  {
    \markFC \positionFC
    s2 | \breakDone s2 | \breakCtwo s2 | \breakCtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 |
    \breakD
    \bar "||"
}

bandmcoda =  { \markRT \positionRT s2 | \breakCC s2 | }

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomesectiona =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionba =  { s2 | s2 | s2 | s2 | }

metronomesectionb =  { \repeat unfold 2 { \metronomesectionba } }

metronomesectionc =  {
    \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomesectiond =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomecoda =  { s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiona
    \tempo 4 = 115
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond
    \tempo 4 = 80
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona =  {
    \key g \major
      b'16[\f( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |

      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

melodysectionba =  {
      g'8[ g''8 ]   e''8[-> d''16( c''16) ] |
      b'8[ b'16( d''16) ]   a'8[ a'16( d''16) ] |
      g'8[ g''8 ]   e''8[-> d''16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

melodysectionb =  {
    \repeat unfold 2 { \melodysectionba }
}

melodysectionc =  {
    \key c \major
    \grace { s8. }   c''8[\mf e''8 ]   f''16[( e''16) f''16( d''16) ] |
      e''8[ g''8 ]   g''16[( f''16) e''16( d''16) ] |
      c''8[ e''8 ]   f''16[( e''16) f''16( d''16) ] |
      e''8[ g''8 ] g'4-> |

      c''8[ e''8 ]   f''16[( e''16) f''16( d''16) ] |
      e''8[ g''8 ]   g''16[( f''16) e''16( d''16) ] |
      c''8[ e''8 ]   f''16[( e''16) d''16( f''16) ] |
      e''8[ d''8 c''8 ] r8 |
}

melodysectiond =  {
    \key g \major
      b'16[\ff( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |

      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

melodycoda =  {
    g''8->\ff r8 g''8-> r8 |
    g''2\fermata\ff |
}

melody =  {
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodycoda
}

melodymidi =  {
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona =  {
    \key g \major
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 [ d8\3 g,8\4 ] r8 |

    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 a,8\4 r8 |
    g,8\4 [ d8\3 g,8\4 ] r8 |
}

basslinesectionba =  {
    g,8\4 [ g,8\4 ] c8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 [ g,8\4 ] c8\3 r8 |
    g,8\4 [ d8\3 g,8\4 ] r8 |
}

basslinesectionb =  {
    \repeat unfold 2 { \basslinesectionba }
}

basslinesectionc =  {
    \key c \major
    \grace { s8. } c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |

    c8\3 r8 g,8\4 r8 |
    c8\3 r8 g,8\4 r8 |
    c8\3 r8 d8\3 r8 |
    c8\3 [ g,8\4 c8\3 ] r8 |
}

basslinesectiond =  {
    \key g \major
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 [ d8\3 g,8\4 ] r8 |

    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 d8\3 r8 |
    g,8\4 r8 a,8\4 r8 |
    g,8\4 [ d8\3 g,8\4 ] r8 |
}

basslinecoda =  {
    g,8\4-> r8 g,8\4-> r8 |
    g,2\4->\fermata |
}

bassline =  {
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinecoda
}

basslinemidi =  {
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectiona =  {
    \key g \major
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionba =  {
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionb =  {
    \repeat unfold 2 { \guitarnotessectionba }
}

guitarnotessectionc =  {
    \key c \major
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectiond =  {
    \key g \major
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotescoda =  {
    s2 |
    s2 |
}

guitarnotes =  {
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotescoda
}

guitarnotesmidi =  {
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    g4 d4:7 |
    g4 d4:7 |
    g4 d4:7 |
    g8 d8:7 g4 |

    g4 d4:7 |
    g4 d4:7 |
    g4 a4:min |
    g8 d8:7 g4 |
}

chordletterssectionba = \chordmode {
    \chordChangesOff g4 \chordChangesOn c4 |
    g4 d4:7 |
    g4 c4 |
    g8 d8:7 g4 |
}

chordletterssectionb = \chordmode {
    \repeat unfold 2 { \chordletterssectionba }

    \grace { c8. } c4 g4:7 |
    c4 g4:7 |
    c4 g4:7 |
    c4 g4:7 |

    c4 g4:7 |
    c4 g4:7 |
    c4 d4:min |
    c8 g8:7 c4 |
}

chordletterssectiond = \chordmode {
    g4 d4:7 |
    g4 d4:7 |
    g4 d4:7 |
    g8 d8:7 g8 s8 |

    g4 d4:7 |
    g4 d4:7 |
    g4 a4:min |
    g8 d8:7 g4 |
}

chordletterscoda = \chordmode {
    \chordChangesOff
    g2 |
    \chordChangesOn
    g2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiond
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

clarinetsectiona =  {
    \key a \major
      cis''16[\ff bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''16[ bis'16 cis''16 fis''16 ]   e''8[ d''8 ] |
      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''8[ b'8 a'8 ] r8 |

      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''16[ bis'16 cis''16 fis''16 ]   e''8[ d''8 ] |
      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''8[ b'8 a'8 ] r8 |
}

clarinetsectionba =  {
      a'8[ a''8 ]   fis''8[-^ e''16 d''16 ] |
      cis''8[ cis''16( e''16) ]   b'8[ b'16( e''16) ] |
      a'8[ a''8 ]   fis''8[-^ e''16 d''16 ] |
      cis''8[ b'8 a'8 ] r8 |
}

clarinetsectionb =  {
    \repeat unfold 2 { \clarinetsectionba }
}

clarinetsectionc =  {
    \key d \major
    \acciaccatura { a'16[ b'16 cis''16 ] } d''8[ fis''8 ]   g''16[ fis''16 g''16 e''16 ] |
      fis''8[ a''8 ]   a''16[ g''16 fis''16 e''16 ] |
      d''8[ fis''8 ]   g''16[ fis''16 g''16 e''16 ] |
      fis''8[ a''8 ] a''4 |

      d''8[ fis''8 ]   g''16[ fis''16 g''16 e''16 ] |
      fis''8[ a''8 ]   a''16[ g''16 fis''16 e''16 ] |
      d''8[ fis''8 ]   g''16[ fis''16 e''16 g''16 ] |
      fis''8[ e''8 d''8 ] r8 |
}

clarinetsectiond =  {
    \key a \major
      cis''16[\ff bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''16[ bis'16 cis''16 fis''16 ]   e''8[ d''8 ] |
      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''8[ b'8 a'8 ] r8 |

      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''16[ bis'16 cis''16 fis''16 ]   e''8[ d''8 ] |
      cis''16[ bis'16 cis''16 e''16 ]   b'16[ ais'16 b'16 d''16 ] |
      cis''8[ e''8-^ a''8-^ ] r8 |
}

clarinetcoda =  {
    a''8-^ r8 a''8-^ r8 |
    a''2-^\fermata |
}

clarinetnotes =  {
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetcoda
}

cclarinetnotes = \transpose c bes, { \clarinetnotes }

clarinetnotesmidi =  {
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona =  {
    \key a \major
    a'4\ff gis'4 |
    a'4   gis'8[ b'8 ] |
    a'4   gis'8[ fis'8 ] |
      e'8[ d'8 cis'8 e'8 ] |

      a'8[ a'16 a'16 ]   gis'8[ gis'16 gis'16 ] |
      a'8[ a'16 a'16 ]   gis'8[ b'8 ] |
    a'4   gis'8[ fis'8 ] |
      e'8[ d'8 cis'8 ] r8 |
}

tenorsaxsectionba =  {
      a'8[ cis''8 ]   d''8[-^ cis''16 b'16 ] |
      a'8[ a'8 ]   gis'8[ gis'8 ] |
      a'8[ cis''8 ]   d''8[-^ cis''16 b'16 ] |
}

tenorsaxsectionbb =  {
      a'8[ e'8 cis'8 ] r8 |
}

tenorsaxsectionbc =  {
      e'[ d' cis'8 ] r8 |
}

tenorsaxsectionb =  {
    \repeat unfold 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxsectionc =  {
    \key d \major
    \grace { s8. }   a'8[ d''8 ]   e''16[ dis''16 e''16 cis''16 ] |
      d''8[ d''8 ]   cis''16[ b'16 a'16 g'16 ] |
      fis'16[ a'16 d''16 a'16 ]   e''16[ dis''16 e''16 cis''16 ] |
      d''8[ d''8 ]   cis''16[ a'16 b'16 cis''16 ] |
      d''16[( a'16 d''8) ]   e''16[ dis''16 e''16 cis''16 ]|
      d''8[ d''8 ]   cis''16[ b'16 a'16 g'16 ] |
      fis'16[ a'16 d''16 a'16 ]   b'16[ a'16 g'16 b'16 ]|
      a'8[ g'8 fis'8 ] r8 |
}

tenorsaxsectiond =  {
    \key a \major
    a'4 gis'4 |
    a'4   gis'8[ b'8 ] |
    a'4   gis'8[ fis'8 ] |
      e'8[ d'8 cis'8 ] r8 |
      a'8[ a'16 a'16 ]   gis'8[ gis'16 gis'16 ] |
      a'8[ a'16 a'16 ]   gis'8[ b'8 ]|
    a'4   gis'8[ fis'8 ] |
      e'8[ d''8-^ cis''8-^ ] r8 |
}

tenorsaxcoda =  {
    cis''8-^ r8 cis''8-^ r8 |
    cis''2-^\fermata |
}

tenorsaxnotes =  {
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxcoda
}

tenorsaxnotesmidi =  {
    \time 2/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona =  {
    \key e \major
      gis'16[\f fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
      gis'16[ fisis'16 gis'16 cis''16 ]   b'8[ a'8 ] |
      gis'16[ fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
      gis'8[ fis'8 e'8 ] r8 |
      gis'16[ fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
      gis'16[ fisis'16 gis'16 cis''16 ]   b'8[ a'8 ] |
      gis'16[ fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
      gis'8[ fis'8 e'8 ] r8 |
}

altosaxsectionba =  {
      e'8[ e''8 ]   cis''8[-> b'16 a'16 ] |
      gis'8[ gis'16 b'16 ]   fis'8[ fis'16 b'16 ] |
      e'8[ e''8 ]   cis''8[-> b'16 a'16 ] |
      gis'8[ fis'8 e'8 ] r8 |
}

altosaxsectionb =  { \repeat unfold 2 { \altosaxsectionba } }

altosaxsectionc =  {
    \key a \major
    \grace { s8. }   a'8[\mf cis''8 ]   d''16[ cis''16 d''16 b'16 ] |
      cis''8[ e''8 ]   e''16[ d''16 cis''16 b'16 ] |
      a'8[ cis''8 ]   d''16[ cis''16 d''16 b'16 ] |
      cis''8[ e''8 ]   e''16[ e'16 fis'16 gis'16 ] |
      a'8[ cis''8 ]   d''16[ cis''16 d''16 b'16 ] |
      cis''8[ e''8 ]   e''16[ d''16 cis''16 b'16 ] |
      a'8[ cis''8 ]   d''16[ cis''16 b'16 d''16 ] |
      cis''8[ b'8 a'8 ] r8 |
}

altosaxsectiond =  {
    \key e \major
    \repeat unfold 2 {
          gis'16[ fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
          gis'16[ fisis'16 gis'16 cis''16 ]   b'8[ a'8 ] |
          gis'16[ fisis'16 gis'16 b'16 ]   fis'16[ eis'16 fis'16 a'16 ] |
          gis'8[ fis'8 e'8 ] r8 |
    }
}

altosaxcoda =  {
    e''8->\ff r8 e''8-> r8 |
    e''2\fermata |
}

altosaxnotes =  {
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxcoda
}

altosaxnotesmidi =  {
    \time 2/4
    \preintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona =  {
    \key a \major
      cis''16[\ff( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''16[( bis'16) cis''16( fis''16) ]   e''8[ d''8 ] |
      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''8[ b'8 a'8 ] r8 |

      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''16[( bis'16) cis''16( fis''16) ]   e''8[ d''8 ] |
      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''8[ b'8 a'8 ] r8 |
}

trumpetsectionba =  {
      a'8[ a''8 ]   fis''8[-> e''16( d''16) ] |
      cis''8[ cis''16( e''16) ]   b'8[ b'16( e''16) ] |
      a'8[ a''8 ]   fis''8[-> e''16( d''16) ] |
      cis''8[ b'8 a'8 ] r8 |
}

trumpetsectionb =  {
    \repeat unfold 2 { \trumpetsectionba }
}

trumpetsectionc =  \transpose c' c {
    \key d \major
    \startOctVB
    \grace { s8. }   d''8[\mf fis''8 ]   g''16[( fis''16) g''16( e''16) ] |
      fis''8[ a''8 ]   a''16[( g''16) fis''16( e''16) ] |
      d''8[ fis''8 ]   g''16[( fis''16) g''16( e''16) ] |
      fis''8[ a''8 ] a'8-> r8 |

      d''8[ fis''8 ]   g''16[( fis''16) g''16( e''16) ] |
      fis''8[ a''8 ]   a''16[( g''16) fis''16( e''16) ] |
      d''8[ fis''8 ]   g''16[( fis''16) e''16( g''16) ] |
      fis''8[ e''8 d''8 ] r8 |
    \stopOctVB
}

trumpetsectiond =  {
    \key a \major
      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''16[( bis'16) cis''16( fis''16) ]   e''8[ d''8 ] |
      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''8[ b'8 a'8 ] r8 |

      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''16[( bis'16) cis''16( fis''16) ]   e''8[ d''8 ] |
      cis''16[( bis'16) cis''16( e''16) ]   b'16[( ais'16) b'16( d''16) ] |
      cis''8[ b'8 a'8 ] r8 |
}

trumpetcoda =  {
    a'8->\ff r8 a'8-> r8 |
    a'2\fermata |
}

trumpetnotes =  {
    \key a \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetcoda
}

trumpetnotesmidi =  {
    \key a \major
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
     \transpose c c, { \trumpetsectionc }
    \trumpetsectiond
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


trombonesectiona =  {
    \key g \major
      g8[\f g8 fis8 fis8 ] |
      g8[ g8 ]   d8[ fis8 ] |
      g8[ g8 fis8 fis8 ] |
      g8[ fis8 g8 ] r8 |

      g8[ g8 fis8 fis8 ] |
      g8[ g8 ]   d8[ fis8 ] |
      g8[ g8 ]   c8[ e8 ] |
      d8[ d8 g8 ] r8 |
}

trombonesectionba =  {
      g8[\< b8 c'8-^\! ] r8 |
      g8[\> g8 ]   fis8[ fis8\! ] |
      g8[\< b8 c'8-^\! ] r8 |
      g8[\> fis8 g8\!  ] r8 |
}

trombonesectionb =  { \repeat unfold 2 { \trombonesectionba } }

trombonesectionc =  {
    \key c \major
    \grace { s8. } c4\mf-^ d4-^ |
    e4-^ d4-^ |
    c4 d4 |
      e8[ c8 ]   g16[ g,16 a,16 b,16 ] |

    c4\mf-^ d4-^ |
    e4-^ d4-^ |
      c8[ c8 ]   fis8[ d8 ] |
      g8[ g,8 c8 ] r8 |
}

trombonesectiond =  {
    \key g \major
      g8[\ff g8 fis8 fis8 ] |
      g8[ g8 ]   d8[ fis8 ] |
      g8[ g8 fis8 fis8 ] |
      g8[ fis8 g8 ] r8 |

      g8[ g8 fis8 fis8 ] |
      g8[ g8 ]   d8[ fis8 ] |
      g8[ b8 c'8 a8 ] |
      d'8[ d8 g8 ] r8 |
}

trombonecoda =  {
      g8[\ff-^ r8 g8-^ ] r8 |
    g2-^\fermata |
}

trombonenotes =  {
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonecoda
}

trombonenotesmidi =  {
    \time 2/4
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona =  {
    \key g \major
      b'16[\upbow\f( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[\upbow( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |

      b'16[\upbow( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

violinsectionba =  {
      g'8[\upbow g''8 ]   e''8[-> d''16( c''16) ] |
      b'8[ b'16( d''16) ]   a'8[ a'16( d''16) ] |
      g'8[ g''8 ]   e''8[-> d''16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

violinsectionb =  {
    \repeat unfold 2 { \violinsectionba }
}

violinsectionc =  {
    \key c \major
    \grace { s8. }   c''8[\upbow\mf e''8 ]   f''16[ e''16 f''16 d''16 ] |
      e''8[ g''8 ]   g''16[( f''16) e''16 d''16 ] |
      c''8[ e''8 ]   f''16[( e''16) f''16( d''16) ] |
      e''8[ g''8 ] g'4-> |

      c''8[\upbow e''8 ]   f''16[( e''16) f''16( d''16) ] |
      e''8[ g''8 ]   g''16[( f''16) e''16( d''16) ] |
      c''8[ e''8 ]   f''16[( e''16) d''16( f''16) ] |
      e''8[ d''8 c''8 ] r8 |
}

violinsectiond =  {
    \key g \major
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |

      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'16[( ais'16) b'16( e''16) ]   d''8[ c''8 ] |
      b'16[( ais'16) b'16( d''16) ]   a'16[( gis'16) a'16( c''16) ] |
      b'8[ a'8 g'8 ] r8 |
}

violincoda =  {
    < b' g'' >8\upbow->\ff r8 < b' g'' >8-> r8 |
    < b' g'' >2\fermata\ff |
}

violinnotes =  {
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violincoda
}

violinnotesmidi =  {
    \time 2/4
    \preintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
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

pianorightuppersectiona =  {
    \key g \major
      b'16[-3\f ais'16 b'16-3 d''16-5 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'16[-3 ais'16-2 b'16-3 e''16-4 ]   d''8[-3 c''8-2 ] |
      b'16[-1 ais'16-2 b'16-3 d''16 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'8[-3 a'8-2 g'8-1 ] r8 |

      b'16[-3 ais'16 b'16-3 d''16-5 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'16[-3 ais'16-2 b'16-3 e''16-4 ]   d''8[ c''8 ] |
      b'16[-1 ais'16-2 b'16-3 d''16 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'8[-3 a'8 g'8 ] r8 |
}

pianorightuppersectionba =  {
      g'8[\< g''8\! ]   e''8[->-3 d''16-2 c''16-1 ] |
      b'8[-3\> b'16 d''16-5 ]   a'8[-2 a'16 d''16-5\! ] |
      g'8[\< g''8\! ]   e''8[->-3 d''16-2\> c''16-1 ] |
      b'8[-2 a'8 g'8 ] r8\! |
}

pianorightuppersectionb =  {
    \repeat unfold 2 { \pianorightuppersectionba }
}

pianorightuppersectionc =  {
    \key c \major
    \grace { s8. }   c''8[-1\mf e''8-3 ]   f''16[-4 e''16 f''16 d''16 ] |
      e''8[-3 g''8-5 ]   g''16[ f''16 e''16 d''16 ] |
      c''8[-1 e''8-3 ]   f''16[-4 e''16 f''16 d''16 ] |
      e''8[ g''8 ] g'4-> |

      c''8[ e''8 ]   f''16[ e''16 f''16 d''16 ] |
      e''8[-3 g''8-5 ]   g''16[ f''16 e''16 d''16 ] |
      c''8[-1 e''8-3 ]   f''16[-4 e''16 d''16 f''16 ] |
      e''8[ d''8 c''8 ] r8 |
}

pianorightuppersectiond =  {
    \key g \major
      b'16[-3\ff ais'16 b'16 d''16-5 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'16[-3 ais'16-2 b'16-3 e''16-4 ]   d''8[ c''8 ] |
      b'16[-1 ais'16-2 b'16-3 d''16 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'8[ a'8 g'8 ] r8 |

      b'16[-3\ff ais'16 b'16 d''16-5 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'16[-3 ais'16-2 b'16-3 e''16-4 ]   d''8[ c''8 ] |
      b'16[-1 ais'16-2 b'16-3 d''16 ]   a'16[-1 gis'16-2 a'16-1 c''16-4 ] |
      b'8[ a'8 g'8 ] r8 |
}

pianorightuppercoda =  {
    < b' d'' g'' >8->\ff r8 < b' d'' g'' >8-> r8 |
    < b' d'' g'' >2->\fermata\ff |
}

pianoleftuppersectiona =  {
    \key g \major
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a c' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
    < g b d' >8[ < fis c' d' >8 < g b d' >8 ] r8 |

      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a c' >8 ] |
      g8[ < b d' >8 ]   c8[ < e a >8 ] |
    < d g b >8[ < d fis c' >8 < d g b >8 ] r8 |
}

pianoleftuppersectionba =  {
    < g b d' >8[ < g b d' >8 ] < g c' e' >8 r8 |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
    < g b d' >8[ < g b d' >8 ] < g c' e' >8-> r8 |
    < g b d' >8[ < fis c' d' >8 < g b d' >8 ] r8 |
}

pianoleftuppersectionb =  {
    \repeat unfold 2 { \pianoleftuppersectionba }
}

pianoleftuppersectionc =  {
    \key c \major
    \grace { s8. }   c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
      e8[ < g c' >8 ]   d8[ < f g b >8 ] |
      c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
      c8[-5 e8-3 ]   g16[-1 g,16 a,16 b,16 ] |

      c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
      e8[ < g c' >8 ]   d8[ < f g b >8 ] |
      c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
    < g c' e' >8[ < g b f >8 < g c' e' >8 ] r8 |
}

pianoleftuppersectiond =  {
    \key g \major
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a c' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
    < g b d' >8[ < fis c' d' >8 < g b d' >8 ] r8 |

      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ]   fis8[ < a c' >8 ] |
      g8[ < b d' >8 ]   c8[ < e a >8 ] |
    < d g b >8[ < d fis c' >8 < d g b >8 ] r8 |
}

pianoleftuppercoda =  {
    \stemDown
    < g, g >8-> r8 < g, g >8-> r8 |
    < g, g >2->\fermata |
}

pianorightuppernotes =  {
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppercoda
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppercoda
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \time 2/4
    \preintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppercoda
}

drumshighsectiona = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionba = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionb = \drummode {
    \repeat unfold 2 { \drumshighsectionba }
}

drumshighsectionc = \drummode {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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
}

drumshighcoda = \drummode {
    s2 |
    s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighcoda
}

drumslowsectiona = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionba = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionb = \drummode {
    \repeat unfold 2 { \drumslowsectionba }
}

drumslowsectionc = \drummode {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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
}

drumslowcoda = \drummode {
    s2 |
    s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowcoda
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    g4 d4:7 |
    g4 d4:7 |
    g4 d4:7 |
    g8 d8:7 g8 s8 |
}

previewnotes = {
    \time 2/4
    \key g \major
    b'16 ( ais'16 ) b'16 ( d''16 ) a'16 ( gis'16 ) a'16 ( c''16 ) |
    b'16 ( ais'16 ) b'16 ( e''16 ) d''8 c''8 |
    b'16 ( ais'16 ) b'16 ( d''16 ) a'16 ( gis'16 ) a'16 ( c''16 ) |
    b'8 a'8 g'8 r8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

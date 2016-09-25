\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This file is built from a template file that
% introduces the basic structure of piece for a
% small ensemble.  The instruments regularly seen
% are here and the basic structure of klezmer
% orchestration is represented.

% A common way to fill this in is to identify each
% of the parts according to the role it fills in
% piece.  The parts are then assigned to
% instruments as necessary.

% Within each part it may be appropriate to
% divide up into sections so that the midi can
% better represent jumps "del segno" and jumps to
% codas.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmsectionaa =  {
    \markA \positionA
    s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor
    s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 |
}

bandmsectiona =  { \repeat volta 2 { \bandmsectionaa } \breakA }

bandmsectionba =  {
    \markB \positionB
    s2 | \breakBone
    s2 | \breakBtwo
    s2 | \breakBtre
    s2 | \breakBfor
    s2 | \breakBfiv
    s2 | \breakBsix
    s2 | \breakBsev
}

bandmsectionbb =  { s2 | \breakBeit }

bandmsectionbc =  { s2 | }

bandmsectionb =  {
    \repeat volta 2 { \bandmsectionba }
    \alternative { { \bandmsectionbb } { \bandmsectionbc } }
    \bar ".|:-||" \breakB
}

bandmsectionca =  {
    \markC \positionC
    s2 | \breakCone
    s2 | \breakCtwo
    s2 | \breakCtre
    s2 | \breakCfor
    s2 | \breakCfiv
    s2 | \breakCsix
    s2 | \breakCsev
}

bandmsectioncb =  { s2 | \breakCeit }

bandmsectioncc =  { s2 | }

bandmsectionc =  {
    \repeat volta 2 { \bandmsectionca }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \bar ".|:-||" \breakC
}

bandmsectionda =  {
    \markD \positionD
    s2 | \breakDone
    s2 | \breakDtwo
    s2 | \breakDtre
    s2 | \breakDfor
    s2 | \breakDfiv
    s2 | \breakDsix
    s2 | \breakDsev
    s2 |
}

bandmsectiond =  {
    \repeat volta 2 {
        \bandmsectionda
    }
    \breakD
}

bandmsectionea =  {
    \markE \positionE
    s2 | \breakEone
    s2 | \breakEtwo
    s2 | \breakEtre
    s2 | \breakEfor
    s2 | \breakEfiv
    s2 | \breakEsix
    s2 | \breakEsev
}

bandmsectioneb =  { s2 | \breakEeit }

bandmsectionec =  { s2 | }

bandmsectione =  {
    \repeat volta 2 { \bandmsectionea }
    \alternative { { \bandmsectioneb } { \bandmsectionec } }
     \markDCAL \positionDCAL
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  {
    s2 |
}

metronomeextraintro =  {
    s2 | s2 |
}

metronomesectionaa =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 {
        \metronomesectionaa
    }
}

metronomesectionba =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionbb =  { s2 | }

metronomesectionbc =  { s2 | }

metronomesectionb =  {
    \repeat volta 2 { \metronomesectionba }
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronomesectionca =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectioncb =  { s2 | }

metronomesectioncc =  { s2 | }

metronomesectionc =  {
    \repeat volta 2 { \metronomesectionca }
    \alternative { { \metronomesectioncb } { \metronomesectioncc } }
}

metronomesectionda =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiond =  {
    \repeat volta 2 {
        \metronomesectionda
    }
}

metronomesectionea =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectioneb =  { s2 | }

metronomesectionec =  { s2 | }

metronomesectione =  {
    \repeat volta 2 { \metronomesectionea }
    \alternative { { \metronomesectioneb } { \metronomesectionec } }
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond
    \metronomesectione

    \tempo 4 = 115
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond
    \metronomesectionea
    \metronomesectioneb
    \metronomesectionea
    \tempo 4 = 80
    \metronomesectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  \transpose d c {
    e'8\mf r8 gis'8 r8 |
      gis'16[\trill( f'16 e'16 f'16) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
      b'16[( a'16 gis'16 a'16) ]   b'16[( a'16 gis'16 f'16) ] |
      e'8[ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[\trill f'16 ] |
    f'8 e'4. |
}

melodysectiona =  { \repeat volta2 { \melodysectionaa } }

melodysectionba =  \transpose d c {
    c''4.   b'16[( a'16) ] |
    b'4.   a'16[( gis'16) ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
      a'16[( d''16) d''16( c''16) ]   c''16[( b'16) b'16( a'16) ] |
    c''4.   b'16[ a'16 ] |
    b'4.   a'16[ gis'16 ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
}

melodysectionbb =  \transpose d c {
    a'4. r8 |
}

melodysectionbc =  \transpose d c {
    a'8 r8 a'8 r8 |
}

melodysectionb =  {
    \repeat volta 2 { \melodysectionba }
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melodysectionca =  \transpose d c {
      d''8.[ c''16 ]   b'16[ c''16 d''8 ~ ] |
      d''16[( c''16 b'16 c''16 ]   d''16[ c''16 b'16 a'16) ] |
      b'8.[ a'16 ]   gis'16[ a'16 b'8 ~ ] |
      b'16[( a'16 gis'16 a'16 ]   b'16[ a'16 gis'16 f'16) ] |
      e'8.[\trill d'16 ]   e'8[ f'8 ] |
    e'8\trill d'4. |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[ f'16 ] |
}

melodysectioncb =  \transpose d c {
      e'8[ gis'8 b'8 e''8 ] |
}

melodysectioncc =  \transpose d c {
    f'8 e'4. |
}

melodysectionc =  {
    \repeat volta 2 { \melodysectionca }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodysectionda =  \transpose d c {
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( c''16 b'16 a'16) ] gis'4 |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      d''16[( c''16 b'16 a'16) ]   gis'8.[ f'16 ] |
    f'8 e'4. |
}

melodysectiond =  { \repeat volta2 { \melodysectionda } }

melodysectionea =  \transpose d c {
      gis'8.[ a'16 ]   b'16[ c''16 b'16 a'16 ] |
    b'8 gis'4. |
      g'8[ f'16( e'16) ]   d'16[( e'16 f'16 d'16) ] |
      e'8[ gis'8 c''8 e''8 ] |
      gis'8.[ a'16 ]   b'16[ c''16 b'16 a'16 ] |
    b'8 gis'4. |
      b'16[( a'16) a'16( gis'16) ]   gis'16[( f'16) f'16( e'16) ] |
}

melodysectioneb =  \transpose d c {
    e'8 e''16 e''16 e''8 e''8 |
}

melodysectionec =  \transpose d c {
    e'8 r8 e''8-> r8 |
}

melodysectione =  {
    \repeat volta 2 { \melodysectionea }
    \alternative { { \melodysectioneb } { \melodysectionec } }
}

melody =  {
    \key bes \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
}

melodymidi =  {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionaa =  {
    gis'8\f r8 b'8 r8 |
      b'16[( a'16 gis'16 a'16) ]   b'16[( e''16 b'8) ] |
    b'8 r8 gis''8 r8 |
      gis''16[ f''16 e''16 f''16 ]   gis''16[ f''16 e''16 d''16 ] |
      a'8[ f'8 a'8 d''8 ]
      a'16[( f'16) f'16( a'16) ]   f'8[ d''16 c''16 ]
      b'16[ c''16 d''16 c''16 ]   b'8.[ a'16 ] |
      a'16[ b'16 gis'8 ] r8 gis'8 |
}

tenorharmonysectiona =  {
    \repeat volta 2 {
        \tenorharmonysectionaa
    }
}

tenorharmonysectionba =  {
      e''16[ c''16 e''16 a''16 ] e''4\marcato |
      e''16[ b'16 e''16 gis''16 ] e''4\marcato |
      c''16[ b'16 c''16 d''16 ]   e''16[ d''16 c''16 b'16 ] |
      c''16[( f''16) f''16( e''16) ]   e''16[( d''16) d''16( c''16) ] |
      e''16[ a''16 e''16 c''16 ] e''4\marcato |
      e''16[ gis''16 e''16 b''16 ] e''4\marcato |
      c''16[ b'16 c''16 d''16 ]   e''16[ d''16 c''16 b'16 ] |
}

tenorharmonysectionbb =  {
      c''8[ a'8 c''8 d''8 ] |
}

tenorharmonysectionbc =  {
    c''8 r8 c''8 r8 |
}

tenorharmonysectionb =  {
    \repeat volta 2 { \tenorharmonysectionba }
    \alternative { { \tenorharmonysectionbb } { \tenorharmonysectionbc } }
}

tenorharmonysectionca =  {
      f''16[ e''16 d''16 e''16 ]   f''8.[ d''16 ] |
      f''16[( e''16 d''16 e''16 ]   f''16[ e''16 d''16 c''16) ] |
      d''16[ c''16 b'16 c''16 ]   d''8.[ b'16 ] |
      d''16[( c''16 b'16 c''16 ]   d''16[ c''16 b'16 a'16) ]
      a'8[ f'8 ]   a'8[ d''8 ] |
      a'16[ f'16 a'16 d''16 ]   a'8[ d'16 c'16 ] |
      b'16[ c''16 d''16 d''16 ]   b'8.[\trill( a'16) ] |
}

tenorharmonysectioncb =  {
     gis'8[ b'8 e''8 gis''8 ] |
}

tenorharmonysectioncc =  {
     a'8[ gis'8 ] r8 gis'8 |
}

tenorharmonysectionc =  {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonysectionda =  {
     e'8[ gis'16 gis'16 ]   gis'16[( b'16 gis'8) ] |
     f'8[ a'8 ]   gis'16[( b'16) b'16( gis'16) ] |
     e'8[ gis'16 gis'16 ]   gis'16[( b'16) b'16( e''16) ] |
     f'16[ e'16 d'16 c'16 ]   b'8[ e''8 ] |
     e'8[ gis'16 gis'16  ]   gis'16[( b'16 gis'8) ] |
     f'8[ a'8 ]   gis'16[( b'16) b'16( e''16) ] |
     f''16[ e''16 d''16 c''16 ]   b'8.[ a'16 ] |
     a'8[ gis'16 gis'16 ]   gis'8[ gis'8 ] |
}

tenorharmonysectiond =  {
    \repeat volta 2 {
        \tenorharmonysectionda
    }
}

tenorharmonysectionea =  {
      e''16[ b'16 e''16 f''16 ]   gis''16[ a''16 gis''16 f''16 ] |
      gis''8[ e''16 e''16 ]   b'8[ e''8 ] |
    b'4   a'8[ a'8 ] |
      gis'8[ b'8 e''8 b'8 ] |
      e''16[ b'16 e''16 f''16 ]   gis''16[ a''16 gis''16 f''16 ] |
      gis''8[ e''16 b'16 ] e''8 r8 |
      d''16[( c''16) c''16( b'16) ]   b'16[( a'16) a'16( gis'16) ] |
}

tenorharmonysectioneb =  {
      gis'8[ gis''16 gis''16 ]   gis''8[ gis''8 ] |
}

tenorharmonysectionec =  {
    gis'8 r8 gis'8 r8 |
}

tenorharmonysectione =  {
    \repeat volta 2 { \tenorharmonysectionea }
    \alternative { { \tenorharmonysectioneb } { \tenorharmonysectionec } }
}

tenorharmony =  \transpose c' bes {
    \key c \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
    \tenorharmonysectione
}

tenorharmonymidi =  \transpose c' bes {
    \time 2/4
    \tempo 4 = 110
    \preintro
    \metronomeextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
    \tenorharmonysectione

    \tempo 4 = 115
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
    \tenorharmonysectionea
    \tenorharmonysectioneb
    \tenorharmonysectionea
    \tempo 4 = 80
    \tenorharmonysectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa =  {
      d8[\f r8 a,8 ] r8 |
      fis16[( ees16 d16 ees16 ] fis8) r8 |
      d8[ r8 a,8 ] r8 |
      a16[( g16 fis16 g16 ] a8) r8 |

      c8[ r8 g,8 ] r8 |
      c8[ g8 ees8 c8 ] |
    d4 c4 |
      d8[ d8 a,8 d8 ] |
}

countersectiona =  { \repeat volta 2 { \countersectionaa } }

countersectionba =  {
      g8[ r8 g8 ] r8 |
      d8[ r8 d8 ] r8 |
      g8[ bes8 ]   g8[ bes8 ] |
      g8[ c'8 ]   bes8[ a8 ] |

      g8[ r8 g8 ] r8 |
      c8[ r8 c8 ] r8 |
    g4   d8[ d8 ] |
}

countersectionbb =  {
      g8[ d8 g8 ] r8 |
}

countersectionbc =  {
      g8[ d8 g,8 ] r8 |
}

countersectionb =  {
    \repeat volta 2 { \countersectionba }
    \alternative { { \countersectionbb } { \countersectionbc } }
}

countersectionca =  {
    c'4   g8[ c'8 ~ ] |
      c'8[ c'8 g8 c'8 ] |
    d'4   a8[ d'8 ~ ] |
      d'8[ d'8 a8 d'8 ] |

      c'8[ r8 g8 ] r8 |
      c8[ g8 ees8 c8 ] |
    d4   c8[ ees8 ] |
}

countersectioncb =  {
      d8[ fis8 a8 d'8 ] |
}

countersectioncc =  {
    c8 d4. |
}

countersectionc =  {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countersectionda =  {
      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c'8[ c'8 ] d'4 |
      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c8[ c8 ] d4 |

      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c'8[ c'8 ] d'4 |
      c'16[ bes16 a16 g16 ]   fis8[ ees8 ] |
      ees8[ d8 a,8 d8 ] |
}

countersectiond =  {
    \repeat volta 2 {
        \countersectionda
    }
}

countersectionea =  {
      d8[ r8 d8 ] r8 |
    d8 r8   a,8[ d8 ] |
      d8[ r8 c8 ] r8 |
      d8[ fis8 a8 d'8 ] |
      d8[ r8 d8 ] r8 |
    d8 r8   a,8[ d8 ] |
    c8 r8   c8[ c8 ] |
}

countersectioneb =  {
      d8[ d'16 d'16 ]   a8[ d'8 ] |
}

countersectionec =  {
      d8[-^ a,8-^ d8-^ ] r8 |
}

countersectione =  {
    \repeat volta 2 { \countersectionea }
    \alternative { { \countersectioneb } { \countersectionec } }
}

counter =  \transpose c c ' {
    \key bes \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
    \countersectione
}

countermidi =  \transpose c c' {
    \time 2/4
    \preintro
    \metronomeextraintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
    \countersectione

    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
    \countersectionea
    \countersectioneb
    \countersectionea

    \countersectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    c4\3 g,4\4 |
    c4\3 g,4\4 |
    d4\3 c4\3 |
    d8\3 [ d8\3 a,8\4 d8\3 ] |
}

basslinesectiona =  {
    \repeat volta 2 {
        \basslinesectionaa
    }
}

basslinesectionba =  {
    g4\2 g4\2 |
    d4\3 d4\3 |
    g4\2 g4\2 |
    c4\3 g4\2 |
    g4\2 g4\2 |
    d4\3 d4\3 |
    g4\2 d4\3 |
}

basslinesectionbb =  {
    g8\2 [ d8\3 g8\2 ] r8 |
}

basslinesectionbc =  {
    g8\2 [ d8\3 g,8\4 ] r8 |
}

basslinesectionb =  {
    \repeat volta 2 { \basslinesectionba }
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

basslinesectionca =  {
    c4\3 c4\3 |
    c4\3 c4\3 |
    d4\3 d4\3 |
    d4\3 d4\3 |
    c4\3 g,4\4 |
    c4\3 g,4\4 |
    d4\3 c4\3 |
}

basslinesectioncb =  {
    d8\3 [ a8\2 fis8\3 d8\3 ] |
}

basslinesectioncc =  {
    c8\3 d4.\3 |
}

basslinesectionc =  {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinesectionda =  {
    d4\3 a,4\4 |
    c4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 d4\3 |
    c4\3 c4\3 |
    c8\3 [ d8\3 a,8\4 d8\3 ] |
}

basslinesectiond =  {
    \repeat volta 2 {
        \basslinesectionda
    }
}

basslinesectionea =  {
    d4\3 d4\3 |
    d4\3 a,4\4 |
    d4\3 c4\3|
    d8\3 [ a8\2 fis8\3 d8\3 ] |
    d4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 c4\3 |
}

basslinesectioneb =  {
    d8\3 [ d'16\1 d'16\1 ] a8\2 [ d'8\1 ] |
}

basslinesectionec =  {
    d8\3 [ a,8\4 d8\3-> ] r8 |
}

basslinesectione =  {
    \repeat volta 2 { \basslinesectionea }
    \alternative { { \basslinesectioneb } { \basslinesectionec } }
}

bassline =  {
    \key bes \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
}

basslinemidi =  {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
    \key bes \major
    \time 2/4
}

guitarnotesmidi =  {
    \key bes \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    d2 | d2 | d2 | d2 |
    c2:min | c2:min | d4 c4:min | d2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordletterssectionaa
    }
}

chordletterssectionba = \chordmode {
    g2:min | d2 | g2:min | c4:min g4:min |
    g2:min | d2 | g4:min d4:7 |
}

chordletterssectionbb = \chordmode { g2:min | }

chordletterssectionbc = \chordmode {
    \chordChangesOff g2:min \chordChangesOn |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletterssectionca = \chordmode {
    c2:min | c2:min | d2 | s2 | c2:min | c2:min | d2 |
}

chordletterssectioncb = \chordmode { \chordChangesOff d2 \chordChangesOn | }

chordletterssectioncc = \chordmode { c4:min d4 | }

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterssectionda = \chordmode {
    \chordChangesOff d2 \chordChangesOn | c4:min d4 | d2 | c4:min d4 |
    d2 | c4:min d4 | c2:min | c8:min d4. |
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        \chordletterssectionda
    }
}

chordletterssectionea = \chordmode {
    \chordChangesOff d2 \chordChangesOn | d2 | d4 c4:min | d2 |
    d2 | d2 | c2:min |
}

chordletterssectioneb = \chordmode { d2 | }

chordletterssectionec = \chordmode { \chordChangesOff d2 \chordChangesOn | }

chordletterssectione = \chordmode {
    \repeat volta 2 { \chordletterssectionea }
    \alternative { { \chordletterssectioneb } { \chordletterssectionec } }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
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

flutenotes =  \transpose c c' {
    \melody
}

flutenotesmidi =  \transpose c c' {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectionaa =  {
    e''8\f r8 gis''8 r8 |
      gis''16[\trill f''16 e''16 f''16 ] gis''8 r8 |
    e''8 r8 b''8 r8 |
      b''16[ a''16 gis''16 a''16 ]   b''16[ a''16 gis''16 f''16 ] |
      e''8[ d''8 e''8 f''8 ] |
    e''8\trill d''4 a''8 |
      gis''16[ a''16 b''16 a''16 ]   gis''8.[\trill f''16 ] |
      fis''8[ e''16 e''16 ]   e''8[ e''8 ] |
}

clarinetsectiona =  {
    \repeat volta 2 {
        \clarinetsectionaa
    }
}

clarinetsectionba =  {
    c'''4.   b''16[ a''16 ] |
    b''4.   a''16[ gis''16 ] |
      a''16[( gis''16 a''16 b''16 ]   c'''16[ b''16 a''16 gis''16) ] |
      a''16[( d'''16) d'''16( c'''16) ]   c'''16[( b''16) b''16( a''16) ]  |
    c'''4.   b''16[ a''16 ] |
    b''4.   a''16[ gis''16 ] |
      a''16[ gis''16 a''16 b''16 ]   c'''16[ b''16 a''16 gis''16 ] |
}

clarinetsectionbb =  {
      a''8[ e''8( a''8 b''8) ] |
}

clarinetsectionbc =  {
    a''8 r8 a''8 r8 |
}

clarinetsectionb =  {
    \repeat volta 2 { \clarinetsectionba }
    \alternative { { \clarinetsectionbb } { \clarinetsectionbc } }
}

clarinetsectionca =  {
      d'''8.[ c'''16 ]   b''16[ c'''16 d'''8 ~ ] |
      d'''16[ c'''16 b''16 c'''16 ]   d'''16[ c'''16 b''16 a''16 ] |
      b''8.[ a''16 ]   gis''16[ a''16 b''8 ~ ] |
      b''16[ a''16( gis''16 a''16 ]   b''16[ a''16 gis''16 f''16) ] |
      e''8.[\trill d''16 ]   e''8[ f''8 ] |
    e''8-\trill( d''4) a''8 |
      gis''16[ a''16 b''16 a''16 ]   gis''8.[\trill( f''16) ] |
}

clarinetsectioncb =  {
     e''8[ gis''8 b''8 e'''8 ] |
}

clarinetsectioncc =  {
   f''8 e''4 r8 |
}

clarinetsectionc =  {
    \repeat volta 2 { \clarinetsectionca }
    \alternative { { \clarinetsectioncb } { \clarinetsectioncc } }
}

clarinetsectionda =  {
     e''8[ e'''16 e'''16 ]   e'''8[ e''8 ] |
     d''16[ e''16 f''16 d''16 ] e''4 |
     e''8[ e'''16 e'''16 ]   e'''8[ e'''8 ]|
     d'''16[ c'''16 b''16 a''16 ] gis''4 |
     e''8[ e'''16 e'''16 ]   e'''8[ e''8 ] |
     d''16[( e''16 f''16 d''16 ] e''4) |
     d'''16[ c'''16 b''16 a''16 ]   gis''8.[ f''16 ] |
     f''8[ e''16 e''16 ]   e''8[ e''8 ] |
}

clarinetsectiond =  {
    \repeat volta 2 {
        \clarinetsectionda
    }
}

clarinetsectionea =  {
      gis''8.[ a''16 ]   b''16[ c'''16 b''16 a''16 ] |
    b''8 gis''4 r8 |
      gis''8[( f''16 e''16) ]   d''16[( e''16 f''16 d''16) ] |
      e''8[ gis''8 b''8 e''8 ] |
      gis''8.[ a''16 ]   b''16[ c'''16 b''16 a''16 ] |
    b''8 gis''4 b''8 |
      b''16[( a''16) a''16( gis''16) ]   gis''16[( f''16) f''16( e''16) ] |
}

clarinetsectioneb =  {
      e''8[ e'''16 e'''16 ]   e'''8[ e'''8 ] |
}

clarinetsectionec =  {
    e''8 r8 e''8 r8 |
}

clarinetsectione =  {
    \repeat volta 2 { \clarinetsectionea }
    \alternative { { \clarinetsectioneb } { \clarinetsectionec } }
}

clarinetnotes =  {
    \key c \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
}

clarinetnotesmidi =  {
    \time 2/4
    \tempo 4 = 110
    \preintro
    \metronomeextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione

    \tempo 4 = 115
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectionea
    \clarinetsectioneb
    \clarinetsectionea
    \tempo 4 = 80
    \clarinetsectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa =  {
    gis'8\f r8 b'8 r8 |
      b'16[( a'16 gis'16 a'16) ]   b'16[( e''16 b'8) ] |
    b'8 r8 gis''8 r8 |
      gis''16[ f''16 e''16 f''16 ]   gis''16[ f''16 e''16 d''16 ] |
      a'8[ f'8 a'8 d''8 ]
      a'16[( f'16) f'16( a'16) ]   f'8[ d''16 c''16 ]
      b'16[ c''16 d''16 c''16 ]   b'8.[ a'16 ] |
      a'16[ b'16 gis'8 ] r8 gis'8 |
}

tenorsaxsectiona =  {
    \repeat volta 2 {
        \tenorsaxsectionaa
    }
}

tenorsaxsectionba =  {
      e''16[ c''16 e''16 a''16 ] e''4\marcato |
      e''16[ b'16 e''16 gis''16 ] e''4\marcato |
      c''16[ b'16 c''16 d''16 ]   e''16[ d''16 c''16 b'16 ] |
      c''16[( f''16) f''16( e''16) ]   e''16[( d''16) d''16( c''16) ] |
      e''16[ a''16 e''16 c''16 ] e''4\marcato |
      e''16[ gis''16 e''16 b''16 ] e''4\marcato |
      c''16[ b'16 c''16 d''16 ]   e''16[ d''16 c''16 b'16 ] |
}

tenorsaxsectionbb =  {
      c''8[ a'8 c''8 d''8 ] |
}

tenorsaxsectionbc =  {
    c''8 r8 c''8 r8 |
}

tenorsaxsectionb =  {
    \repeat volta 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxsectionca =  {
      f''16[ e''16 d''16 e''16 ]   f''8.[ d''16 ] |
      f''16[( e''16 d''16 e''16 ]   f''16[ e''16 d''16 c''16) ] |
      d''16[ c''16 b'16 c''16 ]   d''8.[ b'16 ] |
      d''16[( c''16 b'16 c''16 ]   d''16[ c''16 b'16 a'16) ]
      a'8[ f'8 ]   a'8[ d''8 ] |
      a'16[ f'16 a'16 d''16 ]   a'8[ d'16 c'16 ] |
      b'16[ c''16 d''16 d''16 ]   b'8.[\trill( a'16) ] |
}

tenorsaxsectioncb =  {
     gis'8[ b'8 e''8 gis''8 ] |
}

tenorsaxsectioncc =  {
     a'8[ gis'8 ] r8 gis'8 |
}

tenorsaxsectionc =  {
    \repeat volta 2 { \tenorsaxsectionca }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxsectionda =  {
     e'8[ gis'16 gis'16 ]   gis'16[( b'16 gis'8) ] |
     f'8[ a'8 ]   gis'16[( b'16) b'16( gis'16) ] |
     e'8[ gis'16 gis'16 ]   gis'16[( b'16) b'16( e''16) ] |
     f'16[ e'16 d'16 c'16 ]   b'8[ e''8 ] |
     e'8[ gis'16 gis'16  ]   gis'16[( b'16 gis'8) ] |
     f'8[ a'8 ]   gis'16[( b'16) b'16( e''16) ] |
     f''16[ e''16 d''16 c''16 ]   b'8.[ a'16 ] |
     a'8[ gis'16 gis'16 ]   gis'8[ gis'8 ] |
}

tenorsaxsectiond =  {
    \repeat volta 2 {
        \tenorsaxsectionda
    }
}

tenorsaxsectionea =  {
      e''16[ b'16 e''16 f''16 ]   gis''16[ a''16 gis''16 f''16 ] |
      gis''8[ e''16 e''16 ]   b'8[ e''8 ] |
    b'4   a'8[ a'8 ] |
      gis'8[ b'8 e''8 b'8 ] |
      e''16[ b'16 e''16 f''16 ]   gis''16[ a''16 gis''16 f''16 ] |
      gis''8[ e''16 b'16 ] e''8 r8 |
      d''16[( c''16) c''16( b'16) ]   b'16[( a'16) a'16( gis'16) ] |
}

tenorsaxsectioneb =  {
      gis'8[ gis''16 gis''16 ]   gis''8[ gis''8 ] |
}

tenorsaxsectionec =  {
    gis'8 r8 gis'8 r8 |
}

tenorsaxsectione =  {
    \repeat volta 2 { \tenorsaxsectionea }
    \alternative { { \tenorsaxsectioneb } { \tenorsaxsectionec } }
}

tenorsaxnotes =  {
    \key c \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
}

tenorsaxnotesmidi =  {
    \time 2/4
    \tempo 4 = 110
    \preintro
    \metronomeextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione

    \tempo 4 = 115
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectionea
    \tenorsaxsectioneb
    \tenorsaxsectionea
    \tempo 4 = 80
    \tenorsaxsectionec
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s2 |
    s2 |
}

altosaxsectionaa =  {
    b'8 r8 dis''8 r8 |
      dis''16[\trill c''16 b'16 c''16 ] dis''8 r8 |
    b'8 r8 fis''8 r8 |
      fis''16[( e''16 dis''16 e''16 ]   fis''16[ e''16 dis''16 c''16) ] |

      b'8[ a'8 b'8 c''8 ] |
    b'8\trill a'4 a'8 |
      dis''16[ e''16 fis''16 e''16 ]   dis''8.[\trill c''16 ] |
    c''8 b'4. |
}

altosaxsectiona =  {
    \repeat volta 2 {
        \altosaxsectionaa
    }
}

altosaxsectionba =  {
    g''4.   fis''16[( e''16) ] |
    fis''4.   e''16[ dis''16 ] |
      e''16[ dis''16 e''16 fis''16 ]   g''16[ fis''16 e''16 dis''16 ] |
      e''16[( a''16) a''16( g''16) ]   g''16[( fis''16) fis''16( e''16) ]  |
    g''4.   fis''16[ e''16 ] |
    fis''4.   e''16[ dis''16 ] |
      e''16[( dis''16 e''16 fis''16 ]   g''16[ fis''16 e''16 dis''16) ] |
}

altosaxsectionbb =  {
    e''4. r8 |
}

altosaxsectionbc =  {
    e''8 r8 e''8 r8 |
}

altosaxsectionb =  {
    \repeat volta 2 { \altosaxsectionba }
    \alternative { { \altosaxsectionbb } { \altosaxsectionbc } }
}

altosaxsectionca =  {
      a''8.[ g''16 ]   fis''16[ g''16 a''8 ~ ] |
      a''16[ g''16 fis''16 g''16 ]   a''16[ g''16 fis''16 e''16 ] |
      fis''8.[ e''16 ]   dis''16[ e''16 fis''8 ~ ] |
      fis''16[ e''16 dis''16 e''16 ]   fis''16[ e''16 dis''16 c''16 ] |
      b'8.[\trill a'16 ]   b'8[ c''8 ] |
    b'8\trill a'4. |
      dis''16[ e''16 fis''16 e''16 ]   dis''8.[ c''16 ] |
}

altosaxsectioncb =  {
      b'8[ dis''8 fis''8 b''8 ] |
}

altosaxsectioncc =  {
    c''8 b'4. |
}

altosaxsectionc =  {
    \repeat volta 2 { \altosaxsectionca }
    \alternative { { \altosaxsectioncb } { \altosaxsectioncc } }
}

altosaxsectionda =  {
      b'8[ b''16 b''16 ]   b''8[ b''8 ] |
      a''16[( b''16 c'''16 a''16) ] b''4 |
      b'8[ b''16 b''16 ]   b''8[ b''8 ] |
      a''16[( g''16 fis''16 e''16) ] dis''4 |
      b'8[ b''16 b''16 ]   b''8[ b''8 ] |
      a''16[ b''16 c'''16 a''16 ] b''4 |
      a''16[ g''16 fis''16 e''16 ]   dis''8.[ c''16 ] |
    c''8 b'4. |
}

altosaxsectiond =  {
    \repeat volta 2 {
        \altosaxsectionda
    }
}

altosaxsectionea =  {
      dis''8.[ e''16 ]   fis''16[ g''16 fis''16 e''16 ] |
    fis''8 dis''4. |
      dis''8[ c''16 b'16 ]   a'16[( b'16 c''16 a'16) ] |
      b'8[ dis''8 fis''8 b''8 ] |
      dis''8.[ e''16 ]   fis''16[ g''16 fis''16 e''16 ]  |
    fis''8 dis''4. |
      fis''16[( e''16) e''16( dis''16) ]   dis''16[( c''16) c''16( b'16) ] |
}

altosaxsectioneb =  {
      b'8[ b''16 b''16 ]   b''8[ b''8 ] |
}

altosaxsectionec =  {
    b'8 r8 b''8-> r8 |
}

altosaxsectione =  {
    \repeat volta 2 { \altosaxsectionea }
    \alternative { { \altosaxsectioneb } { \altosaxsectionec } }
}

altosaxnotes =  {
    \key g \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
}

altosaxnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectionea
    \altosaxsectioneb
    \altosaxsectionea

    \altosaxsectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa =  \transpose d c {
    e'8\mf r8 gis'8 r8 |
      gis'16[\trill( f'16 e'16 f'16) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
      b'16[( a'16 gis'16 a'16) ]   b'16[( a'16 gis'16 f'16) ] |
      e'8[ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[\trill f'16 ] |
    f'8 e'4. |
}

trumpetsectiona =  { \repeat volta2 { \trumpetsectionaa } }

trumpetsectionba =  \transpose d c {
    c''4.   b'16[( a'16) ] |
    b'4.   a'16[( gis'16) ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
      a'16[( d''16) d''16( c''16) ]   c''16[( b'16) b'16( a'16) ] |
    c''4.   b'16[ a'16 ] |
    b'4.   a'16[ gis'16 ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
}

trumpetsectionbb =  \transpose d c {
    a'4. r8 |
}

trumpetsectionbc =  \transpose d c {
    a'8 r8 a'8 r8 |
}

trumpetsectionb =  {
    \repeat volta 2 { \trumpetsectionba }
    \alternative { { \trumpetsectionbb } { \trumpetsectionbc } }
}

trumpetsectionca =  \transpose d c {
      d''8.[ c''16 ]   b'16[ c''16 d''8 ~ ] |
      d''16[( c''16 b'16 c''16 ]   d''16[ c''16 b'16 a'16) ] |
      b'8.[ a'16 ]   gis'16[ a'16 b'8 ~ ] |
      b'16[( a'16 gis'16 a'16 ]   b'16[ a'16 gis'16 f'16) ] |
      e'8.[\trill d'16 ]   e'8[ f'8 ] |
    e'8\trill d'4. |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[ f'16 ] |
}

trumpetsectioncb =  \transpose d c {
      e'8[ gis'8 b'8 e''8 ] |
}

trumpetsectioncc =  \transpose d c {
    f'8 e'4. |
}

trumpetsectionc =  {
    \repeat volta 2 { \trumpetsectionca }
    \alternative { { \trumpetsectioncb } { \trumpetsectioncc } }
}

trumpetsectionda =  \transpose d c {
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( c''16 b'16 a'16) ] gis'4 |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      d''16[( c''16 b'16 a'16) ]   gis'8.[ f'16 ] |
    f'8 e'4. |
}

trumpetsectiond =  { \repeat volta2 { \trumpetsectionda } }

trumpetsectionea =  \transpose d c {
      gis'8.[ a'16 ]   b'16[ c''16 b'16 a'16 ] |
    b'8 gis'4. |
      g'8[ f'16( e'16) ]   d'16[( e'16 f'16 d'16) ] |
      e'8[ gis'8 c''8 e''8 ] |
      gis'8.[ a'16 ]   b'16[ c''16 b'16 a'16 ] |
    b'8 gis'4. |
      b'16[( a'16) a'16( gis'16) ]   gis'16[( f'16) f'16( e'16) ] |
}

trumpetsectioneb =  \transpose d c {
    e'8 e''16 e''16 e''8 e''8 |
}

trumpetsectionec =  \transpose d c {
    e'8 r8 e''8-> r8 |
}

trumpetsectione =  {
    \repeat volta 2 { \trumpetsectionea }
    \alternative { { \trumpetsectioneb } { \trumpetsectionec } }
}

trumpetnotes =  \transpose c d {
    \key bes \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
}

trumpetnotesmidi =  \transpose c d {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa =  {
      d8[\f r8 a,8 ] r8 |
      fis16[( ees16 d16 ees16 ] fis8) r8 |
      d8[ r8 a,8 ] r8 |
      a16[( g16 fis16 g16 ] a8) r8 |

      c8[ r8 g,8 ] r8 |
      c8[ g8 ees8 c8 ] |
    d4 c4 |
      d8[ d8 a,8 d8 ] |
}

trombonesectiona =  { \repeat volta 2 { \trombonesectionaa } }

trombonesectionba =  {
      g8[ r8 g8 ] r8 |
      d8[ r8 d8 ] r8 |
      g8[ bes8 ]   g8[ bes8 ] |
      g8[ c'8 ]   bes8[ a8 ] |

      g8[ r8 g8 ] r8 |
      c8[ r8 c8 ] r8 |
    g4   d8[ d8 ] |
}

trombonesectionbb =  {
      g8[ d8 g8 ] r8 |
}

trombonesectionbc =  {
      g8[ d8 g,8 ] r8 |
}

trombonesectionb =  {
    \repeat volta 2 { \trombonesectionba }
    \alternative { { \trombonesectionbb } { \trombonesectionbc } }
}

trombonesectionca =  {
    c'4   g8[ c'8 ~ ] |
      c'8[ c'8 g8 c'8 ] |
    d'4   a8[ d'8 ~ ] |
      d'8[ d'8 a8 d'8 ] |

      c'8[ r8 g8 ] r8 |
      c8[ g8 ees8 c8 ] |
    d4   c8[ ees8 ] |
}

trombonesectioncb =  {
      d8[ fis8 a8 d'8 ] |
}

trombonesectioncc =  {
    c8 d4. |
}

trombonesectionc =  {
    \repeat volta 2 { \trombonesectionca }
    \alternative { { \trombonesectioncb } { \trombonesectioncc } }
}

trombonesectionda =  {
      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c'8[ c'8 ] d'4 |
      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c8[ c8 ] d4 |

      d8[ d'16 d'16 ]   d'8[ d'8 ] |
      c'8[ c'8 ] d'4 |
      c'16[ bes16 a16 g16 ]   fis8[ ees8 ] |
      ees8[ d8 a,8 d8 ] |
}

trombonesectiond =  {
    \repeat volta 2 {
        \trombonesectionda
    }
}

trombonesectionea =  {
      d8[ r8 d8 ] r8 |
    d8 r8   a,8[ d8 ] |
      d8[ r8 c8 ] r8 |
      d8[ fis8 a8 d'8 ] |
      d8[ r8 d8 ] r8 |
    d8 r8   a,8[ d8 ] |
    c8 r8   c8[ c8 ] |
}

trombonesectioneb =  {
      d8[ d'16 d'16 ]   a8[ d'8 ] |
}

trombonesectionec =  {
      d8[-^ a,8-^ d8-^ ] r8 |
}

trombonesectione =  {
    \repeat volta 2 { \trombonesectionea }
    \alternative { { \trombonesectioneb } { \trombonesectionec } }
}

trombonenotes =  {
    \key bes \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
}

trombonenotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectionea
    \trombonesectioneb
    \trombonesectionea

    \trombonesectionec
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectionaa =  \transpose d c {
    e'8\mf r8 gis'8 r8 |
      gis'16[\trill( f'16 e'16 f'16) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
      b'16[( a'16 gis'16 a'16) ]   b'16[( a'16 gis'16 f'16) ] |
      e'8[ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[\trill f'16 ] |
    f'8 < gis e' >4. |
}

violinsectiona =  { \repeat volta2 { \violinsectionaa } }

violinsectionba =  \transpose d c {
    c''4.   b'16[ a'16 ] |
    b'4.   a'16[ gis'16 ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
      a'16[( d''16) d''16( c''16) ]   c''16[( b'16) b'16( a'16) ] |
    c''4.   b'16[ a'16 ] |
    b'4.   a'16[ gis'16 ] |
      a'16[( gis'16 a'16 b'16) ]   c''16[( b'16 a'16 gis'16) ] |
}

violinsectionbb =  \transpose d c {
    < c' a' >4. r8 |
}

violinsectionbc =  \transpose d c {
    < c' a' >8 r8 < c' a' >8 r8 |
}

violinsectionb =  {
    \repeat volta 2 { \violinsectionba }
    \alternative { { \violinsectionbb } { \violinsectionbc } }
}

violinsectionca =  \transpose d c {
      d''8.[ c''16 ]   b'16[ c''16 d''8 ~ ] |
      d''16[( c''16 b'16 c''16 ]   d''16[ c''16 b'16 a'16) ] |
      b'8.[ a'16 ]   gis'16[ a'16 b'8 ~ ] |
      b'16[( a'16 gis'16 a'16 ]   b'16[ a'16 gis'16 f'16) ] |
      e'8.[\trill d'16 ]   e'8[ f'8 ] |
    e'8\trill d'4. |
      gis'16[( a'16 b'16 a'16) ]   gis'8.[ f'16 ] |
}

violinsectioncb =  \transpose d c {
      e'8[ gis'8 b'8 e''8 ] |
}

violinsectioncc =  \transpose d c {
    f'8 < gis e' >4. |
}

violinsectionc =  {
    \repeat volta 2 { \violinsectionca }
    \alternative { { \violinsectioncb } { \violinsectioncc } }
}

violinsectionda =  \transpose d c, {
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( c''16 b'16 a'16 ] gis'4) |
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
      d''16[( e''16 f''16 d''16) ] e''4 |
      d''16[( c''16 b'16 a'16) ]   gis'8.[ f'16 ] |
    f'8 e'4. |
}

violinsectiond =  \transpose c c' {
    \startOctVA
    \repeat volta2 { \violinsectionda }
    \stopOctVA
}

violinsectionea =  \transpose d c, {
      gis'8.[ a'16 ]   b'16[( c''16 b'16 a'16) ] |
    b'8 gis'4. |
      g'8[ f'16 e'16 ]   d'16[( e'16 f'16 d'16) ] |
      e'8[ gis'8 c''8 e''8 ] |
      gis'8.[ a'16 ]   b'16[ c''16 b'16 a'16 ] |
    b'8 gis'4. |
      b'16[( a'16) a'16( gis'16) ]   gis'16[( f'16) f'16( e'16) ] |
}

violinsectioneb =  \transpose d c, {
      e'8[ e''16 e''16 ]   e''8[ e''8 ] |
}

violinsectionec =  \transpose d c, {
    e'8 r8 e''8-> r8 |
}

violinsectione =  \transpose c c' {
    \startOctVA
    \repeat volta 2 { \violinsectionea }
    \alternative { { \violinsectioneb } { \violinsectionec } }
    \stopOctVA
}

violinnotes =  \transpose c c' {
    \key bes \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
}

violinnotesmidi =  \transpose c c' {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionda
     \transpose c c' { \violinsectionda }
    \violinsectionea
    \violinsectioneb
     \transpose c c' {
        \violinsectionea
        \violinsectionec
    }

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionda
     \transpose c c' { \violinsectionda }
    \violinsectionea
    \violinsectioneb
     \transpose c c' {
        \violinsectionea
        \violinsectionec
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectionaa =  {
    d''8\f r8 fis''8 r8 |
      fis''16[\trill ees''16 d''16 ees''16 ] f''8 r8 |
    d''8 r8 a''8 r8 |
      a''16[( g''16 fis''16 g''16 ]   a''16[ g''16 fis''16 ees''16) ] |
      d''8[ c''8 d''8 ees''8 ] |
    d''8\trill c''4 c''8 |
      fis''16[( g''16 a''16 g''16) ]   fis''8.[\trill ees''16 ] |
    ees''8 < fis' a' d'' >4. |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        \pianorightuppersectionaa
    }
}

pianorightuppersectionba =  {
    bes''4.   a''16[ g''16 ] |
    a''4.   g''16[ fis''16 ] |
      g''16[( fis''16 g''16 a''16) ]   bes''16[( a''16 g''16 fis''16) ] |
      g''16[( c'''16)  c'''16( bes''16) ]   bes''16[( a''16) a''16( g''16) ] |
    bes''4.   a''16[ g''16 ] |
    a''4.   g''16[ fis''16 ] |
      g''16[( fis''16 g''16 a''16) ]   bes''16[( a''16 g''16 fis''16) ] |
}

pianorightuppersectionbb =  {
    < bes' g'' >4. r8 |
}

pianorightuppersectionbc =  {
    < bes' g'' >8 r8 < bes' g'' >8 r8 |
}

pianorightuppersectionb =  {
    \repeat volta 2 { \pianorightuppersectionba }
    \alternative { { \pianorightuppersectionbb } { \pianorightuppersectionbc } }
}

pianorightuppersectionca =  {
      c'''8.[ bes''16 ]   a''16[ bes''16 c'''8 ~ ] |
      c'''16[( bes''16 a''16 bes''16 ]   c'''16[ bes''16 a''16 g''16) ] |
      a''8.[ g''16 ]   fis''16[ g''16 a''8 ~ ] |
      a''16[( g''16 fis''16 g''16 ]   a''16[ g''16 fis''16 ees''16) ] |
      d''8.[\trill c''16 ]   d''8[ ees''8 ] |
    d''8\trill c''4. |
      fis''16[( g''16 a''16 g''16) ]   fis''8.[ ees''16 ] |
}

pianorightuppersectioncb =  {
      d''8[ fis''8 a''8 d'''8 ] |
}

pianorightuppersectioncc =  {
    < g' a' ees'' >8 < fis' a' d'' >4. |
}

pianorightuppersectionc =  {
    \repeat volta 2 { \pianorightuppersectionca }
    \alternative { { \pianorightuppersectioncb } { \pianorightuppersectioncc } }
}

pianorightuppersectionda =  {
      d'8[ d''16 d''16 ]   d''8[ d''8 ] |
      c''16[( d''16 ees''16 c''16 ] d''4) |
      d'8[ d''16 d''16 ]   d''8[ d''8 ] |
      c''16[ bes'16 a'16 g'16 ] fis'4 |
      d'8[ d''16 d''16 ]   d''8[ d''8 ] |
      c''16[ d''16 ees''16 c''16 ] d''4 |
      c''16[ bes'16 a'16 g'16 ]   fis'8.[ ees'16 ] |
    < g a ees' >8 < fis a d' >4. |
}

pianorightuppersectiond =  {
    \repeat volta 2 {
        \pianorightuppersectionda
    }
}

pianorightuppersectionea =  {
      fis'8.[ g'16 ]   a'16[ bes'16 a'16 g'16 ] |
    a'8 fis'4. |
      fis'8[ ees'16( d'16 ]   c'16[ d'16 ees'16 c'16) ] |
      d'8[ fis'8 a'8 d''8 ] |
      fis'8.[ g'16 ]   a'16[ bes'16 a'16 g'16 ] |
    a'8 fis'4. |
      a'16[( g'16) g'16( fis'16) ]   fis'16[( ees'16) ees'16( d'16) ] |
}

pianorightuppersectioneb =  {
      d'8[ d''16 d''16 ]   d''8[ d''8 ] |
}

pianorightuppersectionec =  {
    d'8 r8 < fis' a' d'' >8_> r8 |
}

pianorightuppersectione =  \transpose c c' {
    \startOctVA
    \repeat volta 2 { \pianorightuppersectionea }
    \alternative { { \pianorightuppersectioneb } { \pianorightuppersectionec } }
    \stopOctVA
}

pianorightuppersectionehigh =  \transpose c c' {
    \pianorightuppersectione
}

pianorightuppernotes =  {
    \key bes \major
    \time 2/4
%    \stemUp
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

pianoleftuppersectionaa =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      c8[ < ees g >8 ]   g,8[ < ees g >8 ] |
      c8[ < ees g >8 ]   g,8[ < ees g >8 ] |
      d8[ < fis a >8 ]   c8[ < ees g >8 ] |
      d8[ d8 a,8 d8 ] |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        \pianoleftuppersectionaa
    }
}

pianoleftuppersectionba =  {
      g8[ < bes d' >8 ]   g8[ < bes d' >8 ] |
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      g8[ < bes d' >8 ]   g8[ < bes d' >8 ] |
      g8[ < c' ees' >8 ]   g8[ < bes d' >8 ] |
      g8[ < bes d' >8 ]   g8[ < bes d' >8 ] |
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      g8[ < bes d' >8 ]   d8[ < fis c' >8 ] |
}

pianoleftuppersectionbb =  {
      g8[ d8 g8 ] r8 |
}

pianoleftuppersectionbc =  {
      g8[ d8 g,8 ] r8 |
}

pianoleftuppersectionb =  {
    \repeat volta 2 { \pianoleftuppersectionba }
    \alternative { { \pianoleftuppersectionbb } { \pianoleftuppersectionbc } }
}

pianoleftuppersectionca =  {
      c8[ < ees g >8 ]   c8[ < ees g >8 ] |
      c8[ < ees g >8 ]   c8[ < ees g >8 ] |
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      c8[ < ees g >8 ]   g,8[ < ees g >8 ] |
      c8[ < ees g >8 ]   g,8[ < ees g >8 ] |
      d8[ < fis a >8 ]   c8[ < ees g a >8 ] |
}

pianoleftuppersectioncb =  {
      d8[ a8 fis8 d8 ] |
}

pianoleftuppersectioncc =  {
    c8 d4. |
}

pianoleftuppersectionc =  {
    \repeat volta 2 { \pianoleftuppersectionca }
    \alternative { { \pianoleftuppersectioncb } { \pianoleftuppersectioncc } }
}

pianoleftuppersectionda =  {
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      c8[ < ees g a >8 ]   d8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      c8[ < ees g a >8 ]   d8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      c8[ < ees g a >8 ]   d8[ < fis a >8 ] |
      c8[ < ees g a >8 ]   c8[ < ees g a >8 ] |
      c8[ d8 a,8 d8 ] |
}

pianoleftuppersectiond =  {
    \repeat volta 2 {
        \pianoleftuppersectionda
    }
}

pianoleftuppersectionea =  {
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      d8[ < fis a >8 ]   c8[ < ees g a >8 ]|
      d8[ a8 ]   fis8[ d8 ] |
      d8[ < fis a >8 ]   d8[ < fis a >8 ] |
      d8[ < fis a >8 ]   a,8[ < fis a >8 ] |
      c8[ < ees g a >8 ]   c8[ < ees g a >8 ] |
}

pianoleftuppersectioneb =  {
      d8[ d'16 d'16 ]   a8[ d'8 ] |
}

pianoleftuppersectionec =  {
      d8[ a,8 < d, d >8_> ] r8 |
}

pianoleftuppersectione =  {
    \repeat volta 2 { \pianoleftuppersectionea }
    \alternative { { \pianoleftuppersectioneb } { \pianoleftuppersectionec } }
}

pianoleftuppernotes =  {
    \key bes \major
    \time 2/4
%    \stemUp
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key bes \major
    \time 2/4
    \stemDown
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectionehigh
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
}

pianoleftnotesmidi =  {
    \key bes \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
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
    \preintro
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
    \preintro
    \drumslowextraintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2 | s2 | s2 | s2 |
    c2:min | s2 | d4 c4:min | d2 |
}

previewnotes = {
    \key bes \major
    \time 2/4
    \transpose d c' {
        e'8 r8 gis'8 r8 |
        gis'16\trill ( f'16 e'16 f'16 ) gis'8 r8 |
        e'8 r8 b'8 r8 |
        b'16 ( a'16 gis'16 a'16) b'16 ( a'16 gis'16 f'16 ) |
        e'8 d'8 e'8 f'8 |
        e'8\trill d'4 d'8 |
        gis'16 ( a'16 b'16 a'16 ) gis'8.\trill f'16 |
        f'8 e'4. |
    \bar ":|."
    }
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

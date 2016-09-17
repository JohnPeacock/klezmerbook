\version "2.18.0"

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

bandmNV =  {
    \time 2/4
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \bar ".|:-||" \breakA

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
    }
    \alternative { { s2 | \breakBeit } { s2 | } }
    \markDC \positionDC
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomesectionaa =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionab =  { s2 | }

metronomesectionac =  { s2 | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionba =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionbb =  { s2 | }

metronomesectionbc =  { s2 | }

metronomesectionb =  {
    \repeat volta 2 { \metronomesectionba }
    \alternative { { \metronomesectionbb } { \metronomesectionbc } }
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 120
    \metronomesectiona
    \metronomesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  {
    g''8\mf r8   f''16[ e''16 f''16 d''16 ] |
      c''8[ c''8 ]   b'8[ g'8 ] |
      c''8[ c''8 ]   d''8[ d''8 ] |
      e''8[ e''8 ]   f''8[ d''8 ] |
      g''8[ a''16 g''16 ]   f''16[ e''16 f''16 d''16 ] |
      c''8[ d''16 c''16 ]   b'8[ g'8 ] |
      a'16[ gis'16 a'16 c''16 ]   b'16[ ais'16 b'16 d''16 ] |
}

melodysectionab =  {
      c''8[ e''8 ]   c''16[ d''16 e''16 f''16 ] |
}

melodysectionac =  {
      c''8[ e''8 c''8 ] r8 |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionba =  {
    a''8->\ff r8 a''8-> r8  |
      a''16[ gis''16 a''16 b''16 ]   c'''8[ a'' ] |
    g''8-> r8 g''8-> r8  |
      c'''8[ g''8 e''8 c''8 ] |
    f''8-> r8 f''8-> r8 |
      f''16[ e''16 f''16 g''16 ]   a''8[ f''8 ] |
      e''8[ g''8 ]   d''8[ g''8 ] |
}

melodysectionbb =  {
      c''8[ c'''8 b''8 bes''8 ] |
}

melodysectionbc =  {
    c''8 r8 c'''8->\sfz r8 |
}

melodysectionb =  {
    \repeat volta 2 { \melodysectionba }
    \alternative { { \melodysectionbb } { \melodysectionbc } }
}

melody =  {
    \key c \major
    \time 2/4
    \melodysectiona
    \melodysectionb
}

melodymidi =  {
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    c8\3 r8 d8\3 r8 |
    e8\3 r8 d8\3 r8 |
    c8\3 r8 b,8\3 r8 |
    c8\3 r8 d8\3 r8 |
    e8\3 r8 d8\3 r8 |
    c8\3 r8 e8\2 r8 |
    f8\2 r8 g8\2 r8 |
}

basslinesectionab =  {
    c8\3 g,8\4 c8\3 r8 |
}

basslinesectionac =  {
    c8\3 g,8\4 c8\3 r8 |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionba =  {
    f8\2 r8 c8\3 r8 |
    f8\2 r8 f8\2 r8 |
    e8\2 r8 c8\3 r8 |
    c8\3 [ e8\2 g8\2 c'8\1 ] |
    d8\3 r8 g,8\4 r8 |
    d8\3 r8 g8\2 r8 |
    c8\3 r8 g,8\4 r8 |
}

basslinesectionbb =  {
    c8\3 [ c8\3 d8\3 e8\2 ] |
}

basslinesectionbc =  {
    c8\3 r8 c8\3-> r8 |
}

basslinesectionb =  {
    \repeat volta 2 { \basslinesectionba }
    \alternative { { \basslinesectionbb } { \basslinesectionbc } }
}

bassline =  {
    \key c \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
}

basslinemidi =  {
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
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
}

guitarnotessectionab =  {
    s2 |
}

guitarnotessectionac =  {
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
}

guitarnotessectionbb =  {
    s2 |
}

guitarnotessectionbc =  {
    s2 |
}

guitarnotessectionb =  {
    \repeat volta 2 { \guitarnotessectionba }
    \alternative { { \guitarnotessectionbb } { \guitarnotessectionbc } }
}

guitarnotes =  {
    \key c \major
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi =  {
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    c4 g4:7 | c4 g4:7 | c4 g4:7 | c4 g4:7 |
    c4 g4:7 | c2 | d4:min g4:7 |
}

chordletterssectionab = \chordmode {
    c2 |
}

chordletterssectionac = \chordmode {
    \chordChangesOff c2 \chordChangesOn |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionba = \chordmode {
    f2 | f2 | c2 | c2 |
    g2:7 | g2:7 | c4 g4:7 |
}

chordletterssectionbb = \chordmode {
    c4 g8:7 c8:7 |
}

chordletterssectionbc = \chordmode {
    c2 |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
    \alternative { { \chordletterssectionbb } { \chordletterssectionbc } }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
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

clarinetsectionaa =  {
    a''8\mf r8   g''16[ fis''16 g''16 e''16 ] |
      d''8[ d''8 cis''8 a'8 ] |
      d''8[ d''8 e''8 e''8 ] |
      fis''8[ fis''8 g''8 e''8 ] |
      a''8[ b''16 a''16 ]   g''16[ fis''16 g''16 e''16 ] |
      d''8[ e''16 d''16 ]   cis''8[ a'8 ] |
      b'16[ ais'16 b'16 d''16 ]   cis''16[ bis'16 cis''16 e''16 ] |
}

clarinetsectionab =  {
      d''8[ fis''8 ]   d''16[( e''16) fis''16( g''16) ] |
}

clarinetsectionac =  {
      d''8[ fis''8 d''8 ] r8
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionba =  {
    b''8-^ r8 b''8-^ r8 |
      b''16[ ais''16 b''16 cis'''16 ]   d'''8[ b''8 ] |
    a''8-^ r8 a''8-^ r8 |
      d'''8[ a''8 fis''8 d''8 ] |
    g''8-^ r8 g''8-^ r8 |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ] |
      fis''8[ a''8 e''8 a''8 ] |
}

clarinetsectionbb =  {
      d''8[ d'''8 cis'''8 c'''8 ] |
}

clarinetsectionbc =  {
    d''8 r8 d'''8-^ r8 |
}

clarinetsectionb =  {
    \repeat volta 2 { \clarinetsectionba }
    \alternative { { \clarinetsectionbb } { \clarinetsectionbc } }
}

clarinetnotes =  {
    \key d \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi =  {
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa =  {
    fis''8\mf r8   fis''8[ a'16 g'16 ] |
      fis'8[ fis'8 e'8 g'8 ] |
      fis'8[ fis'8 a'8 cis''8 ] |
      d''8[ d''8 e''8 a'8 ] |
      fis''8[ g''16 e''16 ] ] e''8 a'8 ] |
      fis'8[ fis'16 fis'16 ]   fis'8[ fis'8 ] |
      g'16[ fis'16 g'16 a'16 ]   a'8[ g'8 ] |
}

tenorsaxsectionab =  {
      fis'8[ a'8 ] fis'8 r8 |
}

tenorsaxsectionac =  {
      fis'8[ a'8 ] fis'8 r8 |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionba =  {
    g''8-^ r8 g''8-^ r8 |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ]|
    fis''8-^ r8 fis''8-^ r8 |
      fis''8[ fis''8 d''8 a'8 ] |
    e''8-^ r8 e''8-^ r8 |
      e''16[ dis''16 e''16 fis''16 ]   g''8[ e''8 ] |
      d''8[ d''8 ]   cis''16[ b'16 a'16 g'16 ] |
}

tenorsaxsectionbb =  {
      fis'8[ d''8 e''8 fis''8 ] |
}

tenorsaxsectionbc =  {
    fis'8 r8 fis''8-^ r8 |
}

tenorsaxsectionb =  {
    \repeat volta 2 { \tenorsaxsectionba }
    \alternative { { \tenorsaxsectionbb } { \tenorsaxsectionbc } }
}

tenorsaxnotes =  {
    \key d \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorsaxnotesmidi =  {
    \time 2/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectionaa =  {
    e''8\mf r8   d''16[ cis''16 d''16 b'16 ] |
      a'8[ a'8 gis'8 e'8 ] |
      a'8[ a'8 b'8 b'8 ] |
      cis''8[ cis''8 d''8 b'8 ] |
      e''8[ fis''16 e''16 ]   d''16[ cis''16 d''16 b'16 ] |
      a'8[ b'16 a'16 ]   gis'8[ e'8 ] |
      fis'16[( eis'16 fis'16 a'16) ]   gis'16[( fisis'16 gis'16 b'16) ] |
}

altosaxsectionab =  {
      a'8[ cis''8 ]   a'16[ b'16 cis''16 d''16 ] |
}

altosaxsectionac =  {
      a'8[ cis''8 a'8 ] r8 |
}

altosaxsectiona =  {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionba =  {
    fis''8->\ff r8 fis''8-> r8 |
      fis''16[( eis''16 fis''16 gis''16) ]   a''8[ fis''8 ] |
    e''8-> r8 e''8-> r8 |
      a''16[( gis''16 fis''16 e''16 ]   d''16[ cis''16 b'16 a'16) ] |
    d''8-> r8 d''8-> r8 |
      d''16[ cis''16 d''16 e''16 ]   fis''8[ d''8 ] |
      cis''8[ e''8 b'8 e''8 ] |
}

altosaxsectionbb =  {
      a'8[ a''8 gis''8 g''8 ] |
}

altosaxsectionbc =  {
    a'8 r8 a''8-> r8 |
}

altosaxsectionb =  {
    \repeat volta 2 { \altosaxsectionba }
    \alternative { { \altosaxsectionbb } { \altosaxsectionbc } }
}

altosaxnotes =  {
    \key a \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
}

altosaxnotesmidi =  {
    \key a \major
    \time 2/4
    \preintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa =  {
    a''8\mf r8   g''16[( fis''16) g''16( fis''16) ] |
      d''8[ d''8 cis''8 a'8 ] |
      d''8[ d''8 e''8 e''8 ] |
      fis''8[ fis''8 g''8 e''8 ] |
    a''8 r8   g''16[( fis''16) g''16( fis''16) ] |
      d''8[ e''16( d''16) ]   cis''8[ a'8 ] |
      b'16[( ais'16) b'16 d''16 ]   cis''16[( bis'16) cis''16 e''16 ] |
}

trumpetsectionab =  {
      d''8[ fis''8 ]   d''16[( e''16) fis''16( g''16) ] |
}

trumpetsectionac =  {
      d''8[ fis''8 d''8 ] r8
}

trumpetsectiona =  {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionba =  {
    b'8->\ff r8 b'8-> r8 |
      b'16[( ais'16) b'16 cis''16 ]   d''8[ b'8 ] |
    a'8-> r8 a'8-> r8 |
    \acciaccatura { a'16[( b'16 cis''16 ] }
   d''8[) a'8 fis'8 d'8 ] |

    g'8-> r8 g'8-> r8 |
      g'16[( fis'16) g'16( a'16) ]   b'8[ g'8 ] |
      fis'8[ a'8 e'8 a'8 ] |
}

trumpetsectionbb =  {
      d'8[\< fis'8 g'8 a'8\! ] |
}

trumpetsectionbc =  {
    d'8 r8 d''8-> r8 |
}

trumpetsectionb =  {
    \repeat volta 2 { \trumpetsectionba }
    \alternative { { \trumpetsectionbb } { \trumpetsectionbc } }
}

trumpetnotes =  {
    \key d \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi =  {
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa =  {
      c8[\mf r8 d8 ] r8 |
      e8[ r8 d8 ] r8 |
      c8[ c8 ] b,8 b,8 ] |
      c8[ c8 ]   d8[ d8 ] |

      e8[ r8 d8 ] r8 |
      c8[ r8 e8 ] r8 |
      f8[ f8 ]   g8[ g8 ] |
}

trombonesectionab =  {
      c'8[  g8 ]   c'16[ b16 c'16 d'16 ] |
}

trombonesectionac =  {
      c'8[ g8 c'8 ] r8 |
}

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionba =  {
      f8[\ff-^ r8 f8-^ ] r8 |
      f8[ f8 ] f4 |
      e8[-^ r8 e8-^ ] r8 |
      c8[ e8 g8 c'8 ] |

      d8[-^ r8 d8-^ ] r8 |
      d8[ d8 ] g4 |
      c8[ c8 ]   g,8[ g,8 ] |
}

trombonesectionbb =  {
      c8[\< c8 d8 e8\! ] |
}

trombonesectionbc =  {
    c8 r8 c8\sf-^ r8 |
}

trombonesectionb =  {
    \repeat volta 2 { \trombonesectionba }
    \alternative { { \trombonesectionbb } { \trombonesectionbc } }
}

trombonenotes =  {
    \key c \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
}

trombonenotesmidi =  {
    \time 2/4
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectionaa =  {
    g''8\upbow\mf r8   f''16[\upbow( e''16) f''16( d''16) ] |
      c''8[ c''8 ]   b'8[ g'8 ] |
      c''8[ c''8 ]   d''8[ d''8 ] |
      e''8[ e''8 ]   f''8[ d''8 ] |
      g''8[ a''16( g''16) ]   f''16[( e''16) f''16( d''16) ] |
      c''8[ d''16( c''16) ]   b'8[ g'8 ] |
      a'16[( gis'16) a'16( c''16) ]   b'16[( ais'16) b'16( d''16) ] |
}

violinsectionab =  {
      c''8[ e''8 ]   c''16[( d''16) e''16( f''16) ] |
}

violinsectionac =  {
      c''8[ e''8 c''8 ] r8 |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionba =  {
    a''8->\ff r8 a''8-> r8  |
      a''16[( gis''16) a''16( b''16) ]   c'''8[ a'' ] |
    g''8-> r8 g''8-> r8  |
      c'''8[ g''8 e''8 c''8 ] |
    f''8-> r8 f''8-> r8 |
      f''16[( e''16) f''16( g''16) ]   a''8[ f''8 ] |
      e''8[ g''8 ]   d''8[ g''8 ] |
}

violinsectionbb =  {
      c''8[\< c'''8 b''8 bes''8\! ] |
}

violinsectionbc =  {
    c''8 r8 c'''8->\sfz r8 |
}

violinsectionb =  {
    \repeat volta 2 { \violinsectionba }
    \alternative { { \violinsectionbb } { \violinsectionbc } }
}

violinnotes =  {
    \key c \major
    \time 2/4
    \violinsectiona
    \violinsectionb
}

violinnotesmidi =  {
    \time 2/4
    \preintro
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb
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
    g''8-5\mf r8   f''16[-4 e''16-3 f''16 d''16 ] |
      c''8[-1 c''8-2 ]   b'8[-2 g'8-1 ] |
      c''8[-3 c''8-2 ]   d''8[ d''8 ] |
      e''8[ e''8 ]   f''8[ d''8-1 ] |
      g''8[-4 a''16 g''16 ]   f''16[ e''16 f''16 d''16-1 ] |
      c''8[-3 d''16 c''16 ]   b'8[ g'8 ] |
      a'16[-3 gis'16-2 a'16-1 c''16-4 ]   b'16[-3 ais'16-2 b'16-1 d''16-4 ] |
}

pianorightuppersectionab =  {
      c''8[-3 e''8-5 ]   c''16[-1 d''16-2 e''16 f''16 ] |
}

pianorightuppersectionac =  {
      c''8[ < g' e'' >8 c''8 ] r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 { \pianorightuppersectionaa }
    \alternative { { \pianorightuppersectionab } { \pianorightuppersectionac } }
}

pianorightuppersectionba =  {
    < c''\ff f'' a'' >8-> r8 < c'' f'' a'' >8-> r8  |
      a''16[-3 gis''16 a''16 b''16 ]   c'''8[ a'' ] |
    < c'' e'' g'' >8-> r8 < c'' e'' g'' >8-> r8  |
      c'''8[-5 g''8 e''8 c''8 ] |
    < b' d'' f'' >8-> r8 < b' d'' f'' >8-> r8 |
      f''16[-3 e''16-2 f''16-3 g''16-4 ]   a''8[ < b' f'' >8 ] |
    < c'' e'' >8 [ g''8 ] < b' d'' >8 [ g''8 ] |
}

pianorightuppersectionbb =  {
      c''8[\< < e'' c''' >8 < f'' b'' >8 < g'' bes'' >8 ]\! |
}

pianorightuppersectionbc =  {
    c''8 r8 < e''\sfz g'' c''' >8-> r8 |
}

pianorightuppersectionb =  {
    \repeat volta 2 { \pianorightuppersectionba }
    \alternative { { \pianorightuppersectionbb } { \pianorightuppersectionbc } }
}

pianoleftuppersectionaa =  {
      c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
      e8[ < g c' >8 ]   d8[ < f g b >8 ] |
      c8[ < e g >8 ]   b,8[ < d g >8 ] |
      c8[ < e g c' >8 ]   d8[ < f g b >8 ] |
      e8[ < g c' >8 ]   d8[ < f g b >8 ] |
      c8[ < g c' >8 ]   e8[ < g c' >8 ] |
      f8[ < a d' >8 ]   g8[ < b f' >8 ] |
}

pianoleftuppersectionab =  {
    < c'-2 e'-1 > 8 g8[ < c' e' >8 ] r8 |
}

pianoleftuppersectionac =  {
    < c' e' > 8 g8[ < c' e' >8 ] r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 { \pianoleftuppersectionaa }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionba =  {
      f8[ < a c' >8 ]   c8[ < a c' >8 ] |
      f8[ < a c' >8 ]   f8[ < a c' >8 ] |
      e8[ < g c' >8 ]   c8[ < e g c' >8 ] |
      c8[ e8 g8 c'8 ] |
      d8[ < f g b >8 ]   g,8[ < f g b >8 ] |
      d8[ < f g b >8 ]   g,8[ g8 ] |
      c8[-3 g8-1 ]   g,8[-5 g8-1 ] |
}

pianoleftuppersectionbb =  {
      c8[ c8 d8 e8 ] |
}

pianoleftuppersectionbc =  {
    c8-3 r8 < c, c >8-> r8 |
}

pianoleftuppersectionb =  {
    \repeat volta 2 { \pianoleftuppersectionba }
    \alternative { { \pianoleftuppersectionbb } { \pianoleftuppersectionbc } }
}

pianorightuppernotes =  {
    \key c \major
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \key c \major
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \time 2/4
    \preintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianoleftnotesmidi =  {
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

drumshighsectionaa = \drummode {
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
}

drumshighsectionac = \drummode {
    s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
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
}

drumshighsectionbb = \drummode {
    s2 |
}

drumshighsectionbc = \drummode {
    s2 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 { \drumshighsectionba }
    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
}

drumslowsectionaa = \drummode {
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
}

drumslowsectionac = \drummode {
    s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
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
}

drumslowsectionbb = \drummode {
    s2 |
}

drumslowsectionbc = \drummode {
    s2 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 { \drumslowsectionba }
    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    c4 g4:7 |
    c4 g4:7 |
    c4 g4:7 |
    c4 g4:7 |
    c4 g4:7 |
    c2 |
}

previewnotes = {
    \key c \major
    \time 2/4
    g''8 r8 f''16 e''16 f''16 d''16 |
    c''8 c''8 b'8 g'8 |
    c''8 c''8 d''8 d''8 |
    e''8 e''8 f''8 d''8 |
    g''8 a''16 g''16 f''16 e''16 f''16 d''16 |
    c''8 d''16 c''16 b'8 g'8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

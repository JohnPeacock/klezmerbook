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

bandmNV =  {
    \time 2/4
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    }
    \breakA
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix
        s2 | \breakBsev \markDC \positionDC s2 |
    }
    \breakB
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 |
    \bar "||" \break
    \breakC
    \markFC \positionFC
    s2 | \breakFCone s2 | \breakFCtwo s2 | \breakFCtre s2 |
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomesectionaa =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
}

metronomesectionba =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionb =  {
    \repeat volta 2 { \metronomesectionba }
}

metronomesectionc =  {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronomecoda =  {
    s2 | s2 | s2 | s2 |
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
    \tempo 4 = 110
    \metronomesectionc
    \tempo 4 = 100
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  {
    \key g \major
    g''8\f-> r8   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16) b'16( a'16) ]   b'8[ g'8 ] |

      g''8[-> g''8-> ]   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16 b'16 a'16) ] g'8 r8 |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
}

melodysectionba =  {
    \key c \major
      g'8[ c''8 ] e''4 |
      d''16[( e''16) f''16( d''16) ] e''8 r8 |
      g''8[ g''8 ]   a''8[ a''8 ] |
      g''16[( f''16) e''16( d''16) ]   e''8[ c''8 ] |
      g'8[ c''8 ] e''4 |
      d''16[( e''16) f''16( d''16) ] e''8 r8 |
      g''8[ g''8 ]   a''8[ a''8 ] |
      g''16[ f''16 e''16 d''16 ] c''8 r8 |
}

melodysectionb =  {
    \repeat volta 2 { \melodysectionba }
}

melodysectionc =  {
    \key g \major
    g''8-> r8   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16) b'16( a'16) ]   b'8[ g'8 ] |

    g''8-> g''8-> ]   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16 b'16 a'16) ] g'8 r8 |
}

melodycoda =  {
    g''4\f g''4 |
    g''4 g''4 |
    g''2\ff ~ |
    g''4 r4 |
}

melody =  {
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodycoda
}

melodymidi =  {
    \key g \major
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    \key g \major
      g8\2 [\f d8\3 ] g8\2 [ d8\3 ] |
      fis8 [ d8\3 ] g8\2 [ d8\3 ] |
      g8\2 [ d8\3 ] g8\2 [ g8\2 ] |
      d8\3 [ fis8\2 ] g8\2 r8 |
      g8\2 [ d8\3 ] g8\2 [ d8\3 ] |
      fis8 [ d8\3 ] g8\2 [ d8\3 ] |
      g8\2 [ d8\3 ] g8\2 [ g8\2 ] |
      d8\3 [ fis8\2 ] g8\2 r8 |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
}

basslinesectionba =  {
    \key c \major
      c8\3 [ g,8\4 ] c8\3 [ g,8\4 ] |
      b,8\2 [ g,8\4 ] c8\3 [ g,8\4 ] |
      c8\3 [ g,8\4 ] c8\3 [ c8\3 ] |
      g,8\4 [ b,8\2 ] c8\3 r8 |
      c8\3 [ g,8\4 ] c8\3 [ g,8\4 ] |
      b,8\2 [ g,8\4 ] c8\3 [ g,8\4 ] |
      c8\3 [ g,8\4 ] c8\3 [ c8\3 ] |
      g,8\4 [ g,8\4 ] c8\3 r8 |
}

basslinesectionb =  {
    \repeat volta 2 { \basslinesectionba }
}

basslinesectionc =  {
    \key g \major
      g8\2 [ d8\3 ] g8\2 [ d8\3 ] |
      fis8 [ d8\3 ] g8\2 [ d8\3 ] |
      g8\2 [ d8\3 ] g8\2 [ g8\2 ] |
      d8\3 [ fis8\2 ] g8\2 r8 |
      g8\2 [ d8\3 ] g8\2 [ d8\3 ] |
      fis8 [ d8\3 ] g8\2 [ d8\3 ] |
      g8\2 [ d8\3 ] g8\2 [ g8\2 ] |
      d8\3 [ d8\3 g,8\4 ] r8 |
}

basslinecoda =  {
    g4\2 g4\2 |
    d4\3 b,4\4 |
    g,2\4\ff ~ |
    g,4\4 r4 |
}

bassline =  {
    \key g \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinecoda
}

basslinemidi =  {
    \key g \major
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa =  {
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

guitarnotessectiona =  {
    \repeat volta 2 { \guitarnotessectionaa }
}

guitarnotessectionba =  {
    \key c \major
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionb =  {
    \repeat volta 2 { \guitarnotessectionba }
}

guitarnotessectionc =  {
    \key g \major
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

guitarnotes =  {
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
}

guitarnotesmidi =  {
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    g2 | d4:7 g4 | g2 | d4:7 g4 |
    g2 | d4:7 g4 | g2 | d4:7 g4 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
}

chordletterssectionba = \chordmode {
    c2 | g4:7 c4 | c2 | g4:7 c4 |
    c2 | g4:7 c4 | c2 | g4:7 c4 |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 { \chordletterssectionba }
}

chordletterssectionc = \chordmode {
    g2 | d4:7 g4 | g2 | d4:7 g4 |
    g2 | d4:7 g4 | g2 | d4:7 g4 |
}

chordletterscoda = \chordmode {
    \chordChangesOff g2 \chordChangesOn | g2 | g2 | g2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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

clarinetsectionaa =  {
    \key a \major
    a''8-^\ff r8   cis''8[ e''8 ] |
      d''16[ cis''16 d''16 b'16 ]   cis''8[ a'8 ] |
      e'8[ a'8 cis''8 e''8 ] |
      e''16[ d''16 cis''16 b'16 ]   cis''8[ a'8 ] |
      a''8[-^ a''8-^ cis''8 e''8 ] |
      d''16[ cis''16 d''16 b'16 ]   cis''8[ a'8 ] |
      e'8[ a'8 cis''8 e''8 ] |
      e''16[ d''16 cis''16 b'16 ] a'8 r8 |
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
}

clarinetsectionba =  {
    \key d \major
      a'8[ d''8 ] fis''4 |
      e''16[ fis''16 g''16 e''16 ] fis''8 r8 |
      a''8[ a''8 b''8 b''8 ] |
      a''16[ g''16 fis''16 e''16 ]   fis''8[ d''8 ] |
      a'8[ d''8 ] fis''4 |
      e''16[ fis''16 g''16 e''16 ] fis''8 r8 |
      a''8[ a''8 b''8 b''8 ] |
      a''16[ g''16 fis''16 e''16 ] d''8 r8 |
}

clarinetsectionb =  {
    \repeat volta 2 { \clarinetsectionba }
}

clarinetsectionc =  {
    \key a \major
    a''8-^ r8   cis''8[ e''8 ] |
    d''16[ cis''16 d''16 b'16 ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[ d''16 cis''16 b'16 ]   cis''8[ a'8 ] |

    a''8[-^ a''8-^ cis''8 e''8 ] |
    d''16[ cis''16 d''16 b'16 ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[ d''16 cis''16 b'16 ] a'8 r8 |
}

clarinetcoda =  {
    a''4\f\< a''4 |
    a''4 a''4\! |
    a''2\ff ~ |
    a''4 r4 |
}

clarinetnotes =  {
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetcoda
}

clarinetnotesmidi =  {
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa =  {
    \key a \major
    cis''8-^\ff r8   a'8[ a'8 ] |
    gis'8[ gis'8 ]   a'8[ e'8 ] |
    cis'8[ e'8 a'8 a'8 ] |
    gis'8[ gis'16 gis'16 ]   a'8[ e'8 ] |

    cis''8[-^ cis''8-^ ]   a'8[ a'8 ] |
    gis'8[ gis'8 ]   a'8[ e'8 ] |
    cis'8[ e'8 a'8 a'8 ] |
    gis'16[ fis'16 e'16 d'16 ] cis'8 r8 |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
}

tenorsaxsectionba =  {
    \key d \major
      fis'8[ a'8 ]   d''8[ a'8 ] |
      cis''16[ d''16 e''16 cis''16 ]   d''8[ a'16 d''16 ]
      fis''8[ fis''8 ]   d''8[ d''8 ] |
      cis''16[ b'16 a'16 cis''16 ]   d''8[ a'8 ] |
      fis'8[ a'8 ]   d''8[ a'8 ] |
      cis''16[ d''16 e''16 cis''16 ]   d''8[ a'16 d''16 ]
      fis''8[ fis''8 ]   d''8[ d''8 ] |
      cis''16[ b'16 a'16 g'16 ] fis'8 r8 |
}

tenorsaxsectionb =  {
    \repeat volta 2 { \tenorsaxsectionba }
}

tenorsaxsectionc =  {
    \key a \major
    cis''8-^\ff r8   a'8[ a'8 ] |
    gis'8[ gis'8 ]   a'8[ e'8 ] |
    cis'8[ e'8 a'8 a'8 ] |
    gis'8[ gis'8 ]   a'8[ e'8 ] |

    cis''8[-^ cis''8-^ ]   a'8[ a'8 ] |
    gis'8[ gis'8 ]   a'8[ e'8 ] |
    cis'8[ e'8 a'8 a'8 ] |
    gis'16[ fis'16 e'16 d'16 ] cis'8 r8 |

    cis''4\f\< e''4 |
    cis''4 e''4\! |
    cis''2\ff ~ |
    cis''4 r4 |
}

tenorsaxnotes =  {
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorsaxnotesmidi =  {
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectionaa =  {
    \key e \major
    e''8->\ff r8   gis'8[ b'8 ] |
    a'16[ gis'16 a'16 fis'16 ]   gis'8[ e'8 ] |
    < b b' > 8 e'8[ gis'8 b'8 ] |
    b'16[ a'16 gis'16 fis'16 ]   gis'8[ e'8 ] |

    e''8[-> e''8-> gis'8 b'8 ] |
    a'16[ gis'16 a'16 fis'16 ]   gis'8[ e'8 ] |
    < b b' > 8 e'8[ gis'8 b'8 ] |
    b'16[ a'16 gis'16 fis'16 ] e'8 r8 |
}

altosaxsectiona =  {
    \repeat volta 2 { \altosaxsectionaa }
}

altosaxsectionba =  {
    \key a \major
      e'8[ a'8 ] cis''4 |
      b'16[ cis''16 d''16 b'16 ] cis''8 r8 |
      e''8[ e''8 fis''8 fis''8 ] |
      e''16[ d''16 cis''16 b'16 ]   cis''8[ a'8 ] |
      e'8[ a'8 ] cis''4 |
      b'16[ cis''16 d''16 b'16 ] cis''8 r8 |
      e''8[ e''8 fis''8 fis''8 ] |
      e''16[ d''16 cis''16 b'16 ] a'8 r8 |
}

altosaxsectionb =  {
    \repeat volta 2 { \altosaxsectionba }
}

altosaxsectionc =  {
    \key e \major
    e''8-> r8   gis'8[ b'8 ] |
    a'16[ gis'16 a'16 fis'16 ]   gis'8[ e'8 ] |
    < b b' > 8 e'8[ gis'8 b'8 ] |
    b'16[ a'16 gis'16 fis'16 ]   gis'8[ e'8 ] |

    e''8[-> e''8-> gis'8 b'8 ] |
    a'16[ gis'16 a'16 fis'16 ]   gis'8[ e'8 ] |
    < b b' > 8 e'8[ gis'8 b'8 ] |
    b'16[ a'16 gis'16 fis'16 ] e'8 r8 |

    e''4\ff e''4 |
    e''4 e''4 |
    e''2 ~ |
    e''4 r4 |
}

altosaxnotes =  {
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altosaxnotesmidi =  {
    \preintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa =  {
    \key a \major
    < cis'' a'' >8->\ff r8   cis''8[ e''8 ] |
    d''16[( cis''16) d''16( b'16) ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[( d''16) cis''16( b'16) ]   cis''8[ a'8 ] |

    < cis'' a'' >8[-> < cis'' a'' >8-> cis''8 e''8 ] |
    d''16[( cis''16) d''16( b'16) ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[( d''16 cis''16 b'16) ] a'8 r8 |
}

trumpetsectiona =  {
    \repeat volta 2 { \trumpetsectionaa }
}

trumpetsectionba =  {
    \key d \major
    a'8[ d''8 ] fis''4 |
    e''16[( fis''16) g''16( e''16) ] fis''8 r8 |
    a'8[ a'8 b'8 b'8 ] |
    a'16[( g'16 fis'16 e'16) ]   fis'8[ d'8 ] |

    a'8[ d''8 ] fis''4 |
    e''16[( fis''16) g''16( e''16) ] fis''8 r8 |
    a'8[ a'8 b'8 b'8 ] |
    a'16[( g'16 fis'16 e'16 ] d'8) r8 |
}

trumpetsectionb =  {
    \repeat volta 2 { \trumpetsectionba }
}

trumpetsectionc =  {
    \key a \major
    < cis'' a'' >8-> r8   cis''8[ e''8 ] |
    d''16[( cis''16) d''16( b'16) ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[( d''16) cis''16( b'16) ]   cis''8[ a'8 ] |

    < cis'' a'' >8[-> < cis'' a'' >8-> cis''8 e''8 ] |
    d''16[( cis''16) d''16( b'16) ]   cis''8[ a'8 ] |
    e'8[ a'8 cis''8 e''8 ] |
    e''16[( d''16) cis''16( b'16) ] a'8 r8 |
}

trumpetcoda =  {
    < a' a'' >4\f < a' a'' >4 |
    < a' a'' >4 < a' a'' >4 |
    < a' a'' >2\ff ~ |
    < a' a'' >4 r4 |
}

trumpetnotes =  {
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetcoda
}

trumpetnotesmidi =  {
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa =  {
    \key g \major
    g4\f   g8[ g8 ] |
    fis8[ r8 g8 ] r8 |
    g8[ d8 b,8 g,8 ] |
    d8[ r8 g8 ] r8 |

    g8[-> g8-> ] g4-> |
    fis8[ r8 g8 ] r8 |
    g8[ d8 b,8 g,8 ] |
    d8[ d8 g8 ] r8 |
}

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa }
}

trombonesectionba =  {
    \key c \major
      c8[ r8 c8 ] r8 |
      b,8[ r8 c8 ] r8 |
      c8[ c8 ]   e8[ c8 ] |
    g,4( c8) r8 |

      c8[ r8 c8 ] r8 |
      b,8[ r8 c8 ] r8 |
      c8[ c8 e8 c8 ] |
      b,8[ b,8 c8 ] r8 |
}

trombonesectionb =  {
    \repeat volta 2 { \trombonesectionba }
}

trombonesectionc =  {
    \key g \major
      g8[ r8 g8 ] r8 |
      d8[ r8 g8 ] r8 |
      g8[ d8 b,8 g,8 ] |
      d8[ r8 g8 ] r8 |

      g8[-> g8-> ] g4-> |
      d8[ r8 g8 ] r8 |
      g8[ d8 b,8 g,8 ] |
      d8[ d8 g8 ] r8 |
}

trombonecoda =  {
    g4\< g4 |
    d4 b,4\! |
    g,2\ff ~ |
    g,4 r4 |
}

trombonenotes =  {
    \key g \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb

    \trombonesectionc

    \trombonecoda
}

trombonenotesmidi =  {
    \time 2/4
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
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

violinsectionaa =  {
    \key g \major
    < b' g'' >8->\f r8   b'8[\upbow d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16) b'16( a'16) ]   b'8[ g'8 ] |

    < b' g'' >8[->\upbow < b' g'' >8-> ]   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16 b'16 a'16) ] g'8 r8 |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
}

violinsectionba =  {
    \key c \major
      g'8[\upbow c''8 ] e''4 |
      d''16[( e''16) f''16( d''16) ] e''8 r8 |
      g''8[ g''8 ]   a''8[ a''8 ] |
      g''16[( f''16) e''16( d''16) ]   e''8[ c''8 ] |
      g'8[ c''8 ] e''4 |
      d''16[( e''16) f''16( d''16) ] e''8 r8 |
      g''8[ g''8 ]   a''8[ a''8 ] |
      g''16[ f''16 e''16 d''16 ] c''8 r8 |
}

violinsectionb =  {
    \repeat volta 2 { \violinsectionba }
}

violinsectionc =  {
    \key g \major
    g''8->\upbow r8   b'8[\upbow d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16) b'16( a'16) ]   b'8[ g'8 ] |

    g''8->\upbow g''8-> ]   b'8[ d''8 ] |
      c''16[( b'16) c''16( a'16) ]   b'8[ g'8 ] |
      d'8[ g'8 b'8 d''8 ] |
      d''16[( c''16 b'16 a'16) ] g'8 r8 |

    < b' g'' >4\upbow\f < b' g'' >4 |
    < b' g'' >4 < b' g'' >4 |
    < b' g'' >2\ff ~ |
    < b' g'' >4 r4 |
}

violinnotes =  {
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

violinnotesmidi =  {
    \preintro
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb
    \violinsectionc
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
    \key g \major
    < b' g'' >8->\f r8   b'8[-2 d''8-4 ] |
      c''16[-3 b'16 c''16 a'16-1 ]   b'8[-4 g'8-2 ] |
      d'8[-1 g'8-2 b'8-4 d''8-5 ] |
      d''16[ c''16 b'16 a'16 ]   b'8[-3 g'8-1 ] |

    < b' g'' >8[-> < b' g'' >8-> ]   b'8[-2 d''8-4 ] |
      c''16[ b'16 c''16 a'16 ]   b'8[-4 g'8-2 ] |
      d'8[-1 g'8-2 b'8-4 d''8-5 ] |
      d''16[ c''16 b'16 a'16 ] g'8 r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 { \pianorightuppersectionaa }
}

pianorightuppersectionba =  {
    \key c \major
      g'8[-1 c''8-3 ] e''4-5 |
      d''16[-2 e''16 f''16 d''16 ] e''8-3 r8 |
    < e''-2 g''-4 >8[ < e'' g'' >8 ] < c''-1 a''-5 >8[ < c'' a'' >8 ] |
      g''16[-4 f''16 e''16 d''16 ]   e''8[-4 c''8-2 ] |
      g'8[-1 c''8-3 ] e''4-5 |
      d''16[-2 e''16 f''16 d''16 ] e''8-3 r8 |
    < e''-2 g''-4 >8[ < e'' g'' >8 ] < c''-1 a''-5 >8[ < c'' a'' >8 ] |
      g''16[-4 f''16 e''16 d''16 ] c''8 r8 |
}

pianorightuppersectionb =  {
    \repeat volta 2 { \pianorightuppersectionba }
}

pianorightuppersectionc =  {
    \key g \major
    < b' g'' >8->\f r8   b'8[-2 d''8-4 ] |
      c''16[-3 b'16 c''16 a'16-1 ]   b'8[-4 g'8-2 ] |
      d'8[-1 g'8-2 b'8-4 d''8-5 ] |
      d''16[ c''16 b'16 a'16 ]   b'8[-3 g'8-1 ] |

    < b' g'' >8[-> < b' g'' >8-> ]   b'8[-2 d''8-4 ] |
      c''16[-3 b'16 c''16 a'16-1 ]   b'8[-4 g'8-2 ] |
      d'8[-1 g'8-2 b'8-4 d''8-5 ] |
      d''16[ c''16 b'16 a'16 ] g'8 r8 |

    < b' d'' g'' >4\< < b' d'' g'' >4 |
    < b' d'' g'' >4 < b' d'' g'' >4\! |
    < b' d'' g'' >2\ff ~ |
    < b' d'' g'' >4 r4 |
}

pianoleftuppersectionaa =  {
    \key g \major
      g8[ < b d' >8 ]   g8[ < b d' >8 ] |
      fis8[ < a c' d' >8 ]   g8[ < b d' >8 ] |
      g8[ < b d' >8 ]   g8[ < b d' >8 ] |
      d8[ < fis c' >8 ]   g8[ < b d' >8 ] |
      g8[ < b d' >8 ]   g8[ < b d' >8 ] |
      fis8[ < a c' d' >8 ]   g8[ < b d' >8 ] |
      g8[ < b d' >8 ]   g8[ < b d' >8 ] |
    < fis-5 c'-2 d'-1 >8[ < fis c' d' >8 < g b d' >8 ] r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 { \pianoleftuppersectionaa }
}

pianoleftuppersectionba =  {
    \key c \major
      c8[ < e g c' >8 ]   c8[ < e g c' >8 ] |
      b,8[ < d g >8 ]   c8[ < e g c' >8 ] |
      c8[ < e g c' >8 ]   c8[ < e g c' >8 ] |
      g,8[ < b, f >8 ]   c8[ < e g c' >8 ] |
      c8[ < e g c' >8 ]   c8[ < e g c' >8 ] |
      b,8[ < d g >8 ]   c8[ < e g c' >8 ] |
      c8[ < e g c' >8 ]   c8[ < e g c' >8 ] |
    < b,-5 f-2 g-1 >8[ < b, f g >8 ] < c e g >8 r8 |
}

pianoleftuppersectionb =  {
    \repeat volta 2 { \pianoleftuppersectionba }
}

pianoleftuppersectionc =  {
    \key g \major
    g8[ < b d' >8 ]   g8[ < b d' >8 ] |
    fis8[ < a c' d' >8 ]   g8[ < b d' >8 ] |
    g8[ < b d' >8 ]   g8[ < b d' >8 ] |
    d8[ < fis c' >8 ]   g8[ < b d' >8 ] |

    g8[ < b d' >8 ]   g8[ < b d' >8 ] |
    fis8[ < a c' d' >8 ]   g8[ < b d' >8 ] |
    g8[ < b d' >8 ]   g8[ < b d' >8 ] |
    < d-5 fis-2 c'-1 >8[ < d fis c' >8 ] < g b >8 r8 |

    < g, g >4 < g, g >4 |
    < d, d >4 < b,, b, >4 |
    < g,, g, >2 ~ |
    < g,, g, >4 r4 |
}

pianorightuppernotes =  {
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
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
    \pianorightuppersectionc
}

pianoleftnotesmidi =  {
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
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
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
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
}

drumshighsectionb = \drummode {
    \repeat volta 2 { \drumshighsectionba }
}

drumshighsectionc = \drummode {
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

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
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
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
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
}

drumslowsectionb = \drummode {
    \repeat volta 2 { \drumslowsectionba }
}

drumslowsectionc = \drummode {
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

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    g2 | d4:7 g4 | s2 | d4:7 g4 |
}

previewnotes = {
    \time 2/4
    \key g \major
    g''8-> r8   b'8 d''8 |
    c''16 ( b'16 ) c''16 ( a'16 ) b'8 g'8 |
    d'8 g'8 b'8 d''8 |
    d''16 ( c''16 ) b'16 ( a'16 ) b'8 g'8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

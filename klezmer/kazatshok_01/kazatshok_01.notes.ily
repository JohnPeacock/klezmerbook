\version "2.18.2"

bandmNV =  {
    \time 2/4
    \markA \positionA
    \tempo \tempostring
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    \bar "||" \breakA

    \markB \positionB
    \grace { s16 } s2 | \breakBone s2 | \breakBtwo
    s2 | \breakBtre s2 | \breakBfor
    \grace { s16 } s2 | \breakBfiv s2 | \breakBsix
    s2 | \breakBsev s2 |

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

metronomesectiona =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionb =  { \grace { s16 } s2 | s2 | s2 | s2 | \grace { s16 } s2 | s2 | s2 | s2 | }

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

melodysectiona =  {
      g'8[\mf a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ]   d''8[( g''8-.) ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ]   d''8[( g''8-.) ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
}

melodysectionb =  {
    \grace { s16 }   fis''8[( a''8) ]   d''8[( fis''8) ] |
      g''16[( fis''16 g''16 a''16) ]   b''8[ g''8 ] |
      fis''8[( a''8) ]   d''8[( fis''8) ] |
    g''8 r8 g''8 r8 |

    \grace { s16 }   fis''8[( a''8) ]   d''8[( fis''8) ] |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ] |
      fis''8[ a''8 ]   d''8[ e''16 fis''16 ] |
    g''8 r8 g''8-> r8 |
}

melody =  {
    \key g \major
    \time 2/4
    \melodysectiona
    \melodysectionb
}

melodymidi =  {
    \key g \major
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona =  {
    g,4\4\f b,4\3 |
    g,4\4 d4\3 |
    g,4\4 b,4\3 |
    g,4\4 d4\3 |
    g,4\4 b,4\3 |
    g,4\4 d4\3 |
    g,4\4 b,4\3 |
    g,4\4 d4\3 |
}

basslinesectionb =  {
    \grace { s16 } a,4\4 d4\3 |
    g4\2 d4\3 |
    a,4\4 d4\3 |
    g8\2 [ d8\3 b,8\3 g,8\4 ] |

    \grace { s16 } a,4\4 d4\3 |
    g4\2 d4\3 |
    a,4\4 d4\3 |
    g,8\4 r8 g,8\4-> r8 |
}

bassline =  {
    \key g \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
}

basslinemidi =  {
    \key g \major
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectiona =  {
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
    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotes =  {
    \key g \major
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 2/4
    g2 | g2 | g2 | g2 |
    g2 | g2 | g2 | g2 |

    \chordChangesOff \grace { d16:7 } \chordChangesOn d2:7 | g2 | d2:7 | g2 |
    \grace { d16:7 } d2:7 | g2 | d2:7 | g2 |
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
      a'8[\ff b'8 cis''8 d''8 ] |
      e''16[ fis''16 e''16 dis''16 ]   e''8[( a''8) ] |
      a'8[ b'8 cis''8 d''8 ] |
      e''16[ fis''16 e''16 dis''16 ] e''8 r8 |
      a'8[ b'8 cis''8 d''8 ] |
      e''16[ fis''16 e''16 dis''16 ]   e''8[( a''8) ] |
      a'8[ b'8 cis''8 d''8 ] |
      e''16[ fis''16 e''16 dis''16 ] e''8 r8 |
}

clarinetsectionb =  {
    \grace { s16 }   gis''8[( b''8) ]   e''8[( gis''8) ] |
      a''16[ gis''16 a''16 b''16 ]   cis'''8[ a''8 ] |
      gis''8[( b''8) ]   e''8[( gis''8) ] |
    a''8 r8 a''4-> |

    \grace { s16 }   gis''8[( b''8) ]   e''8[( gis''8) ] |
      a''16[ gis''16 a''16 b''16 ]   cis'''8[ a''8 ] |
      gis''8[ b''8 ]   e''8[ fis''16 gis''16 ] |
    a''8 r8 a''8-> r8 |
}

clarinetnotes =  {
    \key a \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
}

cclarinetnotes = \transpose c bes, { \clarinetnotes }

clarinetnotesmidi =  {
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona =  {
      a'8[\ff gis'8 a'8 b'8 ] |
      cis''16[ d''16 cis''16 bis'16 ]   cis''8[( e''8) ] |
      a'8[ gis'8 a'8 b'8 ] |
      cis''16[ d''16 cis''16 bis'16 ]   cis''8[( e'8) ] |
      a'8[ gis'8 a'8 b'8 ] |
      cis''16[ d''16 cis''16 bis'16 ]   cis''8[( e''8) ] |
      a'8[ gis'8 a'8 b'8 ] |
      cis''16[ d''16 cis''16 bis'16 ]   cis''8[( e'8) ] |
}

tenorsaxsectionb =  {
    \grace { s16 }   b'8[ d''8 ]   gis'8[ b'8 ] |
      cis''16[ b'16 cis''16 d''16 ]   e''8[ cis''8 ] |
      b'8[ d''8 ]   gis'8[ b'8 ] |
    cis''8 r8 cis''8-^ r8 |

    \grace { s16 }   b'8[ d''8 ]   gis'8[ b'8 ] |
      cis''16[ b'16 cis''16 d''16 ]   e''8[ cis''8 ] |
      b'8[ d''8 ]   gis'8[ a'16 b'16 ] |
    cis''8 r8 cis''8-^ r8 |
}

tenorsaxnotes =  {
    \key a \major
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

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona =  {
    \repeat unfold 2 {
          e''8[ fis''8 gis''8 a''8 ] |
          b''16[ cis'''16 b''16 ais''16 ]   b''8[ e'''8 ] |
          e''8[ fis''8 gis''8 a''8 ] |
          b''16[( cis'''16 b''16 ais''16 ] b''8) r8 |
    }
}

altosaxsectionb =  {
    \grace { s16 }   dis''8[ fis''8 b'8 dis''8 ] |
      e''16[ dis''16 e''16 fis''16 ]   gis''8[ e''8 ] |
      dis''8[ fis''8 b'8 dis''8 ] |
    e''8 r8 e''8 r8 |

    \grace { s16 }   dis''8[ fis''8 b'8 dis''8 ] |
      e''16[ dis''16 e''16 fis''16 ]   gis''8[ e''8 ] |
      dis''8[ fis''8 ]   b'8[ cis''16 dis''16 ] |
    e''8 r8 e'''8-> r8 |
}

altosaxnotes =  {
    \key e \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
}

altosaxnotesmidi =  {
    \time 2/4
    \preintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona =  {
      bes'8[\mf c''8 d''8 ees''8 ] |
      f''16[ g''16 f''16 e''16 ]   f''8[ d''8 ] |
      bes'8[ c''8 d''8 ees''8 ] |
      f''16[ g''16 f''16 e''16 ] f''8 r8 |
      bes'8[ c''8 d''8 ees''8 ] |
      f''16[ g''16 f''16 e''16 ]   f''8[ d''8 ] |
      bes'8[ c''8 d''8 ees''8 ] |
      f''16[ g''16 f''16 e''16 ] f''8 r8 |
}

trumpetsectionb =  {
    \grace { s16 }   a'8[ c''8 f'8 a'8 ] |
      bes'16[ a'16 bes'16 c''16 ]   d''8[ bes'8 ] |
      a'8[ c''8 f'8 a'8 ] |
    bes'8 r8 bes'8 r8 |

    \grace { s16 }   a'8[ c''8 f'8 a'8 ] |
      bes'16[ a'16 bes'16 c''16 ]   d''8[ bes'8 ] |
      a'8[ c''8 ]   f'8[ g'16 a'16 ] |
    bes'8 r8 bes'8-> r8 |
}

trumpetnotes =  \transpose bes a {
    \key bes \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi =  \transpose bes a {
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona =  {
    g4\ff b4 |
    d'4.( b8) |
    g4 b4 |
    d'4. r8 |

    g4\ff b4 |
    d'4.( b8) |
    g4 b4 |
    d'4. r8 |
}

trombonesectionb =  {
    \acciaccatura { cis16 } d2 |
      g16[ fis16 g16 a16 ]   b8[ g8 ] |
    \acciaccatura { cis16 } d2 |
      g8[ d'8 b8 g8 ] |

    \acciaccatura { cis16 } d2 |
      g16[ fis16 g16 a16 ]   b8[ g8 ] |
    a4   d8[ d8 ] |
    g8 r8 g8-^ r8 |
}

trombonenotes =  {
    \key g \major
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

violinsectiona =  {
      g'8[\ff a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ]   d''8[ g''8-. ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ]   d''8[ g''8-. ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
}

violinsectionb =  {
    \grace { s16 }   fis''8[( a''8) ]   d''8[( fis''8) ] |
      g''16[( fis''16 g''16 a''16) ]   b''8[ g''8 ] |
      fis''8[( a''8) ]   d''8[( fis''8) ] |
    g''8 r8 g''8 r8 |

    \grace { s16 }   fis''8[( a''8) ]   d''8[( fis''8) ] |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ] |
      fis''8[ a''8 ]   d''8[ e''16 fis''16 ] |
    g''8 r8 g''8-> r8 |
}

violinnotes =  {
    \key g \major
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

pianorightuppersectiona =  {
      g'8[\ff a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] < b' d''>8 ( [ g''8-. ) ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] < b' d''>8 ( [ g''8-. ) ] |
      g'8[ a'8 b'8 c''8 ] |
      d''16[ e''16 d''16 cis''16 ] d''8 r8 |
}

pianorightuppersectionb =  {
    \grace { s16 }   fis''8[ a''8 ]   d''8[ fis''8 ] |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ] |
      fis''8[ a''8 ]   d''8[ < c'' fis'' >8 ] |
    < b' g'' >8 r8 < b' g'' >4 |

    \grace { s16 }   fis''8[ a''8 ]   d''8[ fis''8 ] |
      g''16[ fis''16 g''16 a''16 ]   b''8[ g''8 ] |
      fis''8[ a''8 ] << { \stemDown   d''8[ c''8 ] \stemNeutral } \\ { \stemUp   d''8[ e''16 fis''16 ] \stemNeutral } >> |
    < b' g'' >8 r8 < b' d'' g'' >8-> r8 |
}

pianoleftuppersectiona =  {
      g8[\ff < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
}

pianoleftuppersectionb =  {
    \grace { s16 }   a8[ < c' d' >8 ]   d8[ < c' d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      a8[ < c' d' >8 ]   d8[ < c' d' >8 ] |
      g8[ d'8 b8 g8 ] |

    \grace { s16 }   a8[ < c' d' >8 ]   d8[ < c' d' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      a8[ < c' d' >8 ]   d8[ < c' d' >8 ] |
    < g b >8 r8 < g, g >8-> r8 |
}

pianorightuppernotes =  {
    \key g \major
    \time 2/4
%    \stemUp
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianorightlowernotes =  {
}

pianoleftuppernotes =  {
    \key g \major
    \time 2/4
%    \stemUp
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianoleftlowernotes =  {
}

pianorightnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianoleftnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

drumshighsectionb = \drummode {
    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 } s2 |
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
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
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

drumslowsectionb = \drummode {
    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |

    \grace { s16 } s2 |
    s2 |
    s2 |
    s2 |
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
    g2 |
    s2 |
    s2 |
    s2 |
}

previewnotes = {
    \key g \major
    \time 2/4
    g'8 a'8 b'8 c''8 |
    d''16 e''16 d''16 cis''16 d''8 ( g''8-. ) |
    g'8 a'8 b'8 c''8 |
    d''16 e''16 d''16 cis''16 d''8 r8 |
}

tromboneforbassclarinetnotes = { \transpose c c { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

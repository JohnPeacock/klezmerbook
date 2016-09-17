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

% As of LilyPond 2.4.3-1 this was still necessary to prevent an extra clef
% mark from being inserted between the grace notes and the main notes at
% the very beginning of the song.

bandmintro = { \partial 16 s16 | \bar "" }

bandmNV = {
    \time 2/4
    \markA \positionA
    \bandmintro
    % logically this mark should be before the intro.
    % however, this causes huge whitespace
    \tempo \tempostring
    \grace { s8. } s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor
    \grace { s8. } s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 | \bar "||" \breakA
    \markB \positionB
    s2 | \breakBone
    s2 | \breakBtwo
    s2 | \breakBtre
    s2 | \breakBfor
    s2 | \breakBfiv
    s2 | \breakBsix
    s2 | \breakBsev
    s2 |
    \markDC \positionDC
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = { s2 | }

metronomeintro = { s2 | s2 | s2 | s2 | }

metronomesectiona = {
    \grace { s8. } s2 | s2 | s2 | s2 |
    \grace { s8. } s2 | s2 | s2 | s2 |
}

metronomesectionb = { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \metronomesectiona
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 120
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8\mf a''4 a''8 |
      g''8[ g''8 ]   a''8.[ g''16 ] |
      f''8[ e''8 ]   f''8[ g''8 ] |
     a''8 r8 a''4 |
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 a''4 a''8 |
      g''8[ g''8 ]   a''8.[ g''16 ] |
      f''8[ f''8 ]   e''8[ e''8 ] |
    d''8 r8 d''8 r8 |
}

melodysectionb = {
      e''8[ a'8 ]   a''8.[ g''16 ] |
      f''8[ e''16 f''16 ]   g''16[ f''16 e''16 d''16 ] |
      cis''8[ d''16 e''16 ]   a'8[ b'16 cis''16 ] |
      d''16[ cis''16 d''16 e''16 ]   f''8[ d''8 ] |
      e''8[ a'8 ]   a''8.[ g''16 ] |
      f''8[ e''16 f''16 ]   g''16[ f''16 e''16 d''16 ] |
      cis''8[ d''16 e''16 ]   a'8[ b'16 cis''16 ] |
    d''8 r8 d''8-> r8 |
}

melody = {
    \key f \major
    \time 2/4
    \bandmintro
    \melodysectiona
    \melodysectionb
}

melodymidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomesectiona
    \melodysectiona
    \melodysectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectiona = {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

tenorharmonysectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

tenorharmony = {
    \key f \major
    \time 2/4
    \bandmintro
    \tenorharmonysectiona
    \tenorharmonysectionb
}

tenorharmonymidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomesectiona
    \tenorharmonysectiona
    \tenorharmonysectionb

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb

    \tenorharmonysectiona
    \tenorharmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectiona = {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

altoharmonysectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

altoharmony = {
    \key f \major
    \time 2/4
    \bandmintro
    \altoharmonysectiona
    \altoharmonysectionb
}

altoharmonymidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomesectiona
    \altoharmonysectiona
    \altoharmonysectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \altoharmonysectiona
    \altoharmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

countersectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

counter = {
    \key f \major
    \time 2/4
    \bandmintro
    \countersectiona
    \countersectionb
}

countermidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomesectiona
    \countersectiona
    \countersectionb

    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb

    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    d8\3\ff [ f8\3 ] d8\3 [ a8\2 ] |
    bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
    d8\3 [ a8\2 ] a,8\4 [ f8\3 ] |
    d8\3 r8 d4\3-> |
}

basslinesectiona = {
    \grace { s8. } d8\3 [ f8\3 ] d8\3 [ a8\2 ] |
    bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
    d8\3 [ a8\2 ] a,8\4 [ f8\3 ] |
    d8\3 r8 d4\3-> |
    \grace { s8. } d8\3 [ f8\3 ] d8\3 [ a8\2 ] |
    bes,8\4 [ bes8\2 ] a,8\4 [ a8\2 ] |
    d8\3 [ d8\3 ] a,8\4 [ a,8\4 ] |
    d8\3 r8 d8\3 r8 |
}

basslinesectionb = {
    a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
    d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
    a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
    d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
    a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
    d8\3 [ a,8\4 ] d8\3 [ a8\2 ] |
    a,8\4 [ cis8\3 ] a,8\4 [ e8\3 ] |
    d8\3 r8 d8\3-> r8 |
}

bassline = {
    \key f \major
    \time 2/4
    \bandmintro
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \key f \major
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectiona
    \basslinesectionb

    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb

    \basslinesectiona
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectiona = {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotes = {
    \key f \major
    \time 2/4
    \bandmintro
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomesectiona
    \guitarnotessectiona
    \guitarnotessectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \guitarnotessectiona
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionb = \chordmode {
    a2:7 |
    d2:min |
    a2:7 |
    d2:min |
    a2:7 |
    d2:min |
    a2:7 |
    d2:min |
}

chordletters = \chordmode {
    \time 2/4
    \bandmintro
    \grace { s8. } d2:min |
    g4:min a4:7 |
    d2:min |
    d2:min |
    \grace { d8.:min } d2:min |
    g4:min a4:7 |
    d4:min a4:7 |
    d2:min |
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

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8\ff b''4 b''8 |
      a''8[ a''8 ]   b''8.[ a''16 ] |
      g''8[ fis''8 ]   g''8[ a''8 ] |
    b''8 r8 b''4-^ |
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8 b''4 b''8 |
      a''8[ a''8 ]   b''8.[ a''16 ] |
      g''8[ g''8 ]   fis''8[ fis''8 ] |
    e''8 r8 e''8 r8 |
}

clarinetsectionb = {
      fis''8[ fis''8 ]   b''8.[ a''16 ] |
      g''8[ fis''16 g''16 ]   a''16[ g''16 fis''16 e''16 ] |
      dis''8[ e''16 fis''16 ]   b'8[ cis''16 dis''16 ] |
      e''16[( dis''16) e''16 fis''16 ]   g''8[ e''8 ] |
      fis''8[ fis''8 ]   b''8.[ a''16 ] |
      g''8[ fis''16 g''16 ]   a''16[( g''16) fis''16 e''16 ] |
      dis''8[ e''16 fis''16 ]   b'8[ cis''16 dis''16 ] |
    e''8 r8 e''8-^ r8 |
}

clarinetnotes = {
    \key g \major
    \time 2/4
    \bandmintro
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \clarinetsectiona
    \clarinetsectionb

    \clarinetsectiona
    \clarinetsectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \clarinetsectiona
    \clarinetsectionb
}

clarinetfortenornotes = { \clarinetnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona = {
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8\mf g''4 g''8 |
      fis''8[ e''8 ]   dis''16[ fis''16 b'16 dis''16 ] |
      e''8[ dis''8 e''8 fis''8 ] |
    g''8 r8 g''4-^ |
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8 g''4 g''8 |
      fis''8[ e''8 ]   dis''16[ fis''16 b'16 dis''16 ] |
      e''8[ b'8 ]   a'8[ a'8 ] |
    g'8 r8 g'8 r8 |
}

tenorsaxsectionb = {
      dis''8[ dis''8 ]   dis''16[ fis''16 b'16 dis''16 ] |
      e''8[ b'8 e''8 ] r8 |
      fis'8[ g'16 a'16 ]   dis'8[ e'16 fis'16 ] |
      g'16[ fis'16 g'16 b'16 ]   e''16[( b'16) b'16( g'16) ] |
      b'8[ dis''8 ]   dis''16[ fis''16 b'16 dis''16 ] |
      e''8[ b'8 e''8 ] r8 |
      fis'8[ g'16 a'16 ]   dis'8[ e'16 fis'16 ] |
    g'8 r8 g'8-^ r8 |
}

tenorsaxnotes = {
    \key g \major
    \time 2/4
    \bandmintro
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorsaxnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \tenorsaxsectiona
    \tenorsaxsectionb

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb

    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltonotes = \transpose ees bes, {
    \key g \major
    \time 2/4
    \bandmintro
    \tenorsaxsectiona
    \transpose c c' { \tenorsaxsectionb }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona = {
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 fis''4 fis''8 |
      e''8[ e''8 ]   fis''8.[ e''16 ] |
      d''8[ cis''8 d''8 e''8 ] |
    fis''8 r8 fis''4-> |
    \acciaccatura { fis''16[ gis''16 ais''16 ] } b''8 fis''4 fis''8 |
      e''8[ e''8 ]   fis''8.[ e''16 ] |
      d''8[ d''8 ]   cis''8[ cis''8 ] |
    b'8 r8 b''8 r8 |
}

altosaxsectionb = {
      cis''8[ fis'8 ]   fis''8.[ e''16 ] |
      d''8[( cis''16 d''16 ]   e''16[ d''16 cis''16 b'16) ] |
      ais'8[ b'16 cis''16 ]   fis'8[ gis'16 ais'16 ] |
      b'16[ ais'16 b'16 cis''16 ]   d''8[ b'8 ] |
      cis''8[ fis'8 ]   fis''8.[ e''16 ] |
      d''8[ cis''16 d''16 ]   e''16[ d''16 cis''16 b'16 ] |
      ais'8[ b'16 cis''16 ]   fis'8[ gis'16 ais'16 ] |
    b'8 r8 b'8-> r8 |
}

altosaxnotes = {
    \key d \major
    \time 2/4
    \bandmintro
    \altosaxsectiona
    \altosaxsectionb
}

altosaxnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \altosaxsectiona
    \altosaxsectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \altosaxsectiona
    \altosaxsectionb
}

altosaxmelodynotes = \transpose d' a {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8\mf b'4 b'8 |
      a'8[ a'8 ]   b'8.[ a'16 ] |
      g'8[ fis'8 ]   g'8[ a'8 ] |
    b'8 r8 b'4-> |
    \acciaccatura { b'16[ cis''16 dis''16 ] } e''8 b'4 b'8 |
      a'8[ a'8 ]   b'8.[ a'16 ] |
      g'8[ g'8 ]   fis'8[ fis'8 ] |
    e'8 r8 e'8 r8 |
}

trumpetsectionb = {
      fis'8[ fis'8 ]   b'8.[( a'16) ] |
      g'8[ fis'16 g'16 ]   a'16[( g'16) fis'16 e'16 ] |
      dis'8[ e'16( fis'16) ]   b8[ cis'16( dis'16) ] |
      e'16[( dis'16) e'16 fis'16 ]   g'8[ e'8 ] |
      fis'8[ fis'8 ]   b'8.[( a'16) ] |
      g'8[ fis'16 g'16 ]   a'16[( g'16) fis'16 e'16 ] |
      dis'8[ e'16( fis'16) ]   b8[ cis'16( dis'16) ] |
      e'16[( b16) g'16 fis'16 ] e'8 r8 |
}

trumpetnotes = {
    \key g \major
    \time 2/4
    \bandmintro
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \trumpetsectiona
    \trumpetsectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \trumpetsectiona
    \trumpetsectionb
    \metronomesectiona
    \metronomesectionb

    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \acciaccatura { a,16[ bes,16 c16 ] } d2 |
      e8[ e8 ]   cis8.[ e16 ] |
      d8[ cis8 ]   d8[ e8 ] |
    f8 r8 f4-^ |

    \acciaccatura { a,16[ bes,16 c16 ] } d2 |
      e8[ e8 ]   cis8.[ e16 ] |
      d8[ d8 a,8 a,8 ] |
      d8[ r8 d8-^ ] r8 |
}

trombonesectionb = {
    cis8 e8 ] a,4 |
    a2 |
      e8[ r8 a,8 ] r8 |
      d16[ cis16 d16 e16 ]   f8[ d8 ] |

      cis8[ e8 ] a,4 |
    a2 |
      e8[ r8 a,8 ] r8 |
      d8[ r8 d8-^ ] r8 |
}

trombonenotes = {
    \key f \major
    \time 2/4
    \bandmintro
    \trombonesectiona
    \trombonesectionb
}

trombonenotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \trombonesectiona
    \trombonesectionb

    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \transpose c' bes, {
      \trumpetsectiona
      \trumpetsectionb
    }

    \trombonesectiona
    \trombonesectionb
}

trombonemelodynotes = \transpose c' bes, {
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \key f \major
    \time 2/4
    \bassline
}

euphoniumnotesmidi = {
    \time 2/4
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8\ff a''4 a''8 |
      g''8[ g''8 ]   a''8.[ g''16 ] |
      f''8[ e''8 ]   f''8[ g''8 ] |
     a''8 r8 a''4 |
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 a''4 a''8 |
      g''8[ g''8 ]   a''8.[ g''16 ] |
      f''8[ f''8 ]   e''8[ e''8 ] |
    d''8 r8 d''8 r8 |
}

violinsectionb = {
      e''8[ a'8 ]   a''8.[ g''16 ] |
      f''8[ e''16 f''16 ]   g''16[ f''16 e''16 d''16 ] |
      cis''8[ d''16 e''16 ]   a'8[ b'16 cis''16 ] |
      d''16[ cis''16 d''16 e''16 ]   f''8[ d''8 ] |
      e''8[ a'8 ]   a''8.[ g''16 ] |
      f''8[ e''16 f''16 ]   g''16[ f''16 e''16 d''16 ] |
      cis''8[ d''16 e''16 ]   a'8[ b'16 cis''16 ] |
      d''16[ a'16 f''16 e''16 ] d''8 r8 |
}

violinnotes = {
    \key f \major
    \time 2/4
    \bandmintro
    \violinsectiona
    \violinsectionb
}

violinnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \violinsectiona
    \violinsectionb

    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \violinsectiona
    \violinsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \key f \major
    \time 2/4
    \bassline
}

bassnotesmidi = {
    \time 2/4
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8\ff < f'' a'' >4 < f'' a'' >8 |
    < e'' g'' >8[ < e'' g'' >8 ] < cis'' a'' >8.[ < e'' g'' >16 ] |
    < d'' f'' >8[ < cis'' e'' >8 ] < d'' f'' >8[ < e'' g'' >8 ] |
    < f'' a'' >8 r8 < f'' a'' >4 |
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 < f'' a'' >4 < f'' a'' >8 |
    < e'' g'' >8[ < e'' g'' >8 ] < cis'' a'' >8.[ < e'' g'' >16 ] |
    < d'' f'' >8[ < d'' f'' >8 ] < a' cis'' e'' >8[ < a' cis'' e'' >8 ] |
    < f' a' d'' >8 r8 < f' a' d'' >8 r8 |
}

pianorightuppersectionb = {
      e''8[-3 a'8-4 ]   a''8.[-5 g''16 ] |
      f''8[-3 e''16 f''16 ]   g''16[-4 f''16 e''16 d''16-1 ] |
      cis''8[-3 d''16 e''16 ]   a'8[ b'16 cis''16 ] |
      d''16[ cis''16 d''16 e''16 ]   f''8[ d''8 ] |
      e''8[-3 a'8 ]   a''8.[-5 g''16 ] |
      f''8[-3 e''16 f''16 ]   g''16[-4 f''16 e''16 d''16-1 ] |
      cis''8[-3 d''16 e''16 ]   a'8[ b'16 cis''16 ] |
    < f' a' d'' >8 r8 < f' a' d'' >8-> r8 |
}

pianoleftupperintro = {
      d8[\ff < f a >8 ]   d8[ < f a >8 ] |
      bes,8[ bes8 ]   a,8[ a8 ] |
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
    < d f a >8 r8 < d, d >4-> |
}

pianoleftuppersectiona = {
    \grace { s8. }   d8[\ff < f a >8 ]   d8[ < f a >8 ] |
      bes,8[ bes8 ]   a,8[ a8 ] |
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
    < d f a >8 r8 < d, d >4-> |
    \grace { s8. }   d8[ < f a >8 ]   d8[ < f a >8 ] |
    < bes, bes >8[ < bes, bes >8 ]   a,8[ a8 ] |
    < d a >8[ < d a >8 ] < a, a >8[ < a, a >8 ] |
    d8 r8 < d, d >8 r8 |
}

pianoleftuppersectionb = {
      cis8[ < g a >8 ]   a,8[ < g a >8 ] |
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
      e8[ < g a >8 ]   a,8[ < g a >8 ] |
      d8[ < f a >8 ]   d8[ < f a >8 ] |
      cis8[ < g a >8 ]   a,8[ < g a >8 ] |
      d8[ < f a >8 ]   a,8[ < f a >8 ] |
      e8[ < g a >8 ]   a,8[ < g a >8 ] |
    d8 r8 < d, d >8-> r8 |
}

pianorightuppernotes = {
    \key f \major
    \time 2/4
%    \stemUp
    \bandmintro
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianorightlowernotes = {
    \time 2/4
}

pianoleftuppernotes = {
    \key f \major
    \time 2/4
%    \stemUp
    \bandmintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianoleftlowernotes = {
    \time 2/4
}

pianorightnotesmidi = {
    \time 2/4
    \preintro
    \metronomesectiona
    \pianorightuppersectiona
    \pianorightuppersectionb

    \metronomesectiona
    \metronomesectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianoleftnotesmidi = {
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectiona
    \pianoleftuppersectionb

    \metronomesectiona
    \metronomesectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionb = \drummode {
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
    \bandmintro
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \metronomesectiona
    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectiona
    \drumshighsectionb
}

drumslowsectiona = \drummode {
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s8. } s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionb = \drummode {
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
    \bandmintro
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \metronomesectiona
    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectiona
    \drumslowsectionb
}

tenorharmony = \transpose c' ees { \altosaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min |
    g4:min a4:7 |
    d2:min |
    d2:min |
    d2:min |
    g4:min a4:7 |
    d4:min a4:7 |
    d2:min |
}

previewnotes = {
    \key f \major
    \time 2/4
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 a''4 a''8 |
    g''8 g''8 a''8. g''16 |
    f''8 e''8 f''8 g''8 |
    a''8 r8 a''4 |
    \acciaccatura { a''16[ b''16 cis'''16 ] } d'''8 a''4 a''8 |
    g''8 g''8 a''8. g''16 |
    f''8 f''8 e''8 e''8 |
    d''8 r8 d''8 r8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

\version "2.18.2"

bandmintro =  {
    \partial 16 s16 \bar "" |
    \grace { s8 } s2*4 |
    \bar "||"
    s2 | \breakINfiv s2 | \breakINsix s2 | \breakINsev s2 |
    \bar ".|:-||"
    \breakIN
}

bandmsectionaa =  {
    \markSA \positionSA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv
}

bandmsectionab =  {
    s2 | \breakAsix
}

bandmsectionac =  {
    s2 |
}

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar "||"
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 |
    \bar "||"
    \breakB
}

bandmsectionc =  {
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 |
    \bar "||"
    \breakC
}

bandmsectiond =  {
    \markD \positionD
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 |
    \bar "||"
    \breakD
}

bandmsectione =  {
    \markE \positionE
    s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
    s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev
    % position right because it is really at the end of the measure
    \markDSAL \positionDSAL
    s2 |
    \bar ".|:-||"
    \breakE
}

bandmcodaa =  {
    \markFC \positionFC
    s2 | \breakFCone s2 | \breakFCtwo s2 | \breakFCtre s2 | \breakFCfor
    s2 | \breakFCfiv
}

bandmcodab =  {
    s2 | \breakFCsix
}

bandmcodac =  {
    s2 | \breakFCsev
    \bar "||"
}

bandmcodad =  {
    \markRT \positionRT
    s2 | \breakFCeit s2 |
}

bandmcoda =  {
    \repeat volta 2 { \bandmcodaa }
    \alternative { { \bandmcodab } { \bandmcodac } }
    \bandmcodad
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \tempo \tempostringTWO
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

metronomeintro =  { \partial 16 s16 | \tempo 4 = 135 \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionaa =  { s2 | s2 | s2 | s2 | s2 | }

metronomesectionab =  { s2 | }

metronomesectionac =  { s2 | }

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}

metronomesectionb =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionc =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiond =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectione =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomecodaa =  { s2 | s2 | s2 | s2 | s2 | }

metronomecodab =  { s2 | }

metronomecodac =  { s2 | }

metronomecodad =  { \tempo 4 = 100 s2 | \tempo 4 = 80 s2 | }

metronomecoda =  {
    \repeat volta 2 { \metronomecodaa }
    \alternative { { \metronomecodab } { \metronomecodac } }
    \metronomecodad
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \tempo 4 = 135
    \metronomeintro
    \tempo 4 = 130
    \metronomesectiona
    \tempo 4 = 140
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond
    \metronomesectione
    \tempo 4 = 135
    \metronomesectiona
    \tempo 4 = 145
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond
    \metronomesectione
    \tempo 4 = 140
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  {
    \partial 16 s16 |
    \acciaccatura { f''8 } g''2\f |
    \acciaccatura { f''8 } g''2 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
}

melodysectionaa =  {
      g''8[ e''16 g''16 ]   f''8[ d''16 f''16 ] |
      e''8[ c''16 e''16 ]   f''16[ e''16 d''16 c''16 ] |
      b'16[ g'16 a'16 b'16 ] c''8 r8 |
      c''8[ d''16 e''16 ]   f''8[ d''16 f''16 ] |
      e''8[ c''16 e''16 ]   f''16[ e''16 d''16 c''16 ] |
}

melodysectionab =  {
      b'16[ g'16 a'16 b'16 ]   c''16[ d''16 e''16 f''16 ] |
}

melodysectionac =  {
      b'16[ g'16 a'16 b'16 ] c''8 r8 |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionb =  {
    d''8 r8   d''16[ e''16 d''16 c''16 ] |
      b'16[ c''16 b'16 a'16 ]   g'16[ a'16 b'16 c''16 ] |
      d''8[ d''8 ]   d''16[ e''16 d''16 c''16 ] |
      b'16[ c''16 b'16 a'16 ] g'8 r8 |
    d''8 r8   d''16[ e''16 d''16 c''16 ] |
      b'16[ c''16 b'16 a'16 ]   g'16[ a'16 b'16 c''16 ] |
      d''8[ d''8 ]   d''16[ e''16 d''16 c''16 ] |
      b'16[ c''16 b'16 a'16 ] g'8 r8 |
}

melodysectionc =  {
      g''8[ g''8 f''8 f''8 ] |
      e''16[ f''16 e''16 d''16 ]   c''16[ d''16 e''16 f''16 ] |
      g''8[ g''8 f''8 f''8 ] |
      e''16[ f''16 e''16 d''16 ] c''8 r8 |
      g''8[ g''8 f''8 f''8 ] |
      e''16[ f''16 e''16 d''16 ]   c''16[ d''16 e''16 f''16 ] |
      g''8[ g''8 f''8 f''8 ] |
      e''16[ f''16 e''16 d''16 ] c''8 r8 |
}

melodysectiond =  {
      b'16[ c''16 ] d''4 d''8 |
      g''8[ d''8 ]   e''8[-> d''16 c''16 ] |
      b'16[ c''16 ] d''4 d''8 |
    g''8-> r8 g''8-> r8 |
      b'16[ c''16 ] d''4 d''8 |
      g''8[ d''8 ]   e''8[-> d''16 c''16 ] |
      b'16[ c''16 ] d''4 d''8 |
    g''8-> r8 g''8-> r8 |
}

melodysectione =  {
      b''8[ b''8 ]   a''8[ a''8 ] |
      b''8[ b''8 ]   c'''8[ c'''8 ] |
      b''8[ b''8 ]   a''8[ a''8 ] |
      b''8[ a''8 ] g''8 r8 |
      b''8[ b''8 ]   a''8[ a''8 ] |
      b''8[ b''8 ]   c'''8[ c'''8 ] |
      b''8[ b''8 ]   a''8[ a''8 ] |
    g''4. r8 |
}

melodycodaa =  {
      g''8[ e''16 g''16 ]   f''8[ d''16 f''16 ] |
      e''8[ c''16 e''16 ]   f''16[ e''16 d''16 c''16 ] |
      b'16[ g'16 a'16 b'16 ] c''8 r8 |
      c''8[ d''16 e''16 ]   f''8[ d''16 f''16 ] |
      e''8[ c''16 e''16 ]   f''16[ e''16 d''16 c''16 ] |
}

melodycodab =  {
      b'16[ g'16 a'16 b'16 ]   c''16[ d''16 e''16 f''16 ] |
}

melodycodac =  {
      b'16[ g'16 a'16 b'16 ] c''8 r8 |
}

melodycodad =  {
    c''4 c'''4\ff |
    c''2\fermata |
}

melodycoda =  {
    \repeat volta 2 { \melodycodaa }
    \alternative { { \melodycodab } { \melodycodac } }
    \melodycodad
}

melody =  {
    \key c \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
    \melodycoda
}

melodymidi =  {
    \key c \major
    \time 2/4
    \melodyintro
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
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro =  {
    \partial 16 s16 |
    \grace { s8 } R2*4 |
    b,2\3\ff |
    c2\3 |
    d4\3 c4\3 |
    b4\1 g,4\4 |
}

basslinesectionaa =  {
    c4\3\mf d4\3 |
    e4\2 f4\2 |
    g4\2 c4\3 |
    c4\3 d4\3 |
    e4\2 f4\2 |
}

basslinesectionab =  {
    g4\2 c8\3 r8 |
}

basslinesectionac =  {
    g4\2 c8\3 r8 |
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionb =  {
    fis,4\4 d4\3 |
    g,4\4 d4\3 |
    a,4\4 fis,4\4 |
    g,8\4 fis,8\4 g,8\4 r8 |
    fis,4\4 d4\3 |
    g,4\4 d4\3 |
    a,4\4 fis,4\4 |
    g,8\4 fis,8\4 g,8\4 r8 |
}

basslinesectionc =  {
      g,8\4 [ g,8\4 g,8\4 g,8\4 ] |
      c8\3 [ c8\3 c8\3 c8\3 ] |
      g,8\4 [ g,8\4 g,8\4 g,8\4 ] |
      c8\3 [ g,8\4 ] c8\3 r8 |
      g,8\4 [ g,8\4 g,8\4 g,8\4 ] |
      c8\3 [ c8\3 c8\3 c8\3 ] |
      g,8\4 [ g,8\4 g,8\4 g,8\4 ] |
      c8\3 [ g,8\4 ] c8\3 r8 |
}

basslinesectiond =  {
    g,4\4 fis,4\4 |
    g,4\4 c4\3-> |
    g,4\4 fis,4\4 |
    g,8\4-> r8 g,8\4-> r8 |
    g,4\4 fis,4\4 |
    g,4\4 c4\3-> |
    g,4\4 fis,4\4 |
    g,8\4-> r8 g,8\4-> r8 |
}

basslinesectione =  {
      g,8\4 [ g,8\4 ] d8\3 [ d8\3 ] |
      g,8\4 [ g,8\4 ] c8\3 [ c8\3 ] |
      g,8\4 [ g,8\4 ] d8\3 [ d8\3 ] |
      g,8\4 [ d8\3 ] g,8\4 r8 |
      g,8\4 [ g,8\4 ] d8\3 [ d8\3 ] |
      g,8\4 [ g,8\4 ] c8\3 [ c8\3 ] |
      g,8\4 [ g,8\4 ] d8\3 [ d8\3 ] |
      g8\2 [ f8\2 e8\3 d8\3 ] |
}

basslinecodaa =  {
    c4\3 d4\3 |
    e4\2 f4\2 |
    g4\2 c4\3 |
    c4\3 d4\3 |
    e4\2 f4\2 |
}

basslinecodab =  {
    g4\2 c8\3 r8 |
}

basslinecodac =  {
    g4\2 c8\3 r8 |
}

basslinecodad =  {
    c'4\1 c'4\1\ff |
    c2\3\fermata |
}

basslinecoda =  {
    \repeat volta 2 { \basslinecodaa }
    \alternative { { \basslinecodab } { \basslinecodac } }
    \basslinecodad
}

bassline =  {
    \key c \major
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
    \basslinecoda
}

basslinemidi =  {
    \key c \major
    \time 2/4
    \basslineintro
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
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotesintro =  {
    \partial 16 s16 |
    \grace { s8 } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionaa =  {
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

guitarnotessectionb =  {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectionc =  {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectiond =  {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotessectione =  {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotescodaa =  {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotescodab =  {
    s2 |
}

guitarnotescodac =  {
    s2 |
}

guitarnotescodad =  {
    s2 |
    s2 |
}

guitarnotescoda =  {
    \repeat volta 2 { \guitarnotescodaa }
    \alternative { { \guitarnotescodab } { \guitarnotescodac } }
    \guitarnotescodad
}

guitarnotes =  {
    \key c \major
    \time 2/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotessectione
    \guitarnotescoda
}

guitarnotesmidi =  {
    \key c \major
    \time 2/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotessectione
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
    \guitarnotessectione
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 16 s16 |
    \grace { s8 } s2*4 |

    g2 |
    c2 |
    g4:7 c4 |
    c2 |
}

chordletterssectionaa = \chordmode {
    \chordChangesOff
    c2 |
    \chordChangesOn
    c4 d4:min |
    g4:7 c4 |

    c4 g4:7 |
    c4 d4:min |
}

chordletterssectionab = \chordmode {
    g4:7 c4 |
}

chordletterssectionac = \chordmode {
    g4:7 c4 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionb = \chordmode {
    d2:7 |
    g2 |
    d2:7 |
    g8 d8:7 g8 s8 |

    d2:7 |
    g2 |
    d2:7 |
    g8 d8:7 g8 s8 |
}

chordletterssectionc = \chordmode {
    \chordChangesOff
    g2 |
    \chordChangesOn
    c2 |
    g2 |
    c8 g8:7 c8 s8 |

    g2 |
    c2 |
    g2 |
    c8 g8:7 c8 s8 |
}

chordletterssectiond = \chordmode {
    g4 d4:7 |
    g4 c4 |
    g4 d4:7 |
    g2 |

    g4 d4:7 |
    g4 c4 |
    g4 d4:7 |
    g2 |
}

chordletterssectione = \chordmode {
    \chordChangesOff
    g4 d4:7 |
    \chordChangesOn
    g4 c4 |
    g4 d4:7 |
    g8 d8:7 g8 s8 |

    g4 d4:7 |
    g4 c4 |
    g4 d4:7 |
    g4. g8:7 |
}

chordletterscodaa = \chordmode {
    c4 g4:7 |
    c4 d4:min |
    g4:7 c4 |
    c4 g4:7 |

    c4 d4:min |
}

chordletterscodab = \chordmode {
    g4:7 c4 |
}

chordletterscodac = \chordmode {
    g4:7 c8 s8 |
}

chordletterscodad = \chordmode {
    \chordChangesOff
    c2 |
    \chordChangesOn
    c2 |
}

chordletterscoda = \chordmode {
    \repeat volta 2 { \chordletterscodaa }
    \alternative { { \chordletterscodab } { \chordletterscodac } }
    \chordletterscodad
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
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

clarinetintro =  \transpose c c' {
    \partial 16 s16 |
    \acciaccatura { gis'8 } a'2\ff |
    \acciaccatura { gis'8 } a'2 |
    \acciaccatura { gis'8 } a'4 \acciaccatura { gis'8 } a'4 |
    \acciaccatura { gis'8 } a'4 \acciaccatura { gis'8 } a'4 |

      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[\> a'16 b'16 a'16\! ] |
}

clarinetsectionaa =  \transpose c c' {
      a'8[ fis'16 a'16 ]   g'8[ e'16 g'16 ] |
      fis'8[ d'16 fis'16 ]   g'16[ fis'16 e'16 d'16 ] |
      cis'16[ a16 b16 cis'16 ] d'8 r8 |
      d'8[ e'16 fis'16 ]   g'8[ e'16 g'16 ] |
      fis'8[ d'16 fis'16 ]   g'16[ fis'16 e'16 d'16 ] |
}

clarinetsectionab =  \transpose c c' {
      cis'16[ a16 b16 cis'16 ]   d'16[ e'16 fis'16 g'16 ] |
}

clarinetsectionac =  \transpose c c' {
      cis'16[ a16 b16 cis'16 ] d'8 r8 |
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionb =  {
    \repeat unfold 2 {
        e''8 r8   e''16[ fis''16 e''16 d''16 ] |
          cis''16[ d''16 cis''16 b'16 ]   a'16[ b'16 cis''16 d''16 ] |
          e''8[ e''8 ]   e''16[ fis''16 e''16 d''16 ] |
          cis''16[ d''16 cis''16 b'16 ] a'8 r8 |
    }
}

clarinetsectionc =  {
    \repeat unfold 2 {
          a''8[ a''8 g''8 g''8 ] |
          fis''16[ g''16 fis''16 e''16 ]   d''16[ e''16 fis''16 g''16 ] |
          a''8[ a''8 g''8 g''8 ] |
          fis''16[ g''16 fis''16 e''16 ] d''8 r8 |
    }
}

clarinetsectiond =  {
    \repeat unfold 2 {
          cis''16[ d''16 ] e''4 e''8 |
          a''8[ e''8 ]   fis''8[\trill( e''16 d''16) ] |
          cis''16[ d''16 ] e''4 e''8 |
        a''8-^ r8 a''8-^ r8 |
    }
}

clarinetsectione =  \transpose c c' {
    \repeat unfold 2 {
          cis''8[ cis''8 ]   b'8[ b'8 ] |
          cis''8[ cis''8 ]   d''8[ d''8 ] |
          cis''8[ cis''8 ]   b'8[ b'8 ] |
    }
    \alternative {
        {   cis''8[ b'8 a'8 ] r8 | }
        { a'4. r8 | }
    }
}

clarinetcodaa =  {
      a''8[ fis''16 a''16 ]   g''8[ e''16 g''16 ] |
      fis''8[ d''16 fis''16 ]   g''16[ fis''16 e''16 d''16 ] |
      cis''16[ a'16 b'16 cis''16 ] d''8 r8
      d''8[ e''16 fis''16 ]   g''8[ e''16 g''16 ] |
      fis''8[ d''16 fis''16 ]   g''16[ fis''16 e''16 d''16 ] |
}

clarinetcodab =  {
      cis''16[ a'16 b'16 cis''16 ]   d''16[ e''16 fis''16 g''16 ] |
}

clarinetcodac =  {
      cis''16[( a'16 b'16 cis''16 ] d''8) r8 |
}

clarinetcodad =  {
    d''4-^ d'''4-^ |
    d'''2-^\fermata |
}

clarinetcoda =  {
    \repeat volta 2 { \clarinetcodaa }
    \alternative { { \clarinetcodab } { \clarinetcodac } }
    \clarinetcodad
}

clarinetnotes =  {
    \key d \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetcoda
}

clarinetnotesmidi =  {
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro =  {
    \partial 16 s16 |
    \grace { s8 } r2\ff |
    r2 |
    r2 |
    r2 |

    cis''4   cis''8[ e''8 ] |
    d''4   d''8[ fis''8 ] |
    e''4 d''4 |
      cis''8[ a'8 ]   gis'16[\> a'16 b'16 a'16\! ] |
}

tenorsaxsectionaa =  {
      fis''8[\mf d''16 fis''16 ]   e''8[ cis''16 e''16 ] |
      d''8[ fis'16 a'16 ]   b'16[ a'16 g'16 fis'16 ] |
      e'8[ g'8 ]   fis'8[ a'8 ] |
      fis'8[ a'8 ]   b'8[ g'16 b'16 ] |
      a'8[ fis'16 a'16 ]   b'16[ a'16 g'16 fis'16 ] |
}

tenorsaxsectionab =  {
      e'8[ g'8 ] fis'8 r8 |
}

tenorsaxsectionac =  {
      e'8[ g'8 ] fis'8 r8 |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionb =  {
    \repeat unfold 2 {
          gis'8[ b'8 ]   gis'8[ b'8 ] |
          a'8[( e'8) ]   e'8[( a'8) ] |
          gis'8[ b'8 ]   gis'16[ a'16 gis'16 fis'16 ] |
          e'16[ fis'16 e'16 d'16 ] cis'8 r8 |
    }
}

tenorsaxsectionc =  {
    \repeat unfold 2 {
          cis''8[ cis''8 ]   e''8[ e''8 ] |
          d''8[ a'8 ]   fis'16[ a'16 d''16 b'16 ] |
          cis''8[ cis''8 ]   b'8[ b'8 ] |
          a'16[ b'16 a'16 g'16 ] fis'8 r8 |
    }
}

tenorsaxsectiond =  {
    \repeat unfold 2 {
          a'16[ b'16 cis''8 ]   b'8[ d''8 ] |
          cis''8[ cis''8 ]   d''8[ cis''16 b'16 ] |
          a'16[ b'16 cis''8 ]   b'8[ d''8 ] |
        cis''8-^ r8 cis''8-^ r8 |
    }
}

tenorsaxsectione =  {
      a''8[ a''8 ]   gis''8[ gis''8 ] |
      a''8[ a''8 ]   fis''8[ fis''8 ] |
      e''8[ e''8 ]   gis''8[ gis''8 ] |
      a''8[ e''8 ]   cis''8[ e''8 ] |

      a''8[ a''8 ]   gis''8[ gis''8 ] |
      a''8[ a''8 ]   fis''8[ fis''8 ] |
      e''8[ e''8 ]   d''8[ d''8 ] |
      cis''8[ g''8 fis''8 e''8 ] |
}

tenorsaxcodaa =  {
      fis''8[ d''16 fis''16 ]   e''8[ cis''16 e''16 ] |
      d''8[ fis'16 a'16 ]   b'16[ a'16 g'16 fis'16 ] |
      e'8[( g'8) ]   fis'8[( a'8) ] |
      fis'8[ a'8 ]   b'8[ g'16 b'16 ] |
      a'8[ fis'16 a'16 ]   b'16[ a'16 g'16 fis'16 ] |
}

tenorsaxcodab =  {
      e'8[ g'8 ] fis'8 r8 |
}

tenorsaxcodac =  {
      e'8[ g'8 ] fis'8 r8 |
}

tenorsaxcodad =  {
    fis'4-^ fis''4-^ |
    fis''2-^\fermata |
}

tenorsaxcoda =  {
    \repeat volta 2 { \tenorsaxcodaa }
    \alternative { { \tenorsaxcodab } { \tenorsaxcodac } }
    \tenorsaxcodad
}

tenorsaxnotes =  {
    \key d \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxcoda
}

tenorsaxnotesmidi =  {
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro =  {
    \partial 16 s16 | \acciaccatura { dis''8 } e''2\ff |
    \acciaccatura { dis''8 } e''2 |
    \acciaccatura { dis''8 } e''4 \acciaccatura { dis''8 } e''4 |
    \acciaccatura { dis''8 } e''4 \acciaccatura { dis''8 } e''4 |

    \repeat unfold 4 {
          dis''16[ e''16 fis''16 e''16 ]   dis''16[ e''16 fis''16 e''16 ] |
    }
}

altosaxsectionaa =  {
      e''8[\ff cis''16( e''16) ]   d''8[ b'16( d''16) ] |
      cis''8[ a'16 cis''16 ]   d''16[ cis''16 b'16 a'16 ] |
      gis'16[ e'16 fis'16 gis'16 ] a'8 r8 |
      a'8[ b'16 cis''16 ]   d''8[ b'16 d''16 ] |
      cis''8[ a'16 cis''16 ]   d''16[ cis''16 b'16 a'16 ] |
}

altosaxsectionab =  {
      gis'16[ e'16 fis'16 gis'16 ]   a'16[ b'16 cis''16 d''16 ] |
}

altosaxsectionac =  {
      gis'16[ e'16 fis'16 gis'16 ] a'8 r8 |
}

altosaxsectiona =  {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionb =  {
    \repeat unfold 2 {
        b'8 r8   b'16[ cis''16 b'16 a'16 ] |
          gis'16[ a'16 gis'16 fis'16 ]   e'16[ fis'16 gis'16 a'16 ] |
          b'8[ b'8 ]   b'16[ cis''16 b'16 a'16 ] |
          gis'16[ a'16 gis'16 fis'16 ] e'8 r8 |
    }
}

altosaxsectionc =  {
    \repeat unfold 2 {
          e''8[ e''8 d''8 d''8 ] |
          cis''16[ d''16 cis''16 b'16 ]   a'16[ b'16 cis''16 d''16 ] |
          e''8[ e''8 d''8 d''8 ] |
          cis''16[ d''16 cis''16 b'16 ] a'8 r8 |
    }
}

altosaxsectiond =  {
    \repeat unfold 2 {
          gis'16[ a'16 ] b'4 b'8 |
          e''8[ b'8 ]   cis''8[-> b'16 a'16 ] |
          gis'16[ a'16 ] b'4 b'8 |
        e''8-> r8 e''8-> r8 |
    }
}

altosaxsectione =  {
    \repeat unfold 2 {
          gis''8[ gis''8 fis''8 fis''8 ] |
          gis''8[ gis''8 a''8 a''8 ] |
          gis''8[ gis''8 fis''8 fis''8 ] |
    }
    \alternative {
        {
              gis''8[ fis''8 ] e''4 |
        }
        {
              e''8[ d'''8 cis'''8 b''8 ]
        }
    }
}

altosaxcodaa =  {
      e''8[ cis''16( e''16) ]   d''8[ b'16( d''16) ] |
      cis''8[ a'16 cis''16 ]   d''16[ cis''16 b'16 a'16 ] |
      gis'16[ e'16 fis'16 gis'16 ] a'8 r8 |
      a'8[ b'16 cis''16 ]   d''8[ b'16 d''16 ] |
      cis''8[ a'16 cis''16 ]   d''16[ cis''16 b'16 a'16 ] |
}

altosaxcodab =  {
      gis'16[ e'16 fis'16 gis'16 ]   a'16[ b'16 cis''16 d''16 ] |
}

altosaxcodac =  {
      gis'16[ e'16 fis'16 gis'16 ] a'8 r8 |
}

altosaxcodad =  {
    a'4 a''4 |
    a'2\fermata |
}

altosaxcoda =  {
    \repeat volta 2 { \altosaxcodaa }
    \alternative { { \altosaxcodab } { \altosaxcodac } }
    \altosaxcodad
}

altosaxnotes =  {
    \key a \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
    \altosaxcoda
}

altosaxnotesmidi =  {
    \key a \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro =  {
    \partial 16 s16 |
    \acciaccatura { gis'8 } a'2\ff |
    \acciaccatura { gis'8 } a'2 |
    \acciaccatura { gis'8 } a'4 \acciaccatura { gis'8 } a'4 |
    \acciaccatura { gis'8 } a'4 \acciaccatura { gis'8 } a'4 |

      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
      gis'16[ a'16 b'16 a'16 ]   gis'16[ a'16 b'16 a'16 ] |
}

trumpetsectionaa =  {
      a'8[\ff fis'16( a'16) ]   g'8[ e'16( g'16) ] |
      fis'8[ d'16( fis'16) ]   g'16[( fis'16 e'16 d'16) ] |
      cis'16[( a16 b16 cis'16) ] d'8 r8 |
      d'8[ e'16( fis'16) ]   g'8[ e'16( g'16) ] |
      fis'8[ d'16( fis'16) ]   g'16[( fis'16 e'16 d'16) ] |
}

trumpetsectionab =  {
      cis'16[( a16 b16 cis'16) ]   d'16[( e'16 fis'16 g'16) ] |
}

trumpetsectionac =  {
      cis'16[( a16 b16 cis'16) ] d'8 r8 |
}

trumpetsectiona =  \transpose c c' {
    \startOctVA
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
    \stopOctVA
}

trumpetsectionb =  {
    \repeat unfold 2 {
        e''8 r8   e''16[( fis''16) e''16( d''16) ] |
          cis''16[( d''16) cis''16( b'16) ]   a'16[( b'16) cis''16( d''16) ] |
          e''8[ e''8 ]   e''16[( fis''16) e''16( d''16) ] |
          cis''16[( d''16) cis''16( b'16) ] a'8 r8 |
    }
}

trumpetsectionc =  {
    \repeat unfold 2 {
        < a' a'' >8[ < a' a'' >8 < g' g'' >8 < g' g'' >8 ] |
        < fis'( fis'' >16[ < g' g'') >16 < fis'( fis'' >16 < e' e'') >16 ] < d'( d'' >16[ < e' e'') >16 < fis'( fis'' >16 < g' g'') >16 ] |
        < a' a'' >8[ < a' a'' >8 < g' g'' >8 < g' g'' >8 ] |
        < fis'( fis'' >16[ < g' g'' >16 < fis' fis'' >16 < e' e'') >16 ] < d' d'' >8 r8 |
    }
}

trumpetsectiond =  {
    \repeat unfold 2 {
          cis''16[( d''16 ] e''4) e''8 |
          a''8[ e''8 ]   fis''8[->( e''16 d''16) ] |
          cis''16[( d''16 ] e''4) e''8 |
        a''8-> r8 a''8-> r8 |
    }
}

trumpetsectione =  {
    \repeat unfold 2 {
          cis''8[ cis''8 ]   b'8[ b'8 ] |
          cis''8[ cis''8 ]   d''8[ d''8 ] |
          cis''8[ cis''8 ]   b'8[ b'8 ] |
    }
    \alternative {
        {   cis''8[ b'8 a'8 ] r8 | }
        { a'4. r8 | }
    }
}

trumpetcodaa =  {
      a'8[ fis'16( a'16) ]   g'8[ e'16( g'16) ] |
      fis'8[ d'16( fis'16) ]   g'16[( fis'16 e'16 d'16) ] |
      cis'16[ a'16 b'16 cis''16 ] d''8 r8
      d''8[ e''16( fis''16) ]   g''8[ e''16( g''16) ] |
      fis''8[ d''16( fis''16) ]   g''16[( fis''16 e''16 d''16) ] |
}

trumpetcodaab =  {
      a''8[ fis''16( a''16) ]   g''8[ e''16( g''16) ] |
      fis''8[ d''16( fis''16) ]   g''16[( fis''16 e''16 d''16) ] |
      cis''16[ a'16 b'16 cis''16 ] d''8 r8
      d''8[ e''16( fis''16) ]   g''8[ e''16( g''16) ] |
      fis''8[ d''16( fis''16) ]   g''16[( fis''16 e''16 d''16) ] |
}

trumpetcodab =  {
      cis''16[( a'16 b'16 cis''16) ]   d''16[( e''16 fis''16 g''16) ] |
}

trumpetcodac =  {
      cis''16[( a'16 b'16 cis''16 ] d''8) r8 |
}

trumpetcodad =  {
    d''4 d''4 |
    d'2\fermata |
}

trumpetcoda =  \transpose c c' {
    \startOctVA
    \repeat volta 2 { \trumpetcodaa }
    \alternative { { \trumpetcodab } { \trumpetcodac } }
    \trumpetcodad
    \stopOctVA
}

trumpetnotes =  {
    \key d \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
    \trumpetcoda
}

trumpetnotesmidi =  {
    \key d \major
    \time 2/4
    \trumpetintro
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
    \trumpetcodaa
    \trumpetcodab
    \transpose c c' { \trumpetcodaa }
    \trumpetcodac
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro =  {
    \partial 16 s16 |
    \grace { s8 } R2*4 |

    b2\f\< |
    c'2\! |
    d'4\> c'4 |
    b4 g4\! |
}

trombonesectionaa =  {
    c4\mf d4 |
    e4 f4 |
      g8[ g8 ]   c8[ g,8 ] |
    c4 d4 |
    e4 f4 |
}

trombonesectionab =  {
      g8[ g,8 ]   c16[ b,16 c16 d16 ] |
}

trombonesectionac =  {
      g8[ g8 c8 ] r8 |
}

trombonesectiona =  {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionb =  {
    \repeat unfold 2 {
          fis8[ r8 d8 ] r8 |
          g8[ r8 d8 ] r8 |
          a8[ r8 fis8 ] r8 |
          g8[ fis8 g8 ] r8 |
    }
}

trombonesectionc =  {
    \repeat unfold 2 {
          b8[ b8 b8 b8 ] |
          c'8[ c'8 c'8 c'8 ] |
          b8[ b8 b8 b8 ] |
    }
    \alternative {
        {
              c'8[ b8 ]   c'16[ e'16 d'16 c'16 ] |
        }
        {
              c'8[ b8 c'8 ] r8 |
        }
    }
}

trombonesectiond =  {
    \repeat unfold 2 {
          g8[ r8 fis8 ] r8 |
          g8[ b8 ] c'4-^ |
          g8[ r8 fis8 ] r8 |
          g8[-^ r8 g8-^ ] r8 |
    }
}

trombonesectione =  {
      g8[\< g8 ]   fis8[ fis8 ] |
      g8[ g8 ]   e8[\! e8 ] |
      g8[\> g8 ]   d8[ d8 ] |
      g8[ fis8\! g8 ] r8 |

      g8[\< g8 ]   fis8[ fis8 ] |
      g8[ g8 ]   e8[\! e8 ] |
      g8[\> g8 ]   d8[ d8 ] |
      g8[ f8\! e8 d8 ] |
}

trombonecodaa =  {
    c4 d4 |
    e4 f4 |
    g8[ g8 c8 g,8 ] |
    c8[ g8 ]   d8[ g8 ] |
    e8[ g8 ]   f8[ a8 ] |
}

trombonecodab =  {
      g8[ g,8 ]   c16[ b,16 c16 d16 ] |
}

trombonecodac =  {
      g8[ g8 c8 ] r8 |
}

trombonecodad =  {
    c4 c'4\ff |
    c2\fermata |
}

trombonecoda =  {
    \repeat volta 2 { \trombonecodaa }
    \alternative { { \trombonecodab } { \trombonecodac } }
    \trombonecodad
}

trombonenotes =  {
    \key c \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
    \trombonecoda
}

trombonenotesmidi =  {
    \time 2/4

    \tromboneintro

    \trombonesectiona

    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione

    \trombonesectiona

    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione

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

violinintro =  {
    \partial 16 s16 |
    \acciaccatura { f''8 } g''2\f |
    \acciaccatura { f''8 } g''2 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
}

violinsectionaa =  {
      g''8[ e''16( g''16) ]   f''8[ d''16( f''16) ] |
      e''8[ c''16( e''16) ]   f''16[\(( e''16) d''16( c''16)\) ] |
      b'16[( g'16 a'16 b'16) ] c''8 r8 |
      c''8[ d''16( e''16) ]   f''8[ d''16( f''16) ] |
      e''8[ c''16( e''16) ]   f''16[( e''16) d''16( c''16) ] |
}

violinsectionab =  {
      b'16[( g'16 a'16 b'16) ]   c''16[( d''16 e''16 f''16) ] |
}

violinsectionac =  {
      b'16[( g'16 a'16 b'16) ] c''8 r8 |
}

violinsectiona =  {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionb =  {
    d''8\upbow r8   d''16[( e''16) d''16( c''16) ] |
      b'16[ c''16 b'16 a'16 ]   g'16[( a'16) b'16( c''16) ] |
      d''8[\upbow d''8 ]   d''16[( e''16) d''16( c''16) ] |
      b'16[( c''16) b'16( a'16) ] g'8 r8 |
    d''8\upbow r8   d''16[\upbow( e''16) d''16( c''16) ] |
      b'16[( c''16) b'16( a'16) ]   g'16[( a'16) b'16( c''16) ] |
      d''8[\upbow d''8 ]   d''16[\upbow( e''16) d''16( c''16) ] |
      b'16[( c''16) b'16( a'16) ] g'8 r8 |
}

violinsectionc =  {
      g''8[\upbow g''8 f''8 f''8 ] |
      e''16[( f''16) e''16( d''16) ]   c''16[( d''16) e''16( f''16) ] |
      g''8[ g''8 f''8 f''8 ] |
      e''16[( f''16 e''16 d''16) ] c''8 r8 |
      g''8[\upbow g''8 f''8 f''8 ] |
      e''16[( f''16) e''16( d''16) ]   c''16[( d''16) e''16( f''16) ] |
      g''8[ g''8 f''8 f''8 ] |
      e''16[( f''16 e''16 d''16) ] c''8 r8 |
}

violinsectiond =  {
      b'16[\upbow( c''16 ] d''4) d''8\upbow |
      g''8[ d''8 ]   e''8[-> d''16( c''16) ] |
      b'16[( c''16 ] d''4) d''8 |
    g''8-> r8 g''8-> r8 |
      b'16[( c''16 ] d''4) d''8 |
      g''8[ d''8 ]   e''8[-> d''16( c''16) ] |
      b'16[( c''16 ] d''4) d''8 |
    g''8-> r8 g''8-> r8 |
}

violinsectione =  {
      b''8[ b''8 ]   a''8[ a''8 ] |
      b''8[ b''8 ]   c'''8[ c'''8 ] |
      b''8[ b''8 ]   a''8[ a''8 ] |
      b''8[ a''8 ] g''8 r8 |
      b''8[\upbow b''8 ]   a''8[ a''8 ] |
      b''8[ b''8 ]   c'''8[ c'''8 ] |
      b''8[ b''8 ]   a''8[ a''8 ] |
    g''4. r8 |
}

violincodaa =  {
      g''8[\upbow e''16( g''16) ]   f''8[ d''16( f''16) ] |
      e''8[ c''16( e''16) ]   f''16[\(( e''16) d''16( c''16)\) ] |
      b'16[ g'16 a'16 b'16 ] c''8 r8 |
      c''8[\upbow d''16( e''16) ]   f''8[ d''16( f''16) ] |
      e''8[ c''16( e''16) ]   f''16[\(( e''16) d''16( c''16)\) ] |
}

violincodab =  {
      b'16[( g'16 a'16 b'16) ]   c''16[( d''16 e''16 f''16) ] |
}

violincodac =  {
      b'16[( g'16 a'16 b'16) ] c''8 r8 |
}

violincodad =  {
    c''4 c'''4\ff |
    c''2\fermata |
}

violincoda =  {
    \repeat volta 2 { \violincodaa }
    \alternative { { \violincodab } { \violincodac } }
    \violincodad
}

violinnotes =  {
    \key c \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
    \violincoda
}

violinnotesmidi =  {
    \key c \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
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
    \set fingeringOrientations = #'(up right right)
    \partial 16 s16 |
    \acciaccatura { f''8-2 } g''2-3\ff) |
    \acciaccatura { f''8 } g''2 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
    \acciaccatura { f''8 } g''4 \acciaccatura { f''8 } g''4 |
      fis''16[-2\< g''16-3 a''16-4 g''16-3 ]   fis''16[ g''16 a''16 g''16\! ] |
      fis''16[ g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16 ] |
      fis''16[\> g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16\! ] |
      fis''16[\> g''16 a''16 g''16 ]   fis''16[ g''16 a''16 g''16\! ] |
}

pianorightuppersectionaa =  {
    \set fingeringOrientations = #'(up right right)
      g''8[-5\mf e''16-3 g''16-5 ]   f''8[-4 d''16-2 f''16-4 ] |
      e''8[-3 c''16-1 e''16-3 ]   f''16[-4 e''16-3 d''16-2 c''16-1 ] |
      b'16[-3 g'16-1 a'16 b'16 ] c''8-4 r8 |
      c''8[-1 d''16 e''16 ]   f''8[-4 d''16-2 f''16-4 ] |
      e''8[-3 c''16-1 e''16-3 ]   f''16[-4 e''16-3 d''16-2 c''16-1 ] |
}

pianorightuppersectionab =  {
    \set fingeringOrientations = #'(up right right)
      b'16[-3 g'16-1 a'16 b'16 ]   c''16[-1 d''16-2 e''16-3 f''16-4 ] |
}

pianorightuppersectionac =  {
    \set fingeringOrientations = #'(up right right)
      b'16[-3 g'16-1 a'16 b'16 ] c''8-4 r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 { \pianorightuppersectionaa }
    \alternative { { \pianorightuppersectionab } { \pianorightuppersectionac } }
}

pianorightuppersectionb =  {
    \set fingeringOrientations = #'(up right right)
    d''8-5\mf r8   d''16[-3 e''16-4 d''16 c''16 ] |
      b'16[-1 c''16-4 b'16-3 a'16-2 ]   g'16[-1 a'16 b'16 c''16-4 ] |
      d''8[-5 d''8 ]   d''16[-3 e''16-4 d''16 c''16 ] |
      b'16[-1 c''16-4 b'16-3 a'16 ] g'8 r8 |
    d''8 r8   d''16[-3 e''16-4 d''16 c''16 ] |
      b'16[-1 c''16-4 b'16 a'16 ]   g'16[-1 a'16-2 b'16-3 c''16-4 ] |
      d''8[-5 d''8 ]   d''16[-3 e''16 d''16 c''16 ] |
      b'16[-1 c''16-4 b'16-3 a'16 ] g'8 r8 |
}

pianorightuppersectionc =  {
    \set fingeringOrientations = #'(up right right)
    < b' g'' >8[ < b' g'' >8 < b' f'' >8 < b' f'' >8 ] |
    < c''-1 e''-3 >16 f''16[-4 e''16 d''16 ]   c''16[ d''16 e''16 f''16 ] |
    < b'-1 g''-5 >8[ < b' g'' >8 < b'-2 f''-4 >8 < b' f'' >8 ] |
      e''16[-3 f''16 e''16 d''16 ] c''8 r8 |
    < b' g'' >8[ < b' g'' >8 < b' f'' >8 < b' f'' >8 ] |
    < c''-1 e''-3 >16 f''16[-4 e''16 d''16 ]   c''16[ d''16 e''16 f''16 ] |
    < b'-1 g''-5 >8[ < b' g'' >8 < b'-2 f''-4 >8 < b' f'' >8 ] |
      e''16[-3 f''16 e''16 d''16 ] c''8 r8 |
}

pianorightuppersectiond =  {
    \set fingeringOrientations = #'(up right right)
      b'16[-1 c''16-2 ] d''4-3 d''8-2 |
      g''8[-5 d''8-1 ]   e''8[-4-> d''16 c''16 ] |
      b'16[-1 c''16-2 ] d''4-3 d''8-2 |
    < b'-1 d''-2 g''-5 >8-> r8 < b' d'' g'' >8-> r8 |
      b'16[-1 c''16-2 ] d''4-3 d''8-2 |
      g''8[ d''8 ]   e''8[-4-> d''16 c''16 ] |
      b'16[ c''16 ] d''4 d''8 |
    < b' d'' g'' >8-> r8 < b' d'' g'' >8-> r8 |
}

pianorightuppersectione =  {
    < d'' b'' >8[\< < d'' b'' >8 ] < d'' a'' >8[ < d'' a'' >8 ] |
    < d'' b'' >8[ < d'' b'' >8 ] < e'' c''' >8[ < e'' c''' >8 ] |
    < d''\> b'' >8[ < d'' b'' >8 ] < d'' fis'' a'' >8[ < d'' fis'' a'' >8 ] |
    < d''\> g'' b'' >8[ < c'' fis'' a'' >8 ] < b' d'' g'' >8 r8\! |
    < d'' b'' >8[ < d'' b'' >8 ] < d'' a'' >8[ < d'' a'' >8 ] |
    < d'' b'' >8[ < d'' b'' >8 ] < e'' c''' >8[ < e'' c''' >8 ] |
    < d'' b'' >8[ < d'' b'' >8 ] < d'' fis'' a'' >8[ < d'' fis'' a'' >8 ] |
    < b' d'' g'' >4. r8 |
}

pianorightuppercodaa =  {
    \set fingeringOrientations = #'(up right right)
      g''8[-5 e''16 g''16 ]   f''8[-4 d''16 f''16 ] |
      e''8[-3 c''16 e''16 ]   f''16[-4 e''16 d''16 c''16 ] |
      b'16[-3 g'16 a'16 b'16 ] c''8-4 r8 |
      c''8[-1 d''16 e''16 ]   f''8[-4 d''16 f''16 ] |
      e''8[-3 c''16 e''16 ]   f''16[-4 e''16 d''16 c''16-1 ] |
}

pianorightuppercodab =  {
    \set fingeringOrientations = #'(up right right)
      b'16[-3 g'16-1 a'16-2 b'16-3 ]   c''16[-1 d''16-2 e''16-3 f''16-4 ] |
}

pianorightuppercodac =  {
    \set fingeringOrientations = #'(up right right)
      b'16[-3 g'16-1 a'16-2 b'16-3 ] c''8-4 r8 |
}

pianorightuppercodad =  {
    < e' g' c'' >4 < e''\ff g'' c''' >4 |
    \stemDown < e' g' c'' >2\fermata |
}

pianorightuppercoda =  {
    \repeat volta 2 { \pianorightuppercodaa }
    \alternative { { \pianorightuppercodab } { \pianorightuppercodac } }
    \pianorightuppercodad
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoleftupperintro =  {
    \set fingeringOrientations = #'(up right right)
    \dynamicUp \hideDynamics
    \partial 16 s16 |
    \grace { s8 } r2\ff |
    r2 |
    r2 |
    r2 |
    < g-5 b-3 d'-1 >2 |
    < g-5 c'-2 e'-1 >2 |
    < g-5 d'-2 f'-1 >4 < g-5 c'-3 e'-1 >4 |
    < g-5 b-3 d'-1 >4 g4-5 |
}

pianoleftuppersectionaa =  {
      c8 [ g8 ] d8 [ g8 ] |
      e8 [ < g c' >8 ] f8 [ < a d' >8 ] |
      g8 [ < b f' >8 ] < c' e' >8 [ g8 ] |

      c8 [ g8 ] d8 [ g8 ] |
      e8 [ < g c' >8 ] f8 [ < a d' >8 ] |
}

pianoleftuppersectionab =  {
      g8[ < b f' >8 ] < c' e' >8 r8 |
}

pianoleftuppersectionac =  {
      g8[ < b f' >8 ] < c' e' >8 r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 { \pianoleftuppersectionaa }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionb =  {
      fis8[ < a c' >8 ]   d8[ < a c' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      a8[ < c' d' >8 ]   fis8[ < a c' d' >8 ] |
    < g b d' >8[ < fis c' d' >8 ] < g b d' >8 r8 |
      fis8[ < a c' >8 ]   d8[ < a c' >8 ] |
      g8[ < b d' >8 ]   d8[ < b d' >8 ] |
      a8[ < c' d' >8 ]   fis8[ < a c' d' >8 ] |
    < g b d' >8[ < fis c' d' >8 ] < g b >8 r8 |
}

pianoleftuppersectionc =  {
    \set fingeringOrientations = #'(up right right)
    < g-5 b-3 d'-1 >8[ < g b d' >8 < g b d' >8 < g b d' >8 ] |
    < g-5 c'-2 e'-1 >8[ < g c' e' >8 < g c' e' >8 < g c' e' >8 ] |
    < g-5 b-3 d'-1 >8[ < g b d' >8 < g b d' >8 < g b d' >8 ] |
    < g c' e' >8[ < g b d' >8 ] < g c' e' >8 r8 |
    < g-5 b-3 d'-1 >8[ < g b d' >8 < g b d' >8 < g b d' >8 ] |
    < g-5 c'-2 e'-1 >8[ < g c' e' >8 < g c' e' >8 < g c' e' >8 ] |
    < g-5 b-3 d'-1 >8[ < g b d' >8 < g b d' >8 < g b d' >8 ] |
    < g c' e' >8[ < g b d' >8 ] < g c' e' >8 r8 |
}

pianoleftuppersectiond =  {
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ] < g c' e' >4-> |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
    < g b d' >8-> r8 < g b d' >8-> r8 |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
      g8[ < b d' >8 ] < g c' e' >4-> |
      g8[ < b d' >8 ]   fis8[ < a d' >8 ] |
    < g b d' >8-> r8 < g b d' >8-> r8 |
}

pianoleftuppersectione =  {
    \set fingeringOrientations = #'(up right right)
    < g b d' >8[ < g b d' >8 ] < fis c' d' >8[ < fis c' d' >8 ] |
    < g b d' >8[ < g b d' >8 ] < g c' e' >8[ < g c' e' >8 ] |
    < g b d' >8[ < g b d' >8 ] < d c' >8[ < d c' >8 ] |
    < g b >8[ < d d' >8 ] < g b >8 r8 |
    < g b d' >8[ < g b d' >8 ] < fis c' d' >8[ < fis c' d' >8 ] |
    < g b d' >8[ < g b d' >8 ] < g c' e' >8[ < g c' e' >8 ] |
    < g b d' >8[ < g b d' >8 ] < d c' >8[ < d c' >8 ] |
      g8[-1 f8-2 e8-3 d8-4 ] |
}

pianoleftuppercodaa =  {
      c8 [ g8 ] d8 [ g8 ] |
      e8 [ < g c' >8 ] f8 [ < a d' >8 ] |
      g8 [ < b f' >8 ] < c' e' >8 [ g8 ] |
      c8 [ g8 ] d8 [ g8 ] |
      e8 [ < g c' >8 ] f8 [ < a d' >8 ] |
}

pianoleftuppercodab =  {
      g8[ < b f' >8 ] < c' e' >8 r8 |
}

pianoleftuppercodac =  {
      g8[ < b f' >8 ] < c' e' >8 r8 |
}

pianoleftuppercodad =  {
    < c c' >4 < c\ff c' >4 |
    < c, c >2\fermata |
}

pianoleftuppercoda =  {
    \repeat volta 2 { \pianoleftuppercodaa }
    \alternative { { \pianoleftuppercodab } { \pianoleftuppercodac } }
    \pianoleftuppercodad
}

pianorightuppernotes =  {
    \key c \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
    \pianorightuppercoda
}

pianorightlowernotes =  {
    \time 2/4
}

pianoleftuppernotes =  {
    \key c \major
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
    \pianoleftuppercoda
}

pianoleftlowernotes =  {
    \time 2/4
}

pianorightnotesmidi =  {
    \key c \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \key c \major
    \time 2/4
    \pianoleftupperintro
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
    \pianoleftuppercoda
}

drumshighintro = \drummode {
    \partial 16 s16 |
    \grace { s8 } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionaa = \drummode {
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

drumshighsectionc = \drummode {
    s2 |
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

drumshighsectione = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighcodaa = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighcodab = \drummode {
    s2 |
}

drumshighcodac = \drummode {
    s2 |
}

drumshighcodad = \drummode {
    s2 |
    s2 |
}

drumshighcoda = \drummode {
    \repeat volta 2 { \drumshighcodaa }
    \alternative { { \drumshighcodab } { \drumshighcodac } }
    \drumshighcodad
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
    \drumshighcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumslowintro = \drummode {
    \partial 16 s16 |
    \grace { s8 } s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionaa = \drummode {
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

drumslowsectionc = \drummode {
    s2 |
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

drumslowsectione = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowcodaa = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowcodab = \drummode {
    s2 |
}

drumslowcodac = \drummode {
    s2 |
}

drumslowcodad = \drummode {
    s2 |
    s2 |
}

drumslowcoda = \drummode {
    \repeat volta 2 { \drumslowcodaa }
    \alternative { { \drumslowcodab } { \drumslowcodac } }
    \drumslowcodad
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
    \drumslowcoda
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    c2 | s4 d4:min | g4:7 c4 |
    c4 g4:7 | c4 d4:min |
}

previewnotes = {
    \key c \major
    \time 2/4
    g''8 e''16 g''16 f''8 d''16 f''16 |
    e''8 c''16 e''16 f''16 e''16 d''16 c''16 |
    b'16 g'16 a'16 b'16 c''8 r8 |
    c''8 d''16 e''16 f''8 d''16 f''16 |
    e''8 c''16 e''16 f''16 e''16 d''16 c''16 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

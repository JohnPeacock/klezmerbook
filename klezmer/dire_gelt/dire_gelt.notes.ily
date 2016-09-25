\version "2.18.2"

bandmsectiona = {
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    \breakA \bar "||"
}

bandmsectionb = {
    \markS \positionS
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    \bar "||"
    \markCH \positionCH
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |
    \markDSsimple \positionDS
    \bar "|."
}

bandm = {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
}

bandmNV = {
    \tempo "Rubato"
    \bandmsectiona
    \tempo \tempostring
    \bandmsectionb
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 60
    \bandmsectiona
    \tempo 4 = 120
    \bandmsectionb
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    g'16 fis'16 e'4 e'8 |
    fis'8 g'8 a'4 |
    g'16 fis'16 e'4 g'8 |
    fis'8 dis'8 b4 |

    g'16 fis'16 e'4 e'8 |
    fis'8 g'8 a'4 |
    b'16 b'16 a'8 g'8 fis'8 |
    e'4 ~ e'4 |
}

voiceonesectionb = {
    g'8. e'16 e'8 e'8 |
    g'4 a'4 |
    g'8 e'8 e'8 e'8 |
    g'4 a'8. a'16 |

    g'8 e'8 e'8 e'8 |
    g'16 g'16 a'4. |
    b'8 a'16 a'16 g'8 fis'8 |
    e'4 d'4 |

    g'16 g'16 g'4 b'8 |
    d''8 d''8 d''4 |
    g'16 fis'16 e'4 g'8 |
    fis'8 dis'8 b4 |

    g'16 fis'16 e'4 e'8 |
    a'8 b'8 c''4 |
    b'16 b'16 a'8 g'8 fis'8 |
    e'4. r8 |
}

melodynotes = {
    \time 2/4
    \key e \minor
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 2/4
    \key e \minor
    \preintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

voicetwosectionb = {
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
    s2 |
    s2 |
}

tenorharmony = {
    \time 2/4
    \key e \minor
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 2/4
    \key e \minor
    \preintro
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

voicethreesectionb = {
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
    s2 |
    s2 |
}

counter = {
    \time 2/4
    \key e \minor
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 2/4
    \key e \minor
    \preintro
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

basslinesectionb = {
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
    s2 |
    s2 |
}

bassline = {
    \time 2/4
    \key e \minor
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 2/4
    \key e \minor
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    e2:min | b2:7 | e2:min | b2:7 |
    e2:min | a2:min | b2:7 | e2:min |
}

chordletterssectionb = \chordmode {
    e2:min | a2:min | e2:min | a2:min |
    e2:min | a2:min | b2:7 | b4:7 d4 |
    g2 | d2 | e2:min | b2:7 |
    e2:min | a2:min | b2:7 | e2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 2/4
    \preintro
    \chordletterssectiona
    \chordletterssectionb
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

guitarnotessectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
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
    \time 2/4
    \key e \minor
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 2/4
    \key e \minor
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotessectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

pianorightnotessectionb = {
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
    s2 |
    s2 |
}

pianorightnotes = {
    \time 2/4
    \key e \minor
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 2/4
    \key e \minor
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

pianoleftnotessectionb = {
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
    s2 |
    s2 |
}

pianoleftnotes = {
    \time 2/4
    \key e \minor
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 2/4
    \key e \minor
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionb = {
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
    \drumshighsectionb
}

drumslowsectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionb = {
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
    \drumslowsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

leadsheetnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
  Dir- e gelt! Un oy oy oy!  Dir- e gelt! Un bo- she moy!
  Dir- e gelt! Un gra- de- voy!  Dir -e gelt mus men tsoln!

  Kumt a- rayn der bale- bos, mit dem gro- bn shte- kn.
  Un az men tsolt kayn dir- e gelt, shtelt er a- roys di be- tn.

  Dir- e gelt! Un oy oy oy!  Dir- e gelt! Un bo- she moy!
  Dir- e gelt! Un gra- de- voy!  Dir -e gelt mus men tsoln!
}
textlb = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _

  Farvos zol ikh tsoln dire gelt, az di kikh iz tse- bro- khn?
  Farvos zol ikh tsoln dir- e gelt, "az ikh" hob nit vu tsu ko- khn?
}
textlc = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _

  Kumt a- rayn der zt- rush, nemt er arop dos hi- tl.
  Un az men tsolt kayn dir- e gelt, hengt er a- roys di kvi- tl.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
    e2:min | b2:7 | e2:min | b2:7 |
}

previewnotes = {
    \time 2/4
    \key e \minor
    \tempo "Rubato"
    g'16 fis'16 e'4 e'8 |
    fis'8 g'8 a'4 |
    g'16 fis'16 e'4 g'8 |
    fis'8 dis'8 b4 |
}

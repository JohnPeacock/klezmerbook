


% don't forget alto flute

\version "2.18.2"

bandmintro = {
    \partial 8 s8
}

metronomeintro = {
    s2 |
}

bandmsectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

bandmsectionb = {
}

bandm = {
    \time 2/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb \bar "|."
}

bandmNV = {
    \tempo "Rubato"
    \bandmintro
    \bandmsectiona
    \tempo \tempostring
    \bandmsectionb \bar "|."
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \metronomeintro
    \tempo 4 = 90
    \bandmsectiona
    \tempo 4 = 110
    \bandmsectionb
}

% ----------------------------------------

voiceoneintro = {
    \partial 8 d'8 \mf
}

voiceonemetronomeintro = {
    s4. d'8 \mf
}

voiceonesectiona = {
    g'16 g'16 g'8 g'8 bes'8 |
    d''2 |
    cis''8. bes'16 a'8 cis''8 ~ | cis''8
    d''4 r8 |

    f''4 f''8 e''8 |
    d''16
    f''16 e''4 d''8 |
    cis''8 d''8. cis''16 bes'8 |
    cis''8 d''4. \breathe |

    e''4 d''8 cis''16 bes'16 |
    cis''8-. bes'8-. a'8-. g'8-. |
    g'8 ( d'8 ) g'8 bes'8 |
    cis''8 ( d''4. ) \breathe |

    e''8-. d''8-. cis''8-. bes'8-. |
    cis''8-. bes'8-. a'8-. g'8 \breathe |
    g'8 d'8 bes'16 ( a'16 bes'16 ) fis'16 |
    g'2 |
}

voiceonesectionb = {
}

melodynotes = {
    \time 2/4
    \key bes \major
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 2/4
    \key bes \major
    \preintro
    \voiceonemetronomeintro
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \partial 8 s8
}

voicetwometronomeintro = {
    s2
}

voicetwosectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

voicetwosectionb = {
}

tenorharmony = {
    \time 2/4
    \key bes \major
    \voicetwointro
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 2/4
    \key bes \major
    \preintro
    \voicetwometronomeintro
    \voicetwosectiona
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
    \partial 8 s8
}

voicethreemetronomeintro = {
    s2
}

voicethreesectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

voicethreesectionb = {
}

counter = {
    \time 2/4
    \key bes \major
    \voicethreeintro
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 2/4
    \key bes \major
    \preintro
    \voicethreemetronomeintro
    \voicethreesectiona
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \partial 8 s8
}

basslinemetronomeintro = {
    s2
}

basslinesectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

basslinesectionb = {
}

bassline = {
    \time 2/4
    \key bes \major
    \basslineintro
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 2/4
    \key bes \major
    \preintro
    \basslinemetronomeintro
    \basslinesectiona
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

chordlettersintro = {
    \partial 8 s8
}

chordlettersmetronomeintro = {
    s2
}

chordletterssectiona = \chordmode {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

chordletterssectionb = \chordmode {
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 2/4
    \preintro
    \chordlettersmetronomeintro
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

guitarnotesintro = {
    \partial 8 s8
}

guitarnotesmetronomeintro = {
    s2
}

guitarnotessectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

guitarnotessectionb = {
}

guitarnotes = {
    \time 2/4
    \key bes \major
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 2/4
    \key bes \major
    \preintro
    \guitarnotesmetronomeintro
    \guitarnotessectiona
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

pianorightnotesintro = {
    \partial 8 s8
}

pianorightnotesmetronomeintro = {
    s2
}

pianorightnotessectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianorightnotessectionb = {
}

pianorightnotes = {
    \time 2/4
    \key bes \major
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 2/4
    \key bes \major
    \preintro
    \pianorightnotesmetronomeintro
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotesintro = {
    \partial 8 s8
}

pianoleftnotesmetronomeintro = {
    s2
}

pianoleftnotessectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianoleftnotessectionb = {
}

pianoleftnotes = {
    \time 2/4
    \key bes \major
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 2/4
    \key bes \major
    \preintro
    \pianoleftnotesmetronomeintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = {
    \partial 8 s8
}

drumshighmetronomeintro = {
    s2
}

drumshighsectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

drumshighsectionb = {
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighmetronomeintro
    \drumshighsectiona
    \drumshighsectionb
}

drumslowintro = {
    \partial 8 s8
}

drumslowmetronomeintro = {
    s2
}

drumslowsectiona = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

drumslowsectionb = {
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowmetronomeintro
    \drumslowsectiona
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
  Di ma- me hat mikh ge- shikt,
  koy- fn a Yosh- chik.
  Hat zikh in mir far- libt
  a Bokh- er, a Pri- kosh- chik.
  Oy, iz dos a bokh- er- l,
  a sheyns un a fayns.
  Mir far zayn- e beyn- de- lekh. Oy!
  Ketz- e- le du mayns!
}
textlb = \lyricmode {
  Di ma- me hat mikh ge- shikt,
  koy- ln a hin. _
  Hat zikh in mir far- libt
  dem Sho- khets a _ zin. _
  Oy, iz dos a Shokh- et- l,
  in "zay- de-" ner Ka- "po- te,"
  Shenk mir az- a khus- n- dl,
  oy, tayr- e, zis- er "Ta- te!"
}
textlc = \lyricmode {
  Di ma- me hat mikh ge- shikt,
  fre- gn a Shay- le.
  Hot zikh in mir far- libt
  Der Ruv _ oyf a vay- le.
  Oy, iz dos a Reb- en- yu! _
  "Oy, iz" dos a "Tsa- dik!"
  Mir far zeyn- e Pey- e- lekh!
  Un mir far zeyn- em "spo- dik!"
}
textld = \lyricmode {
  "Az di" ma- me hat mikh ge- "shikt, in"
  "Mark a-" rayn nokh Koy- ln,
  hob ikh _ mikh far- libt
  "mit a" "Ying- e-" le _ fun Poy- ln.
  Oy, iz dos a Ying- "e- le,"
  mit _ "Ey- ge-" lekh vos "bren- en!"
  "Ikh vil" shoyn gur kayn an- dern, _
  in leb- n mer nisht "ken- en!"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
}

previewnotes = {
    \time 2/4
    \key bes \major
    \tempo "Rubato"
    g'16 g'16 g'8 g'8 bes'8 |
    d''2 |
    cis''8. bes'16 a'8 cis''8 ~ | cis''8
    d''4 r8 |
}

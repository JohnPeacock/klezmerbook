\version "2.18.2"

bandm = {
    \time 3/4
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2. }

metronome = {
    \time 3/4
    \preintro
    \tempo 4 = 120
    \bandm
    \bandm
    \bandm
}

voiceone = {
    \time 3/4
    \key d \minor
    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |
    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    f'2. ~ |
    f'2. |
    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |
    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    d'2. ~ | d'2. |
    \bar "||"
    d'4 fis'4 a'4 |
    c''4 bes'4 a'4 |
    bes'8 a'8 g'2 ~ |
    g'2. |

    c'4 e'4 g'4 |
    bes'4 a'4 g'4 |
    g'8 g'8 f'4. a'8 |
    g'8 f'8 e'2 |
    \bar "||"

    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |

    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    d'2. ~ |
    d'2. |
    \bar "|."
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \preintro
    \voiceone
    \voiceone
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

countermidi = {
    \preintro
    \counter
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 3/4
    \key d \minor
    d4 r4 r4 | d4 r4 r4 | a,4 r4 r4 | a,4 r4 r4 |
    a,4 r4 r4 | a,4 r4 r4 | d4 f4 g4 | a4 f4 e4 |
    d4 r4 r4 | d4 r4 r4 | a,4 r4 r4 | a,4 r4 r4 |
    a,4 r4 r4 | a,4 r4 r4 | d4 f4 g4 | a4 f4 e4 |
    \bar "||"
    d4 r4 r4 | d4 r4 r4 | g,4 r4 r4 | g,4 r4 r4 |
    c4 r4 r4 | c4 r4 r4 | f2. | a2. |
    d4 r4 r4 | d4 r4 r4 | a,4 r4 r4 | a,4 r4 r4 |
    a,4 r4 r4 | a,4 r4 r4 | d4 f4 g4 | a4 f4 e4 |
    \bar "|."
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c {
    \flutenotes
}

altoflutetenorharmony = \transpose g c {
    \tenorforflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c'' {
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

trombonenotes = \transpose c c, {
    \melodynotes
}

trombonenotesmidi = \transpose c c, {
    \melodynotesmidi
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


chordletters = \chordmode {
    \time 3/4
    d2.:min | d2.:min | a2.:7 | a2.:7 |
    a2.:7 | a2.:7 | d2.:min | d2.:min |
    d2.:min | d2.:min | a2.:7 | a2.:7 |
    a2.:7 | a2.:7 | d2.:min | d2.:min |
    \bar "||"
    d2.:7 | d2.:7 | g2.:min | g2.:min |
    c2.:7 | c2.:7 | f2. | a2.:7 |
    d2.:min | d2.:min | a2.:7 | a2.:7 |
    a2.:7 | a2.:7 | d2.:min | d2.:min |
    \bar "|."
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
    \time 3/4
    \key d \minor
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \time 3/4
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \stemDown
    \time 3/4
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "|."
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \time 3/4
    \key d \minor
    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |
    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    f'2. ~ |
    f'2. |
    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |
    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    d'2. ~ |
    d'2. |
    \bar "||"
    d'4 fis'4 a'4 |
    c''4 bes'4 a'4 |
    bes'8 a'8 g'2 ~ |
    g'2. |

    c'4 e'4 g'4 |
    bes'4 a'4 g'4 |
    g'8 g'8 f'4. a'8 |
    g'8 f'8 e'2 |
    \bar "||"

    a4 d'4 f'4 |
    a'8 gis'8 a'4. bes'8 |
    a'4 cis'2 ~ |
    cis'2. |

    a4 cis'4 e'4 |
    g'4 f'4 e'4 |
    d'2. ~ |
    d'2. |
    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    maz- l, es shaynt a mol far ye- dn
    far yed- n, nor nisht far mir.
    maz- l, du brengst a ye- dn frey- dn;
    far- vos far- zams- tu mayn tir?

    oy, vi es tut benk a ye- de sho.
    dos_le- bn far- geyt
    un keyn hof- en- ung iz alts nish- to.

    maz- l es shaynt a mol far ye- dn,
    far ye- dn, nor nisht far mir.

%    ven es kumt on di nakht,
%    blayb ikh zits- n un trakht:
%    nokh a tog iz shoyn vider farbay,
%    un der kholem vos ikh hob gekholemt far zikh
%    iz avek mitn vint af dos nay
}
textlb = \lyricmode {
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
  \time 3/4
  d2.:min | d2.:min | a2.:7 | a2.:7 |
}

previewnotes = {
  \time 3/4
  \key d \minor
  \tempo \tempostring
  a4 d'4 f'4 |
  a'8 gis'8 a'4. bes'8 |
  a'4 cis'2 ~ |
  cis'2. |
}

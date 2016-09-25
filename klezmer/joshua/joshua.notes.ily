\version "2.18.2"

bandm = {
    \time 4/4
    s1*4 | \breakOne
    s1*4 | \breakTwo
    s1*4 | \breakThree
    s1*4 | \breakFour
    s1*4 | \breakFive
    s1*4 | \breakSix
    s1*4 | \breakSeven
    s1*4 | \breakEight
    s1*4 |
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \bandm
}

voiceone = {
    \key c \major
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |


    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
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
    \time 4/4
    \key c \major
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key c \major
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

countermidi = {
    \preintro
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key c \major
    R1*4 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
}

flutenotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionnotes = {
    \time 4/4
    \key c \major
    R1*4 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

accordionnotesmidi = {
    \accordionnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = {
    \key ees \major
    \time 4/4
    R1*4 |

    f'1 |
    f'8 f'8 r8 f'8 r2 |
    ees'8 ees'8 r8 ees'8 r2 |
    f'8 f'8 r8 f'8 r2 |

    f'1 |
    f'8 f'8 r8 f'8 r2 |
    f'8 g'8 ~ g'4 f'8 r8 ees'8 f'8 ~ |
    f'2 r4. c''8 ( |

    f''8 ) c''8 c''8 c''8 c''8 c''8 r4 |
    c''4 c''8 c''8 ~ c''2 |
    c''8 c''8 r4 des''4 des''8 c''8 ~ |
    c''2 r4 r8 c''8 ( |

    f''8 ) c''8 c''8 c''8 c''8 c''8 r4 |
    bes'4 aes'8 c''8 ~ c''4. c''8 ( |
    f''8 ) g''8 ~ g''4 f''8\mordent ees''8 f''4 ~ |
    f''2 r2 |

    aes''1 |
    r8 ges'' 8 f''8 ges''8 f''8 c''8 aes'8 f'8 |
    c''8 c''8 r4 d''4 d''8 c''8 ~ |
    c''2 r2 |

    f''8 c''8 c''8 c''8 c''8 c''8 r4 |
    bes'4 aes'8 c''8 ~ c''4. r8 |
    f''8 g''8 ~ g''4 f''8 ees''8 f''4 ~ |
    f''2 r2 |

    c''1 |
    c''8 c''8 r8 c''8 r2 |
    f''1 |
    \override Glissando.style = #'zigzag
    r2 f''4 \glissando c''4 |

    c''1 |
    c''8 r8 c''4 r2 |
    f'8 g'8 ~ g'4 f'8 r8 ees'8 f'8 ~ |
    f'2 r2 |
}

clarinetnotesmidi = {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = {
    \key ees \major
    \time 4/4
    R1*4 |

    f'1 |
    f'8 f'8 r8 f'8 r2 |
    ees'8 ees'8 r8 ees'8 r2 |
    f'8 f'8 r8 f'8 r2 |

    f'1 |
    f'8 f'8 r8 f'8 r2 |
    f'8 g'8 ~ g'4 f'8 r8 ees'8 f'8 ~ |
    f'2 r4. c''8 ~ |

    c''1 |
    c''1 |
    c''2 ( d''2 |
    c''2 ) r2 |

    f'1 |
    f'1 |
    R1*2 |

    c''1 |
    c''1 |
    R1 |
    r2 c'2 |

    f'1 |
    f'1 |
    r4 f'4 r4 ees'4 |
    \override Glissando.style = #'zigzag
    r4 aes'4 \glissando ges'4 r4 |

    c''8 c''8 r8 f'8 r4. f'8 ( |
    c''8 ) c''8 r8 d''8 r2 |
    aes'8 aes'8 r4 bes'4 aes'8 c''8 ~ |
    c''2 r2 |

    c''8 c''8 r8 f'8 r4. f'8 |
    c''8 c''8 r8 d''8 r2 |
    f''8 c''8 ~ c''4 bes'4 aes'4 |
    c''8 bes'8 aes'8 f'8 ~ f'4 r4 |
}

altosaxnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = {
}

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = {
    \key ees \major
    \time 4/4
    \override Glissando.style = #'zigzag
    \glissnogap \inote bes'1*1/8 \glissando f''1*7/8 \mordent ^\markup { \normalsize "cup mute" } ( |
    aes''4 ) r4 r2 |
    \glissnogap \inote bes'1*1/8 \glissando f''1*7/8 \mordent ^\markup { \normalsize "shake" }( |
    g'4 ) r4 r4 g'8 aes'8 |

    f'8 e'8 f'8 g'8 aes'8 g'8 aes'8 bes'8 |
    c''8 aes'8 r8 c'8 ~c'4 r4 |
    b'8 aes'8 r8 b'8 ~ b'4 r4 |
    c'8 aes'8 r8 c'8 ~ c'4 r4 |

    f'8 e'8 f'8 g'8 aes'8 g'8 aes'8 bes'8 |
    c''8 aes'8 r8 c'8 ~c'4 r8 aes'8 |
    c''4 bes'4 aes'4 g'4 |
    f'2 r2 |

    R1*8 |

    r2 f''8-- f''8 r4 |
    r1 |
    f''8 f''8 r4 ges''4 ges''8 f''8 ~ |
    f''1 |

    R1*4 |

    f'8-- f'8-. r8 g'8 r4. g'8 ( |
    aes'8 ) aes'8 r8 bes'8 r4. bes'8 |
    c''8-- bes'8 r4 aes'4-- bes'8 c''8 ~ |
    c''2 r2 |

    f'8 f'8 r8 g'8 r4. g'8 ( |
    aes'8 ) aes'8 r8 bes'8 r2 |
    f''8 c''8 ~ c''4 bes'4  aes'4 |
    c''8 bes'8 aes'8 f'8 ~ f'4 r4 |
}

trumpetnotesmidi = {
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \time 4/4
    \key c \major
    R1*4 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

trombonenotesmidi = {
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
}

violinnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
}

violinnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


chordletters = \chordmode {
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

guitarnotes = {
}

guitarnotesmidi = {
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
}

pianorightuppernotes = {
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
}

pianoleftnotes = {
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
}

drumshighmidi = \drummode {
}

drumslow = \drummode {
}

drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
}
textlb = \lyricmode {
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
  \time 4/4
  c1 | c1 | c1 | c1 |
}

previewnotes = {
  \time 4/4
  \key c \major
  \tempo \tempostring
  s1 |
  s1 |
  s1 |
  s1 |
}

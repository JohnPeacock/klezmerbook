\version "2.18.2"

bandm = {
    \time 3/4
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        d'4 f'4 a'4 |
	d''4 a'4 f'4 |
	a'4 g'2 ~ |
	g'2. |

        g'4 f'4 e'4 |
        g'4 f'4 e'4 |
	f'2. ~ |
	f'2. |

        c'4 f'4 a'4 |
	c''4 bes'4 a'4 |
	c''4 g'2 ~ |
	g'2. |

        g'4 a'4 bes'4 |
	d''4 c''4 bes'4 |
	a'2. ~ |
	a'2. |
    }
    \repeat volta 2 {
        f'2. |
	f'4 e'4 d'4 |
        f'2. |
	f'4 e'4 d'4 |

        f'4 e'4 d'4 |
        f'4 e'4 d'4 |
        e'2. ~ |
	e'2. |

        g'2. |
	g'4 f'4 e'4 |
        f'2. |
	f'4 e'4 d'4 |

        e'4 e'4 e'4 |
	e'4 f'4 e'4 |
        d'2. ~ |
	d'2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        d4 r4 r4 | d4 r4 r4 | g,4 r4 r4 | g,4 r4 r4 |
        g,4 r4 r4 | g,4 r4 r4 | d4 f4 g4 | a4 f4 e4 |
        f,4 r4 r4 | d4 r4 r4 | g,4 r4 r4 | g,4 r4 r4 |
        g,4 a,4 bes,4 | d4 c4 bes,4 | f4 r4 r4 | a,4 r4 r4 |
    }
    \repeat volta 2 {
        d4 r4 r4 | f4 r4 r4 | d4 r4 r4 | f4 r4 r4 |
        d4 r4 r4 | e4 r4 r4 | a,4 cis4 d4 | e4 cis4 a,4 |
        g,4 r4 r4 | a,4 r4 r4 | d4 r4 r4 | f4 r4 r4 |
        e,4 f,4 g,4 | a,4 cis4 a,4 | d4 r4 r8 a,8 | d4-. r4 r4 |
    }
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
    \repeat volta 2 {
        d2.:min | d2.:min | g2.:min | g2.:min |
        g2.:min | g2.:min | d2.:min | d2.:min |
        f2. | d2.:7 | g2.:min | g2.:min |
        g2.:min | c2.:7 | f2. | a2.:7 |
    }
    \repeat volta 2 {
        d2.:min | d2.:min | d2.:min | d2.:min |
	d2.:min | e2.:7 | a2.:7 | a2.:7 |
        g2.:min6 | a2.:7 | d2.:min | d2.: min |
	g2.:min6 | a2.:7 | d2.:min | d2.:min |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
    \time 3/4
    \key d \minor
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
    \time 3/4
    \key d \minor
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
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
    \repeat volta 2 {
        d'4 f'4 a'4 |
	d''4 a'4 f'4 |
	a'4 g'2 ~ |
	g'2. |

        g'4 f'4 e'4 |
        g'4 f'4 e'4 |
	f'2. ~ |
	f'2. |

        c'4 f'4 a'4 |
	c''4 bes'4 a'4 |
	c''4 g'2 ~ |
	g'2. |

        g'4 a'4 bes'4 |
	d''4 c''4 bes'4 |
	a'2. ~ |
	a'2. |
    }
    \repeat volta 2 {
        f'2. |
	f'4 e'4 d'4 |
        f'2. |
	f'4 e'4 d'4 |

        f'4 e'4 d'4 |
        f'4 e'4 d'4 |
        e'2. ~ |
	e'2. |

        g'2. |
	g'4 f'4 e'4 |
        f'2. |
	f'4 e'4 d'4 |

        e'4 e'4 e'4 |
	e'4 f'4 e'4 |
        d'2. ~ |
	d'2. |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    a_shve- ster bin ikh dir a tray- e
    oy_bru- der- l her zikh no ayn...
    a_pik- tsche bist du a me- kahy- e
    tzu_dar ikh gor dayn bri- der zayn?

    oy shloy- me- le, oy shloy- me- le,
    bru- der kum nen- ter tsu mir,
    oy shloy- me- le, oy shloy- me- le,
    ikh bin me- shu- ge far dir.
}
textlb = \lyricmode {
    a_bru- der kh’vel dir to- mid akht- n
    un_hit- n dikh af shrit un trit.

    oy_kush mikh un zol zikh dikh dakht- n
    az ikh bin dayn bru- der nit.

    oy mal- ke- le, oy mal- ke- le,
    shve- ster _ _ _ _ _
    oy mal- ke- le, oy mal- ke- le,
    _ _ _ _ _ _ _
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

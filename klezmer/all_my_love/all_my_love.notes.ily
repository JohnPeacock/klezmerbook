\version "2.18.2"

bandm = {
    \time 3/4
    \markA \positionA
    \repeat volta 2 {
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
        s2. | s2. | s2. | s2. |
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }
    \bar "||"
    \markB \positionB \breakB
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    \bar "||"
    \markC \positionC \breakC
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
    \repeat volta 2 {
        a'2. | cis'2. | d'2. ~ | d'4 f'4 a'4 |
        d''2. | fis'2. | g'2. ~ | g'4 a'4 bes'4 |
        a'2. | e'2. | f'4 e'4 d'4 | g'4 a'4 bes'4 |
    }
    \alternative {
        { f'2. | d'2. | e'2. ~ | e'2. | }
        { f'2. | e'2. | d'2. ~ | d'4 d''4 c''4 | }
    }

    bes'4. a'8 g'4 | r4 bes'4 d''4 | a'4. gis'8 a'4 | r4 a'4 bes'4 |
    g'4. f'8 e'4 | r4 g'4 a'4 | f'4. e'8 d'4 | r4 d''4 c''4 |
    bes'4. a'8 g'4 | r4 bes'4 d''4 | a'4. gis'8 a'4 | r4 a'4 b'4 |
    cis''2 cis''4 | b'4 e'4 b'4 | a'2. |
    \ottava #1 a''8 bes''8 a''8 g''8 f''8 g''8 \ottava #0 |

    a'2. | cis'2. | d'2. ~ | d'4 f'4 a'4 |
    d''2. | fis'2. | g'2. ~ | g'4 a'4 bes'4 |
    a'2. | e'2. | f'4 e'4 d'4 | g'4 a'4 bes'4 |
    f'2. | e'2. | d'2. ~ | d'2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
        d4 r4 r4 | e4 r4 r4 | f4 r4 r4 | d4 r4 r4 |
        g4 r4 r4 | a4 r4 r4 | bes4 r4 r4 | g4 r4 r4 |
        c4 r4 r4 | a,4 r4 r4 | d4 f4 f4 | bes,4 a,4 g,4 |
    }
    \alternative {
        { a,4 r4 r4 | e4 r4 r4 | a4 cis4 cis4 | cis2 r4 | }
        { a,4 r4 r4 | a,4 r4 r4 | d4 f4 f4 | f4-. r4 r4 | }
    }

    d4 r4 r4 | d4 r4 r4 | d4 r4 r4  | d4 r4 r4 |
    a,4 r4 r4 | a,4 r4 r4 | d4 r4 r4 | d4 r4 r4 |
    d4 r4 r4 | d4 r4 r4 | d4 r4 r4 | d4 r4 r4 |
    e4 r4 r4 | e4 r4 r4 | a4 r8 a,8 a,4 | a,4-. r4 r4 |

    d4 r4 r4 | e4 r4 r4 | f4 r4 r4 | d4 r4 r4 |
    g4 r4 r4 | a4 r4 r4 | bes4 r4 r4 | g4 r4 r4 |
    c4 r4 r4 | a,4 r4 r4 | d4 f4 f4 | bes,4 a,4 g,4 |
    a,4 r4 r4 | a,4 r4 r4 | d4 f4 f4 | f4-. r4 r4 |
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
    \repeat volta 2 {
        d2.:min | a2.:7 | d2.:min | d2.:min |
        d2.:7 | d2.:7 | g2.:min | g2.:min |
        a2.:7 | a2.:7 | d4:min a4:7 d4:min | g4:min d4:7 g4:min |
    }
    \alternative {
        { b2.:min7.5- | e2.:7 | a2.:7 | a2.:7 | }
        { gis2.:dim | a2.:7 | d2.:min | d4:min d2:7 | }
    }

    g2.:min | g2.:min | d2.:min | d2.:min |
    a2.:7 | a2.:7 | d2.:min | d4:min d2:7 |
    g2.:min | g2.:min | d2.:min | b2.:min7.5- |
    a2.:/e | e2.:7 | a2. | a2.:7 |

    d2.:min | a2.:7 | d2.:min | d2.:min |
    d2.:7 | d2.:7 | g2.:min | g2.:min |
    a2.:7 | a2.:7 | d4:min a4:7 d4:min | g4:min d4:7 g4:min |
    gis2.:dim | a2.:7 | d2.:min | d2.:min |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
    }
    \alternative {
        { s2. | s2. | s2. | s2. | }
        { s2. | s2. | s2. | s2. | }
    }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
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
        a'2. | cis'2. | d'2. ~ | d'4 f'4 a'4 |
        d''2. | fis'2. | g'2. ~ | g'4 a'4 bes'4 |
        a'2. | e'2. | f'4 e'4 d'4 | g'4 a'4 bes'4 |
    }
    \alternative {
        { f'2. | d'2. | e'2. ~ | e'2. | }
        { f'2. | e'2. | d'2. ~ | d'4 d''4 c''4 | }
    }

    bes'4. a'8 g'4 | r4 bes'4 d''4 | a'4. gis'8 a'4 | r4 a'4 bes'4 |
    g'4. f'8 e'4 | r4 g'4 a'4 | f'4. e'8 d'4 | r4 d''4 c''4 |
    bes'4. a'8 g'4 | r4 bes'4 d''4 | a'4. gis'8 a'4 | r4 a'4 b'4 |
    cis''2 cis''4 | b'4 e'4 b'4 | a'2. |
    \ottava #1 a''8 bes''8 a''8 g''8 f''8 g''8 \ottava #0 |

    a'2. | cis'2. | d'2. ~ | d'4 f'4 a'4 |
    d''2. | fis'2. | g'2. ~ | g'4 a'4 bes'4 |
    a'2. | e'2. | f'4 e'4 d'4 | g'4 a'4 bes'4 |
    f'2. | e'2. | d'2. ~ | d'2. |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    All my love is for you a- lone,
    it will still keep grow- ing when most o- ther
    loves have flown. _ _ _

    As the years un- fold
    they can on- ly bring
    just the cons- tant joy
    of an end- less spring.

    And our dreams un- told
    that were so i- deal
    will all fade as we
    make them real.

    _ _ _ _ _ _

    I_pro- mise this
    by the stars a- bove
    dear that I'll spend all my life
    giv- ing you all my love.
}
textlb = \lyricmode {
    All my love is for- ev- er new
    it was just cre- at- ed my dear to be
    _ _ _ shared with you.
}
textlc = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
  \time 3/4
  d2.:min | a2.:7 | d2.:min | d2.:min |
}

previewnotes = {
  \time 3/4
  \key d \minor
  \tempo \tempostring
  a'2. | cis'2. | d'2. ~ | d'4 f'4 a'4 |
}

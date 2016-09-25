\version "2.18.2"

bandmNV = {
    \tempo \tempostring
    \time 3/4

    \repeat volta 2 {
        \markA \positionA
        s2. | \breakAone
        s2. | \breakAtwo
        s2. | \breakAtre
        s2. | \breakAfor
        s2. | \breakAfiv
        s2. | \breakAsix
        s2. | \breakAsev
        s2. | \breakAeit
        \bar "||"
        s2. | \breakAnin
        s2. | \breakAten
        s2. | \breakAelv
        s2. | \breakAtwl
        s2. | \breakAtht
        s2. | \breakAfrt
        s2. | \breakAfft
        s2. |
        \breakA
    }
    \repeat volta 2 {
        \markB \positionB
        s2. | \breakBone
        s2. | \breakBtwo
        s2. | \breakBtre
        s2. | \breakBfor
        s2. | \breakBfiv
        s2. | \breakBsix
        s2. | \breakBsev
        s2. | \breakBeit
        \bar "||"
        s2. | \breakBnin
        s2. | \breakBten
        s2. | \breakBelv
        s2. | \breakBtwl
        s2. | \breakBtht
        s2. | \breakBfrt
        s2. | \breakBfft
        s2. |
    }
    \markDC \positionDC
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s2. }

metronome = {
    \time 3/4
    \preintro
    \tempo 4 = 120
    \bandmNV
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceone = {
 \time 3/4
 \key d \minor

    \repeat volta 2 {
        a'4. d''8 a'8 g'8 | f'4 d'4 d'4 |
        a'4. d''8 a'8 f'8 | g'4. bes'8 a'8 g'8 |

        d'8 e'8 f'8 g'8 a'8 f'16 a'16 | g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 |
        << {
            d'4. e'8 f'8 g'8

            a'4. d''8 a'8 g'8 |
            f'4 d'4 d'4 |
            a'4. d''8 a'8 f'8 |
            g'4. c''8 \tuplet 3/2 { bes'8 a'8 g'8 } |
        } \\ {
            d'4. a8 d'8 f'8

            d'4. a'8 f'8 e'8 |
            d'4 a4 a4 |
            f'4. a'8 f'8 d'8 |
            d'4. s8 s4 |
        } >>

        f'8 g'8 a'8 bes'8 c''8 a'8 |
        g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 |
        d'2.
    }

    \repeat volta 2 {
        << {
            f''2 e''8 d''8 | e''8 a8 cis'8 e'8 a'8 cis''8 |
            d''4 c''4. bes'8 | a'2. |

            bes'4 a'4 g'4 | a'4 d''4 e''4 |
            f''4. e''8 f''8 g''8 | e''2.

            f''2 e''8 d''8 | e''8 a8 cis'8 e'8 a'8 cis''8 |
            d''4 c''4. bes'8 | a'2. |

            bes'4 a'4 g'4 | a'4 d'4 g'4 |
            f'4. g'8 ees'8 f'8 | d'2. |
        } \\ {
            a'2 g'8 f'8 | g'8 a8 cis'8 e'8 a'8 cis''8 |
            f'4 e'4. d'8 | c'2. |

            d'4 c'4 bes4 | c'4 f'4 g'4 |
            a'4.  g'8  a'8  bes'8 | g'2.

            a'2  g'8  f'8 | g'8 a8  cis'8 e'8 a'8 cis''8 |
            f'4  e'4.  d'8 | c'2. |

            d'4  c'4  bes4 | c'4  f4  bes4 |
            a4.  bes8  g8  a8 | f2. |
        } >>
    }
}

melodynotes = \transpose e a {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone except that a few notes of the harmony near the end have
% been altered to keep this from falling off of the bottom of the alto sax
% range.

voicetwo = {
    \time 3/4
    \key d \minor
    \repeat volta 2 {
        a'4. d''8 a'8 g'8 | f'4 d'4 d'4 |
        a'4. d''8 a'8 f'8 | g'4. bes'8 a'8 g'8 |

        d'8 e'8 f'8 g'8 a'8 f'16 a'16 | g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 |
        << {
            d'4. e'8 f'8 g'8

            a'4. d''8 a'8 g'8 |
            f'4 d'4 d'4 |
            a'4. d''8 a'8 f'8 |
            g'4. c''8 \tuplet 3/2 { bes'8 a'8 g'8 } |
        } \\ {
            d'4. a8 d'8 f'8

            d'4. a'8 f'8 e'8 |
            d'4 a4 a4 |
            f'4. a'8 f'8 d'8 |
            d'4. s8 s4 |
        } >>

        f'8 g'8 a'8 bes'8 c''8 a'8 | g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 | d'2.
    }

    \repeat volta 2 {
        << {
            f''2 e''8 d''8 | e''8 a8 cis'8 e'8 a'8 cis''8 |
            d''4 c''4. bes'8 | a'2. |

            bes'4 a'4 g'4 | a'4 d''4 e''4 |
            f''4. e''8 f''8 g''8 | e''2.

            f''2 e''8 d''8 | e''8 a8 cis'8 e'8 a'8 cis''8 |
            d''4 c''4. bes'8 | a'2. |

            bes'4 a'4 g'4 | a'4 d'4 g'4 |
            f'4. g'8 ees'8 f'8 | d'2. |
        } \\ {
            a'2 g'8 f'8 | g'8 a8 cis'8 e'8 a'8 cis''8 |
            f'4 e'4. d'8 | c'2. |

            d'4 c'4 bes4 | c'4 f'4 g'4 |
            a'4.  g'8  a'8  bes'8 | g'2.

            a'2  g'8  f'8 | g'8 a8  cis'8 e'8 a'8 cis''8 |
            f'4  e'4.  d'8 | c'2. |

            d'4  c'4  bes4 | c'4  a4  bes4 |
            a4.  bes8  g8  a8 | a2. |
        } >>
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voice one without the harmony voice

voicethree = {
    \time 3/4
    \key d \minor
    \repeat volta 2 {
        a'4. d''8 a'8 g'8 | f'4 d'4 d'4 |
        a'4. d''8 a'8 f'8 | g'4. bes'8 a'8 g'8 |

        d'8 e'8 f'8 g'8 a'8 f'16 a'16 | g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 | d'4. e'8 f'8 g'8

        a'4. d''8 a'8 g'8 | f'4 d'4 d'4 |
        a'4. d''8 a'8 f'8 | g'4. c''8 \tuplet 3/2 { bes'8 a'8 g'8 } |

        f'8 g'8 a'8 bes'8 c''8 a'8 | g'8 d'8 g'4 g'4 |
        f'4. g'8 ees'8 f'8 | d'2.
    }
    \repeat volta 2 {
        f''2 e''8 d''8 | e''2 d''8 cis''8 |
        d''4 c''4. bes'8 | a'2. |

        bes'4 a'4 g'4 | a'4 d''4 e''4 |
        f''4. e''8 f''8 g''8 | e''2.

        f''2 e''8 d''8 | e''2 d''8 cis''8 |
        d''4 c''4. bes'8 | a'2. |

        bes'4 a'4 g'4 | a'4 d'4 g'4 |
        f'4. g'8 ees'8 f'8 | d'2. |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicefour = {
    \time 3/4
    \key g \minor

    \repeat volta 2 {
        < g' bes' >2. ~ | < g' bes' >2. ~ |
        < g' bes' >2. | < c'' g'' >2. |

        < g' bes' >2. | < c'' g'' >2. |
        < g' bes' >4. c''8 aes'8 bes'8 | < g' bes' >2. |

        < g' bes' >2. ~ | < g' bes' >2. ~ |
        < g' bes' >2. | < c'' g'' >2. |

        < bes' f'' >2. | < c'' g'' >2. |
        < g' bes' >4. c''8 aes'8 bes'8 | < g' bes' >2. |
    }
    \repeat volta 2 {
        < g' d'' >2. | < a' d'' >2. | < bes' ees'>2. | < bes' f' >2. |

        < c'' g'' >2. | < g' bes' >2. | < g' bes' >2. | < d'' a' >2. |

        < g' d'' >2. | < a' d'' >2. | < bes' ees'>2. | < bes' f' >2. |

        < c'' g'' >2. | < g' bes' >2. |
        < g' bes' >4. c''8 aes'8 bes'8 | < g' bes' >2. |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

firsttime = \markup { \column { "First time through start at measure 8" " " } }
tenorharmony = {
    \time 3/4
    \key bes \major

    \repeat volta 2 {
        d'4.^\firsttime a'8 f'8 e'8 |
        d'4 a4 a4 |
        f'4. a'8 f'8 d'8 |
        d'4. r4. |

        R2.*3 |

        r4. a8 d'8 f'8

        d'4. a'8 f'8 e'8 |
        d'4 a4 a4 |
        f'4. a'8 f'8 d'8 |
        d'4. r4. |

        R2.*4 |
    }

    \repeat volta 2 {
        d''2 c''8 bes'8 |
        c''8 d'8 fis'8 a'8 d''8 fis''8 |
        bes'4 a'4 g'4 |
        f'2. |

        g'4 f'4 ees'4 |
        f'4 bes'4 c''4 |
        d''4. c''8 bes'8 d''8 |
        c''2. |

        d''2 c''8 bes'8 |
        c''8 d'8 fis'8 a'8 d''8 fis''8 |
        bes'4 a'4 g'4 |
        f'2. |

        aes'4 aes'4 ees'4 |
        f'4 bes4 ees'4 |
        d'4. ees'8 c'8 d'8 |
        bes2. |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 3/4
    \key bes \major

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
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 3/4
    \key bes \major

    \repeat volta 2 {
        g,4 r4 r4 | d4 r4 r4 | g,4 r4 r4 | c4 r4 r4 |
        bes,4 r4 r4 | c4 r4 r4 | g,4 g,4 aes,4 | g,4 d4 bes,4 |
        g,4 r4 r4 | d4 r4 r4 | g,4 r4 r4 | c4 r4 r4 |
        bes,4 r4 r4 | c4 r4 r4 | g,4 g,4 aes,4 | g,4 d4 bes,4 |
    }
    \repeat volta 2 {
        g,4 r4 r4 | d4 r4 r4 | ees4 r4 r4 | bes,4 r4 r4 |
        c4 r4 r4 | g,4 r4 r4 | g,4 bes,4 c4 | d4 bes,4 a,4 |
        g,4 r4 r4 | d4 r4 r4 | ees4 r4 r4 | bes,4 r4 r4 |
        c4 r4 r4 | g,4 r4 r4 | g,4 g,4 aes,4 | g,4 g4 d4 |
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose e a {
    \voiceone
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

altoflutenotes = \transpose g c' {
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes f' {
    \voiceone
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees f {
    \voicetwo
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes f {
    \voicethree
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \preintro
    \euphoniumnotes
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tubanotes = \transpose c c, {
    \bassline
}

tubanotesmidi = \transpose c c, {
    \preintro
    \euphoniumnotes
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinonenotes = \transpose e a {
    \voiceone
}

violintwonotes = {
    \voicefour
}

violinnotesmidi = {
    \preintro
    \violintwonotes
    \violintwonotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 3/4

    \repeat volta 2 {
        g2.:min | g2.:min | g2.:min | c2.:min |
        g2.:min | c2.:min | g2:min aes4 | g2.:min |
        g2.:min | g2.:min | g2.:min | c2.:min |
        bes2. | c2.:min | g2:min aes4 | g2.:min |
    }

    \repeat volta 2 {
        \chordChangesOff
        g2.:min |
        \chordChangesOn
        d2.:7 | ees2. | bes2. |
        c2.:min | g2.:min | g2.:min | d2.:7 |
        g2.:min | d2.:7 | ees2. | bes2. |
        c2.:min | g2.:min | g2:min aes4 | g2.:min |
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
basschordletters = \chordletters
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 3/4
    \key bes \major
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 3/4
    \key bes \major

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
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 3/4
    \key bes \major

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
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 3/4
    \stemUp
    \dynamicUp

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
}

drumslow = \drummode {
    \time 3/4
    \stemDown

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
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose e a {
    \voicethree
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    g2.:min | s2. | s2. | c2.:min |
}

previewnotes = {
    \time 3/4
    \key bes \major

    d''4 d''8 g''8 d''8 c''8 |
    bes'4 g'4 g'4 |
    d''4 d''8 g''8 d''8 bes'8 |
    c''4. ees''8 d''8 c''8 |
}

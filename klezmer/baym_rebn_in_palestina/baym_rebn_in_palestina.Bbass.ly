\version "2.14.0"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakC = { \break }

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

specialtrombonenotes = {
    \transpose c c' {
    \key g \major
    \time 3/8
    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc
    }
    \key f \major
    \time 2/4
    \trombonenotessectiond
    \trombonenotessectione
    \trombonenotessectionf
    \trombonenotessectiong
    \blankmeasure
    \trombonenotescoda
    \bar "|."
}

SPECIALSUBSCORE = \transpose bes c'' <<
    \set Score.skipBars = ##t

    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar."
    }  {
        \clef violin
        \new Voice { \specialtrombonenotes }
    }

    \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "Bas."
    }  {
        \clef violin
        \new Voice { \transpose c c' { \bassnotes } }
    }
>>

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \SPECIALSUBSCORE
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #12
        }
    }
}

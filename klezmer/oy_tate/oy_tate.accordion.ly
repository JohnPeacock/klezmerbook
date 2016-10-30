\version "2.18.2"

\include "oy_tate.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionD = {
  \CenterMarkOnce
  \KeyAlignMark
}

%breakB = { \pageBreak }

\include "oy_tate.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

accordionsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
    }  { <<
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \leadsheetnotes }
    >> }
>>

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}

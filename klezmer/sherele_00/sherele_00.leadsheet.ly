\version "2.18.2"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionSA = {
  \CenterMarkOnce
  \TimeAlignMark
}
breakA = { \break }
breakB = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

leadsheetsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
    }  {
        \clef violin
        \new Voice { \leadsheetnotes }
    }
>>

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}

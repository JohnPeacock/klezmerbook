\version "2.14.0"

\include "oyfn_pripetshik.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #5
}

breakAtwl = { \pageBreak }

positionA = {
  \LeftMarkOnce
  \BarAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}

\include "oyfn_pripetshik.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

leadsheetsubscorewithlyrics = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = ""
        shortInstrumentName = ""
        \override FretBoard #'size = #'0.85
    } {
        \guitarchordletters
    }
    \vocals
>>

\book {
    \include "book-header.ily"
    \score {
        \transpose e d { \leadsheetsubscorewithlyrics }
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}

\version "2.18.2"

\include "doina_tarras.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #10
}

breakDoina = { \break }
breakBten = { \break }
breakCrep = { \break }
breakA = { }

positionA = {
  \CenterMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark #'padding = #.1
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark #'padding = #.1
}
positionC = {
  \RightMarkOnce
  \BarAlignMark
  \override Score.RehearsalMark #'padding = #.1
}

\include "doina_tarras.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #20
        }
    }
}

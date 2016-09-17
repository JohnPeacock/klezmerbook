\version "2.14.0"

\include "simkhes_toyre.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakINfor = { \break }
breakA = { \pageBreak }
breakC = { \break }

\include "simkhes_toyre.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
%            system-count = #8
        }
    }
}

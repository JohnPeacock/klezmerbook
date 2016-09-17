\version "2.14.0"

\include "00_titlepage.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "00_titlepage.notes.ily"

instrumentMarkup = \cClarinetInstrumentBigMarkup

\book {
    \include "book-header.ily"
    \score {
        \emptystaff
        \layout {
            pagenumber=no
            \context {
                \Staff \RemoveEmptyStaves
            }
        }
    }
}

\version "2.14.0"

\include "mame_hat_mikh_geshikt.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "mame_hat_mikh_geshikt.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
%        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
	    system-count=#6
        }
    }
}

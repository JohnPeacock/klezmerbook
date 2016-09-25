\version "2.18.2"

%=====================================================================
%
% Copyright 2008-2010, Richard J. Schoeller
% 
%=====================================================================

\include "eileh_chamdah_libi.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \break }

\include "eileh_chamdah_libi.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}

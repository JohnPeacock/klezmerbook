\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 22 October 2003
%
% History:
%    22 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "mayim_mayim.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAsxt = { \break }

\include "mayim_mayim.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \tromboneplusmelodysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}

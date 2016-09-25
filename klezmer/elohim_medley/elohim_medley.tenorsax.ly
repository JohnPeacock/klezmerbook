\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008-2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "elohim_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "elohim_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tenorSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetsubscore
%        \tenorsaxplusclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

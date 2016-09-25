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
% Creation: 6 October 2003
%
% History:
%    6 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "am_yisrael_chai.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \RightMarkOnce
  \ClefAlignMark
}

\include "am_yisrael_chai.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \altosaxsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

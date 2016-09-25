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
%    22 October 2008 - Dick Schoeller
%        o Fixed the empty piano staves problem.
%
%=====================================================================

\include "am_yisrael_chai.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakIN = { \break }
breakAtwo = { \break }
breakA = { \break }
breakBtwo = { \break }
breakB = { \break }
breakCtwo = { \break }

\include "am_yisrael_chai.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

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

\include "yismechu_hashamayim.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAfor = { \break }
breakA = { \break }

positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(10.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}

\include "yismechu_hashamayim.notes.ily"
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

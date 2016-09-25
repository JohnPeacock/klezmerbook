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
    \include "indent.ily"
}
\include "elohim_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \markup { "" }

\score {
    \previewsubscore
    \include "preview-header.ily"
    \layout {
        \include "translators.ily"
        system-count = #1
    }
}

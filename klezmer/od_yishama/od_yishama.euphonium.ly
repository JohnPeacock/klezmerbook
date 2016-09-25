\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "od_yishama.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

tempostring = \markup { \markupTstacked }

positionB = {
  \CenterMarkOnce
  \BarAlignMark
}

\include "od_yishama.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \euphoniumInstrumentMarkup

euphoniumsubscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \basschordnames
    \bassnonamestaff
>>

\book {
    \include "book-header.ily"
    \score {
        \euphoniumsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}

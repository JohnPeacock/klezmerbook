\version "2.18.2"

\include "kamariska.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

%positionB = {
%  \RightMarkOnce
%  \ClefAlignMark
%}
%positionC = {
%  \CenterMarkOnce
%  \BarAlignMark
%}
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-3.0 . 0.0)
}
%
%breakAtwo = { \break }
%breakA = { \break }

\include "kamariska.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
 %           system-count = #13
        }
    }
}

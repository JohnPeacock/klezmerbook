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

\include "yismechu_hashamayim.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAtwo = { \pageBreak }
breakAfor = { \pageBreak }
breakAsix = { \pageBreak }
breakA = { \pageBreak }
breakBtwo = { \pageBreak }

positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(30.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #2
  \once \override Score.RehearsalMark #'outside-staff-priority = ##f
}

\include "yismechu_hashamayim.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
%    \altoclarinetstaff
    \altosaxstaff
%    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
%    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
    \bassstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
%    \pianochordnames
%    \pianostaff
%    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscorewithlyrics
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008-2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "elohim_medley.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAtwo = { \pageBreak }
breakAfor = { \pageBreak }
breakAsix = { \pageBreak }

\include "elohim_medley.notes.ily"
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

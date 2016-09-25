\version "2.18.2"

% this produces both midi and a full score.
%

\include "gut_morgn.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}
\include "gut_morgn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
    \altosaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #8
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

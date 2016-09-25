\version "2.18.2"

\include "araber_tants.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakE = { \noBreak }
breakBL = { \noBreak }

\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
%    \altoclarinetstaff
    \altosaxstaff
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
    \bassstaff
>>

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
%    \pianochordnames
%    \pianostaff
    \drumsstaff
>>

mysubscore = { \subscore }

\include "midi-drum-fragments.ily"
\include "araber_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \transpose e d { \mysubscore }
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #14
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \transpose e d { \midisubscore }
  \midi { }
}

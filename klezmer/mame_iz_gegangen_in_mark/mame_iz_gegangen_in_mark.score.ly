\version "2.18.2"

\include "mame_iz_gegangen_in_mark.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}
breakA = { \break }
\include "mame_iz_gegangen_in_mark.notes.ily"
\include "staves-and-scores.ily"

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

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    system-count=#4
    \include "ambitus-translators.ily"
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

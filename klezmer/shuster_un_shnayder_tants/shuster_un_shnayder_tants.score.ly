\version "2.18.2"

\include "shuster_un_shnayder_tants.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}

positionFC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-4.0 . 0.0)
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "shuster_un_shnayder_tants.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

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

subscorewithaccordion = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \accordionstaff
    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscorewithaccordion
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

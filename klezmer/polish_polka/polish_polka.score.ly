\version "2.18.2"

\include "polish_polka.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionB = {
    \LeftMarkOnce
    \BarAlignMark
}
positionC = {
    \LeftMarkOnce
    \BarAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(10.0 . -2.0)
}
positionD = {
    \CenterMarkOnce
    \BarAlignMark
}

breakC = { \pageBreak }

\include "polish_polka.notes.ily"
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

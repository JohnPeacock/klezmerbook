\version "2.18.2"

\include "goldene_khasene.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionAI = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }
breakAI = { \break }
breakC = { \break }

\include "goldene_khasene.notes.ily"
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
    \guitarchordnames
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
%    \accordionstaff
    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #14
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

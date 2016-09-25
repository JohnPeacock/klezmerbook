\version "2.18.2"

\include "rumeynisher_hora_un_bulgar.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionB  = {
  \RightMarkOnce
  \ClefAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(8.0 . 0.0)
}
positionD  = {
  \RightMarkOnce
  \ClefAlignMark
}
breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "rumeynisher_hora_un_bulgar.notes.ily"
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
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

mysubscore = { \subscore }

\include "midi-drum-fragments.ily"
\include "rumeynisher_hora_un_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \mysubscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #18
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

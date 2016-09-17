\version "2.14.0"

\include "rumeynisher_hora_13.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}
breakAfft = { \noBreak }
breakAsvt = { \noBreak }
breakCsev = { \noBreak }
breakCnin = { \noBreak }
\include "rumeynisher_hora_13.notes.ily"
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

mysubscore = { \subscorewithaccordion }

\include "midi-drum-fragments.ily"
\include "rumeynisher_hora_13.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \mysubscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #10
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

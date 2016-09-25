\version "2.18.2"

% this produces both midi and a full score.
%

\include "flatbush_waltz.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAfor = { \pageBreak }
breakAeit = { \pageBreak }
breakAtwl = { \pageBreak }
breakA = { \pageBreak }
breakBfor = { \pageBreak }
breakBeit = { \pageBreak }
breakBtwl = { \pageBreak }

\include "flatbush_waltz.notes.ily"
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
    \tubastaff
>>

stringgroup = \new StaffGroup <<
    \violinonestaff
    \violintwostaff
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

\include "book-header.ily"
\score {
  \subscore
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

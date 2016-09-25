\version "2.18.2"

% this produces both midi and a full score.
%

\include "russishe_sher_05.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAfor = { \pageBreak }
breakA = { \pageBreak }
breakBfor = { \pageBreak }
breakBeit = { \pageBreak }
breakB = { \pageBreak }
breakCfor = { \pageBreak }
breakC = { \pageBreak }
breakDfiv = { \pageBreak }
breakD = { \pageBreak }
breakEfor = { \pageBreak }
breakE = { \pageBreak }
breakFfor = { \pageBreak }
breakFeit = { \pageBreak }

\include "russishe_sher_05.notes.ily"
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

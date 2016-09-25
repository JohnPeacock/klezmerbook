\version "2.18.2"

\include "freylekhs_in_cm.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAfiv = { \pageBreak }
breakAelv = { \pageBreak }
breakA = { \pageBreak }
breakBsix = { \pageBreak }
breakBtwl = { \pageBreak }
breakB = { \pageBreak }
breakCfiv = { \pageBreak }
breakCten = { \pageBreak }
breakCfft = { \pageBreak }

\include "freylekhs_in_cm.notes.ily"
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
    system-count = #10
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

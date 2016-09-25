\version "2.18.2"

\include "baym_rebn_in_palestina.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

sectionBreakOne = { \pageBreak }
sectionBreakTwo = { \pageBreak }
sectionBreakThree = { \pageBreak }
sectionBreakFive = { \pageBreak }
sectionBreakSix = { \pageBreak }
breakGfor = { \break }
breakGsev = { \noBreak }
breakGnin = { \noBreak }

\include "baym_rebn_in_palestina.notes.ily"
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

subscore = <<
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
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

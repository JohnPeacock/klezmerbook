\version "2.14.0"

\include "alter_tsigayner.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAnin = { \pageBreak }
breakAtwy = { \pageBreak }
breakA = { \pageBreak }
breakBnin = { \pageBreak }
breakBett = { \pageBreak }
breakBtwtsev = { \pageBreak }

\include "alter_tsigayner.notes.ily"
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
    \pianochordnames
    \pianostaff
%    \drumsstaff
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

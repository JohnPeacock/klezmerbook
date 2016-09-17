\version "2.14.0"

\include "papirosn.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakA = { \pageBreak }

\include "papirosn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \transpose c' c { \flutestaff }
    \clarinetstaff
%    \altoclarinetstaff
    \transpose c' c { \altosaxstaff }
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \transpose c' c { \trumpetstaff }
    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
    \bassstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
%    \drumsstaff
>>

\include "book-header.ily"
\score {
    \transpose d a { \subscorewithlyrics }
    \include "score-header.ily"
    \layout {
        \include "ambitus-translators.ily"
    }
}

\include "articulate.ly"
\score {
    \unfoldRepeats
    \transpose d a { \midisubscore }
    \midi { }
}

\version "2.14.0"

\include "una_tarde_de_verano_dm.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}
\include "una_tarde_de_verano_dm.notes.ily"
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
    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
%    \bassstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
%    \pianochordnames
%    \pianostaff
%    \drumsstaff
>>

\include "book-header.ily"
\score {
    \transpose c d { \subscorewithlyrics }
    \include "score-header.ily"
    \layout {
        \include "ambitus-translators.ily"
    }
}

\include "articulate.ly"
\score {
    \unfoldRepeats
    \transpose c d { \midisubscore }
    \midi { }
}

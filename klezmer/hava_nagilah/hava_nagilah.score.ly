\version "2.18.2"

\include "hava_nagilah.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

\include "hava_nagilah.notes.ily"
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

subscorewithaccordion = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \guitarchordnames

    \new FretBoards {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice \with {
            \consists Pitch_squash_engraver
        } {
            \guitarstrumnotes
        }
    }

    \pianochordnames
%    \pianostaff
     \accordionstaff
    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscorewithaccordion
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #8
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

\version "2.14.0"

\include "tum-balalayke.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionS = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAone = { \pageBreak }
breakAfor = { \pageBreak }
breakAsev = { \pageBreak }
breakAten = { \pageBreak }
breakAtht = { \pageBreak }

\include "tum-balalayke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscorewithaccordion = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \flutestaff
    \stringgroup
    \guitarchordnames

    \new FretBoards \with {
        instrumentName = \markup \column { "Capo" "3rd fret" }
        shortInstrumentName = ""
    } {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice {
            \guitarstrumnotes
        }
    }

    \pianochordnames
    \accordionstaff
    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscorewithaccordion
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

\version "2.14.0"

\include "tish_nigun.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakAtwo = { \break }

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \guitarInstrumentMarkup

guitarsubscorenotab = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \guitarchordnames

    \new FretBoards {
        \guitarchordletters
        \override FretBoard #'size = #'0.85
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
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
>>

\book {
    \include "book-header.ily"
    \score {
        \guitarsubscorenotab
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}

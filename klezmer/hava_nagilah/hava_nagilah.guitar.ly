\version "2.14.0"

\include "hava_nagilah.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionA = {
  \CenterMarkOnce
  \ClefAlignMark
}
positionB = {
  \CenterMarkOnce
  \ClefAlignMark
}
positionC = {
  \CenterMarkOnce
  \ClefAlignMark
}

\include "hava_nagilah.notes.ily"
\include "staves-and-scores.ily"

guitarsubscorenotab = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \guitarchordnames

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = ""
        shortInstrumentName = ""
        \override FretBoard #'size = #'0.85
    } {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice \with {
            \consists Pitch_squash_engraver
        } {
            \guitarstrumnotes
        }
    }
>>

instrumentMarkup = \guitarInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \guitarsubscorenotab
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

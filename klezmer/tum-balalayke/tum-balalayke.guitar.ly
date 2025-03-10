\version "2.18.2"

\include "tum-balalayke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionCH = {
  \RightMarkOnce
  \KeyAlignMark
}
positionS = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \override Score.RehearsalMark   #'self-alignment-X = #0
  \override Score.RehearsalMark   #'break-visibility = #end-of-line-visible
  \BarAlignMark
}

breakAeit = { \pageBreak }

\include "tum-balalayke.notes.ily"
\include "staves-and-scores.ily"

guitarsubscorenotab = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0

    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
        minimumVerticalExtent = #'(-1.0 . 1.0)
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
        chordNameFunction = #centred-ignatzek-chord-names 
    } \chordmode {
        \guitarchordletters
    }

    \new ChordNames \with {
        chordChanges = ##t
        minimumVerticalExtent = #'(-1.0 . 1.0)
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
        chordNameFunction = #centred-parenthesis-ignatzek-chord-names
    } \chordmode {
        \transpose c a, { \guitarchordletters }
    }

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = \markup \column { "Capo" "3rd fret" }
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
            system-count = #8
        }
    }
}

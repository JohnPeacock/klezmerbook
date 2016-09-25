\version "2.18.2"

\include "ikh_bin_a_kleyner_dreydl.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

\include "ikh_bin_a_kleyner_dreydl.notes.ily"
\include "staves-and-scores.ily"

guitarsubscorenotab = <<
    \override Score.BarNumber   #'padding = #2.0
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \guitarchordnames

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = ""
        shortInstrumentName = ""
        \override FretBoard #'size = #'0.85
    } \chordmode {
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
            system-count = #5
        }
    }
}

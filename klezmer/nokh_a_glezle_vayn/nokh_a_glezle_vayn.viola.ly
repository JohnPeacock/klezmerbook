\version "2.18.2"

\include "nokh_a_glezle_vayn.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "nokh_a_glezle_vayn.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violaInstrumentMarkup

violaplustenorsubscore = <<
    \bandmchordnames
    \violinchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef C
        \new Voice { \violanotes }
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef C
        \new Voice { \tenorforviolanotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \violaplustenorsubscore

        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}

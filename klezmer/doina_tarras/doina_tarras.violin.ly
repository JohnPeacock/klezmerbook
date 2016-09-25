\version "2.18.2"

\include "doina_tarras.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
    page-count = #3
}

breakA = { \pageBreak }

\include "doina_tarras.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \violinInstrumentMarkup

violinplustenorsubscore = <<
    \bandmchordnames
    \violinchordnames

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforviolinnotes }
    }

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "B."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \violinnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \violinplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
	    system-count = #10
        }
    }
}

\version "2.18.2"

\include "terk_in_america.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "terk_in_america.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoFluteInstrumentMarkup

altoflutenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoflutenotes }
}
altoflutesubscore = <<
    \bandmchordnames
    \altoflutechordnames
    \altoflutenonamestaff
>>

\book {
    \include "book-header.ily"
    \score {
        \altoflutesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}

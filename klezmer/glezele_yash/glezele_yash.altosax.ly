\version "2.18.2"

\include "glezele_yash.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "glezele_yash.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

altosaxmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \melodyforaltosaxnotes }
}

altosaxplusmelodysubscore = <<
    \bandmchordnames
    \altosaxchordnames
    \altosaxmelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \altosaxplusmelodysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}

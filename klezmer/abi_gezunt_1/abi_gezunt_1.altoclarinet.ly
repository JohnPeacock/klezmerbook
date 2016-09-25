\version "2.18.2"

\include "abi_gezunt_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakD = { \pageBreak }

\include "abi_gezunt_1.notes.ily"

bandmNV = \clarinetbandm

\include "staves-and-scores.ily"

instrumentMarkup = \altoClarinetInstrumentMarkup

altoclarinetstaff = \new Staff \with {
    instrumentName = "Alto"
    shortInstrumentName = "A."
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinetnotes }
}
tromboneforaltoclarinetstaff = \new Staff \with {
    instrumentName = "Baritone"
    shortInstrumentName = "B."
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \tromboneforaltoclarinetnotes }
}
altoclarinetsubscore = <<
    \bandmchordnames
    \altoclarinetchordnames
    \altoclarinetstaff
    \tromboneforaltoclarinetstaff
>>

\book {
    \include "book-header.ily"
    \score {
        \altoclarinetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}

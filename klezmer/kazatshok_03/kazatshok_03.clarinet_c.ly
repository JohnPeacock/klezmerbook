\version "2.14.0"

\include "kazatshok_03.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . -1.5)
  \once \override Score.RehearsalMark #'padding = #7.0
}

breakCone = { \pageBreak }

\include "kazatshok_03.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \cClarinetInstrumentMarkup

cclarinetmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \cclarinetnotes }
}

cclarinetplustenorsubscore = <<
    \bandmchordnames
    \flutechordnames
    \cclarinetmelodystaff
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
>>

\book {
    \include "book-header.ily"
    \score {
        \cclarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #10
        }
    }
}

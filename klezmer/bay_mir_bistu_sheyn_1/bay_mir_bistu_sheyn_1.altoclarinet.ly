\version "2.14.0"

\include "bay_mir_bistu_sheyn_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionA = {
  \RightMarkOnce
  \ClefAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakIN = { \break }
breakBfrt = { \pageBreak }

\include "bay_mir_bistu_sheyn_1.notes.ily"

bandmNV = \trumpetbandm

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
            \include "keepempty-translators.ily"
            system-count = #20
        }
    }
}

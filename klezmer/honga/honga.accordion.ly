\version "2.18.2"

\include "honga.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionSA = {
  \BarAlignMark
  \LeftMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionE  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakCone = { \pageBreak }
breakDfor = { \pageBreak }
breakEeit = { \pageBreak }
breakEett = { \noBreak }
breakBL = { \noBreak }

\include "honga.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \accordionInstrumentMarkup

violinsubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \guitarchordnames
    \new Staff \with {
        instrumentName = "Voice 1"
        shortInstrumentName = "V. 1"
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \violinonenotes }
    }
    \new Staff \with {
        instrumentName = "Voice 2"
        shortInstrumentName = "V. 2"
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \violintwonotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \violinsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

\version "2.14.0"

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
positionC  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionD  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionE  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakBeit = { \pageBreak }
breakDfor = { \pageBreak }
breakEeit = { \pageBreak }
breakEtht = { \break }
breakEsxt = { \break }
breakEett = { \noBreak }
breakBL = { \noBreak }

\include "honga.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

trumpetsubscore = <<
    \new Staff \with {
        instrumentName = \trumpetoneinstrumentmarkup
        shortInstrumentName = \trumpetoneinstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        <<
            \bandm
            \new Voice { \trumpetonenotes }
        >>
    }
    \new Staff \with {
        instrumentName = \trumpettwoinstrumentmarkup
        shortInstrumentName = \trumpettwoinstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        <<
            \bandm
            \new Voice { \trumpettwonotes }
        >>
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \trumpetsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

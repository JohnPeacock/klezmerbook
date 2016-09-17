\version "2.14.0"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"

bandmNV = \clarinetbandm

\include "staves-and-scores.ily"

instrumentMarkup = \altoClarinetInstrumentMarkup

altoclarinetonestaff = \new Staff \with {
    instrumentName = \altoclarinetoneinstrmarkup
    shortInstrumentName = \altoclarinetoneinstrmarkup
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinetonenotes }
}
altoclarinettwostaff = \new Staff \with {
  instrumentName = \altoclarinettwoinstrmarkup
    shortInstrumentName = \altoclarinettwoinstrmarkup
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinettwonotes }
}
altoclarinetsubscore = <<
    \bandmchordnames
    \altoclarinetchordnames
    \altoclarinetonestaff
    \altoclarinettwostaff
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

\version "2.18.2"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }

\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"

bandmNV = \leadsheetbandmNV

\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

vocalnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'()
} {
    \set Score.skipBars = ##t
    \new Voice = vocalmelody { \leadsheetnotes }
}

vocalsnoname = <<
    \vocalnonamestaff
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
>>

leadsheetchordnames = \new ChordNames \with {
    chordChanges = ##t
    \override MultiMeasureRest #'expand-limit = #1
    \override VoltaBracket #'minimum-space = #1.5
} \chordmode {
    \leadsheetchordletters
}

leadsheetsubscorewithlyrics = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }

    \leadsheetchordnames
    \vocalsnoname
>>

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #15
        }
    }
}

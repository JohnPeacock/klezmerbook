\version "2.14.0"

\include "abi_gezunt_1.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "abi_gezunt_1.notes.ily"
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
    \new Lyrics \lyricsto vocalmelody \textl
    \new Lyrics \lyricsto vocalmelody \textlb
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
            \include "keepempty-translators.ily"
            system-count = #16
        }
    }
}

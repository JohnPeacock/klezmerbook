\version "2.18.2"

\include "rumenye_in_g.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \pageBreak }
breakB = { \pageBreak }
breakCten = { \break }

\include "rumenye_in_g.notes.ily"
\include "staves-and-scores.ily"

leadsheetsubscorewithlyrics = <<
    \new ChordNames \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest #'expand-limit = #1
    }  { <<
        \set Score.skipBars = ##t
        \clef violin
        \leadsheetbandmNV
        \context Voice = vocalmelody { \leadsheetnotes }
    >> }
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
    \lyricsto verse \context Lyrics = vone { \set stanza = "1." \textlb }
    \lyricsto verse \context Lyrics = vtwo { \set stanza = "2." \textlc }
    \lyricsto verse \context Lyrics = vtre { \set stanza = "3." \textld }
>>

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #31
        }
    }
}

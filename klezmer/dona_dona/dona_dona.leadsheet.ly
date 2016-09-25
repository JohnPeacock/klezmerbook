\version "2.18.2"

\include "dona_dona.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakAeit = { \break }

\include "dona_dona.notes.ily"
\include "staves-and-scores.ily"

leadsheetsubscorewithguitarnotab = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0

    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
        minimumVerticalExtent = #'(-1.0 . 1.0)
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
    } \chordmode {
        \guitarchordletters
    }

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = ""
        shortInstrumentName = ""
        \override FretBoard #'size = #'0.85
    } {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice \with {
            \consists Pitch_squash_engraver
        } {
            \new Voice = vocalmelody { \leadsheetnotes }
        }
    }
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
    \lyricsto vocalmelody \context Lyrics = vtwo { \textlb }
    \lyricsto vocalmelody \context Lyrics = vtre { \textlc }
    \lyricsto vocalmelody \context Lyrics = vfor { \textld }
    \lyricsto vocalmelody \context Lyrics = vfiv { \textle }
>>

instrumentMarkup = \leadSheetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithguitarnotab
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #5
        }
    }
}

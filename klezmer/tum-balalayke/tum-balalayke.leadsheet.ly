\version "2.14.0"

\include "tum-balalayke.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionS = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAeit = { \pageBreak }

\include "tum-balalayke.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \leadSheetInstrumentMarkup

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
        chordNameFunction = #centred-ignatzek-chord-names 
    } \chordmode {
        \guitarchordletters
    }

    \new ChordNames \with {
        chordChanges = ##t
        minimumVerticalExtent = #'(-1.0 . 1.0)
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
        chordNameFunction = #centred-parenthesis-ignatzek-chord-names
    } \chordmode {
        \transpose c a, { \guitarchordletters }
    }

    \new FretBoards \with {
        chordChanges = ##t
        instrumentName = \markup \column { "Capo" "3rd fret" }
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
            \new Voice = "vocalmelody" { \leadsheetnotes }
        }
    }
    \new Lyrics \lyricsto "vocalmelody" \textl
    \new Lyrics \lyricsto "vocalmelody" \textlb
    \new Lyrics \lyricsto "vocalmelody" \textlc
    \new Lyrics \lyricsto "vocalmelody" \textld
    \new Lyrics \lyricsto "vocalmelody" \textle
>>

\book {
    \include "book-header.ily"
    \score {
        \leadsheetsubscorewithguitarnotab
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}

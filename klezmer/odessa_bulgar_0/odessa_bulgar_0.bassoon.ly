\version "2.18.2"

\include "odessa_bulgar_0.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAten = { \noBreak }
breakA = { \pageBreak }

\include "odessa_bulgar_0.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassoonInstrumentMarkup

bassoonplustenorsubscore = <<
    \bandmchordnames

    \new ChordNames \with {
        \override VoltaBracket #'minimum-space = #1.5
        chordChanges = ##t
    } \chordmode {
        \bassoonchordletters
    }

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \clarinetforbassoonnotes }
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforbassoonnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \bassoonplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}

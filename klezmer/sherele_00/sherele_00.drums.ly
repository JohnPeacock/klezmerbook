\version "2.14.0"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

breakA = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

drumsstaffnolabel = \new DrumStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
    printPartCombineTexts = ##f
} \drummode {
    <<
        \set Score.skipBars = ##t
        \override MultiMeasureRest #'expand-limit = #1
        \clef percussion
        \bandmNVSPLIT
        \new DrumVoice { \drumshigh }
        \new DrumVoice { \drumslow }
    >>
}

drumssubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \drumsstaffnolabel
>>

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #8
        }
    }
}

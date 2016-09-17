\version "2.14.0"

\include "khanukah_oy_khanukah.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #10
}
positionA = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . 2.0)
}
positionTC = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(12.0 . 0.0)
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(0.0 . 2.0)
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionToA = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-1.0 . 0.0)
  \once \override Score.RehearsalMark #'padding = #4.2
}
positionCC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-33.0 . 2.7)
}
\include "khanukah_oy_khanukah.notes.ily"
\include "staves-and-scores.ily"

drumsstaffnolabel = \new DrumStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
    printPartCombineTexts = ##f
} \drummode {
    \set Score.skipBars = ##t
    \override MultiMeasureRest #'expand-limit = #1
    \clef percussion
    <<
        \bandm
        \new DrumVoice { \stemUp \drumshigh }
        \new DrumVoice { \stemDown \drumslow }
    >>
}

drumssubscore = {
    \drumsstaffnolabel
}

instrumentMarkup = \drumsInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \drumssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #30
        }
    }
}

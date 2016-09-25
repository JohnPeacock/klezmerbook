\version "2.18.2"

\include "flatbush_waltz.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    indent = 1.2\cm
}

breakAfor = { \break }
breakAeit = { \break }
breakAtwl = { \break }
breakA = { \pageBreak }
breakBfor = { \break }
breakBeit = { \break }
breakBtwl = { \break }

\include "flatbush_waltz.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

trombonegroup =  \context StaffGroup = "trombonegroup" <<
    \new Staff \with {
        instrumentName = \markup "Trombone 1"
        shortInstrumentName = \markup "Tro. 1"
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef bass
        <<
            \bandm
            \new Voice { \transpose c c, { \violinonenotes } }
        >>
    }
    \new Staff \with {
        instrumentName = \markup "Trombone 2"
        shortInstrumentName = \markup "Tro. 2"
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef bass
        <<
            \bandm
            \new Voice { \transpose c c,, { \violintwonotes } }
        >>
    }
>>

trombonegroupsubscore = <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \guitarchordnames
    \trombonegroup
>>

\book {
    \include "book-header.ily"
    \score {
        \trombonegroupsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

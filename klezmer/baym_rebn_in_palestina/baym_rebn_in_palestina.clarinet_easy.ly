\version "2.18.2"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAsix = { \break }
breakAtwl = { \break }
sectionBreakOne = { \break }
breakBfiv = { \break }
sectionBreakTwo = { \pageBreak }
breakCfor = { \break }
breakCeit = { \break }
breakCtwl = { \break }
sectionBreakThree = { }
sectionBreakFour = { \pageBreak }
breakGsev = { \noBreak }

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

clarinetplustenorsubscore = <<
    \set Score.skipBars = ##t
    \bandmchordnames
    \clarinetchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
    } {
        \clef violin
        \new Voice <<
            \clarineteasynotes
        >>
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
    } {
        \clef violin
        \new Voice <<
            \tenorsaxnotes
        >>
    }
>>

instrumentMarkup = \easyClarinetInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \clarinetplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}

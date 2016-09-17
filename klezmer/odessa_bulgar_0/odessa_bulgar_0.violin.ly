\version "2.14.0"

\include "odessa_bulgar_0.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakAeit = { \break }
breakA = { \pageBreak }
breakBtre = { \break }
breakC = { \noBreak }

\include "odessa_bulgar_0.notes.ily"
\include "staves-and-scores.ily"

% special case because the original arrangement has violin playing tenor harmony.
%
violinplussubscore = <<
%    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \guitarchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \flutenotes }
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest #'expand-limit = #1
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \violinnotes }
    }
>>

instrumentMarkup = \violinInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \violinplussubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

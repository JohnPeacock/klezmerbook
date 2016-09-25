\version "2.18.2"

\include "simkhes_toyre.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "simkhes_toyre.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \clarinetInstrumentMarkup

clarinetplustenorsubscore = <<
    \bandmchordnames
    \clarinetchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        voltaOnThisStaff = ##f
    } {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \clarinetnotes }
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        voltaOnThisStaff = ##f
    } {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforclarinetnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
%        \clarinetplustenorsubscore
        \clarinetsubscore
        \include "score-header.ily"
        \layout {
%            \include "keepempty-translators.ily"
\context {
    \Staff
    \override VoltaBracket #'staff-padding = #6.0
    \override VoltaBracket #'padding = #0.0
    \override Script #'padding = #0.9
    \override OttavaBracket #'padding = #2.5
}

\context {
    \Score
    \override MultiMeasureRest #'expand-limit = #1
    \override Score #'skipBars = ##t
}

\context {
    \Voice
    \override Glissando #'thickness = #2.0
    \override Glissando #'gap = #-0.4
}

latexoptions=twoside
            system-count = #6
        }
    }
}

\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "od_yishama.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "od_yishama.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \trumpetInstrumentMarkup

trumpetplusbaritonesubscore = <<
    \bandmchordnames
    \trumpetchordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \trumpetnotes }
    }

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "B."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \clef violin
        \new Voice { \trombonefortrumpetnotes }
    }

>>

\book {
    \include "book-header.ily"
    \score {
        \trumpetplusbaritonesubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #6
        }
    }
}

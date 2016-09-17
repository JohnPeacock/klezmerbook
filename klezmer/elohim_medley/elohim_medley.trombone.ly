\version "2.14.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008-2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "elohim_medley.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "elohim_medley.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

tromboneplusmelodysubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }
    \trombonechordnames

    \new Staff {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef bass
        \new Voice { \trombonemelodynotes }
    }
    \trombonenonamestaff
>>

\book {
    \include "book-header.ily"
    \score {
        \tromboneplusmelodysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

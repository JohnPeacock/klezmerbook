\version "2.14.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 1 November 2003
%
% History:
%    1 November 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "ikh_bin_a_kleyner_dreydl.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}
\include "ikh_bin_a_kleyner_dreydl.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

tromboneplusmelodysubscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \trombonechordnames

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
    } {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef bass
        \new Voice { \trombonemelodynotes }
    }

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
    } {
        \clef bass
        \new Voice { \tenorfortrombonenotes }
    }

>>

\book {
    \include "book-header.ily"
    \score {
        \tromboneplusmelodysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}

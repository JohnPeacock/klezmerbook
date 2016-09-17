\version "2.14.0"

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
    \include "noindent.ily"
}

tempostring = \markup { \markupTstacked }

positionB = {
  \CenterMarkOnce
  \BarAlignMark
}

\include "od_yishama.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

basssubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
        \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
    } \chordmode {
        \basschordnames
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    } {
        \set Score.skipBars = ##t
        \clef bass
        \new Voice { \bassnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \basssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #7
        }
    }
}

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
    \include "indent.ily"
}
\include "od_yishama.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \altoSaxophoneInstrumentMarkup

altosaxplustenorsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new ChordNames \with {
        \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
        \override VoltaBracket #'minimum-space = #1.5
        chordChanges = ##t
    } \chordmode {
        \altosaxchordletters
    }

    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "M."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxmelody }
    }

    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \altosaxplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}

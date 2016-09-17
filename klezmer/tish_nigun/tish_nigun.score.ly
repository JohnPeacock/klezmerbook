\version "2.14.0"

\include "tish_nigun.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionSA = {
  \RightMarkOnce
  \KeyAlignMark
}

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"
\include "predefined-guitar-fretboards.ly"

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
%    \altoclarinetstaff
    \altosaxstaff
    \tenorsaxstaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \guitarchordnames

    \new FretBoards {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
        \remove Ambitus_engraver
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice \with {
            \consists Pitch_squash_engraver
        } {
            \guitarstrumnotes
        }
    }

    \pianochordnames
    \pianostaff
    \drumsstaff
>>

mysubscore = \subscore

\include "midi-drum-fragments.ily"
\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \mysubscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

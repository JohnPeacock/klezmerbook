\version "2.14.0"

\include "rumeynisher_hora_un_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
    systems-per-page = #9
}

positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(2.0 . 0.0)
}
positionD  = {
  \CenterMarkOnce
  \BarAlignMark
}
breakAtht = { \break }
breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "rumeynisher_hora_un_bulgar.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassClarinetInstrumentMarkup

Bbasssubscore =  \transpose bes c'' <<
    \override Score.VerticalAxisGroup #'remove-first = ##t
    \override Score.BarNumber   #'padding = #2.0

    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        voltaOnThisStaff = ##t
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \bassforbassclarinetnotes }
    }
>>

\book {
    \include "book-header.ily"
    \score {
        \Bbasssubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #18
        }
    }
}

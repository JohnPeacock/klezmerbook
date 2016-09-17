\version "2.14.0"

\include "rumeynisher_hora_un_bulgar.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

positionB  = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionDCAL = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(4.0 . 0.0)
}
positionD  = {
  \CenterMarkOnce
  \KeyAlignMark
}
breakA = { \break }
breakB = { \pageBreak }
breakC = { \break }

\include "rumeynisher_hora_un_bulgar.notes.ily"
\include "staves-and-scores.ily"

trombonenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \transpose c c,, { \violinnotes } }
}
trombonechordnames = \new ChordNames \with {
    \override VoltaBracket #'minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \violinchordletters
}
trombonesubscore = <<
    \bandmchordnames
    \trombonechordnames
    \trombonenonamestaff
>>

instrumentMarkup = \tromboneInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
% has tenor????
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #19
        }
    }
}

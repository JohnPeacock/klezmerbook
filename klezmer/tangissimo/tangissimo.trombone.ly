\version "2.14.0"

\include "tangissimo.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDAB   = {
  \RightMarkOnce
  \ClefAlignMark
}

breakAIfor = { \break }
breakAI = { \break }
breakAII = { \break }
breakB = { \break }
breakAIIIfor = { \break }
breakAIII = { \pageBreak }
breakAIVfor = { \break }
breakAIV = { \break }
breakCfor = { \break }
breakC = { \break }

\include "tangissimo.notes.ily"
\include "staves-and-scores.ily"

trombonenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest #'expand-limit = #1
    \override TimeSignature #'style = #'() 
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \transpose c c, { \violinnotes } }
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
        \trombonesubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
        }
    }
}

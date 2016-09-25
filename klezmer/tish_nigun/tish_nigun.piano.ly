\version "2.18.2"

\include "tish_nigun.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionSA = {
  \RightMarkOnce
  \KeyAlignMark
}

breakIN = { \break }
breakAfor = { \break }
breakA = { \break }
breakBtre = { \pageBreak }
breakCtwo = { \break }
breakCsix = { \break }
breakDtwo = { \break }

\include "tish_nigun.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \pianoInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \pianosubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}


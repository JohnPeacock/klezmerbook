\version "2.18.2"

\include "baym_rebn_in_palestina.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "indent.ily"
}

breakEsxt = { \break }
breakFfft = { \noBreak }
breakFsvt = { \noBreak }
breakGfor = { \break }
breakGsev = { \noBreak }
breakGnin = { \noBreak }

\include "baym_rebn_in_palestina.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

tromboneplustenorsubscore = <<
    \bandmchordnames
    \trombonechordnames

    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "Tn."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \clef bass
        \new Voice { \transpose c c, { \tenorforviolinnotes } }
    }

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Br."
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
    } {
        \clef bass
        \new Voice { \trombonenotes }
    }

>>

\book {
    \include "book-header.ily"
    \score {
        \tromboneplustenorsubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
%            system-count = #18
        }
    }
}

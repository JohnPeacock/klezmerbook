\version "2.14.0"

\include "sherele_00.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
breakFIsix = { \break }
\include "sherele_00.notes.ily"
bandmsectiona = {
    \repeat volta 2 {
        \markSA \positionSA
        s2*2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 | \breakAsxt
        s2 | \breakAsvt s2 | \breakAett
    }
    \alternative {
        { s2 \breakAnnt | s2 \breakAtwy | } { s2 \breakAtyo | s2 | }
    }
    \bar "||:" \breakA
}
bandmNVSPLIT = {
    \time 2/4
    \bandmintroSPLIT
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

trombonesubscorenoremove = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNVSPLIT
    }
    \trombonechordnames
    \trombonenonamestaff
>>

\book {
    \include "book-header.ily"
    \score {
        \trombonesubscorenoremove
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #9
        }
    }
}

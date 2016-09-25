\version "2.18.2"

\include "oy_tate.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #4
}

breakA = { \break }
breakB = { \break }
breakC = { \break }

\include "oy_tate.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \flutestaff
    \bassstaff
    \guitarchordnames

    \new FretBoards \with {
        instrumentName = ""
        shortInstrumentName = ""
    } {
        \guitarchordletters
    }

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice {
            \guitarstrumnotes
        }
    }

    \drumsstaff
>>

midisubscore = <<
    \context Staff = "flute" \with { midiInstrument = "flute" }  {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "guitar" \with {
        midiInstrument = "acoustic guitar (nylon)"
    }  {
        <<
            \metronome
            \new Voice { \guitarnotesmidi }
        >>
    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" }  {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }
>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #8
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

\version "2.18.2"

\include "tangissimo.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}

positionDS    = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(5.0 . 0.0)
}

\include "tangissimo.notes.ily"
\include "staves-and-scores.ily"

% required because it is both noremove and right hand only.
accordionsubscore = <<
    \set Score.skipBars = ##t
    \bandmchordnames
    \pianochordnames
    \new PianoStaff \with {
        instrumentName = ""
        shortInstrumentName = ""
        voltaOnThisStaff = ##f
    }  { <<
        \new Staff \with {
            \override MultiMeasureRest #'expand-limit = #1
        } {
            \set Score.skipBars = ##t
            \clef violin
            <<
                \new Voice { \accordionrightuppernotes }
                \new Voice { \accordionrightlowernotes }
            >>
        }
%        \new Staff \with {
%            \override MultiMeasureRest #'expand-limit = #1
%        } {
%            \clef bass
%            <<
%                \new Voice { \accordionleftuppernotes }
%                \new Voice { \accordionleftlowernotes }
%            >>
%        }
    >> }
>>

instrumentMarkup = \accordionInstrumentMarkup

\book {
    \include "book-header.ily"
    \score {
        \accordionsubscore
        \include "score-header.ily"
        \layout {
            \include "keepempty-translators.ily"
            system-count = #16
%            \override #'(font-family . "sans")
        }
    }
}

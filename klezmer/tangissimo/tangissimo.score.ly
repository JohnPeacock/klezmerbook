\version "2.18.2"

\include "tangissimo.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}

scoreBreak = { \pageBreak }

\include "tangissimo.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

stringgroup = \new StaffGroup <<
    \new Staff \with {
        instrumentName = \violininstrumentmarkup
        shortInstrumentName = \violininstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        <<
            \bandm
            \new Voice { \violinnotes }
        >>
    }
%    \new Staff \with {
%        instrumentName = \guitarinstrumentmarkup
%        shortInstrumentName = \guitarinstrmarkup
%    }  {
%        \override MultiMeasureRest #'expand-limit = #1
%        \set Score.skipBars = ##t
%        \clef violin
%        <<
%            \bandm
%            \new Voice { \guitarnotes }
%        >>
%    }
    \new Staff \with {
        instrumentName = \bassinstrumentmarkup
        shortInstrumentName = \bassinstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef bass
        <<
            \bandm
            \new Voice { \bassnotes }
        >>
    }
>>

subscorewithaccordion = <<
    \new ChordNames \with {
    } \chordmode {
        \bandmNV
    }

    \new ChordNames \with {
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
        chordChanges = ##t
    } \chordmode {
        \pianochordletters
    }

    \override Score.BarNumber   #'padding = #2.0
    \new Staff \with {
        instrumentName = \clarinetinstrumentmarkup
        shortInstrumentName = \clarinetinstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \set Score.skipBars = ##t
        \clef violin
        <<
            \bandm
            \new Voice { \clarinetnotes }
        >>
    }

%    \horngroup

    \stringgroup

    \new ChordNames \with {
        \override VoltaBracket #'minimum-space = #2
        \override VoltaBracket #'padding = #.5
        chordChanges = ##t
    } \chordmode {
        \pianochordletters
    }

    \new PianoStaff \with {
        instrumentName = \pianoinstrumentmarkup
        shortInstrumentName = \pianoinstrmarkup
    }  { <<
        \new Staff \with {
            \override MultiMeasureRest #'expand-limit = #1
        }  {
            \set Score.skipBars = ##t
            \clef violin
            <<
                \bandm
                \new Voice { \pianorightuppernotes }
                \new Voice { \pianorightlowernotes }
            >>
        }
        \new Staff \with {
        }  {
            \override MultiMeasureRest #'expand-limit = #1
            \set Score.skipBars = ##t
            \clef bass
            <<
                \new Voice { \pianoleftuppernotes }
                \new Voice { \pianoleftlowernotes }
            >>
        }
    >> }

    \new PianoStaff \with {
        instrumentName = \accordioninstrumentmarkup
        shortInstrumentName = \accordioninstrmarkup
    }  { <<
        \new Staff \with {
        }  {
            \override MultiMeasureRest #'expand-limit = #1
            \set Score.skipBars = ##t
            \clef violin
            <<
                \new Voice { \accordionrightuppernotes }
                \new Voice { \accordionrightlowernotes }
            >>
        }
        \new Staff \with {
        }  {
            \override MultiMeasureRest #'expand-limit = #1
            \set Score.skipBars = ##t
            \clef bass
            <<
                \new Voice { \accordionleftuppernotes }
                \new Voice { \accordionleftlowernotes }
            >>
        }
    >> }

    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscorewithaccordion
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #31
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

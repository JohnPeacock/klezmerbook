\version "2.18.2"

\include "unknown.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "unknown.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \tromboneInstrumentMarkup

emptystaff =  \context Staff = "melodystaff" <<
    \override Staff.Stem   #'transparent = ##t
    \override Staff.NoteHead   #'transparent = ##t
    \override Staff.Beam   #'transparent = ##t
    \override Staff.Clef #'transparent = ##t
    \override Staff.TimeSignature #'transparent = ##t
    \override Staff.BarLine #'transparent = ##t
    \override Staff.StaffSymbol #'transparent = ##t
    a'1
>>
\book {
    \include "book-header.ily"
    \score {
%        \trombonesubscore
        \emptystaff
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
}

\version "2.14.0"

\include "khanukah_oy_khanukah.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}
positionTC = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(16.0 . 0.0)
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionCC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark #'extra-offset = #'(-27.0 . 0.4)
}
breakA = { \pageBreak }
breakB = { \pageBreak }
%breakCfor = { \pageBreak }
\include "khanukah_oy_khanukah.notes.ily"
\include "staves-and-scores.ily"

bandmNV = { \bandmscore }

instrumentMarkup = \scoreInstrumentMarkup

customsubscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocalstaff
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
    \new StaffGroup <<
        \flutestaff
        \clarinetstaff
        \tenorsaxstaff
    >>

    \new StaffGroup <<
        \violinstaff
        \new Staff \with {
            instrumentName = "Strings"
            shortInstrumentName = "St."
            midiInstrument = "string ensemble 1"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.4 
       } {
            \new Voice {
                \stringsnotes
            }
        }
        \bassstaff
    >>

    \new StaffGroup <<
        \trumpetstaff
        \trombonestaff
    >>

    \new PianoStaff \with {
        instrumentName = "Piano"
        midiInstrument = "bright acoustic"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
        \consists "Staff_performer"
    } {
        <<
            \new Staff \with { \remove "Staff_performer" } { \pianonotes }
            \new Staff \with { \remove "Staff_performer" } {
                \clef bass \bassnotes
            }
        >>
    }
    \new PianoStaff \with {
        instrumentName = "Accordion"
        midiInstrument = "accordion"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
        \consists "Staff_performer"
    } {
        <<
            \new Staff \with { \remove "Staff_performer" } { \pianonotes }
            \new Staff \with { \remove "Staff_performer" } {
                \clef bass \bassnotes
            }
        >>
    }

    \new DrumStaff \with {
        instrumentName = "Drums"
        midiInstrument = "standard kit"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
    } \drummode { <<
        \clef percussion
        \new DrumVoice { \stemUp \drumshigh }
        \new DrumVoice { \stemDown \drumslow }
    >> }
>>

midisubscore = <<
    \tempo \tempoprefix 4 = 120
    \vocalstaff
    \lyricsto vocalmelody \context Lyrics = vone { \textl }

    \new StaffGroup <<
        \new Staff \with {
            instrumentName = "Flute"
            midiInstrument = "flute"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.7
        } {
            \new Voice {
                \flutenotes
            }
        }
        \new Staff \with {
            instrumentName = \clarinetinstrumentmarkup
            midiInstrument = "clarinet"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.5
            \override VerticalAxisGroup #'remove-first = ##f
        } {
            \new Voice {
                \transposition bes
                \clarinetnotes
            }
        }
        \new Staff \with {
            instrumentName = \tenorsaxinstrumentmarkup
            midiInstrument = "tenor sax"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.4
            \override VerticalAxisGroup #'remove-first = ##f
        } {
            \new Voice {
                \transposition bes
                \tenorsaxnotes
            }
        }
    >>

    \new StaffGroup <<
        \new Staff \with {
            instrumentName = "Violin"
            midiInstrument = "violin"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.5
        } {
            \new Voice {
                \violinnotes
            }
        }
        \new Staff \with {
            instrumentName = "Strings"
            midiInstrument = "string ensemble 1"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.4 
       } {
            \new Voice {
                \stringsnotes
            }
        }
        \new Staff \with {
            instrumentName = "Bass"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.8
            midiInstrument = "contrabass"
        } {
            \new Voice {
                \clef bass
                \transposition c
                \bassnotes
            }
        }
    >>

    \new StaffGroup <<
        \new Staff \with {
            instrumentName = "Trumpet"
            midiInstrument = "trumpet"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #1.0
            \override VerticalAxisGroup #'remove-first = ##f
        } {
            \new Voice {
                \transposition bes
                \trumpetnotes
            }
        }
        \new Staff \with {
            instrumentName = "Trombone"
            midiInstrument = "trombone"
            midiMinimumVolume = #0.0
            midiMaximumVolume = #0.5
            \override VerticalAxisGroup #'remove-first = ##f
        } {
            \new Voice {
                \clef bass
                \trombonenotes
            }
        }
    >>

    \new PianoStaff \with {
        instrumentName = "Piano"
        midiInstrument = "bright acoustic"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
        \consists "Staff_performer"
    } {
        <<
            \new Staff \with { \remove "Staff_performer" } { \pianonotes }
            \new Staff \with { \remove "Staff_performer" } {
                \clef bass \bassnotes
            }
        >>
    }
    \new PianoStaff \with {
        instrumentName = "Accordion"
        midiInstrument = "accordion"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
        \consists "Staff_performer"
    } {
        <<
            \new Staff \with { \remove "Staff_performer" } { \pianonotes }
            \new Staff \with { \remove "Staff_performer" } {
                \clef bass \bassnotes
            }
        >>
    }

    \new DrumStaff \with {
        instrumentName = "Drums"
        midiInstrument = "standard kit"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
    } \drummode {
        \clef percussion
        \new DrumVoice <<
            \stemUp \drumshigh
            \stemDown \drumslow
        >>
    }
>>

\include "book-header.ily"
\score {
  \customsubscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #30
  }
}
\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

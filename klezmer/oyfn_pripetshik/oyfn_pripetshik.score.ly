\version "2.14.0"

\include "oyfn_pripetshik.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \KeyAlignMark
}

breakIN = { \break }
breakAeit = { \break }
breakAtwl = { \break }
breakAfrt = { \break }
breakA = { \break }

\include "oyfn_pripetshik.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
%    \altoclarinetstaff
    \altosaxstaff
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
%    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \guitarchordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
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
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

midisubscore = <<
    \context Staff = "flute" \with { midiInstrument = "flute" } {
        <<
            \metronome
            \new Voice { \transpose e d { \flutenotesmidi } }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" } {
        <<
            \metronome
            \new Voice { \transposition bes \transpose e d { \clarinetnotesmidi } }
        >>
    }
    \context Staff = "altosax" \with { midiInstrument = "alto sax" } {
        <<
            \metronome
            \new Voice { \transposition ees' \transpose e d { \altosaxnotesmidi } }
        >>
    }
    \context Staff = "tenorsax" \with { midiInstrument = "tenor sax" } {
        <<
            \metronome
            \new Voice { \transposition bes \transpose e d { \tenorsaxnotesmidi } }
        >>
    }

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" } {
        <<
            \metronome
            \new Voice { \transposition bes \transpose e d { \trumpetnotesmidi } }
        >>
    }
    \context Staff = "trombone" \with { midiInstrument = "trombone" } {
        <<
            \metronome
            \new Voice { \transpose e d { \trombonenotesmidi } }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" } {
        <<
            \metronome
            \new Voice { \transpose e d { \violinnotesmidi } }
        >>
    }
%    \context Staff = "guitar" \with {
%        midiInstrument = "acoustic guitar (steel)"
%    } {
%        <<
%            \metronome
%            \new Voice { \guitarnotesmidi }
%        >>
%    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
        <<
            \metronome
            \new Voice { \transpose e d { \bassnotesmidi } }
        >>
    }

    \transpose e d { \piano }
    \transpose e d { \accordion }
    \drumset
>>

\include "book-header.ily"
\score {
  \transpose e d { \subscorewithlyrics }
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #13
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

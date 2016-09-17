\version "2.14.0"

\include "sherele_00.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}

breakSI = { \break }
breakFI = { \break }
breakA = { \break }
breakB = { \break }

\include "sherele_00.notes.ily"
\include "staves-and-scores.ily"

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetonestaff
    \clarinettwostaff
    \altosaxstaff
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetonestaff
    \trumpettwostaff
    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames

    \new PianoStaff \with {
        instrumentName = \accordioninstrumentmarkup
        shortInstrumentName = \accordioninstrmarkup
    }  { <<
        \new Staff {
            \clef violin
            <<
                \new Voice { \pianorightuppernotes }
                \new Voice { \pianorightlowernotes }
            >>
        }
        \new Staff {
            \clef bass
            <<
                \new Voice { \pianoleftuppernotes }
                \new Voice { \pianoleftlowernotes }
            >>
        }
    >> }

    \drumsstaff
>>

accordion = \context Staff = "accordion" \with {
    midiInstrument = "accordion"
    \override TimeSignature #'style = #'() 
} {
    <<
        \metronome
        \new Voice { \pianorightnotesmidi }
        \new Voice { \pianoleftnotesmidi }
    >>
}

midisubscore = <<
    \context Staff = "flute" \with { midiInstrument = "flute" } {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" } {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with { midiInstrument = "alto sax" } {
        <<
            \metronome
            \new Voice { \transposition ees' \altosaxnotesmidi }
        >>
    }
    \context Staff = "tenorsax" \with { midiInstrument = "tenor sax" } {
        <<
            \metronome
            \new Voice { \transposition bes \tenorsaxnotesmidi }
        >>
    }

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" } {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with { midiInstrument = "trombone" } {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" } {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
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
            \new Voice { \bassnotesmidi }
        >>
    }

%    \piano
    \accordion
    \drumset
>>

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #17
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

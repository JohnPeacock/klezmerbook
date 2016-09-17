\version "2.14.0"

\include "skotshne_59.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}

positionA = {
  \CenterMarkOnce
  \KeyAlignMark
}
positionC = {
  \RightMarkOnce
  \ClefAlignMark
}

breakA = { \break }
breakB = { \break }

\include "skotshne_59.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

piano = \context Staff = "piano" \with {
    midiInstrument = "bright acoustic"
    midiMinimumVolume = #0.0
    midiMaximumVolume = #0.7
}  {
    <<
        \metronome
        \new Voice { \pianorightnotesmidi }
        \new Voice { \pianoleftnotesmidi }
    >>
}

%=====================================================================

accordion = \context Staff = "accordion" \with {
    midiInstrument = "accordion"
    midiMinimumVolume = #0.0
    midiMaximumVolume = #0.7
}  {
    <<
        \metronome
        \new Voice { \accordionrightnotesmidi }
        \new Voice { \accordionleftnotesmidi }
    >>
}

%=====================================================================

drumset = \context DrumStaff = "drumset" \with {
    midiInstrument = "drums"
    midiMinimumVolume = #0.0
    midiMaximumVolume = #0.7
} \drummode {
    <<
        \metronome
        \new DrumVoice { \drumshighmidi }
        \new DrumVoice { \drumslowmidi }
    >>
}

%=====================================================================

midisubscore = <<
    \context Staff = "flute" \with {
        midiInstrument = "flute"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
    }  {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with {
        midiInstrument = "clarinet"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
    }  {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with {
        midiInstrument = "alto sax"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
    }  {
        <<
            \metronome
            \new Voice { \transposition ees' \altosaxnotesmidi }
        >>
    }
    \context Staff = "tenorsax" \with { midiInstrument = "tenor sax" }  {
        <<
            \metronome
            \new Voice { \transposition bes \tenorsaxnotesmidi }
        >>
    }

    \context Staff = "trumpet" \with {
        midiInstrument = "trumpet"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.9
    }  {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with {
        midiInstrument = "trombone"
        midiMinimumVolume = #7.0
        midiMaximumVolume = #1.0
    }  {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with {
        midiInstrument = "fiddle"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
    }  {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
        >>
    }
    \context Staff = "guitar" \with {
        midiInstrument = "acoustic guitar (steel)"
    }  {
        <<
            \metronome
            \new Voice { \guitarnotesmidi }
        >>
    }
    \context Staff = "bass" \with {
        midiInstrument = "contrabass"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.5
    }  {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }

    \piano
    \accordion
    \drumset
>>

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
    \altosaxstaff
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
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
    \drumsstaff
>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
    system-count = #10
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

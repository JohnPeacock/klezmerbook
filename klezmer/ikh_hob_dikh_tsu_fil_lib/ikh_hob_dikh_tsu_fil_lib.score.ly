\version "2.18.2"

\include "ikh_hob_dikh_tsu_fil_lib.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}
\include "ikh_hob_dikh_tsu_fil_lib.notes.ily"
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
    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
    \bassstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \flutechordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

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
    \context Staff = "vocals" \with {
        midiInstrument = "voice oohs"
        midiMinimumVolume = #0.7
        midiMaximumVolume = #1.0
    }  {
        <<
            \metronome
            \context Voice = vocalmelodyone { \leadsheetnotesmidi }
        >>
    }
    \lyricsto vocalmelodyone \context Lyrics = vone { \textl }
    \context Staff = "flute" \with {
        midiInstrument = "flute"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
    }  {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with {
        midiInstrument = "clarinet"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.8
    }  {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with {
        midiInstrument = "alto sax"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.8
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
        midiInstrument = "muted trumpet"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.8
    }  {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with {
        midiInstrument = "trombone"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.8
    }  {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with {
        midiInstrument = "fiddle"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.7
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
        midiInstrument = "fretless bass"
        midiMinimumVolume = #0.0
        midiMaximumVolume = #0.6
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

\include "book-header.ily"
\score {
  \subscorewithlyrics
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
				%            system-count = #16
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

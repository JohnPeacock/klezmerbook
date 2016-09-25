\version "2.18.2"

% this produces both midi and a full score.
%

\include "gut_nakht_vals.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}
\include "gut_nakht_vals.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
    \altosaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \bassstaff
>>

subscore = <<
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
  }
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
    \context Staff = "guitar" \with {
        midiInstrument = "acoustic guitar (steel)"
    } {
        <<
            \metronome
            \new Voice { \guitarnotesmidi }
        >>
    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }

%    \piano
%    \accordion
%    \drumset
>>

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

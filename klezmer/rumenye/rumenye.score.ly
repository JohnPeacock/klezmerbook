\version "2.14.0"

\include "rumenye.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakA = { }
breakIN = { }
%breakA = { \pageBreak }
%breakB = { \pageBreak }
%breakCten = { \break }

\include "rumenye.notes.ily"
\include "staves-and-scores.ily"

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

subscorewithlyrics = <<
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
% It doesn't like the empty drum staff.
%    \drumsstaff
>>

midisubscore = <<
    \context Staff = "vocals" \with {
        midiInstrument = "voice oohs"
        midiMinimumVolume = #0.7
        midiMaximumVolume = #1.0
    }  {
        <<
            \metronome
            \context Voice = vocalmelodyone { \leadsheetmidinotes }
        >>
    }
    \lyricsto vocalmelodyone \context Lyrics = vone { \textl }

    \context Staff = "flute" \with { midiInstrument = "flute" }  {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with { midiInstrument = "alto sax" }  {
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

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with { midiInstrument = "trombone" }  {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" }  {
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
    \context Staff = "bass" \with { midiInstrument = "contrabass" }  {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }
    
    \piano
%    \accordion
%    \drumset
>>

instrumentMarkup = \scoreInstrumentMarkup

\include "book-header.ily"
\score {
  \subscorewithlyrics
  \include "score-header.ily"
  \layout {
    \include "keepempty-ambitus-translators.ily"
%    system-count = #31
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

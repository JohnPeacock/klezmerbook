\version "2.18.2"

\include "freylekhs_in_d_freygish.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAfiv = { \pageBreak }
breakAelv = { \pageBreak }
breakA = { \pageBreak }
breakBsix = { \pageBreak }
breakBtwl = { \pageBreak }
breakB = { \pageBreak }
breakCsix = { \pageBreak }
breakCtwl = { \pageBreak }

\include "freylekhs_in_d_freygish.notes.ily"
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
%    \bassstaff
>>

subscore = <<
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
>>

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

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" } {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" } {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
        >>
    }
%    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
%        <<
%            \metronome
%            \new Voice { \bassnotesmidi }
%        >>
%    }

>>

\include "book-header.ily"
\score {
  \subscore
  \include "score-header.ily"
  \layout {
    \include "ambitus-translators.ily"
  }
}

\include "articulate.ly"
\score {
  \unfoldRepeats
  \midisubscore
  \midi { }
}

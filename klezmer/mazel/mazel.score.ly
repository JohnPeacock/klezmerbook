\version "2.14.0"

\include "mazel.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakAfiv = { \pageBreak }
breakAelv = { \pageBreak }
breakA = { \pageBreak }
breakBtre = { \pageBreak }
breakBsix = { \pageBreak }

\include "mazel.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
%    \altoclarinetstaff
    \altosaxstaff
%    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
%    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
%    \guitarstaff
    \bassstaff
>>

subscorewithlyrics = <<
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
%    \pianochordnames
%    \pianostaff
%    \drumsstaff
>>

\include "book-header.ily"
\score {
    \subscorewithlyrics
    \include "score-header.ily"
    \layout {
        \include "ambitus-translators.ily"
        system-count = #8
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
    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }
>>

\include "articulate.ly"
\score {
    \unfoldRepeats
    \midisubscore
    \midi { }
}

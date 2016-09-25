\version "2.18.2"

\include "mah_tovu.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
    systems-per-page = #1
}
\include "mah_tovu.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \scoreInstrumentMarkup

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
    \altoclarinetstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
>>

stringgroup = \new StaffGroup <<
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
%    \drumsstaff
>>

midisubscore = <<
    \context Staff = "vocals" \with { midiInstrument = "french horn" } {
        <<
            \metronome
            \new Voice = vocalmelody { \leadsheetnotesmidi }
        >>
    }
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

    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }
>>

\include "book-header-local.ily"
\score {
    \subscorewithlyrics
    \include "score-header.ily"
    \layout {
        \include "keepempty-ambitus-translators.ily"
        system-count = #21
    }
}

\include "articulate.ly"
\score {
    \unfoldRepeats
    \midisubscore
    \midi { }
}

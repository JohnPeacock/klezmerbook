\version "2.18.2"

\include "honga.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

positionSA = {
  \BarAlignMark
  \LeftMarkOnce
}
positionB  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionC  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionD  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionE  = {
  \KeyAlignMark
  \CenterMarkOnce
}

breakEett = { \noBreak }
breakBL = { \noBreak }

\include "honga.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \markup { "Ensemble Score" }

midisubscore = <<
    \context Staff = "trumpet" \with { midiInstrument = "trumpet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "violin" \with { midiInstrument = "violin" }  {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
        >>
    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" }  {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }

    \drumset
>>

windgroup = \new StaffGroup <<
    \fluteonestaff
    \flutetwostaff
    \clarinetonestaff
    \clarinettwostaff
%    \altoclarinetstaff
    \altosaxonestaff
    \altosaxtwostaff
%    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetonestaff
    \trumpettwostaff
%    \trombonestaff
>>

stringgroup = \new StaffGroup <<
    \violinonestaff
    \violintwostaff
%    \guitarstaff
    \bassstaff
>>

subscore = <<
    \override Score.BarNumber   #'padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
%    \pianochordnames
%    \pianostaff
%    \accordionstaff
    \drumsstaff
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

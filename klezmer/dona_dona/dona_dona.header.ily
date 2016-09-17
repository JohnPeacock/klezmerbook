\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \moderatotempoprefix
temponote = \quarternote
tempovalue = \moderatotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupCH = \markup { \italic "Chorus" }
markCH = { \mark \markupCH }

positionCH = {
  \RightMarkOnce
  \KeyAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakAeit = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דאָנאַ דאָנאַ" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Dona Dona" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "דאָנאַ דאָנאַ" }
  "Dona Dona"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דאָנאַ דאָנאַ" }
  "Dona Dona"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דאָנאַ דאָנאַ" }
  "Dona Dona"
}

composerMarkup = \markup { "Shalom Secunda, 1938" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }
poetMarkup = \markup { "Aaron Zeitlin" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"
\storePredefinedDiagram #default-fret-table \chordmode {g':min} #guitar-tuning #"x;x;5-3;3-1-(;3-1;3-1-);"

bnPad = \barnumberpadextra

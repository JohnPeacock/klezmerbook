\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}

breakAtwn = { }
breakAtwnone = { }
breakAtwntwo = { }
breakAtwntre = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "From piano arrangement by E. Kalendar in The World's Most Popular Jewish Songs" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אױפֿן פּריפּעטשיק" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Oyfn Pripetshik" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "On the Hearth"
}

headMarkup = \markup \center-column {
    \larger { "אױפֿן פּריפּעטשיק" }
    "Oyfn Pripetshik"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "אױפֿן פּריפּעטשיק" }
    "Oyfn Pripetshik"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "אױפֿן פּריפּעטשיק" }
    "Oyfn Pripetshik"
}

composerMarkup = \markup { "M. Warshawsky" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"

\storePredefinedDiagram #default-fret-table \chordmode {g':min} #guitar-tuning #"x;x;5-3;3-1-(;3-1;3-1-);"

bnPad = \barnumberpadextra

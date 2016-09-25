\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Lively," }
temponote = \quarternote
tempovalue = \markup "120-140"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionFC = {
  \LeftMarkOnce
  \BarAlignMark
}

breakCCone = { }
breakCCtwo = { }
breakCCtre = { }
breakCCfor = { }
breakCCfiv = { }
breakCCsix = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "שוסטער און שנײַדער" }
  \override #'(font-size . 12) { "טאַנץ" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Shuster und Shnayder Tants" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "Cobbler and Tailor Dance"
  "Kammen Vol. 1, No. 7"
}

headMarkup = \markup \center-column {
  \larger { "שוסטער און שנײַדער טאַנץ" }
  "Shuster und Shnayder Tants (K. 1-7)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "שוסטער און שנײַדער טאַנץ" }
  "Shuster und Shnayder Tants (K. 1-7)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "שוסטער און שנײַדער טאַנץ" }
  "Shuster und Shnayder Tants (K. 1-7)"
}

arrangerMarkup = \markup { \italic "Arr. S. & B. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "With energy" }
temponote = \quarternote
tempovalue = \markup "104"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

middleBreak = { }

positionSA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS = {
  \LeftMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "הללו - כל הנשמה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Hallelu - Kol Haneshama" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Every Breathing Thing" }

headMarkup = \markup \center-column {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Part I - Sufi Chant;Part 2 - Unknown" }
poetMarkup = \markup { "Text: Psalm 150:6" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

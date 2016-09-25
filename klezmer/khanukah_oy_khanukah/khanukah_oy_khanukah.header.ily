\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup "Freylekh"
temponote = \quarternote
tempovalue = "240"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \RightMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionToA = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark.extra-offset = #'(-1.0 . 0.0)
}
positionCC = {
  \LeftMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark.extra-offset = #'(-1.0 . 0.0)
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = ""

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "חנוכּה אױ חנוכּה" } % Yiddish title goes here.
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Khanukah, Oy Khanukah" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "On the Hearth"
}

headMarkup = \markup \center-column {
    \larger { "חנוכּה אױ חנוכּה" }
    "Khanukah, Oy Khanukah"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "חנוכּה אױ חנוכּה" }
    "Khanukah, Oy Khanukah"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "חנוכּה אױ חנוכּה" }
    "Khanukah, Oy Khanukah"
}

subtitleMarkup = \markup { "Chanukah, Oh Chanukah!" }
composerMarkup = \markup \column \right-align {
    "Mordkhe Rivesman"
% leave out the Yiddish.  Spacing problem.    \larger { "מרדכי ריװעסמאַן" }
}

arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

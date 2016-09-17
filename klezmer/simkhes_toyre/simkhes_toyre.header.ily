\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupBridge =  \markup { \italic "Bridge" }
markBridge = { \mark \markupBridge }

positionBridge = {
  \RightMarkOnce
  \ClefAlignMark
}
positionCH = {
  \RightMarkOnce
  \BarAlignMark
}
positionDS = {
  \RightMarkOnce
  \BarAlignMark
  \once \override Score.RehearsalMark.extra-offset = #'(12.0 . 0.0)
}

breakIN = { \break }
breakA = { \break }
breakB = { \break }
breakC = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { "קינדער מיר האָבן" }
  \override #'(font-size . 12) { "שׂימחת תּורה" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kinder Mir Hobn Simkhes Toyre" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "קינדער מיר האָבן שׂימחת תּורה" }
  "Kinder Mir Hobn Simkhes Toyre"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "קינדער מיר האָבן שׂימחת תּורה" }
  "Kinder Mir Hobn Simkhes Toyre"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "קינדער מיר האָבן שׂימחת תּורה" }
  "Kinder Mir Hobn Simkhes Toyre"
}

arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }
composerMarkup = \markup { "Mark M. Warshavsky" }
poetMarkup = ""

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

\version "2.18.2"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup "135"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \once \override Score.MetronomeMark.outside-staff-priority = #3
  \once \override Score.RehearsalMark.outside-staff-priority = #2
  \once \override Score.TextScript.outside-staff-priority = #1
  \CenterMarkOnce
  \BarAlignMark
}
positionB  = {
  \CenterMarkOnce
  \BarAlignMark
}

breakAtwty = { }
breakAtwtone = { }
breakAtwttwo = { }
breakAtwttre = { }
breakAtwtfor = { }
breakAtwtfiv = { }
breakAtwtsix = { }
breakAtwtsev = { }
breakAtwteit = { }
breakAtwtnin = { }
breakA = { \break }
breakBtwtone = { }
breakBtwttwo = { }
breakBtwttre = { }
breakBtwtfor = { }
breakBtwtfiv = { }
breakBtwtsix = { }
breakBtwtsev = { }
breakBtwteit = { }
breakBtwtnin = { }
breakBthty = { }
breakBthtone = { }
breakBtwttwo = { }
breakBtwttre = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "Lead sheet from Yakov Chodosh's web site" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דער אַלטער ציגײַנער" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Der Alter Tsigayner" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "The Old Gypsy" }

headMarkup = \markup \center-column {
  { \larger { "דער אַלטער ציגײַנער" } }
  { "Der Alter Tsigayner" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  { \larger { "דער אַלטער ציגײַנער" } }
  { "Der Alter Tsigayner" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  { \larger { "דער אַלטער ציגײַנער" } }
  { "Der Alter Tsigayner" }
}

arrangerMarkup = \markup { \italic "Transcription: Yakov Chodosh" }
composerMarkup = \markup { "Music: Abe Ellstein" }
poetMarkup = \markup { "Text: Jacob Jacobs" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

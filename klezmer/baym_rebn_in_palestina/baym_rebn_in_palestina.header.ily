\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup { "Mod. Hora" }
temponote = \quarternote
tempovalue = \markup "70"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostringa = \markup {
  \line { \small \italic "Mod. Hora" \small "(" \tiny \temponote \small " = 65)" }
}

tempostringb = \markup {
  \line { \small \italic "Allegro" \small "(" \tiny \temponote \small " = " \small \allegrotempovalue \small ")" }
}

positionA = {
  \KeyAlignMark
  \RightMarkOnce
}
positionB  = {
  \CenterMarkOnce
}
positionC  = {
  \CenterMarkOnce
}
positionD = {
  \KeyAlignMark
  \RightMarkOnce
}
positionSE = {
  \CenterMarkOnce
}
positionTC = {
  \BarAlignMark
  \LeftMarkOnce
}
positionF  = {
  \CenterMarkOnce
}
positionG  = {
  \KeyAlignMark
  \CenterMarkOnce
}
positionDS = {
  \LeftMarkOnce
}
positionCC = {
  \RightMarkOnce
}

positionTempoTwo = {
}

markDT = { \mark \markupD }

sectionBreakOne = { }
sectionBreakTwo = { }
sectionBreakThree = { \break }
sectionBreakFour = { }
sectionBreakFive = { }
sectionBreakSix = { }
sectionBreakSeven = { \noBreak }

breakBL = { \noBreak }

breakCCone = { }
breakCCtwo = { }
breakCCtre = { }

bassBreak = { }

songgroupMarkup = \klezmerSongGroup
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "בײַם רבן אין פּאַלעסטינע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Baym Rebn in Palestina" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "With the Rebbe in Palestine" }

headMarkup = \markup \center-column {
  \larger { "בײַם רבן אין פּאַלעסטינע" }
  "Baym Rebn in Palestina"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "בײַם רבן אין פּאַלעסטינע" }
  "Baym Rebn in Palestina"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "בײַם רבן אין פּאַלעסטינע" }
  "Baym Rebn in Palestina"
}

composerMarkup = \markup \column \right-align {
  "Itzikl Kramtweiss"
  "Broder Kapelle, 1929"
  " "
}
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

\include "print-drum-fragments.ily"

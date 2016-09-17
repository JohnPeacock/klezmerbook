\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

tempostringTWO = \markup {
  \small \italic "a tempo (not too fast)"
}

positionSA = {
  \CenterMarkOnce
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
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}
% position right because it is really at the end of the measure
positionDSAL = {
  \RightMarkOnce
  \BarAlignMark
}
positionFC = {
  \RightMarkOnce
  \BarAlignMark
}
positionRT = {
  \RightMarkOnce
  \BarAlignMark
}

breakE = { \break }
breakFCone = { }
breakFCtwo = { }
breakFCtre = { }
breakFCfor = { }
breakFCfiv = { }
breakFCsix = { }
breakFCsev = { }
breakFCeit = { }

songgroupMarkup = \markup { "" } % "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "קאַמעריסקע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Kamariska" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "(Russian Dance No. I)"
  "Kammen Vol. 1, No. 24"
}

headMarkup = \markup \center-column {
  { \larger { "קאַמעריסקע" } }
  { "Kamariska (Russian Dance No. I)" }
}
evenTitleHeaderMarkup = \markup \column \right-align {
  { \larger { "קאַמעריסקע" } }
  { "Kamariska (Russian Dance No. I)" }
}
oddTitleHeaderMarkup = \markup \column \left-align {
  { \larger { "קאַמעריסקע" } }
  { "Kamariska (Russian Dance No. I)" }
}

arrangerMarkup = \markup { \italic "Arr: Jos. Kammen" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

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

positionS = {
  \RightMarkOnce
  \KeyAlignMark
}

positionCH = {
  \RightMarkOnce
  \KeyAlignMark
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
  \override #'(font-size . 12) { "די מאַמע האָט מיך געשיקט" }
  \override #'(font-size . 12) { "אַ ייִנגעלע פֿון פּוילען" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Di Mame Hat Mikh Geshikt" }
  \override #'(font-size . 9)  { "A Yingele fun Poyln" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  { "Mama Sent Me" }
  { "A Young Man from Poland" }
}

headMarkup = \markup \center-column {
  \larger { "די מאמע האט מיך געשיקט" }
  \larger { "אַ ייִנגעלע פֿון פּוילען" }
  "Di Mame Hat Mikh Geshikt"
  "A Yingele fun Poyln"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "די מאמע האט מיך געשיקט" }
  \larger { "אַ ייִנגעלע פֿון פּוילען" }
  "Di Mame Hat Mikh Geshikt"
  "A Yingele fun Poyln"
}
oddTitleHeaderMarkup = \markup \column \left-align {
}

arrangerMarkup = \markup { \italic "Arr: Dick Schoeller" }
composerMarkup = \markup { "Traditional" }
poetMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

\version "2.18.2"

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

markupC = \markup {
  \column \left-align {
    \line { "K. 1-21, Kolemeyke" }
    \line { \box \bold \huge "C" }
  }
}
markupF =    \markup {
  \column \left-align {
    \line { "Sid's Freylekhs" }
    \line { \box \bold \huge "F" }
  }
}

markC =    { \mark \markupC }
markF =    { \mark \markupF }

positionSA =   {
  \CenterMarkOnce
  \BarAlignMark
}
positionB =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionDS =   {
  \LeftMarkOnce
  \BarAlignMark
}
positionC =    {
  \RightMarkOnce
  \BarAlignMark
}
positionD =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionE =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionF =    {
  \RightMarkOnce
  \BarAlignMark
}
positionG =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionH =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionJ =    {
  \CenterMarkOnce
  \BarAlignMark
}
positionJII =  {
  \CenterMarkOnce
  \BarAlignMark
}
positionToG = {
  \RightMarkOnce
  \BarAlignMark
}
positionJIII = {
  \CenterMarkOnce
  \BarAlignMark
}

breakJtto = { }
breakJttw = { }
breakJttr = { }
breakJtfr = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "פֿרײלעכס מעדלי" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Freylekhs Medley" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "(Itsikel, Kolemeyke 21, Sid's Freylekhs)" }

headMarkup = \markup \center-column {
    \larger { "פֿרײלעכס מעדלי" }
    "Freylekhs Medley"
    "(Itsikel, Kolemeyke 21, Sid's)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
    \larger { "פֿרײלעכס מעדלי" }
    "Freylekhs Medley"
    "(Itsikel, Kolemeyke 21, Sid's)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
    \larger { "פֿרײלעכס מעדלי" }
    "Freylekhs Medley"
    "(Itsikel, Kolemeyke 21, Sid's)"
}

arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

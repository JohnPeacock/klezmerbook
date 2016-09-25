\version "2.18.2"

%=====================================================================
%
% Copyright 2008-2010, Richard J. Schoeller
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Joyously"
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אלה חמדה לבי" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Eileh Chamdah Libi" }
  \override #'(font-size . 7)  { "" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}

composerMarkup = \markup { "Chasidic" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

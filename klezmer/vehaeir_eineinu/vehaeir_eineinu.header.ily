\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Brightly"
temponote = \quarternote
tempovalue = \markup "84"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \RightMarkOnce
  \ClefAlignMark
}
positionFN = {
  \RightMarkOnce
  \BarAlignMark
}
positionDCAF = {
  \LeftMarkOnce
  \BarAlignMark
}

breakA = { \break }
breakB = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "והאר עינינו" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "V'ha-eir Eineinu" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "והאר עינינו" }
  "V'ha-eir Eineinu"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "והאר עינינו" }
  "V'ha-eir Eineinu"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "והאר עינינו" }
  "V'ha-eir Eineinu"
}

poetMarkup = \markup { "Psalm 86:11" }
composerMarkup = \markup { "Rabbi Shlomo Carlebach" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

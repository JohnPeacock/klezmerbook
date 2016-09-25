\version "2.18.2"

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

tempoprefix = "Moderately"
temponote = \quarternote
tempovalue = \markup "88"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \ClefAlignMark
}
positionB = {
  \LeftMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "עוד ישמע" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Od Yishama" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "עוד ישמע" }
  "Od Yishama"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "עוד ישמע" }
  "Od Yishama"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "עוד ישמע" }
  "Od Yishama"
}

poetMarkup = \markup { "Wedding liturgy" }
composerMarkup = \markup { "Rabbi Shlomo Carlebach" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

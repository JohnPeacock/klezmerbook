\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 6 October 2003
%
% History:
%    6 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Joyously"
temponote = \quarternote
tempovalue = \markup "112"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
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
  \override #'(font-size . 12) { "ישמחו השמים" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Yismechu Hashamayim" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}

composerMarkup = \markup { "Chasidic" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

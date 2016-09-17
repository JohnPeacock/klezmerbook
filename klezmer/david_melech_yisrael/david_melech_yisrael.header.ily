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
% Creation: 7 October 2003
%
% History:
%    7 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Joyously"
temponote = \quarternote
tempovalue = \allegrettotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}

breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "דוד מלך ישראל" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "David Melech Yisrael" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}

composerMarkup = \markup { "" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

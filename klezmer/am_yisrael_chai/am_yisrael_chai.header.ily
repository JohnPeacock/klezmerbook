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

tempoprefix = \allegrotempoprefix
temponote = \quarternote
tempovalue = \allegrotempovalue

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \once \override Score.MetronomeMark.outside-staff-priority = #3
  \once \override Score.RehearsalMark.outside-staff-priority = #2
  \once \override Score.TextScript.outside-staff-priority = #1
  \CenterMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
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
  \override #'(font-size . 12) { "עם ישראל חי" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Am Yisrael Chai" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Carlebach)"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Carlebach)"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Carlebach)"
}

composerMarkup = \markup { "Shlomo Carlebach" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

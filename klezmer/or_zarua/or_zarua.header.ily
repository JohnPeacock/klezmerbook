\version "2.18.2"

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
% Creation: 19 October 2003
%
% History:
%    19 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = ""
temponote = \quarternote
tempovalue = \markup "96"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

breakAtwnone = { }
breakAtwntwo = { }
breakAtwntre = { }
breakAtwnfor = { }
breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "אור זרוע" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Or Zarua" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "אור זרוע" }
  "Or Zarua"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "אור זרוע" }
  "Or Zarua"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "אור זרוע" }
  "Or Zarua"
}

poetMarkup = \markup { "Psalm 97:11" }
composerMarkup = \markup { "Jeff Klepper" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

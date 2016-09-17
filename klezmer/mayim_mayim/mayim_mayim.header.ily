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
% Creation: 22 October 2003
%
% History:
%    22 October 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = "Rhythmically"
temponote = \quarternote
tempovalue = \markup "100"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

breakAtwnone = { }
breakAtwntwo = { }
breakAtwntre = { }
breakAtwnfor = { }
breakAtwnfiv = { }
breakA = { \break }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "מים מים" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Mayim, Mayim" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "מים מים" }
  "Mayim, Mayim"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "מים מים" }
  "Mayim, Mayim"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "מים מים" }
  "Mayim, Mayim"
}

poetMarkup = \markup { "Isaiah" }
composerMarkup = \markup { "Emanuel Amiran" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

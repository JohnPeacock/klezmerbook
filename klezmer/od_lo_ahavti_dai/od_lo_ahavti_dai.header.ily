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

tempoprefix = ""
temponote = \quarternote
tempovalue = \markup "120"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "עד לא אהבתי די" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Od Lo Ahavti Dai" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "עד לא אהבתי די" }
  "Od Lo Ahavti Dai"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "עד לא אהבתי די" }
  "Od Lo Ahavti Dai"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "עד לא אהבתי די" }
  "Od Lo Ahavti Dai"
}

%poetMarkup = \markup { "Isaiah" }
composerMarkup = \markup { "Naomi Shemer" }
arrangerMarkup = \markup { \italic "from a piano arrangement by Jerome Epstein" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

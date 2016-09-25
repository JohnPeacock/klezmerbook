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
tempovalue = \markup "100"

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
  \override #'(font-size . 12) { "זמר עתיק" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Zemer Atik" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "זמר עתיק" }
  "Zemer Atik"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "זמר עתיק" }
  "Zemer Atik"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "זמר עתיק" }
  "Zemer Atik"
}

poetMarkup = \markup { "Michael Kashtan" }
composerMarkup = \markup { "Amatai Ne'eman" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

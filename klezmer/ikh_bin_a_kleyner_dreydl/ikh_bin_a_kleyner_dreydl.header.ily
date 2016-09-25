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
% Creation: 1 November 2008
%
% History:
%    1 November 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \moderatotempoprefix
temponote = \quarternote
tempovalue = \moderatotempovalue

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

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "איך בין אַ קלײנער דרײדל" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Ikh Bin a Kleyner Dreydl" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup \center-column {
  "I Am a Little Dreydl"
}

headMarkup = \markup \center-column {
  \larger { "איך בין אַ קלײנער דרײדל" }
  "Ikh Bin a Kleyner Dreydl"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "איך בין אַ קלײנער דרײדל" }
  "Ikh Bin a Kleyner Dreydl"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "איך בין אַ קלײנער דרײדל" }
  "Ikh Bin a Kleyner Dreydl"
}

composerMarkup = \markup { "Michl Gelbart" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra

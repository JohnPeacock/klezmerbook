\version "2.18.0"

% This provides a bunch of initializations for all of the different sheets.

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

% We define the tempo prefix here.  This allows the value to get picked up in
% common-marks.lyh for defining tempomark
%
tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup { "130" }

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"

% header basics

songgroupMarkup = \markup { "personal use" }
adddescMarkup = \markup { "" }

titleMarkup = \markup { "Drum Samples" }
subtitleMarkup = \markup { "" }
headMarkup = \markup { "" }
evenTitleHeaderMarkup = \markup { "" }
oddTitleHeaderMarkup = \markup { "" }
composerMarkup = \markup { "" }
arrangerMarkup = \markup { "" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

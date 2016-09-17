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

tempoDAVIDMELECHprefix = "Joyously"
tempoDAVIDMELECHnote = \quarternote
tempoDAVIDMELECHvalue = \allegrettotempovalue

tempoDAVIDMELECHstring = \markup {
  \small \italic \tempoDAVIDMELECHprefix \small "(" \tiny \tempoDAVIDMELECHnote  \small " = " \small \tempoDAVIDMELECHvalue \small ")"
}

tempoHALLELUprefix = \markup { "With energy" }
tempoHALLELUnote = \quarternote
tempoHALLELUvalue = \markup "104"

tempoHALLELUstring = \markup {
  \small \italic \tempoHALLELUprefix \small "(" \tiny \tempoHALLELUnote  \small " = " \small \tempoHALLELUvalue \small ")"
}

tempoAMYISROCKprefix = "With fervor"
tempoAMYISROCKnote = \quarternote
tempoAMYISROCKvalue = \markup "120"

tempoAMYISROCKstring = \markup {
  \small \italic \tempoAMYISROCKprefix \small "(" \tiny \tempoAMYISROCKnote  \small " = " \small \tempoAMYISROCKvalue \small ")"
}

tempoMAYIMprefix = "Rhythmically"
tempoMAYIMnote = \quarternote
tempoMAYIMvalue = \markup "100"

tempoMAYIMstring = \markup {
  \small \italic \tempoMAYIMprefix \small "(" \tiny \tempoMAYIMnote  \small " = " \small \tempoMAYIMvalue \small ")"
}

tempoYISMECHUprefix = "Joyously"
tempoYISMECHUnote = \quarternote
tempoYISMECHUvalue = \markup "112"

tempoYISMECHUstring = \markup {
  \small \italic \tempoYISMECHUprefix \small "(" \tiny \tempoYISMECHUnote  \small " = " \small \tempoYISMECHUvalue \small ")"
}

tempoORZARUAprefix = ""
tempoORZARUAnote = \quarternote
tempoORZARUAvalue = \markup "96"

tempoORZARUAstring = \markup {
  \small \italic \tempoORZARUAprefix \small "(" \tiny \tempoORZARUAnote  \small " = " \small \tempoORZARUAvalue \small ")"
}

tempoEILEHprefix = "Joyously"
tempoEILEHnote = \quarternote
tempoEILEHvalue = \markup "120"

tempoEILEHstring = \markup {
  \small \italic \tempoEILEHprefix \small "(" \tiny \tempoEILEHnote  \small " = " \small \tempoEILEHvalue \small ")"
}

tempoLOYISprefix = \markup { "" }
tempoLOYISnote = \quarternote
tempoLOYISvalue = \markup "120"

tempoLOYISstring = \markup {
  \small \italic \tempoLOYISprefix \small "(" \tiny \tempoLOYISnote  \small " = " \small \tempoLOYISvalue \small ")"
}

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}

YISMECHUpositionA = {
  \CenterMarkOnce
  \TimeAlignMark
}
YISMECHUpositionB = {
  \CenterMarkOnce
  \BarAlignMark
}
YISMECHUpositionFN = {
  \RightMarkOnce
  \BarAlignMark
}
YISMECHUpositionDCAF = {
  \RightMarkOnce
  \BarAlignMark
}

positionHALLELUDS = {
  \RightMarkOnce
  \BarAlignMark
}
markHALLELUDS = {
  \markDSFN
}

breakDAVIDMELECHAone = {}
breakDAVIDMELECHAtwo = {}
breakDAVIDMELECHAtre = {}
breakDAVIDMELECHAfor = {}
breakDAVIDMELECHAfiv = {}
breakDAVIDMELECHAsix = {}
breakDAVIDMELECHAsev = {}
breakDAVIDMELECHA = { \break }

breakHALLELUA = { }
breakHALLELUB = { \break }

breakAMYISROCKA = { \break }
breakAMYISROCKB = { \break}


breakMAYIMAone = {}
breakMAYIMAtwo = {}
breakMAYIMAtre = {}
breakMAYIMAfor = {}
breakMAYIMAfiv = {}
breakMAYIMAsix = {}
breakMAYIMAsev = {}
breakMAYIMAeit = {}
breakMAYIMAnin = {}
breakMAYIMAten = {}
breakMAYIMAelv = {}
breakMAYIMAtwl = {}
breakMAYIMAtht = {}
breakMAYIMAfrt = {}
breakMAYIMAfft = {}
breakMAYIMAsxt = { \break }
breakMAYIMAsvt = {}
breakMAYIMAett = {}
breakMAYIMAnnt = {}
breakMAYIMAtwy = {}
breakMAYIMAtwnone = {}
breakMAYIMAtwntwo = {}
breakMAYIMAtwntre = {}
breakMAYIMAtwnfor = {}
breakMAYIMAtwnfiv = {}
breakMAYIMA = { \break }

breakYISMECHUA = {}
breakYISMECHUB = { \break }

breakORZARUAAtwnone = { }
breakORZARUAAtwntwo = { }
breakORZARUAAtwntre = { }
breakORZARUAAtwnfor = { }
breakORZARUAA = { \break }

EILEHmarkI = { \mark \markup { \italic "I." } }
EILEHmarkII = { \mark \markup { \italic "II." } }

EILEHpositionI = {
  \CenterMarkOnce
  \TimeAlignMark
}
EILEHpositionII = {
  \CenterMarkOnce
  \BarAlignMark
}

EILEHbreakA = {}
EILEHbreakB = { \break }

LOYISApositionFN = { \positionFN }
LOYISAmarkFN = { \markFN }

LOYISApositionDS = { \positionDS }
LOYISAmarkDS = { \markDS }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "מעדלי" } % title in hebrew goes here
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Beth Elohim Medley" }
  \override #'(font-size . 10) { " " }
}

headDAVIDMELECHMarkup = \markup \center-column {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}
evenTitleHeaderDAVIDMELECHMarkup = \markup \column \right-align {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}
oddTitleHeaderDAVIDMELECHMarkup = \markup \column \left-align {
  \larger { "דוד מלך ישראל" }
  "David Melech Yisrael"
}

headHALLELUMarkup = \markup \center-column {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}
evenTitleHeaderHALLELUMarkup = \markup \column \right-align {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}
oddTitleHeaderHALLELUMarkup = \markup \column \left-align {
  \larger { "הללו - כל הנשמה" }
  "Hallelu - Kol Haneshama"
}

headAMYISROCKMarkup = \markup \center-column {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Rockoff)"
}
evenTitleHeaderAMYISROCKMarkup = \markup \column \right-align {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Rockoff)"
}
oddTitleHeaderAMYISROCKMarkup = \markup \column \left-align {
  \larger { "עם ישראל חי" }
  "Am Yisrael Chai (Rockoff)"
}

headMAYIMMarkup = \markup \center-column {
  \larger { "מים מים" }
  "Mayim, Mayim"
}
evenTitleHeaderMAYIMMarkup = \markup \column \right-align {
  \larger { "מים מים" }
  "Mayim, Mayim"
}
oddTitleHeaderMAYIMMarkup = \markup \column \left-align {
  \larger { "מים מים" }
  "Mayim, Mayim"
}

headYISMECHUMarkup = \markup \center-column {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}
evenTitleHeaderYISMECHUMarkup = \markup \column \right-align {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}
oddTitleHeaderYISMECHUMarkup = \markup \column \left-align {
  \larger { "ישמחו השמים" }
  "Yismechu Hashamayim"
}

headORZARUAMarkup = \markup \center-column {
  \larger { "אור זרוע" }
  "Or Zarua"
}
evenTitleHeaderORZARUAMarkup = \markup \column \right-align {
  \larger { "אור זרוע" }
  "Or Zarua"
}
oddTitleHeaderORZARUAMarkup = \markup \column \left-align {
  \larger { "אור זרוע" }
  "Or Zarua"
}

headEILEHMarkup = \markup \center-column {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}
evenTitleHeaderEILEHMarkup = \markup \column \right-align {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}
oddTitleHeaderEILEHMarkup = \markup \column \left-align {
  \larger { "אלה חמדה לבי" }
  "Eileh Chamdah Libi"
}

composerDAVIDMELECHMarkup = \markup { "" }
arrangerDAVIDMELECHMarkup = \markup { \italic "Arr. Dick Schoeller" }
composerAMYISROCKMarkup = \markup { "Rabbi Seymour Rockoff" }
arrangerAMYISROCKMarkup = \markup { \italic "Arr. Dick Schoeller" }
poetMAYIMMarkup = \markup { "Isaiah" }
composerMAYIMMarkup = \markup { "Emanuel Amiran" }
arrangerMAYIMMarkup = \markup { \italic "Arr. Dick Schoeller" }
composerYISMECHUMarkup = \markup { "Chasidic" }
arrangerYISMECHUMarkup = \markup { \italic "Arr. Dick Schoeller" }
poetORZARUAMarkup = \markup { "Psalm 97:11" }
composerORZARUAMarkup = \markup { "Jeff Klepper" }
arrangerORZARUAMarkup = \markup { \italic "Arr. Dick Schoeller" }
composerEILEHMarkup = \markup { "Chasidic" }
arrangerEILEHMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

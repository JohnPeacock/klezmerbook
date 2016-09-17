\version "2.18.0"

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

markupARa = \markup {
  \column \left-align {
    \line { " " \raise #0.5 { "Chorus" } }
    \line { \hspace #1.0 \box \bold \huge "A1" }
  }
}

markupARb = \markup {
  \column \left-align {
    \line { " " \raise #0.5 { "Chorus" } }
    \line { \hspace #1.0 \box \bold \huge "A2" }
  }
}

markupD =  \markup {
  \column \left-align {
    \line { \lower #1.0 { "K. 1-28, Sher 2" } }
    \line { \hspace #.2 \box \bold \huge "D" }
  }
}

markupI =  \markup {
  \column \left-align {
    \line { \lower #1.0 { "K. 1-27, Sher 1 " } }
    \line { \hspace #.2 \box \bold \huge "I" }
  }
}

markupOctOpt = \markup { "8va optional" }

markARa = { \mark \markupARa }
markD =   { \mark \markupD }
markARb = { \mark \markupARb }
markI =   { \mark \markupI }

positionA = {
  \RightMarkOnce
  \KeyAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionTC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionARa = {
  \RightMarkOnce
  \BarAlignMark
}
positionD = {
  \RightMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}
positionF = {
  \CenterMarkOnce
  \BarAlignMark
}
positionG = {
  \CenterMarkOnce
  \BarAlignMark
}
positionH = {
  \CenterMarkOnce
  \BarAlignMark
}
positionARb = {
  \RightMarkOnce
  \BarAlignMark
}
positionI = {
  \RightMarkOnce
  \BarAlignMark
}
positionJ = {
  \CenterMarkOnce
  \BarAlignMark
}
positionK = {
  \CenterMarkOnce
  \BarAlignMark
}
positionL = {
  \CenterMarkOnce
  \BarAlignMark
}
positionDC = {
  \LeftMarkOnce
  \BarAlignMark
}
positionCC = {
  \RightMarkOnce
  \BarAlignMark
}
breakARAone = { }
breakARAtwo = { }
breakARAtre = { }
breakARAfor = { }
breakARAfiv = { }
breakARAsix = { }
breakARAsev = { }
breakARAeit = { }
breakARAnin = { }
breakARAten = { }
breakARAelv = { }
breakARAtwl = { }
breakARAtht = { }
breakARAfrt = { }
breakARAfft = { }
breakARAsxt = { }
breakARAsvt = { }
breakARA = { }
breakARBone = { }
breakARBtwo = { }
breakARBtre = { }
breakARBfor = { }
breakARBfiv = { }
breakARBsix = { }
breakARBsev = { }
breakARBeit = { }
breakARBnin = { }
breakARBten = { }
breakARBelv = { }
breakARBtwl = { }
breakARBtht = { }
breakARBfrt = { }
breakARBfft = { }
breakARBsxt = { }
breakARBsvt = { }
breakARB = { }
breakKone = { }
breakKtwo = { }
breakKtre = { }
breakKfor = { }
breakKfiv = { }
breakKsix = { }
breakKsev = { }
breakKeit = { }
breakK = { }
breakLone = { }
breakLtwo = { }
breakLtre = { }
breakLfor = { }
breakLfiv = { }
breakLsix = { }
breakLsev = { }
breakLeit = { }
breakLnin = { }
breakLten = { }
breakLelv = { }
breakLtwl = { }
breakLtht = { }
breakLfrt = { }
breakLfft = { }
breakL = { \noBreak }
breakBL = { \noBreak }
breakCCone = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "רוסישע שער מעדלי" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Russishe Sher Medley" }
  \override #'(font-size . 10) { " " }
}
subtitleMarkup = \markup { "Russian Sher Medley" }

headMarkup = \markup \center-column {
  \larger { "רוסישע שער מעדלי" }
  "Russishe Sher Medley"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "רוסישע שער מעדלי" }
  "Russishe Sher Medley"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "רוסישע שער מעדלי" }
  "Russishe Sher Medley"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

\version "2.18.0"

\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"

tempoprefix = \markup "Easy Swing"
temponote = \quarternote
tempovalue = \markup "140"

\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
\include "standard-break-names.ily"

markupTintro = \markup { \small \italic "Tango" }

positionA = {
  \CenterMarkOnce
  \BarAlignMark
}
positionB = {
  \CenterMarkOnce
  \BarAlignMark
}
positionC = {
  \CenterMarkOnce
  \BarAlignMark
}
positionD = {
  \CenterMarkOnce
  \BarAlignMark
}
positionE = {
  \CenterMarkOnce
  \BarAlignMark
}

breakEtwone = { }
breakEtwtwo = { }
breakEtwtre = { }
breakEtwfor = { }
breakEtwfiv = { }
breakEtwsix = { }
breakEswsev = { }
breakEtweit = { }
breakEtwnin = { }
breakEthrty = { }
breakEthone = { }
breakEthtwo = { }
breakEthtre = { }
breakEthfor = { }

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "איך האָב דיך צו פֿיל ליב" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Ikh Hob Dikh Tsu Fil Lib" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "איך האָב דיך צו פֿיל ליב" }
  "Ikh Hob Dikh Tsu Fil Lib"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "איך האָב דיך צו פֿיל ליב" }
  "Ikh Hob Dikh Tsu Fil Lib"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "איך האָב דיך צו פֿיל ליב" }
  "Ikh Hob Dikh Tsu Fil Lib"
}

arrangerMarkup = \markup { \italic "Arr: Jud Flato" }
composerMarkup = \markup { "Alexander Olshanetsky" }
poetMarkup = \markup { "Chaim Shmuel Tauber" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"

bnPad = \barnumberpadextra

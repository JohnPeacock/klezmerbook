\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2003-2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

maintainerMarkup = \markup { "Dick Schoeller" }
maintainerEmailMarkup = \markup { "schoeller@comcast.net" }
urlMarkup = \markup { "http://www.templealiyah.com/" }

taglineMarkup = \markup {
    \teeny \smaller \left-align \column {
        \line {
            \lower #1.6 { "This music is part of the songbook of the " \songgroupMarkup " (" \urlMarkup ")" }
        }
        \line {
            \lower #.8 { "It has been typeset for their use by " \maintainerMarkup " (" \maintainerEmailMarkup ") with " \lilypondVersionMarkup }
        }
        \line { \adddescMarkup }
    }
}

orchestralScoresInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Ensemble Scores" } }
scoreInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Ensemble Score" } }
leadSheetsInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Lead Sheets" } }
leadSheetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Lead Sheet" } }

accordionInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Accordion" } }
altoClarinetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Alto Clarinet" } }
altoSaxophoneInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Alto Saxophone" } }
bassInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Bass" } }
bassClarinetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Bass Clarinet" } }
bassoonInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Bassoon" } }
cClarinetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "C Clarinet" } }
clarinetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Clarinet" } }
drumsInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Drums" } }
euphoniumInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Euphonium" } }
fluteInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Flute" } }
altoFluteInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Alto Flute" } }
guitarInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Guitar" } }
pianoInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Piano" } }
tenorSaxophoneInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Tenor Saxophone" } }
tromboneInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Trombone" } }
bassForTrumpetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Bass for Trumpet" } }
trumpetInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Trumpet" } }
tubaInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Tuba" } }
violaInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Viola" } }
violinInstrumentBigMarkup = \markup { \override #'(font-size . 8) { "Violin" } }

orchestralScoresInstrumentMarkup = \markup { \larger "Ensemble Scores" }
scoreInstrumentMarkup = \markup { \larger "Ensemble Score" }
leadSheetsInstrumentMarkup = \markup { \larger "Lead Sheets" }
leadSheetInstrumentMarkup = \markup { \larger "Lead Sheet" }

accordionInstrumentMarkup = \markup { \larger "Accordion" }
altoClarinetInstrumentMarkup = \markup { \larger "Alto Clarinet" }
altoSaxophoneInstrumentMarkup = \markup { \larger "Alto Saxophone" }
bassInstrumentMarkup = \markup { \larger "Bass" }
bassClarinetInstrumentMarkup = \markup { \larger "Bass Clarinet" }
bassoonInstrumentMarkup = \markup { \larger "Bassoon" }
cClarinetInstrumentMarkup = \markup { \larger "C Clarinet" }
clarinetInstrumentMarkup = \markup { \larger "Clarinet" }
drumsInstrumentMarkup = \markup { \larger "Drums" }
easyClarinetInstrumentMarkup = \markup { "Easy Clarinet" }
euphoniumInstrumentMarkup = \markup { \larger "Euphonium" }
fluteInstrumentMarkup = \markup { \larger "Flute" }
altoFluteInstrumentMarkup = \markup { \larger "Alto Flute" }
guitarInstrumentMarkup = \markup { \larger "Guitar" }
pianoInstrumentMarkup = \markup { \larger "Piano" }
tenorSaxophoneInstrumentMarkup = \markup { \larger "Tenor Saxophone" }
tromboneInstrumentMarkup = \markup { \larger "Trombone" }
bassForTrumpetInstrumentMarkup = \markup { \larger "Bass for Trumpet" }
trumpetInstrumentMarkup = \markup { \larger "Trumpet" }
tubaInstrumentMarkup = \markup { \larger "Tuba" }
violaInstrumentMarkup = \markup { \larger "Viola" }
violinInstrumentMarkup = \markup { \larger "Violin" }

scoreInConcertBigMarkup = \markup { \override #'(font-size . 8) { "Ensemble Score (all parts in concert)" } }
scoreInConcertMarkup = \markup { \larger "Ensemble Score (all parts in concert)" }

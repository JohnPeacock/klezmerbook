\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "zemer_atik.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "noindent.ily"
}
\include "zemer_atik.notes.ily"
\include "staves-and-scores.ily"

instrumentMarkup = \bassInstrumentMarkup

mysubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'()
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    } {
        \set Score.skipBars = ##t
        \new Voice = vocalmelody { \leadsheetnotes }
    }
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
    \lyricsto vocalmelody \context Lyrics = vtwo { \textlb }
    \lyricsto vocalmelody \context Lyrics = vtre { \textlc }
    \lyricsto vocalmelody \context Lyrics = vfor { \textld }
    \lyricsto vocalmelody \context Lyrics = vfiv { \textle }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest #'expand-limit = #1
        \override TimeSignature #'style = #'() 
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    } {
        \set Score.skipBars = ##t
        \clef bass
        \new Voice { \bassnotes }
    }

>>

\book {
    \include "book-header.ily"
    \score {
%        \leadsheetsubscorewithlyrics
%        \basssubscore
        \mysubscore
        \include "score-header.ily"
        \layout {
            \include "translators.ily"
            system-count = #6
        }
    }
}

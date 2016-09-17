\version "2.11.57"

% this produces both midi and a full score.
%
\include "drumsamples.header.ily"
\include "part-staffsize.ily"
\paper {
    \include "paperblock.ily"
    \include "noindent.ily"
}

% print
drumhackone = \drummode { sna8 [ sna8:32^> ~ ] }
drumhackonea = \drummode { sna8 [ sna8:32 ~ ] }
drumhacktwo = \drummode { sna8:32 [ sna8 ] }
drumhackthree = \drummode { sna1:32 }
drumhackfour = \drummode { sna4:32 }
drumhackfive = \drummode { sna2:32^> }
drumhackfivea = \drummode { sna2:32 }
drumhacksix = \drummode { sna2.:32 }
drumhackseven = \drummode { wbh8:32 ~ }
drumhackeight = \drummode { wbh8:32 }

\include "drumsamples.notes.ily"
%\include "staves-and-scores.ily"

instrumentMarkup = \markup { "" }

mysubscore = \subscore

% midi

drumhackone  =  \drummode { sna8 \repeat unfold 4 sna32^> ~ }
drumhackonea =  \drummode { sna8 \repeat unfold 4 sna32 ~ }
drumhacktwo  =  \drummode { \repeat unfold 4 sna32 sna8 }
drumhackthree = \drummode { \repeat unfold 32 sna32 }
drumhackfour = \drummode { \repeat unfold 8 sna32 }
drumhackfive = \drummode { \repeat unfold 16 sna32^> }
drumhackfivea = \drummode { \repeat unfold 16 sna32 }
drumhacksix = \drummode { \repeat unfold 24 sna32 }
drumhackseven = \drummode { \repeat unfold 4 wbh32 ~ }
drumhackeight = \drummode { \repeat unfold 4 wbh32 }

\include "drumsamples.notes.ily"

\book
{
    \include "book-header.ily"
    \score {
        \mysubscore
	\include "score-header.ily"
        \layout {
            \include "translators.ily"
        }
    }
    \score {
        \unfoldRepeats
        \midisubscore
        \midi { }
    }
}

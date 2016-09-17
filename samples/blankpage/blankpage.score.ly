\version "2.11.57"

% this produces both midi and a full score.
%
\header {
    title=""
    subtitle=""
    subsubtitle="This page left blank"
%    instrument="\\pageBreak"
    instrument=""
    head=""

    footer=""
    copyright=""
    tagline=""
}
\include "strings.ily"
\include "settings.ily"
\include "staff-stubs.ily"
tempoprefix = \markup { "" }
temponote = \quarternote
tempovalue = \markup ""
\include "tempo-strings.ily"
\include "positions.ily"
\include "marks.ily"
songgroupMarkup = \markup { "" }
adddescMarkup = \markup { "" }
titleMarkup = \markup { "" }
subtitleMarkup = \markup { "" }
headMarkup = \markup { "" }
evenTitleHeaderMarkup = \markup { "" }
oddTitleHeaderMarkup = \markup { "" }
arrangerMarkup = \markup { "" }
\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "score-staffsize.ily"
\paper {
    \include "paperblock.ily"
    \include "scoreindent.ily"
}
\include "blankpage.notes.lyh"
\score {
    \emptystaff
    \layout {
        pagenumber=no
        \context {
            \RemoveEmptyStaffContext
        }
    }
}

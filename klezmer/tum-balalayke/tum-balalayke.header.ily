\version "2.18.2"

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

positionS =  { }
positionDS = { }
positionCH = {
  \RightMarkOnce
  \BarAlignMark
}

songgroupMarkup = \markup { "Temple Aliyah Klezmer Band" }
adddescMarkup = \markup { "" }

titleMarkup = \markup \center-column {
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 10) { " " }
  \override #'(font-size . 12) { "טום־באַלאַלײַקע" }
  \override #'(font-size . 2)  { " " }
  \override #'(font-size . 9)  { "Tum-Balalayke" }
  \override #'(font-size . 10) { " " }
}

headMarkup = \markup \center-column {
  \larger { "טום־באַלאַלײַקע" }
  "Tum-Balalayke"
}
evenTitleHeaderMarkup = \markup \column \right-align {
  \larger { "טום־באַלאַלײַקע" }
  "Tum-Balalayke"
}
oddTitleHeaderMarkup = \markup \column \left-align {
  \larger { "טום־באַלאַלײַקע" }
  "Tum-Balalayke"
}

composerMarkup = \markup { "Traditional" }
arrangerMarkup = \markup { \italic "Arr. Dick Schoeller" }

\include "book-header-strings.ily"
\include "instrument-stubs.ily"
\include "guitar-fretboards.ily"

bnPad = \barnumberpadextra

\storePredefinedDiagram #default-fret-table \chordmode {c:min}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (open 5)
    (place-fret 4 5 2)
    (place-fret 3 5 3)
    (place-fret 2 4 1)
    (open 1))

\storePredefinedDiagram #default-fret-table \chordmode {f:min}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (mute 5)
    (open 4)
    (place-fret 3 5 2)
    (place-fret 2 6 3)
    (place-fret 1 4 1))

\storePredefinedDiagram #default-fret-table \chordmode {g:7}
    #guitar-tuning #'((capo 3)
    (open 6)
    (place-fret 5 5 2)
    (place-fret 4 5 3)
    (place-fret 3 4 1)
    (place-fret 2 6 4)
    (open 1))

\storePredefinedDiagram #default-fret-table \chordmode {g}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (place-fret 5 6 3)
    (place-fret 4 5 2)
    (open 3)
    (place-fret 2 4 1)
    (open 1))

\storePredefinedDiagram #default-fret-table \chordmode {c:min7}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (open 5)
    (place-fret 4 5 2)
    (open 3)
    (place-fret 2 4 1)
    (open 1))

\storePredefinedDiagram #default-fret-table \chordmode {ees}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (place-fret 5 6 3)
    (place-fret 4 5 2)
    (open 3)
    (place-fret 2 4 1)
    (open 1))


\storePredefinedDiagram #default-fret-table \chordmode {aes}
    #guitar-tuning #'((capo 3)
    (mute 6)
    (mute 5)
    (place-fret 4 6 3)
    (place-fret 3 5 2)
    (place-fret 2 4 1)
    (place-fret 1 4 1)
    (barre 2 1 4))

#(define (centred-ignatzek-chord-names in-pitches bass inversion context)
(markup #:center-align (ignatzek-chord-names in-pitches bass inversion context) ))

#(define (centred-parenthesis-ignatzek-chord-names in-pitches bass inversion context)
(markup #:center-align #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")")))


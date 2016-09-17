\version "2.14.0"

\include "rumenye_in_g.header.ily"
\include "score-staffsize.ily"
\paper {
    \include "comic-font-tree.ily"
    \include "paperblock.ily"
    \include "scoreindent.ily"
}

breakA = { \pageBreak }
breakB = { \pageBreak }
breakCten = { \break }

\include "rumenye_in_g.notes.ily"
\include "staves-and-scores.ily"

windgroup = \new StaffGroup {
<<
    \new Staff \with {
        instrumentName = "Flute"
        shortInstrumentName = "Flu."
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \flutenotes }
    }
    \new Staff \with {
        instrumentName = "Clarinet"
        shortInstrumentName = "Cla."
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \transpose c' bes { \clarinetnotes } }
    }
    \new Staff \with {
        instrumentName = "Alto Sax"
        shortInstrumentName = "A.S."
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \transpose c' ees {\altosaxnotes } }
    }
    \new Staff \with {
        instrumentName = "Tenor Sax"
        shortInstrumentName = "T.S."
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \transpose c' bes { \tenorsaxnotes } }
    }
>>
}

horngroup = \new StaffGroup {
<<
    \new Staff \with {
        instrumentName = "Trumpet"
        shortInstrumentName = "Tru."
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \transpose c' bes { \trumpetnotes } }
    }
    \new Staff \with {
        instrumentName = \tromboneinstrumentmarkup
        shortInstrumentName = \tromboneinstrmarkup
    }  {
        \override MultiMeasureRest #'expand-limit = #1
        \clef bass
        \new Voice { \trombonenotes }
    }
>>
}

stringgroup = \new StaffGroup {
<<
    \new Staff \with {
        instrumentName = \violininstrumentmarkup
        shortInstrumentName = \violininstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef violin
        \new Voice { \violinnotes }
    }
    \new Staff \with {
        instrumentName = \bassinstrumentmarkup
        shortInstrumentName = \bassinstrmarkup
        \override MultiMeasureRest #'expand-limit = #1
    }  {
        \clef bass
        \new Voice { \bassnotes }
    }
>>
}

drumsstaff = \new DrumStaff \with {
    instrumentName = \druminstrumentmarkup
    shortInstrumentName = \druminstrmarkup
    printPartCombineTexts = ##f
    \override MultiMeasureRest #'expand-limit = #1
} \drummode {
    \set Score.skipBars = ##t
    \clef percussion
    <<
        \new DrumVoice { \drumshigh }
        \new DrumVoice { \drumslow }
    >>
}

subscorewithlyrics = <<
    \new ChordNames \with {
    } \chordmode {
        \set Score.skipBars = ##t
        \bandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
    } \chordmode {
        \pianochordletters
    }

    \new Staff \with {
        instrumentName = "Voice"
        shortInstrumentName = "Vo."
    }  {
        \clef violin
        \new Voice = vocalmelody { \leadsheetnotes }
    }
    \lyricsto vocalmelody \context Lyrics = vone { \textl }
    \lyricsto verse \context Lyrics = vone { \set stanza = "1." \textlb }
    \lyricsto verse \context Lyrics = vtwo { \set stanza = "2." \textlc }
    \lyricsto verse \context Lyrics = vtre { \set stanza = "3." \textld }

    \windgroup
    \horngroup
    \stringgroup

    \new ChordNames \with {
        chordChanges = ##t
    } \chordmode {
        \pianochordletters
    }

    \new PianoStaff \with {
        instrumentName = \pianoinstrumentmarkup
        shortInstrumentName = \pianoinstrmarkup
    }  { <<
        \new Staff \with {
            \override MultiMeasureRest #'expand-limit = #1
        } {
            \clef violin
            <<
                \new Voice { \pianorightuppernotes }
                \new Voice { \pianorightlowernotes }
            >>
        }
        \new Staff \with {
            \override MultiMeasureRest #'expand-limit = #1
        } {
            \clef bass
            <<
                \new Voice { \pianoleftuppernotes }
                \new Voice { \pianoleftlowernotes }
            >>
        }
    >> }

% It doesn't like the empty drum staff.
%    \drumsstaff
>>

midisubscore = <<
    \context Staff = "vocals" \with {
        midiInstrument = "voice oohs"
        midiMinimumVolume = #0.7
        midiMaximumVolume = #1.0
    }  {
        <<
            \metronome
            \context Voice = vocalmelodyone { \leadsheetmidinotes }
        >>
    }
    \lyricsto vocalmelodyone \context Lyrics = vone { \textl }

    \context Staff = "flute" \with { midiInstrument = "flute" }  {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with { midiInstrument = "alto sax" }  {
        <<
            \metronome
            \new Voice { \transposition ees' \altosaxnotesmidi }
        >>
    }
    \context Staff = "tenorsax" \with { midiInstrument = "tenor sax" }  {
        <<
            \metronome
            \new Voice { \transposition bes \tenorsaxnotesmidi }
        >>
    }

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" }  {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with { midiInstrument = "trombone" }  {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" }  {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
        >>
    }
    \context Staff = "guitar" \with {
        midiInstrument = "acoustic guitar (steel)"
    }  {
        <<
            \metronome
            \new Voice { \guitarnotesmidi }
        >>
    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" }  {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }
    
    \piano
%    \accordion
%    \drumset
>>

instrumentMarkup = \scoreInConcertMarkup

\book {
    \include "book-header.ily"
    \score {
        \subscorewithlyrics
        \include "score-header.ily"
        \layout {
            \include "keepempty-ambitus-translators.ily"
            system-count = #31
        }
    }
}

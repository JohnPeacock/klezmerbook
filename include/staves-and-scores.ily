\version "2.18.2"

\include "instrument-names.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This section reserved for when I move the standard voices and staves
% into here.
%
bandmchordnames = \new ChordNames \with {
} \chordmode {
    \bandmNV
}

vocalstaff = \new Staff \with {
    instrumentName = "Voice"
    shortInstrumentName = "Vo."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \new Voice = "vocalmelody" { \leadsheetnotes }
}

vocalnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \new Voice = "vocalmelody" { \leadsheetnotes }
}

vocals = { <<
    \vocalstaff
    \new Lyrics \lyricsto "vocalmelody" \textl
    \new Lyrics \lyricsto "vocalmelody" \textlb
    \new Lyrics \lyricsto "vocalmelody" \textlc
    \new Lyrics \lyricsto "vocalmelody" \textld
    \new Lyrics \lyricsto "vocalmelody" \textle
>> }

vocalsnoname = { <<
    \vocalstaff
    \new Lyrics \lyricsto "vocalmelody" \textl
    \new Lyrics \lyricsto "vocalmelody" \textlb
    \new Lyrics \lyricsto "vocalmelody" \textlc
    \new Lyrics \lyricsto "vocalmelody" \textld
    \new Lyrics \lyricsto "vocalmelody" \textle
>> }

flutestaff = \new Staff \with {
    instrumentName = \fluteinstrumentmarkup
    shortInstrumentName = \fluteinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \flutenotes }
}
flutenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \flutenotes }
}
flutemelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \flutenotes }
}
fluteonestaff = \new Staff \with {
    instrumentName = \fluteoneinstrumentmarkup
    shortInstrumentName = \fluteoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \fluteonenotes }
}
flutetwostaff = \new Staff \with {
    instrumentName = \flutetwoinstrumentmarkup
    shortInstrumentName = \flutetwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \flutetwonotes }
}

altoflutenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoflutenotes }
}
altoflutemelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoflutenotes }
}

altoflutetenorstaff = \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoflutetenorharmony }
}

altoflutealtostaff = \new Staff \with {
    instrumentName = "Alto"
    shortInstrumentName = "A."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoflutealtoharmony }
}

clarinetstaff = \new Staff \with {
    instrumentName = \clarinetinstrumentmarkup
    shortInstrumentName = \clarinetinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinetnotes }
}
clarinetnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinetnotes }
}
clarinetmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinetnotes }
}
clarinetonestaff = \new Staff \with {
    instrumentName = \clarinetoneinstrumentmarkup
    shortInstrumentName = \clarinetoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinetonenotes }
}
clarinettwostaff = \new Staff \with {
    instrumentName = \clarinettwoinstrumentmarkup
    shortInstrumentName = \clarinettwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinettwonotes }
}
clarinetthreestaff = \new Staff \with {
    instrumentName = \clarinetthreeinstrumentmarkup
    shortInstrumentName = \clarinetthreeinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \clarinetthreenotes }
}
altoclarinetstaff = \new Staff \with {
    instrumentName = \altoclarinetinstrumentmarkup
    shortInstrumentName = \altoclarinetinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinetnotes }
}
altoclarinetnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinetnotes }
}
altoclarinetonestaff = \new Staff \with {
    instrumentName = \altoclarinetoneinstrumentmarkup
    shortInstrumentName = \altoclarinetoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinetonenotes }
}
altoclarinettwostaff = \new Staff \with {
    instrumentName = \altoclarinettwoinstrumentmarkup
    shortInstrumentName = \altoclarinettwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altoclarinettwonotes }
}
altosaxstaff = \new Staff \with {
    instrumentName = \altosaxinstrumentmarkup
    shortInstrumentName = \altosaxinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altosaxnotes }
}
altosaxnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altosaxnotes }
}
altosaxmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altosaxnotes }
}
altosaxonestaff = \new Staff \with {
    instrumentName = \altosaxoneinstrumentmarkup
    shortInstrumentName = \altosaxoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altosaxonenotes }
}
altosaxtwostaff = \new Staff \with {
    instrumentName = \altosaxtwoinstrumentmarkup
    shortInstrumentName = \altosaxtwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \altosaxtwonotes }
}
tenorsaxstaff = \new Staff \with {
    instrumentName = \tenorsaxinstrumentmarkup
    shortInstrumentName = \tenorsaxinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \tenorsaxnotes }
}
tenorsaxnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \tenorsaxnotes }
}
tenorsaxmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##f
    \clef violin
    \new Voice { \clarinetfortenornotes }
}
trumpetstaff = \new Staff \with {
    instrumentName = \trumpetinstrumentmarkup
    shortInstrumentName = \trumpetinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpetnotes }
}
trumpetnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpetnotes }
}
trumpetmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpetnotes }
}
trumpetonestaff = \new Staff \with {
    instrumentName = \trumpetoneinstrumentmarkup
    shortInstrumentName = \trumpetoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpetonenotes }
}
trumpettwostaff = \new Staff \with {
    instrumentName = \trumpettwoinstrumentmarkup
    shortInstrumentName = \trumpettwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpettwonotes }
}
trumpetthreestaff = \new Staff \with {
    instrumentName = \trumpetthreeinstrumentmarkup
    shortInstrumentName = \trumpetthreeinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \trumpettwonotes }
}
trombonestaff = \new Staff \with {
    instrumentName = \tromboneinstrumentmarkup
    shortInstrumentName = \tromboneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \trombonenotes }
}
trombonenonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \trombonenotes }
}
euphoniumstaff = \new Staff \with {
    instrumentName = \euphoniuminstrumentmarkup
    shortInstrumentName = \euphoniuminstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \euphoniumnotes }
}
euphoniumnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \euphoniumnotes }
}
tubastaff = \new Staff \with {
    instrumentName = \tubainstrumentmarkup
    shortInstrumentName = \tubainstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \tubanotes }
}
tubanonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \tubanotes }
}
violinstaff = \new Staff \with {
    instrumentName = \violininstrumentmarkup
    shortInstrumentName = \violininstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violinnotes }
}
violinnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violinnotes }
}
violinmelodystaff = \new Staff \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violinnotes }
}
violinonestaff = \new Staff \with {
    instrumentName = \violinoneinstrumentmarkup
    shortInstrumentName = \violinoneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violinonenotes }
}
violintwostaff = \new Staff \with {
    instrumentName = \violintwoinstrumentmarkup
    shortInstrumentName = \violintwoinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violintwonotes }
}
violinthreestaff = \new Staff \with {
    instrumentName = \violinthreeinstrumentmarkup
    shortInstrumentName = \violinthreeinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \violintwonotes }
}
guitarstaff = \new Staff \with {
    instrumentName = \guitarinstrumentmarkup
    shortInstrumentName = \guitarinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \guitarnotes }
}
guitarnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} {
    \set Score.skipBars = ##t
    \clef violin
    \new Voice { \guitarnotes }
}
bassstaff = \new Staff \with {
    instrumentName = \bassinstrumentmarkup
    shortInstrumentName = \bassinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \bassnotes }
}
bassnonamestaff = \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \set Score.skipBars = ##t
    \clef bass
    \new Voice { \bassnotes }
}
pianostaff = \new PianoStaff \with {
    instrumentName = \pianoinstrumentmarkup
    shortInstrumentName = \pianoinstrmarkup
} { <<
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        <<
            \new Voice { \pianorightuppernotes }
            \new Voice { \pianorightlowernotes }
        >>
    }
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef bass
        <<
            \new Voice { \pianoleftuppernotes }
            \new Voice { \pianoleftlowernotes }
        >>
    }
>> }
pianononamestaff = \new PianoStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
} { <<
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        <<
            \new Voice { \pianorightuppernotes }
            \new Voice { \pianorightlowernotes }
        >>
    }
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef bass
        <<
            \new Voice { \pianoleftuppernotes }
            \new Voice { \pianoleftlowernotes }
        >>
    }
>> }
accordionstaff = \new PianoStaff \with {
    instrumentName = \accordioninstrumentmarkup
    shortInstrumentName = \accordioninstrmarkup
} { <<
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        <<
            \new Voice { \accordionrightuppernotes }
            \new Voice { \accordionrightlowernotes }
        >>
    }
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef bass
        <<
            \new Voice { \accordionleftuppernotes }
            \new Voice { \accordionleftlowernotes }
        >>
    }
>> }
accordionnonamestaff = \new PianoStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
} { <<
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        <<
            \new Voice { \accordionrightuppernotes }
            \new Voice { \accordionrightlowernotes }
        >>
    }
    \new Staff \with {
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef bass
        <<
            \new Voice { \accordionleftuppernotes }
            \new Voice { \accordionleftlowernotes }
        >>
    }
>> }

%=====================================================================

leadsheetchordnames = \new ChordNames \with {
    chordChanges = ##t
    \override VoltaBracket.minimum-space = #1.5
} \chordmode {
    \leadsheetchordletters
}
flutechordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \flutechordletters
}
altoflutechordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \altoflutechordletters
}
clarinetchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \clarinetchordletters
}
altoclarinetchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \altoclarinetchordletters
}
altosaxchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \altosaxchordletters
}
tenorsaxchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \tenorsaxchordletters
}
trumpetchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \trumpetchordletters
}
trombonechordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \trombonechordletters
}
euphoniumchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
%    \euphoniumchordletters
    \guitarchordletters
}
tubachordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
%    \tubachordletters
    \guitarchordletters
}
violinchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \violinchordletters
}
guitarchordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \guitarchordletters
}
basschordnames = \new ChordNames \with {
    \override VoltaBracket.minimum-space = #1.5
    chordChanges = ##t
} \chordmode {
    \basschordletters
}
pianochordnames = \new ChordNames \with {
    chordChanges = ##t
    \override VoltaBracket.minimum-space = #2
    \override VoltaBracket.padding = #.5
} \chordmode {
    \pianochordletters
}
accordionchordnames = \new ChordNames \with {
    chordChanges = ##t
    \override VoltaBracket.minimum-space = #2
    \override VoltaBracket.padding = #.5
} \chordmode {
%    \accordionchordletters
    \pianochordletters
}

%=====================================================================

clarinetgroup =  \context StaffGroup = "clarinetgroup" <<
    \clarinetonestaff
    \clarinettwostaff
    \clarinetthreestaff
>>

%=====================================================================

trumpetgroup =  \context StaffGroup = "trumpetgroup" <<
    \trumpetonestaff
    \trumpettwostaff
    \trumpetthreestaff
>>

%=====================================================================

violingroup =  \context StaffGroup = "violingroup" <<
    \violinonestaff
    \violintwostaff
    \violinthreestaff
>>

%=====================================================================

piano = \context Staff = "piano" \with {
    midiInstrument = "bright acoustic"
    \override TimeSignature.style = #'() 
} {
    <<
        \metronome
        \new Voice { \pianorightnotesmidi }
        \new Voice { \pianoleftnotesmidi }
    >>
}

%=====================================================================

accordion = \context Staff = "accordion" \with {
    midiInstrument = "accordion"
    \override TimeSignature.style = #'() 
} {
    <<
        \metronome
        \new Voice { \accordionrightnotesmidi }
        \new Voice { \accordionleftnotesmidi }
    >>
}

%=====================================================================

drumsstaff = \new DrumStaff \with {
    instrumentName = \druminstrumentmarkup
    shortInstrumentName = \druminstrmarkup
    printPartCombineTexts = ##f
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} \drummode {
    \set Score.skipBars = ##t
    \clef percussion
    <<
        \new DrumVoice { \stemUp \drumshigh }
        \new DrumVoice { \stemDown \drumslow }
    >>
}

drumsstaffnolabel = \new DrumStaff \with {
    instrumentName = ""
    shortInstrumentName = ""
    printPartCombineTexts = ##f
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} \drummode {
    \set Score.skipBars = ##t
    \clef percussion
    <<
        \new DrumVoice { \drumshigh }
        \new DrumVoice { \drumslow }
    >>
}

drumset = \context DrumStaff = "drumset" \with {
    midiInstrument = "drums"
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'() 
} \drummode {
    <<
        \metronome
        \new DrumVoice { \drumshighmidi }
        \new DrumVoice { \drumslowmidi }
    >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Staff groups for general use.  These grouping are common across
% all of our instrumental arrangements.
%

windgroup = \new StaffGroup <<
    \flutestaff
    \clarinetstaff
    \altoclarinetstaff
    \altosaxstaff
    \tenorsaxstaff
>>

windgroupexpanded = \new StaffGroup <<
    \flutestaff
    \fluteonestaff
    \flutetwostaff
    \clarinetstaff
    \clarinetonestaff
    \clarinettwostaff
    \altoclarinetstaff
    \altoclarinetonestaff
    \altoclarinettwostaff
    \altosaxstaff
    \altosaxonestaff
    \altosaxtwostaff
    \tenorsaxstaff
>>

horngroup = \new StaffGroup <<
    \trumpetstaff
    \trombonestaff
>>

horngroupexpanded = \new StaffGroup <<
    \trumpetstaff
    \trumpetonestaff
    \trumpettwostaff
    \trombonestaff
    \euphoniumstaff
    \tubastaff
>>

stringgroup = \new StaffGroup <<
    \violinstaff
    \guitarstaff
    \bassstaff
>>

stringgroupexpanded = \new StaffGroup <<
    \violinstaff
    \violinonestaff
    \violintwostaff
    \guitarstaff
    \bassstaff
>>

guitargroup =  \context StaffGroup = "guitargroup" <<
    \guitarstaff
    \new TabStaff {
        \guitarnotes
    }
>>

bassgroup =  \context StaffGroup = "bassgroup" <<
    \bassstaff
    \new TabStaff \with {
        stringTunings = #`(,(ly:make-pitch -1 4 NATURAL) ,(ly:make-pitch -1 1 NATURAL) ,(ly:make-pitch -2 5 NATURAL) ,(ly:make-pitch -2 2 NATURAL) )
    } {
        \bassnotes
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The following subscores will be used directly by the different
% instrumentName files.
%
flutesubscore = <<
    \bandmchordnames
    \flutechordnames
    \flutenonamestaff
>>

flutesubscorenoremove = <<
    \bandmchordnames
    \flutechordnames
    \flutenonamestaff
>>

fluteplustenorsubscore = <<
    \bandmchordnames
    \flutechordnames
    \flutemelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforflutenotes }
    }
>>

fluteplusaltosubscore = <<
    \bandmchordnames
    \flutechordnames
    \flutemelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altoforflutenotes }
    }
>>

fluteplusbaritonesubscore = <<
    \bandmchordnames
    \flutechordnames
    \flutemelodystaff
    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Br."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \baritoneforflutenotes }
    }
>>

altoflutesubscore = <<
    \bandmchordnames
    \altoflutechordnames
    \altoflutenonamestaff
>>

altofluteplusaltosubscore = <<
    \bandmchordnames
    \altoflutechordnames
    \altoflutemelodystaff
    \altoflutealtostaff
>>

altofluteplustenorsubscore = <<
    \bandmchordnames
    \altoflutechordnames
    \altoflutemelodystaff
    \altoflutetenorstaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsubscore = <<
    \bandmchordnames
    \clarinetchordnames
    \clarinetnonamestaff
>>

clarinetsubscorenoremove = <<
    \bandmchordnames
    \clarinetchordnames
    \clarinetnonamestaff
>>

clarinetplustenorsubscore = <<
    \bandmchordnames
    \clarinetchordnames
    \clarinetmelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforclarinetnotes }
    }
>>

clarinetplusaltosubscore = <<
    \bandmchordnames
    \clarinetchordnames
    \clarinetmelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altoforclarinetnotes }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsubscore = <<
    \bandmchordnames
    \tenorsaxchordnames
    \tenorsaxnonamestaff
>>

tenorsaxsubscorenoremove = <<
    \bandmchordnames
    \tenorsaxchordnames
    \tenorsaxnonamestaff
>>

tenorsaxplusclarinetsubscore = <<
    \bandmchordnames
    \tenorsaxchordnames
    \tenorsaxmelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorsaxnotes }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoclarinetsubscore = <<
    \bandmchordnames
    \altoclarinetchordnames
    \altoclarinetnonamestaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsubscore = <<
    \bandmchordnames
    \altosaxchordnames
    \altosaxnonamestaff
>>

altosaxsubscorenoremove = <<
    \bandmchordnames
    \altosaxchordnames
    \altosaxnonamestaff
>>

altosaxplustenorsubscore = <<
    \bandmchordnames
    \altosaxchordnames
    \altosaxmelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforaltonotes }
    }
>>

altosaxplusclarinetsubscore = <<
    \bandmchordnames
    \altosaxchordnames
    \altosaxmelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altosaxnotes }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsubscore = <<
    \bandmchordnames
    \trumpetchordnames
    \trumpetnonamestaff
>>

trumpetplustenorsubscore = <<
    \bandmchordnames
    \trumpetchordnames
    \trumpetmelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorfortrumpetnotes }
    }

>>

trumpetplusaltosubscore = <<
    \bandmchordnames
    \trumpetchordnames
    \trumpetmelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altofortrumpetnotes }
    }

>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesubscore = <<
    \bandmchordnames
    \trombonechordnames
    \trombonenonamestaff
>>

trombonesubscorenoremove = <<
    \bandmchordnames
    \trombonechordnames
    \trombonenonamestaff
>>

trombonepluseuphoniumsubscore = <<
    \bandmchordnames
    \trombonechordnames
    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Br."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \clef bass
        \new Voice { \trombonenotes }
    }

    \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "Bs."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \clef bass
        \new Voice { \euphoniumnotes }
    }

>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneplusmelodysubscore = <<
    \bandmchordnames
    \trombonechordnames
    \new Staff \with {
        instrumentName = "Melody"
        shortInstrumentName = "Ml."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef bass
        \new Voice { \trombonemelodynotes }
    }

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Br."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
        \omit Voice.StringNumber
    } {
        \clef bass
        \new Voice { \trombonenotes }
    }

>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumsubscore = <<
    \bandmchordnames
    \euphoniumchordnames
    \euphoniumnonamestaff
>>

euphoniumsubscorenoremove = <<
    \bandmchordnames
    \euphoniumchordnames
    \euphoniumnonamestaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tubasubscore = <<
    \bandmchordnames
    \tubachordnames
    \tubanonamestaff
>>

tubasubscorenoremove = <<
    \bandmchordnames
    \tubachordnames
    \tubanonamestaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsubscore = <<
    \bandmchordnames
    \violinchordnames
    \violinnonamestaff
>>

violinsubscorenoremove = <<
    \bandmchordnames
    \violinchordnames
    \violinnonamestaff
>>

violinplustenorsubscore = <<
    \bandmchordnames
    \violinchordnames
    \violinmelodystaff
    \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tenorforviolinnotes }
    }
>>

violinplusaltosubscore = <<
    \bandmchordnames
    \violinchordnames
    \violinmelodystaff
    \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \altoforviolinnotes }
    }
>>

violingroupsubscore = <<
    \bandmchordnames
    \violinchordnames
    \violingroup
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsubscore = <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice {
            \override NoteHead.style = #'slash
            \override Stem.transparent = ##t
            \guitarstrumnotes
        }
    }

    \new TabStaff {
        \guitarnotes
    }
>>

guitarsubscorenotab = <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames

    \new Staff \with {
        instrumentName = \guitarinstrumentmarkup
        shortInstrumentName = \guitarinstrmarkup
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'() 
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice {
            \override NoteHead.style = #'slash
            \override Stem.transparent = ##t
            \guitarstrumnotes
        }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssubscore = <<
    \bandmchordnames
    \basschordnames
    \bassnonamestaff
>>

basssubscorenoremove = <<
    \bandmchordnames
    \basschordnames
    \bassnonamestaff
>>

basswithtabsubscore = <<
    \override Score.BarNumber.padding = #2.0
    \basschordnames
    \bassgroup
>>

pianosubscore = <<
    \bandmchordnames
    \pianochordnames
    \pianononamestaff
>>

pianosubscorenoremove = <<
    \bandmchordnames
    \pianochordnames
    \pianononamestaff
>>

accordionsubscore = <<
    \bandmchordnames
    \accordionchordnames
    \accordionnonamestaff
>>

drumssubscore = <<
    \bandmchordnames
    \drumsstaffnolabel
>>

drumssubscorenoremove = <<
    \bandmchordnames
    \drumsstaff
>>

leadsheetsubscore = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
        \override VoltaBracket.minimum-space = #2
        \override VoltaBracket.padding = #.5
    } \chordmode {
        \leadsheetchordletters
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \leadsheetnotes }
    }
>>

leadsheetsubscorenoremove = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }

    \new ChordNames \with {
        chordChanges = ##t
        \override VoltaBracket.minimum-space = #2
        \override VoltaBracket.padding = #.5
    } \chordmode {
        \leadsheetchordletters
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \leadsheetnotes }
    }
>>

leadsheetsubscorewithlyrics = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }

    \leadsheetchordnames
    \vocalsnoname
>>

leadsheetsubscorewithlyricsandpiano = <<
    \new ChordNames \with {
    } \chordmode {
        \leadsheetbandmNV
    }
    \leadsheetchordnames
    \vocalsnoname
    \pianononamestaff
>>

melodysubscore = { \melodystaff }

subscore = <<
    \override Score.BarNumber.padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

subscoreexpanded = <<
    \override Score.BarNumber.padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroupexpanded
    \horngroupexpanded
    \stringgroupexpanded
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

subscorewithlyrics = <<
    \override Score.BarNumber.padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \drumsstaff
>>

subscorewithaccordion = <<
    \override Score.BarNumber.padding = #2.0
    \bandmchordnames
    \pianochordnames
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \accordionstaff
    \drumsstaff
>>

subscorewithaccordionandlyrics = <<
    \override Score.BarNumber.padding = #2.0
    \bandmchordnames
    \pianochordnames
    \vocals
    \windgroup
    \horngroup
    \stringgroup
    \pianochordnames
    \pianostaff
    \accordionstaff
    \drumsstaff
>>

midisubscore = <<
    \context Staff = "flute" \with { midiInstrument = "flute" } {
        <<
            \metronome
            \new Voice { \flutenotesmidi }
        >>
    }
    \context Staff = "clarinet" \with { midiInstrument = "clarinet" } {
        <<
            \metronome
            \new Voice { \transposition bes \clarinetnotesmidi }
        >>
    }
    \context Staff = "altosax" \with { midiInstrument = "alto sax" } {
        <<
            \metronome
            \new Voice { \transposition ees' \altosaxnotesmidi }
        >>
    }
    \context Staff = "tenorsax" \with { midiInstrument = "tenor sax" } {
        <<
            \metronome
            \new Voice { \transposition bes \tenorsaxnotesmidi }
        >>
    }

    \context Staff = "trumpet" \with { midiInstrument = "trumpet" } {
        <<
            \metronome
            \new Voice { \transposition bes \trumpetnotesmidi }
        >>
    }
    \context Staff = "trombone" \with { midiInstrument = "trombone" } {
        <<
            \metronome
            \new Voice { \trombonenotesmidi }
        >>
    }

    \context Staff = "violin" \with { midiInstrument = "violin" } {
        <<
            \metronome
            \new Voice { \violinnotesmidi }
        >>
    }
    \context Staff = "guitar" \with {
        midiInstrument = "acoustic guitar (steel)"
    } {
        <<
            \metronome
            \new Voice { \guitarnotesmidi }
        >>
    }
    \context Staff = "bass" \with { midiInstrument = "contrabass" } {
        <<
            \metronome
            \new Voice { \bassnotesmidi }
        >>
    }

    \piano
    \accordion
    \drumset
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cmelodystaff = \context Staff = "cmelodystaff" \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \violinnotes
}

bbmelodystaff = \context Staff = "bbmelodystaff" \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
     \transpose c' bes { \clarinetnotes }
}

ebmelodystaff = \context Staff = "ebmelodystaff" \with {
    instrumentName = "Melody"
    shortInstrumentName = "M."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
     \transpose c' ees { \altosaxnotes }
}

wtenorstaff = \context Staff = "wtenorstaff" \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \tenorharmony
}

wbaristaff = \context Staff = "wbaristaff" \with {
    instrumentName = "Baritone"
    shortInstrumentName = "B."
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \counter
}

wbassstaff =  \context Staff = "wbassstaff" \with {
    instrumentName = \bassinstrumentmarkup
    shortInstrumentName = \bassinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \clef bass
    \new Voice { \bassnotes }
}

wtrombonestaff =  \context Staff = "wtrombonestaff" \with {
    instrumentName = \tromboneinstrumentmarkup
    shortInstrumentName = \tromboneinstrmarkup
    \override MultiMeasureRest.expand-limit = #1
    \override TimeSignature.style = #'()
    \omit Voice.StringNumber
} {
    \clef bass
    \new Voice { \trombonenotes }
}

Csubscore = <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames
    \cmelodystaff
    \wtenorstaff
    \wbaristaff
>>

Bbsubscore =  \transpose bes c' <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames
    \bbmelodystaff
    \wtenorstaff
    \wbaristaff
>>

Ebsubscore =  \transpose ees c' <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames
    \ebmelodystaff
     \transpose c' c { \wtenorstaff }
    \wbaristaff
>>

Cbasssubscore =  <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames
    \guitarchordnames
    \wtrombonestaff
    \wbassstaff
>>

Bbasssubscore =  \transpose bes c'' <<
    \override Score.BarNumber.padding = #2.0

    \bandmchordnames

    \new Staff \with {
        instrumentName = "Baritone"
        shortInstrumentName = "Bar."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \set Score.skipBars = ##t
        \clef violin
        \new Voice { \tromboneforbassclarinetnotes }
    }

    \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "Bas."
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \clef violin
        \new Voice { \bassforbassclarinetnotes }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewsubscore = <<
    \new ChordNames \with {
        chordChanges = ##t
        \override VoltaBracket.minimum-space = #2
        \override VoltaBracket.padding = #.5
    } \chordmode {
        \previewchordletters
    }

    \new Staff \with {
        instrumentName = ""
        shortInstrumentName = ""
        \override MultiMeasureRest.expand-limit = #1
        \override TimeSignature.style = #'()
        \omit Voice.StringNumber
    } {
        \clef violin
        \new Voice { \previewnotes }
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

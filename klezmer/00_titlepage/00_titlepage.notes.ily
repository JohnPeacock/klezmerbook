\version "2.18.2"
% staff-score.lyh not needed for this
emptystaff =  \context Staff = "melodystaff" <<
    \override Staff.Stem.transparent = ##t
    \override Staff.NoteHead.transparent = ##t
    \override Staff.Beam.transparent = ##t
    \override Staff.Clef.transparent = ##t
    \override Staff.TimeSignature.transparent = ##t
    \override Staff.BarLine.transparent = ##t
    \override Staff.StaffSymbol.transparent = ##t
    a'1
>>

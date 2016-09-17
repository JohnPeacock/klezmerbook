\version "2.11.57"
% Combo Template for Lilypond 2.4
% define Percussive Arts Society Standard Notation for Drumset
#(define PAS '(
        (bassdrum       default #f      -3)
        (lowtom         default #f      -1)
        (snare          default #f      1)
        (sidestick      cross   #f      1)
        (himidtom       default #f      2)
        (hightom        default #f      3)
        (hihat          cross   #f      5)
        (openhihat      cross   "open"  5)
        (closedhihat    cross   "stopped" 5)
        (pedalhihat     cross   #f      -5)
        (crashcymbal    cross   #f      6)
        (ridecymbal     cross   #f      4)
        )
)

% guitar chords
% open chords
% major chords
fmaj = ^\markup \fret-diagram #"6-x;5-o;4-3;3-2-(;2-1;1-1-);"
cmaj = ^\markup \fret-diagram #"6-x;5-3;4-2;3-o;2-1;1-o;"
gmaj = ^\markup \fret-diagram #"6-3;5-2;4-o;3-o;2-o;1-3;"
dmaj = ^\markup \fret-diagram #"6-x;5-x;4-0;3-2;2-3;1-2;"
amaj = ^\markup \fret-diagram #"6-x;5-o;4-2;3-2;2-2;1-o;"
emaj = ^\markup \fret-diagram #"6-o;5-2;4-2;3-1;2-o;1-o;"
bmaj = ^\markup \fret-diagram #"6-x;5-x;4-4;3-4;2-4;1-2;"

% minor chords
dmin = ^\markup \fret-diagram #"6-x;5-x;4-o;3-2;2-3;1-1;"
amin = ^\markup \fret-diagram #"6-x;5-o;4-2;3-2;2-1;1-o;"
emin = ^\markup \fret-diagram #"6-o;5-2;4-2;3-o;2-2;0-o;"

% definitions  
\header {
        title = "Template"
        subtitle ="Sub Title"
        composer = "Me"
        meter = "moderato"
        piece = "rock"
        tagline = "Lilypond example file for rock combo"
}

global = {
        \time 4/4
}

Key = {
        \key c \major
}

sl = {
    \override NoteHead  #'style = #'slash
    \override Stem  #'transparent = ##t
}
nsl = {
    \revert NoteHead #'style
    \revert Stem #'transparent
}

% rhythm guitar
rhythmgtr = \relative c'' {
        \Key
        \sl 
        b4 \cmaj b b b
        b4 \fmaj b b b
        b4 \gmaj b b b
        b4 \cmaj b b b
        \nsl
}

harmony = \chordmode { 
        c1 f1 g1 c1 
}

% piano
upperOne = \relative c'' {
        g1
        c1
        d1
        g,1
}

upperTwo = \relative c'' {
        e,1
        a1
        b1
        e,1
}

lowerOne = \relative c {
        g'1
        c1
        d1
        g,1
}

lowerTwo = \relative c {
        c1
        f1
        g1
        c,1
}


% bass guitar
bass = \relative c {
        \clef bass
        c4. g'8 bes c bes g
        f,4. c'8 ees f ees c
        g4. d'8 f g f d
        c1 
}

% drumset
drumsetUp = \drummode {
        hh8 hh < hh sn >8 hh hh hh < hh ss >8 hho
        hh8 hh < hh sn >8 hh hh hh < hh ss >8 hho
        hh8 hh < hh sn >8 hh hh hh < hh ss >8 hho
        hh8 hh < hh sn >8 hh hh hh < hh ss >8 hho
}

drumsetDown = \drummode {
        bd4. bd8 bd4 r4
        bd4. bd8 bd4 r4
        bd4. bd8 bd4 r4
        bd4. bd8 bd4 r4
}

\score {
        \new StaffGroup <<
                <<
                        \context ChordNames {
                                \set chordChanges = ##t
                                \harmony
                        }
                        \context Staff = one \rhythmgtr
                        \set Staff.instrumentName = #"Guitar"
                >>              
                \new PianoStaff <<
                        \set PianoStaff.instrumentName = #"Piano"
                        \new Staff <<
                                \global
                                \Key
                                \clef treble
                                { \upperOne } \\
                                { \upperTwo }
                        >>
                        \new Staff <<
                                \global
                                \Key
                                \clef bass
                                { \lowerOne } \\
                                { \lowerTwo }
                        >>
                >>
                \new Staff <<
                        \set Staff.instrumentName = #"Bass"
                        \global 
                        \bass 
                >>
                \new DrumStaff <<
                        \set Staff.instrumentName = #"Drums"
                        \global
                        \set DrumStaff.drumStyleTable = #(alist->hash-table PAS)
                        \new DrumVoice { \voiceOne \drumsetUp }
                        \new DrumVoice { \voiceTwo \drumsetDown }
                >>
        >>
        \layout { }
}

\version "2.18.0"

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \breakA \bar ".|:-||"

    \markB \positionB
    \repeat volta 2 {
        \grace { s8 } s2 | \breakBone s2 | \breakBtwo
        s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv
    }
    \alternative { { s2 | \breakBtwl } { s2 | } }
    \breakB \bar ".|:-||"
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
    }
    \alternative { { s2 | \breakCeit } { s2 | } }
    \breakC \bar ".|:-||"

    \markD \positionD
    \repeat volta 2 {
        \grace { s8 } s2 | \breakDone
        \grace { s8 } s2 | \breakDtwo
        s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev
    }
    \alternative { { s2 | \breakDeit } { s2 | } }
    \markDC \positionDC
}

bandmNV = {
    \tempo \tempostring
    \time 2/4
    \bandmsectiona
    \bandmsectionc
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = { s2 | }

metronomeextraintro = { s2 | s2 | }

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 100
    \metronomeextraintro
    \bandmsectiona
    \bandmsectionc

    \tempo 4 = 105
    \bandmsectiona
    \bandmsectionc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = { s2 | s2 | }

melodysectiona = {
    \repeat volta 2 {
        a'16\ff ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
        a'16 ( d''16 ) d''4 d''8 |
        d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
        d''16 ( f''16 ) f''4 f''8 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( g''16 ) g''16 ( f''16 ) |
        f''16 ( g''16 ) g''4 f''16 e''16 |
        d''8 d''8 d''16 ( g''16 ) f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8 r8 | } { d''4. a'8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d''4. a'8 |
        d''4. a'8 |
        d''8. a'16 d''8. a'16 |
        d''4. r8 |

        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( c''16 bes'16 a'16 ) g'4 |

        f'16 g'16 a'16 bes'16 c''16 a'16 f'16 a'16 |
        a'16 g'16 g'4 f'8 |
        f'16 ( c'16 ) c'16 ( f'16 ) f'16 ( ees'16 ) ees'16 ( d'16 ) |
    }
    \alternative { { d'4. c'8 | } { d'4. r8 | } }
}

melodysectionc = {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 f''8-> r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a'8-> | } }

    \repeat volta 2 {
        \grace { s8 } d''4 ~ ( d''16 cis''16 d''16 e''16 ) |
        \grace { s8 } f''2 |
        \tuplet 3/2 { f''8 [ ( g''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
        \tuplet 3/2 { d''8 [ ( e''8 f''8 ) ] } \tuplet 3/2 { e''8 [ ( d''8 c''8 ) ] } |
        d''4 ~ ( d''16 cis''16 d''16 e''16 ) |
        f''2 |
        \tuplet 3/2 { c'''8 [ ( bes''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
    }
    \alternative {
        { f''16 g''16 e''16 f''16 d''8 a'8-> | } { d''8 r8 d'''8 r8 | }
    }
}

melody = {
    \key d \minor
    \time 2/4
    \melodysectiona
    \melodysectionc
}

melodymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionc

    \melodysectiona
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = {
    s2 | s2 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        e'8 ( g'8 ) e'8 ( g'8 ) |
        e'16 ( g'16 ) g'16 ( b'16 ) g'8 g'8 |
        g'8 ( b'8 ) g'8 ( b'8 ) |
        g'16 ( b'16 ) b'16 ( g'16 ) b'8 e''8 |
        e''8 c''8 b'8 c''16 b'16 |
        b'16 ( c''16 ) c''16 ( e''16 ) c''8 b'16 a'16 |
        g'8 g'8 g'16 c''16 b'16 a'16 |
    }
    \alternative {
        { b'16 b'16 b'16 b'16 e''8 b'8 | } { g'8 e'8 \< g'8 b'8 \! | }
    }

    \repeat volta 2 {
        \grace { s8 } g'16 ( b'16 g''16 fis''16 e''8 ) b'8 |
        g'16 ( b'16 g''16 fis''16 e''8 ) b'8 |
        g'8 ( b'16 a'16 ) g'8 ( b'16 a'16 ) |
        g'16 ( b'16 a'16 b'16 g'8 ) a'8 |

        g'4 b'8 a'8 |
        g'4 b'8 a'8 |
        g'4 b'8 a'8 |
        gis'16 f'16 e'16 d''16 c''16 ( e''16 a'8 ) |
        b'16 fis'16 g'16 a'16 b'8 b'16 d''16 |
        c''8 c''16 e''16 c''8 r8 |
        g'16 ( d'16 ) d'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) |
    }
    \alternative { { e'8 e'8 g'8 b'8 | } { e'8 b'8 g'8 c''8 | } }
}

tenorharmonysectionc = {
    \repeat volta 2 {
        b'16 d''16 g''16 d''16 g''8 b''8 |
        b''16 ( a''16 ) a''16 ( g''16 ) g''8 ( b'8 ) |
        b'16 ( ais'16 b'16 c''16 ) d''16 ( c''16 b'16 ais'16 ) |
        b'8 r8 d''8 r8 |
        b'16 d''16 g''16 d''16 g''8 b''8 |
        b''16 ( a''16 ) a''16 ( g''16 ) g''8 ( d''8 ) |
        fis''16 ( e''16 ) e''16 ( d''16 ) d''16 ( c''16 ) c''16 ( b'16 ) |
    }
    \alternative {
        { c''16 ( d''16 b'16 d''16 ) b'8 c''8 | }
        { c''16 d''16 b'16 d''16 b'8 a'8-^ | }
    }

    \repeat volta 2 {
        \grace { s8 } g'16 fis'16 g'16 a'16 g'8 b'8 |
        \grace { s8 } e'16 dis'16 e'16 fis'16 e'8 g'8 |
        \tuplet 3/2 { b'8 [ ( c''8 d''8 ) ] } \tuplet 3/2 { c''8 [ ( b'8 a'8 ) ] }  |
        \tuplet 3/2 { g'8 [ ( a'8 b'8 ) ] } \tuplet 3/2 { a'8 [ ( g'8 fis'8 ) ] } |
        g'16 fis'16 g'16 a'16 g'8 b'8 |
        e'16 dis'16 e'16 fis'16 e'8 g'8 |
        \tuplet 3/2 { b'8 [ ( a'8 g'8 ) ] } \tuplet 3/2 { c''8 [ ( b'8 a'8 ) ] } |
    }
    \alternative { { b'8 a'8 g'8 a'8-^ | } { g'8 r8 g'8-^ r8 | } }
}

tenorharmony =  \transpose c bes, {
    \key e \minor
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionc
}

tenorharmonymidi =  \transpose c bes, {
    \key e \minor
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = {
    s2 | s2 |
}

altoharmonysectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

altoharmonysectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 { \grace { s8 } s2 | \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

altoharmony = {
    \key d \minor
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionc
}

altoharmonymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro = {
    s2 | s2 |
}

countersectiona = {
    \repeat volta 2 {
        \repeat percent 4 {
            d8\mf d'8 a8 d'8 |
        }
        g8 d'8 bes8 d'8 |
        g8 d'8 bes8 g8 |
        d8 d8 d16 g16 f16 e16 |
    }
    \alternative { { d8 e8 f8. a16 | } { d8 a,8 d8 r8 | } }

    \repeat volta 2 {
        \grace { s8 }
        \repeat percent 4 {
            d8 d'8 a8 d'8 |
        }

        \repeat percent 3 {
            d8 d'8 a8 d'8 |
        }
        fis8 d8 g8 c8 |

        f2 |
        g8 g4 f8 |
        c2 |
    }
    \alternative { { d8 d8 a8 f8 | } { d8 a8 d'8 c'8 | } }
}

countersectionc = {
    \repeat volta 2 {
        f2 |
        c'8 bes8 a8 g8 |
        f2 |
        f8 r8 f4-> |
        f2 |
        c'8 bes8 a8 g8 |
        c'8 bes8 a8 g8 |
    }
    \alternative { { f8 a8 a8 c8 | } { f8 a8 a8 e8 | } }

    \repeat volta 2 {
        \repeat percent 2 {
            \grace { s8 } d8 d'8 a8 d'8 |
        }
        f4 g4 |
        d4 e4 |

        \repeat percent 2 {
            d8 d'8 a8 d'8 |
        }
        f8 g8 a8 a,8 |
    }
    \alternative { { d8 cis8 d8 a,8-> | } { d8 r8 d8-> r8 | } }
}

counter =  \transpose c c' {
    \key d \minor
    \time 2/4
    \countersectiona
    \countersectionc
}

countermidi =  \transpose c c' {
    \key d \minor
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionc

    \countersectiona
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro = {
    s2 | s2 |
}

%    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
%    << sna4 cymr4 >> r8 cymc8 |

%    bda4 bda8 bda8 | s8 bda8 bda4 |

basslinesectiona = {
    \repeat volta 2 {
        d4 a,8 d8 ~ |
        d8 a,8 d4 |
        d4 a,8 d8 ~ |
        d8 a,8 d4 |
        d4 g,8 d8 ~ |
        d8 g,8 d4 |
        d8 d'8 a8 f8 |
    }
    \alternative {
        { d8 r8 d8 r8 | }
        { d8 r8 d'8 r8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        fis8 d8 g8 d'8 |
        f8 c'8 f8 a8 |
        g8 d'8 d'8 d'8 |
        c8 c'8 g8 c'8 |
    }
    \alternative {
        { d8 d8 a8 f8 | }
        { d8 a8 d'8 c8 | }
    }
}

basslinesectionc = {
    \repeat volta 2 {
        f8 r8 c8 c8 |
        f8 r8 c8 c8 |
        f8 r8 c8 c8 |
        f8 f'8 c'8 a8 |
        f8 r8 c8 c8 |
        f8 r8 c8 c8 |
        c8 cis8 d8 e8  |
    }
    \alternative {
        { f8 r8 f8 c'8 | }
        { f8 r8 f8 a8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d4 a,4 |
        \grace { s8 } d4 a,4 |
        d4 a,4 |
        d8 d'8 a8 f8 |
        d4 a,4 |
        d4 a4 |
        d4 a,4 |
    }
    \alternative {
        { d8 a,8 b,8 cis8 | }
        { d8 r8 d'8 r8 | }
    }
}

bassline = {
    \key d \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionc
}

basslinemidi = {
    \key d \minor
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionc

    \basslinesectiona
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = {
    s2 | s2 |
}

guitarsectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

guitarsectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 { \grace { s8 } s2 | \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

guitarnotes = {
    \key d \minor
    \time 2/4
    \guitarsectiona
    \guitarsectionc
}

guitarnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionc

    \guitarsectiona
    \guitarsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s2 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min | g2:min | g2:min | d2:min |
    }
    \alternative {
        {
            \chordChangesOff
            d2:min |
            \chordChangesOn
        }
        {
            \chordChangesOff
            d2:min |
            \chordChangesOn
        }
    }

    \repeat volta 2 {
        \chordChangesOff
        \grace { d8:min }
        \chordChangesOn
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d4:7 g4:min | f2 | g2:min | f4 c4:min |
    }
    \alternative {
        { d2:min | }
        {
            \chordChangesOff
            d2:min |
            \chordChangesOn
        }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { f2 | f2 | f2 | f2 | f2 | f2 | c2:7 | }
    \alternative { { f4. c8:7 | } { f4. a8:7 | } }

    \repeat volta 2 {
        \grace { d8:min } d2:min | \grace { d8:min } d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | }
    \alternative {
        {
            \chordChangesOff
            d8:min
            \chordChangesOn
            a8:7 d8:min a8:7 |
        }
        { d2:min | }
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionc
}

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
altosaxchordletters = \transpose ees c \chordletters
guitarchordletters = \chordletters
flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodystaff =  \context Staff = "melodystaff" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  \transpose c c {
    \melody
}

flutenotesmidi =  \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = {
    s2 | s2 |
}

clarinetsectiona =  \transpose bes c' {
    \repeat volta 2 {
        a'16\ff ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
        a'16 ( d''16 ) d''4 d''8 |
        d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
        d''16 ( f''16 ) f''4 f''8 |
        f''16 g''16 g''16 f''16 f''16 g''16 g''16 f''16 |
        f''16 g''16 g''4 f''16 e''16 |
        d''8 d''8 d''16 g''16 f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8 r8 | }
        { d''8 d''8 f''8 a''8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d'''4. a''8 |
        d'''4. a''8 |
        d'''8. a''16 d'''8. a''16 |
        d'''4. a''8 |

        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 c'''16 bes''16 a''16 g''4 |

        f''16 g''16 a''16 bes''16 c'''16 a''16 f''16 a''16 |
        a''16 g''16 g''4 f''8 |
        f''16 ( c''16 ) c''16 ( f''16 ) f''16 ( ees''16 ) ees''16 ( d''16 ) |
    }
    \alternative { { d''8 d''8 f''8 a''8 | } { d''4 r8 c''8 | } }
}

clarinetsectionc =  \transpose bes c'' {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c'16 b16 c'16 d'16 ees'16 d'16 c'16 b16 |
        c'8 r8 f'8-^ r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a8-^ | } }

    \repeat volta 2 {
        \grace { s8 } d'4 ~ d'16 cis'16 d'16 e'16 |
        \grace { s8 } f'2 |
        \tuplet 3/2 { f'8 [ ( g'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
        \tuplet 3/2 { d'8 [ ( e'8 f'8 ) ] } \tuplet 3/2 { e'8 [ ( d'8 c'8 ) ] } |
        d'4 ~ d'16 cis'16 d'16 e'16 |
        f'2 |
        \tuplet 3/2 { c''8 [ ( bes'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
    }
    \alternative {
        { f'16 g'16 e'16 f'16 d'8 a8-^ | } { d'8 r8 d'8 r8 | }
    }
}

clarinetnotes = {
    \key e \minor
    \time 2/4
    \clarinetsectiona
    \clarinetsectionc
}

clarinetnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = {
    s2 | s2 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        e'8 ( g'8 ) e'8 ( g'8 ) |
        e'16 ( g'16 ) g'16 ( b'16 ) g'8 g'8 |
        g'8 ( b'8 ) g'8 ( b'8 ) |
        g'16 ( b'16 ) b'16 ( g'16 ) b'8 e''8 |
        e''8 c''8 b'8 c''16 b'16 |
        b'16 ( c''16 ) c''16 ( e''16 ) c''8 b'16 a'16 |
        g'8 g'8 g'16 c''16 b'16 a'16 |
    }
    \alternative {
        { b'16 b'16 b'16 b'16 e''8 b'8 | } { g'8 e'8 \< g'8 b'8 \! | }
    }

    \repeat volta 2 {
        \grace { s8 } g'16 ( b'16 g''16 fis''16 e''8 ) b'8 |
        g'16 ( b'16 g''16 fis''16 e''8 ) b'8 |
        g'8 ( b'16 a'16 ) g'8 ( b'16 a'16 ) |
        g'16 ( b'16 a'16 b'16 g'8 ) a'8 |

        g'4 b'8 a'8 |
        g'4 b'8 a'8 |
        g'4 b'8 a'8 |
        gis'16 f'16 e'16 d''16 c''16 ( e''16 a'8 ) |
        b'16 fis'16 g'16 a'16 b'8 b'16 d''16 |
        c''8 c''16 e''16 c''8 r8 |
        g'16 ( d'16 ) d'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) |
    }
    \alternative { { e'8 e'8 g'8 b'8 | } { e'8 b'8 g'8 c''8 | } }
}

tenorsaxsectionc = {
    \repeat volta 2 {
        b'16 d''16 g''16 d''16 g''8 b''8 |
        b''16 ( a''16 ) a''16 ( g''16 ) g''8 ( b'8 ) |
        b'16 ( ais'16 b'16 c''16 ) d''16 ( c''16 b'16 ais'16 ) |
        b'8 r8 d''8 r8 |
        b'16 d''16 g''16 d''16 g''8 b''8 |
        b''16 ( a''16 ) a''16 ( g''16 ) g''8 ( d''8 ) |
        fis''16 ( e''16 ) e''16 ( d''16 ) d''16 ( c''16 ) c''16 ( b'16 ) |
    }
    \alternative {
        { c''16 ( d''16 b'16 d''16 ) b'8 c''8 | }
        { c''16 d''16 b'16 d''16 b'8 a'8-^ | }
    }

    \repeat volta 2 {
        \grace { s8 } g'16 fis'16 g'16 a'16 g'8 b'8 |
        \grace { s8 } e'16 dis'16 e'16 fis'16 e'8 g'8 |
        \tuplet 3/2 { b'8 [ ( c''8 d''8 ) ] } \tuplet 3/2 { c''8 [ ( b'8 a'8 ) ] }  |
        \tuplet 3/2 { g'8 [ ( a'8 b'8 ) ] } \tuplet 3/2 { a'8 [ ( g'8 fis'8 ) ] } |
        g'16 fis'16 g'16 a'16 g'8 b'8 |
        e'16 dis'16 e'16 fis'16 e'8 g'8 |
        \tuplet 3/2 { b'8 [ ( a'8 g'8 ) ] } \tuplet 3/2 { c''8 [ ( b'8 a'8 ) ] } |
    }
    \alternative { { b'8 a'8 g'8 a'8-^ | } { g'8 r8 g'8-^ r8 | } }
}

tenorsaxnotes = {
    \key e \minor
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionc
}

tenorsaxnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionc
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro = {
    s2 | s2 |
}

altosaxsectiona =  \transpose ees c {
    \repeat volta 2 {
        a'16\ff ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
        a'16 ( d''16 d''4 ) d''8 |
        d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
        d''16 f''16 f''4 f''8 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( g''16 ) g''16 ( f''16 ) |
        f''16 g''16 g''4 f''16 e''16 |
        d''8 d''8 d''16 g''16 f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8 r8 | } { d''4. r8 | }
    }

    \repeat volta 2 {
        \acciaccatura { a'8 } d''4. a'8 |
        d''4. a'8 |
        d''8. a'16 d''8. a'16 |
        d''4. r8 |

        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( c''16 bes'16 a'16 ) g'8 r8 |

        f'16 g'16 a'16 bes'16 c''16 a'16 f'16 a'16 |
        a'16 g'16 g'4 f'8 |
        f'16 c'16 c'16 f'16 f'16 ees'16 ees'16 d'16 |
    }
    \alternative { { d'8 d'8 f'8 a'8 | } { d'4 r8 c'8 | } }
}

altosaxsectionc =  \transpose ees c' {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 f''8-> r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 r8 | } }

    \repeat volta 2 {
        \acciaccatura { a8 } d'4 ~ d'16 cis'16 d'16 e'16 |
        \grace { s8 } f'4. r8 |
        \tuplet 3/2 { f'8 [ ( g'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
        \tuplet 3/2 { d'8 [ ( e'8 f'8 ) ] } \tuplet 3/2 { e'8 [ ( d'8 c'8 ) ] } |
        d'4 ~ d'16 cis'16 d'16 e'16 |
        f'4. r8 |
        \tuplet 3/2 { c''8 [ ( bes'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
    }
    \alternative {
        { f'16 g'16 e'16 f'16 d'8 r8 | } { d'8 r8 d''8-> r8 | }
    }
}

altosaxnotes = {
    \key b \minor
    \time 2/4
    \altosaxsectiona
    \altosaxsectionc
}

altosaxnotesmidi = {
    \key b \minor
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = {
    s2 | s2 |
}

trumpetsectiona =  \transpose bes c' {
    \repeat volta 2 {
        a16\ff ( d'16 ) d'16 ( a16 ) a16 ( d'16 ) d'16 ( a16 ) |
        a16 ( d'16 ) d'4 d'8 |
        d'16 ( f'16 ) f'16 ( d'16 ) d'16 ( f'16 ) f'16 ( d'16 ) |
        d'16 ( f'16 ) f'4 f'8 |
        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( g'16 ) g'16 ( f'16 ) |
        f'16 ( g'16 ) g'4 f'16 ( e'16 ) |
        d'8 d'8 d'16 g'16 f'16 e'16 |
    }
    \alternative {
        { d'16 f'16 e'16 g'16 f'8 r8 | }
        { d'4. a'8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d''4. ( a'8 ) |
        d''4. ( a'8 ) |
        d''8. a'16 d''8. a'16 |
        d''4. r8 |

        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 c''16 bes'16 a'16 g'4 |

        f'16 ( g'16 ) a'16 ( bes'16 ) c''16 ( a'16 ) f'16 a'16 |
        a'16 g'16 g'4 f'8 |
        f'16 ( c'16 ) c'16 ( f'16 ) f'16 ( ees'16 ) ees'16 ( d'16 ) |
    }
    \alternative { { d'8 d'8 f'8 a'8 | } { d'4 r8 c'8 | } }
}

trumpetsectionc =  \transpose bes c' {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 f''8-> r8 |

        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a8-> | } }

    \repeat volta 2 {
        \grace { s8 } d'4 ~ d'16 cis'16 d'16 e'16 |
        \grace { s8 } f'2 |
        \tuplet 3/2 { f'8 [ ( g'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
        \tuplet 3/2 { d'8 [ ( e'8 f'8 ) ] } \tuplet 3/2 { e'8 [ ( d'8 c'8 ) ] } |
        d'4 ~ d'16 cis'16 d'16 e'16 |
        f'2 |
        \tuplet 3/2 { c''8 [ ( bes'8 a'8 ) ] } \tuplet 3/2 { g'8 [ ( f'8 e'8 ) ] } |
    }
    \alternative {
        { f'16 g'16 e'16 f'16 d'8 a8-> | } { d'8 r8 d''8 r8 | }
    }
}

trumpetnotes = {
    \key e \minor
    \time 2/4
    \trumpetsectiona
    \trumpetsectionc
}

trumpetnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 |
}

trombonesectiona = {
    \repeat volta 2 {
        \repeat percent 4 {
            d8\mf d'8 a8 d'8 |
        }
        g8 d'8 bes8 d'8 |
        g8 d'8 bes8 g8 |
        d8 d8 d16 g16 f16 e16 |
    }
    \alternative { { d8 e8 f8. a16 | } { d8 a,8 d8 r8 | } }

    \repeat volta 2 {
        \grace { s8 }
        \repeat percent 4 {
            d8 d'8 a8 d'8 |
        }

        \repeat percent 3 {
            d8 d'8 a8 d'8 |
        }
        fis8 d8 g8 c8 |

        f2 |
        g8 g4 f8 |
        c2 |
    }
    \alternative { { d8 d8 a8 f8 | } { d8 a8 d'8 c'8 | } }
}

trombonesectionc = {
    \repeat volta 2 {
        f2 |
        c'8 bes8 a8 g8 |
        f2 |
        f8 r8 f4-> |
        f2 |
        c'8 bes8 a8 g8 |
        c'8 bes8 a8 g8 |
    }
    \alternative { { f8 a8 a8 c8 | } { f8 a8 a8 e8 | } }

    \repeat volta 2 {
        \repeat percent 2 {
            \grace { s8 } d8 d'8 a8 d'8 |
        }
        f4 g4 |
        d4 e4 |

        \repeat percent 2 {
            d8 d'8 a8 d'8 |
        }
        f8 g8 a8 a,8 |
    }
    \alternative { { d8 cis8 d8 a,8-> | } { d8 r8 d8-> r8 | } }
}

trombonenotes = {
    \key d \minor
    \time 2/4
    \trombonesectiona
    \trombonesectionc
}

trombonenotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionc

    \trombonesectiona
    \trombonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro = {
    s2 | s2 |
}

violinsectiona = {
    \repeat volta 2 {
        a'16\ff ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
        a'16 ( d''16 ) d''4 d''8 |
        d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
        d''16 ( f''16 ) f''4 f''8-\upbow |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( g''16 ) g''16 ( f''16 ) |
        f''16 ( g''16 ) g''4 f''16 e''16 |
        d''8 d''8 d''16 ( g''16 ) f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8 r8 | } { d''4. a'8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d''4. a'8 |
        d''4. a'8 |
        d''8. a'16 d''8. a'16 |
        d''4. r8 |

        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 d''16 cis''16 ) |
        d''16 ( c''16 bes'16 a'16 ) g'4 |

        f'16 g'16 a'16 bes'16 c''16 a'16 f'16 a'16 |
        a'16 g'16 g'4 f'8 |
        f'16 ( c'16 ) c'16 ( f'16 ) f'16 ( ees'16 ) ees'16 ( d'16 ) |
    }
    \alternative { { d'4. c'8 | } { d'4. r8 | } }
}

violinsectionc = {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 f''8->-\upbow r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a'8-> | } }

    \repeat volta 2 {
        \grace { s8 } d''4 ~ ( d''16 cis''16 d''16 e''16 ) |
        \grace { s8 } f''2 |
        \tuplet 3/2 { f''8 [ ( g''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
        \tuplet 3/2 { d''8 [ ( e''8 f''8 ) ] } \tuplet 3/2 { e''8 [ ( d''8 c''8 ) ] } |
        d''4 ~ ( d''16 cis''16 d''16 e''16 ) |
        f''2 |
        \tuplet 3/2 { c'''8 [ ( bes''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
    }
    \alternative {
        { f''16 g''16 e''16 f''16 d''8 a'8-> | } { d''8 r8 < d'' f' >8 r8 | }
    }
}

violinnotes = {
    \key d \minor
    \time 2/4
    \violinsectiona
    \violinsectionc
}

violinnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionc

    \violinsectiona
    \violinsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro = {
    d''8 d''8 d''16 ( g''16 ) f''16 e''16 |
    d''16 f''16 e''16 g''16 f''8 r8 | 
}

pianorightuppersectiona = {
    \repeat volta 2 {
        a'16\ff ( d''16 d''16 a'16 ) a'16 ( d''16 d''16 a'16 ) |
        a'16 d''16 d''4 d''8 |
        d''16 ( f''16 f''16 d''16 ) d''16 ( f''16 f''16 d''16 ) |
        d''16 f''16 f''4 f''8 |
        f''16 ( g''16 g''16 f''16 ) f''16 ( g''16 g''16 f''16 ) |
        f''16 g''16 g''4 f''16 e''16 |
        d''8 d''8 d''16 g''16 f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8. a'16 | } { < d'' f' >4. a'8 | }
    }

    \repeat volta 2 {
        \grace { s8 } < d'' f' >4. a'8 |
        < d'' f' >4. a'8 |
        < d'' f' >8. a'16 < d'' f' >8. a'16 |
        < d'' f' >4 r8 a'8 |

        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 c''16 bes'16 a'16 g'4 |

        f'16 g'16 a'16 bes'16 c''16 a'16 f'16 a'16 |
        a'16 ( g'16 g'4 ) f'8 |
        f''16 ( c''16 c''16 f''16 ) f''16 ( ees''16 ees''16 d''16 ) |
    }
    \alternative {
        { < f' a' d''>8-. d'8 ( f'8 a'8 ) | }
        { < f' a' d''>4. c''8 | }
    }
}

pianorightuppersectionc = {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 < a' c'' f'' >8-> r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a'8 | } }

    \repeat volta 2 {
        \grace { s8 } d''4 ~ d''16 cis''16 d''16 e''16 |
        \grace { s8 } < d'' f'' >2 |
        \tuplet 3/2 { f''8 [ ( g''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
        \tuplet 3/2 { d''8 [ ( e''8 f''8 ) ] } \tuplet 3/2 { e''8 [ ( d''8 c''8 ) ] } |
        d''4 ~ d''16 cis''16 d''16 e''16 |
        < d'' f'' >2 |
        \tuplet 3/2 { c'''8 [ ( bes''8 a''8 ) ] } \tuplet 3/2 { g''8 [ ( f''8 e''8 ) ] } |
    }
    \alternative {
        { f''16 g''16 e''16 f''16 d''8 a'8-> | } { d''8 r8 < f'' a'' d'''>8-> r8 | }
    }
}

pianorightuppernotes = {
    \key d \minor
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionc
}

%-------------------------------------------------

pianorightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro = {
    a,8 < cis g >8 a,8 < cis g >8 | < d f >8 r8 < d d, >8-> r8 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 < g bes >8 d'8 |
        d8 d'8 < g bes >8 d'8 |
        d8 d'8 a8 d'8 |
    }
    \alternative {
        { d8 a8 d'8 a8 | }
        { < d d' >8 a8 d8 r8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        fis8 d8 g8 < bes d' >8 |
        f8 < a c' >8 f8 < a c' >8 |
        g8 < bes d' >8 < bes d' >8 < bes d' >8 |
        c8 c'8 g8 c'8 |
    }
    \alternative {
        { < d d' >8 d8 ( a8 f8 ) | }
        { < d d' >8 a8 < d d' >8 < c c' >8 | }
    }
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        f8 < a c' >8 c8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |
        f8 f'8 c'8 a8 |
        f8 < a c' >8 c8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |
        e8 c'8 c8 c'8 |
    }
    \alternative {
        { f8 < a c' >8 < a c' >8 c8 | }
        { f8 < a c' >8 < a c' >8 < e a cis' >8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d8 d'8 a8 d'8 |
        \grace { s8 } d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        f8 g8 a8 a,8 |
    }
    \alternative {
        { < d f a >8 < cis g a >8 < d f a >8 < a, a >8-> | }
        { d8 r8 < d, d >8-> r8 | }
    }
}

pianoleftuppernotes = {
    \key d \minor
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionc
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionc
}

pianoleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = {
    d''8 d''8 d''16 ( g''16 ) f''16 e''16 |
    d''16 f''16 e''16 g''16 f''8 r8 | 
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        a'16\ff ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
        a'16 ( d''16 ) d''4 d''8 |
        d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
        d''16 ( f''16 ) f''4 f''8 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( g''16 ) g''16 ( f''16 ) |
        f''16 ( g''16 ) g''4 f''16 e''16 |
        d''8 d''8 d''16 g''16 f''16 e''16 |
    }
    \alternative {
        { d''16 f''16 e''16 g''16 f''8. a'16 | } { < f' d'' >4. a'8 | }
    }

    \repeat volta 2 {
        \grace { s8 } < d'' f' >4. a'8 |
        < d'' f' >4. a'8 |
        < d'' f' >8. a'16 < d'' f' >8. a'16 |
        < d'' f' >4 r8 a'8 |

        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 ( cis''16 d''16 e''16 f''16 e''16 d''16 cis''16 ) |
        d''16 c''16 bes'16 a'16 g'4 |

        f'16 g'16 a'16 bes'16 c''16 a'16 f'16 a'16 |
        a'16 ( g'16 ) g'4 f'8 |
        f''16 ( c''16 ) c''16 ( f''16 ) f''16 ( ees''16 ) ees''16 ( d''16 ) |
    }
    \alternative {
        { d''8 d'8 f'8 a'8 | }
        { d''4. c'8 | }
    }
}

accordionrightuppersectionc = {
    \repeat volta 2 {
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 b'16 c''16 d''16 ees''16 d''16 c''16 b'16 |
        c''8 r8 < a' f'' >8-> r8 |
        f'16 g'16 a'4 c''8 |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
        c''16 ( bes'16 ) bes'16 ( a'16 ) a'16 ( g'16 ) g'16 ( f'16 ) |
    }
    \alternative { { g'16 a'16 f'4 c'8 | } { g'16 a'16 f'4 a'8 | } }

    \repeat volta 2 {
        \grace { s8 } d''4 ~ d''16 cis''16 d''16 e''16 |
        \grace { s8 } f''2 |
        \tuplet 3/2 { f''8 [ g''8 a''8 ] } \tuplet 3/2 { g''8 [ f''8 e''8 ] } |
        \tuplet 3/2 { d''8 [ e''8 f''8 ] } \tuplet 3/2 { e''8 [ d''8 c''8 ] } |
        d''4 ~ d''16 cis''16 d''16 e''16 |
        f''2 |
        \tuplet 3/2 { c'''8 [ bes''8 a''8 ] } \tuplet 3/2 { g''8 [ f''8 e''8 ] } |
    }
    \alternative {
        { f''16 g''16 e''16 f''16 d''8 a'8-> | } { d''8 r8 < f'' a'' d'''>8-> r8 | }
    }
}

accordionrightuppernotes = {
    \key d \minor
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionc
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro = {
    a,8 < cis g >8 a,8 < cis g >8 | < d f >8 r8 < d d, >8-> r8 |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 d,8 d'8 |

        g,8 g8^"m" d,8 g8 |
        g,8 g8 e,8_4_-^"B.S." a,8_2 |
        d,8_3 d'8^"m" a,8 a8^"7" |
    }
    \alternative {
        { < d, d' >8^"m" < a, a >8^"7" < d, d' >8^"m" r8 | }
        { d,8^"B.S." a,8 d,8 r8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 a8^"7" |

        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"7" g,8 g8^"m" |

        f,8 f8^"M" f,8 f8 |
        g,8 g8^"m" g,8 g8 |
        c8 f8^"M" a,8_4_- c'8^"m" |
    }
    \alternative {
        { < d, d' >8^"m" r8 r4 | }
        { < d, d' >8^"m" a,8^"B.S." d,8 c8 | }
    }
}

accordionleftuppersectionc = {
    \repeat volta 2 {
        f,8 f8^"M" c8 f8 |
        e,8_- c'8^"7" f,8^"B.S." c8 |
        f,8 f8^"M" c8 f8 |
        f,8 f8 c8 f8 |

        f,8 f8 c8 f8 |
        e,8_- c'8^"7" f,8^"B.S." c8 |
        g,8 c'8^"7" c8 c'8 |
    }
    \alternative {
        { f,8 f8^"M" f8 c8 | }
        { f,8 f8^"M" f8 a,8 | }
    }

    \repeat volta 2 {
        \grace { s8 } d,8 d'8^"m" a,8 d'8 |
        \grace { s8 } d,8 d'8 a,8 d'8 |
        d,8 d'8^"7" g,8_3^"B.S." a,8_2 |
        bes,8_5 a,8_2 g,8_3 a,8_2 |

        d,8_3 d'8^"m" a,8 d'8 |
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 a8^"7" |
    }
    \alternative {
        { < d, d' >8^"m" < a, a >8^"7" < d, d' >8^"m" a,8 | }
        { < d, d' >8^"m" r8 < d, d' >8^> r8 | }
    }
}

accordionleftuppernotes = {
    \key d \minor
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionc
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionc
}

accordionleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    << sna4 cymr4 >> r8 cymc8 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

drumshighsectionc = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 { \grace { s8 } s2 | \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionc
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 {
        \grace { s8 } s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

drumslowsectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }

    \repeat volta 2 { \grace { s8 } s2 | \grace { s8 } s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | s2 | s2 | s2 | g2:min | s2 |
}

previewnotes = {
    \key d \minor
    \time 2/4
    a'16 ( d''16 ) d''16 ( a'16 ) a'16 ( d''16 ) d''16 ( a'16 ) |
    a'16 ( d''16 ) d''4 d''8 |
    d''16 ( f''16 ) f''16 ( d''16 ) d''16 ( f''16 ) f''16 ( d''16 ) |
    d''16 ( f''16 ) f''4 f''8 |
    f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( g''16 ) g''16 ( f''16 ) |
    f''16 ( g''16 ) g''4 f''16 e''16 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

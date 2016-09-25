\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This file is built from a template file that
% introduces the basic structure of piece for a
% small ensemble. The instruments regularly seen
% are here and the basic structure of klezmer
% orchestration is represented.

% A common way to fill this in is to identify each
% of the parts according to the role it fills in
% piece. The parts are then assigned to
% instruments as necessary.

% Within each part it may be appropriate to
% divide up into sections so that the midi can
% better represent jumps "del segno" and jumps to
% codas.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as ) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmsectiona =  {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \bar "||" \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |
    \bar ".|:-||" \breakB
}

bandmsectionca =  {
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
}

bandmsectioncb =  { s2 | \breakCeit }

bandmsectioncc =  { s2 | }

bandmsectionc =  {
    \markC \positionC
    \repeat volta 2 {
        \bandmsectionca
    }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \bar "||" \breakC
}

bandmsectiond =  {
    \markD \positionD
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
    s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
    s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
    s2 | \breakDtht s2 | \breakDfrt s2 | \breakDfft s2 |
    \breakD
    \markDCAL \positionDCAL
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as ) place holders for tempo changes in
% the midi output.

preintro =  {
    s2 |
}

metronomeextra =  {
    s2 | s2 |
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 110
    \metronomeextra
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona =  {
    \repeat volta 2 {
        d''8\mf [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
        d''8 [ d''8 f''8 d''8 ] |

        d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16\trill [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    }
    \alternative {
        {
            d''4. a'8 |
        }
        {
            d''4. f''8 |
        }
    }
}

melodysectionb =  {
    a''8 [ bes''16 ( a''16 ) ] g''8 [ a''8 ] |
    bes''4 a''4 |

    g''8 [ a''16 ( g''16 ) ] d''8 [ e''8 ] |
    f''4. c'''8 |
    a''16 [ ( bes''16 ) ] c'''4 c'''8 |
    d'''8 [ d'''8 ] c'''4 |
    g''8 [ fis''16 g''16 ] c'''8 [ bes''8 ] |
    a''4. a''8 |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |

    d''8 [ e''8 f''8 g''8 ] |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. a''8 |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''8 [ e''8 f''8 g''8 ] |

    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. f''8 |
}

melodysectionca =  {
    e''16 [ f''16 ] g''4 g''8 |
    g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
    f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |

    f''4 c'''8. [ f''16 ] |
    e''16 [ f''16 ] g''4 c'''8 |
    c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

melodysectioncb =  {
    e''16 [ f''16 ] d''4 f''8 |
}

melodysectioncc =  {
    e''16 [ f''16 ] d''4 f''8 |
}

melodysectionc =  {
    \repeat volta 2 { \melodysectionca }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodysectiond =  {
    a''4. g''16 [ f''16 ] |
    g''16 [ ( a''16 ) f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |
    g''16 [ ( a''16 ) f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |

    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |
    g''16 [ a''16 ] f''4 f''8 |
    e''16 [ f''16 ] g''4 g''8 |
    g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |

    f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    f''4 c'''8. [ f''16 ] |
    e''16 [ f''16 ] g''4 c'''8 |
    c'''16 [ ( bes''16 a''16 g''16 ) ] f''8. [ f''16 ] |
    f''16 [ ( c''16 ) c''16 ( f''16 ) ] f''16 [ ( ees''16 ) ees''16 ( d''16 ) ] |
    d''4. r8 |
}

melody =  {
    \key f \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
}

melodymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond

    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectiona =  {
    \repeat volta 2 {
        g'8\f [ b'16 b'16 ] e''8 [ b'8 ] |
        c''8 [ c''8 ] b'16 [ ( g'16 ) g'16 ( a'16 ) ] |
        b'16 [ a'16 g'16 a'16 ] b'16 [ c''16 b'16 a'16 ] |
        g'8 [ g'8 b'8 g'8 ] |
        g'8 [ b'16 b'16 ] b'16 [ e''16 e''16 b'16 ] |
        c''8 [ c''8 ] b'16 [ g'16 g'16 a'16 ] |
        b'16 [ a'16 g'16 a'16 ] b'16 [ c''16 b'16 a'16 ] |
    }
    \alternative {
        {
            g'8 [ b'8 g'8 a'8 ] |
        }
        {
            g'8 [ ( b'8 ] g'8 ) r8 |
        }
    }
}

tenorharmonysectionb =  {
    g''8 [ a''16 g''16 ] fis''8 [ g''8 ] |
    a''16 [ d''16 e''16 fis''16 ] g''16 [ d''16 d''16 b'16 ] |
    c''4 c''16 [ a'16 d''16 c''16 ] |
    b'8 [ ( d''8 ) ] d''8 [ ( g''8 ) ] |
    g''16 [ a''16 b''16 a''16 ] b''16 [ g''16 a''16 b''16 ] |
    c'''4 b''8 [ a''16 g''16 ] |
    fis''8 [ e''16 fis''16 ] fis''8 [ a''8 ] |
    g''8 [ g''8 ( fis''8 e''8 ) ] |

    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 e''8 e''8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 b'8 b'8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 e''8 e''8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 g'8 e''8 ] |
}

tenorharmonysectionca =  {
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
    fis''16 [ g''16 fis''16 g''16 ] fis''16 [ ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
    b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 e''16 ] |
    fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
}

tenorharmonysectioncb =  {
    a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

tenorharmonysectioncc =  {
    a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

tenorharmonysectionc =  {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonysectiond =  {
    d''16 [ ( e''16 ) e''16 ( d''16 ) ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 g''16 ] |
    fis''16 [ ( g''16 ) fis''16 ( g''16 ) ] fis''16 ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
    b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
    fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
    g'16 [ ( d'16 ) d'16 ( g'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 g'8 ] r8 |
}

tenorharmony =  \transpose c' bes {
    \key g \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
}

tenorharmonymidi =  \transpose c' bes {
    \time 2/4
    \preintro
    \metronomeextra
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona =  {
    \repeat volta 2 {
        d8\f r8 d8 [ d8 ] |
        d8 [ r8 d8 ] r8 |
        d8 [ r8 a,8 ] r8 |
        d8 [ d8 f8 d8 ] |

        d8 r8 d8 [ d8 ] |
        d8 [ r8 d8 ] r8 |
        d8 r8 a,8 [ cis8 ] |
    }
    \alternative {
        {
            d8 [ a,8 d8 ] r8 |
        }
        {
            d8 [ a,8 d8 ] r8 |
        }
    }
}

countersectionb =  {
    a8 [ bes16 a16 ] g8 [ f8 ] |
    e4 f4 |
    g4 c8 [ c8 ] |
    f8 [ c'8 a8 f8 ] |

    f16 [ g16 ] a4 a8 |
    bes8 [ bes8 ] a8 [ f8 ] |
    e8 r8 c8 r8 |
    f8 [ f8 ( e8 d8 ) ] |

    cis8 [ g8 f8 e8 ] |
    d8 [ f8 a8 d'8 ] |
    a8 [ g8 f8 e8 ] |
    d8 [ a,8 f8 d8 ] |

    cis8 [ g8 f8 e8 ] |
    d8 [ f8 a8 d'8 ] |
    a8 [ g8 f8 e8 ] |
    d8 [ a,8 d8 ] r8 |
}

countersectionca =  {
    \set countPercentRepeats = ##t
    \repeat percent 2 {   c8 [ r8 c8 ] r8 | }
    f8 [ c8 e8 c8 ] |
    f4 ( c'8.-^ ) f16 |

    e8 [ r8 c8 ] r8 |
    c8 [ c8 f8 ] r8 |
    a8 [ g8 f8 e8 ]
}

countersectioncb =  {
    d8 [ a,8 d8 ] r8 |
}

countersectioncc =  {
    d8 [ a,8 d8 ] r8 |
}

countersectionc =  {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countersectiond =  {
    f8 [ r8 c8 ] r8 |
    f8 [ f8 ] c8 [ f8 ] |
    f8 [ r8 c8 ] r8 |
    f8 [ f8 ] c8 [ f8 ] |

    f4 c8 [ f8 ] |
    f4 c8 [ f8 ] |
    f4 c8 [ f8 ] |
    f8 f4 f8 |

    \repeat percent 2 { c8 [ r8 c8 ] r8 | }
    f8 [ f8 ] c8 [ e8 ] |
    f4 c'8. [ f16 ] |

    e16 [ f16 ] g4 c'8 |
    c'16 [ bes16 a16 g16 ] f8. [ f16 ] |
    c4 c8 [ c8 ] |
    d8 [ a,8 d8 ] r8 |
}

counter =  \transpose c c' {
    \key f \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
}

countermidi =  \transpose c c' {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond

    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona =  {
    \repeat volta 2 {
        d8\3 r8 d8\3 r8 |
        d8\3 r8 d8\3 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 a,8\4 r8 |
        d8\3 r8 d8\3 r8 |

        d8\3 r8 d8\3 r8 |
        d8\3 r8 a,8\4 r8 |
    }
    \alternative {
        {
            d8\3 a,8\4 d8\3 r8 |
        }
        {
            d8\3 a,8\4 d8\3 r8 |
        }
    }
}

basslinesectionb =  {
    f8\2 r8 c8\3 r8 |
    e8\2 r8 f8\2 r8 |
    c8\3 r8 c8\3 r8 |
    f8\2 r8 c8\3 r8 |

    f8\2 r8 c8\3 r8 |
    f8\2 r8 f8\2 r8 |
    e8\2 c'8\1 c8\3 e8\2 |
    f8\2-. f8\2 e8\2 d8\3 |

    cis8\3-. r8 a,8\4-. r8 |

    d8\3 r8 a,8\4 r8 |
    cis8\3-. r8 a,8\4-. r8 |
    d8\3 a,8\4 f8\3 d8\3 |
    cis8\3-. r8 a,8\4-. r8 |
    d8\3 r8 a,8\4 r8 |

    cis8\3-. r8 a,8\4-. r8 |
    d8\3 a,8\4 d8\3 r8 |
}

basslinesectionca =  {
    c8\3 r8 c8\3 r8 |
    c8\3 r8 c8\3 r8 |
    f8\2 r8 c8\3 r8 |
    f8\2 r8 f8\2 r8 |

    c8\3 r8 c8\3 r8 |
    c8\3 r8 f8\2 r8 |
    a,8\4 r8 a,8\4 r8 |
}

basslinesectioncb =  {
    d8\3 a,8\4 d8\3 r8 |
}

basslinesectioncc =  {
    d8\3 a,8\4 d8\3 r8 |
}

basslinesectionc =  {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinesectiond =  {
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |

    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    c8 r8 c8 r8 |
    c8 r8 c8 r8 |

    f8 r8 c8 r8 |
    f8 r8 f8 r8 |
    c8 r8 c8 r8 |
    c8 r8 f8 r8 |
    c8 r8 c8 r8 |
    d8\3 a,8\4 d8\3 r8 |
}

bassline =  {
    \key f \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
}

basslinemidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
    \key f \major
    \time 2/4
}

guitarnotesmidi =  {
    \key f \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min |
        g4:min d4:min |
        d4:min a4:7 |
        d2:min |

        d2:min |
        g4:min d4:min |
        d4:min a4:7 |
    }
    \alternative {
        { d2:min | } { \chordChangesOff d2:min \chordChangesOn | }
    }
}

chordletterssectionb = \chordmode {
    f2 | c4:7 f4 | c2:7 | f2 |
    f2 | bes4 f4 | c2:7 | f2 |
    a2:7 | d2:min | a2:7 | d2:min |
    a2:7 | d2:min | a2:7 | d2:min |
}

chordletterssectionca = \chordmode {
    c2:7 | c2:7 | f2 | f2 |
    c2:7 | c4:7 f4 | a2:7 |
}

chordletterssectioncb = \chordmode { d2:min | }

chordletterssectioncc = \chordmode {
    \chordChangesOff d2:min \chordChangesOn |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterssectiond = \chordmode {
    f2 | f2 | f2 | f2 |
    f2 | f2 | f2 | f2 |
    c2:7 | c2:7 | f4 c4:7 | f2 |
    c2:7 | c4:7 f4 | f2:7 | d2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
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

flutenotes =  {
    \melody
}

flutenotesmidi =  {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona =  {
    \repeat volta 2 {
        e''8\f [ g''16 g''16 ] g''16 [ g''16 g''16 g''16 ] |
        a''16 [ g''16 a''16 b''16 ] g''4 |
        g''16 [ fis''16 e''16 fis''16 ] g''16 [ a''16 g''16 fis''16 ] |
        e''8 [ e''8 g''8 e''8 ] |
        e''8 [ g''16 g''16 ] g''16 [ g''16 g''16 g''16 ] |
        a''16 [ g''16 a''16 b''16 ] g''4 |
        g''16 [ fis''16 e''16 fis''16 ] g''16 [ a''16 g''16 fis''16 ] |
    }
    \alternative {
        {
            e''4. b'8 |
        }
        {
            e''4. g''8 |
        }
    }
}

clarinetsectionb =  {
    b''8 [ c'''16 b''16 ] a''8 [ b''8 ] |
    c'''4 b''4 |
    a''8 [ b''16 a''16 ] e''8 [ fis''8 ] |
    g''4. b''8 |
    b''16 [ c'''16 ] d'''8 ~ ] d'''8 [ d'''8 ] |
    e'''8 [ e'''8 ] d'''4 |
    a''8 [ gis''16 a''16 ] d'''8 [ c'''8 ] |
    b''4. b''8 |

    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
    e''8 [ fis''8 g''8 a''8 ] |
    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
    e''4. b''8 |
    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
    e''8 [ fis''8 g''8 a''8 ] |
    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
    e''4. g''8 |
}

clarinetsectionca =  {
    fis''16 [ g''16 ] a''4 a''8 |
    a''16 [ bes''16 a''16 bes''16 ] a''8. [ g''16 ] |
    g''16 [ fis''16 e''16 fis''16 ] g''16 [ a''16 g''16 fis''16 ] |
    g''4 d'''8. [ g''16 ] |
    fis''16 [ g''16 ] a''4 d'''8 |
    d'''16 [ c'''16 b''16 a''16 ] g''8. [ b''16 ]
    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
}

clarinetsectioncb =  {
    fis''16 [ g''16 ] e''4 g''8 |
}

clarinetsectioncc =  {
    fis''16 [ g''16 ] e''4 g''8 |
}

clarinetsectionc =  {
    \repeat volta 2 { \clarinetsectionca }
    \alternative { { \clarinetsectioncb } { \clarinetsectioncc } }
}

clarinetsectiond =  {
    b''4. a''16 [ g''16 ] |
    a''16 [ ( b''16 g''8 ) ] d''8 [ g''8 ] |
    b''16 [ ( c'''16 ) b''16 ( c'''16 ) ] b''8\trill [ a''16 ( g''16 ) ] |
    a''16 [ ( b''16 g''8 ) ] d''8 [ g''8 ] |
    b''16 [ ( c'''16 ) b''16 ( c'''16 ) ] b''8\trill [ a''16 ( g''16 ) ] |

    b''16 [ ( c'''16 ) b''16 ( c'''16 ) ] b''8\trill [ a''16 ( g''16 ) ] |
    b''16 [ ( c'''16 ) b''16 ( c'''16 ) ] b''8\trill [ a''16 ( g''16 ) ] |
    a''16 [ ( b''16 g''8 ) ] d''8 [ g''8 ] |
    fis''16 [ g''16 ] a''4 a''8 |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8. [ g''16 ] |

    g''16 [ ( fis''16 e''16 fis''16 ) ] g''16 [ ( a''16 g''16 fis''16 ) ] |
    g''4 d'''8. [ g''16 ] |
    fis''16 [ g''16 ] a''4 d'''8 |
    d'''16 [ c'''16 b''16 a''16 ] g''8. [ g''16 ] |
    g''16 [ ( d''16 ) d''16 ( g''16 ) ] g''16 [ ( f''16 ) f''16 ( e''16 ) ] |
    e''4. r8 |
}

clarinetnotes =  {
    \key g \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
}

clarinetnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextra
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona =  {
    \repeat volta 2 {
        g'8\f [ b'16 b'16 ] e''8 [ b'8 ] |
        c''8 [ c''8 ] b'16 [ ( g'16 ) g'16 ( a'16 ) ] |
        b'16 [ a'16 g'16 a'16 ] b'16 [ c''16 b'16 a'16 ] |
        g'8 [ g'8 b'8 g'8 ] |
        g'8 [ b'16 b'16 ] b'16 [ e''16 e''16 b'16 ] |
        c''8 [ c''8 ] b'16 [ g'16 g'16 a'16 ] |
        b'16 [ a'16 g'16 a'16 ] b'16 [ c''16 b'16 a'16 ] |
    }
    \alternative {
        {
            g'8 [ b'8 g'8 a'8 ] |
        }
        {
            g'8 [ ( b'8 ] g'8 ) r8 |
        }
    }
}

tenorsaxsectionb =  {
    g''8 [ a''16 g''16 ] fis''8 [ g''8 ] |
    a''16 [ d''16 e''16 fis''16 ] g''16 [ d''16 d''16 b'16 ] |
    c''4 c''16 [ a'16 d''16 c''16 ] |
    b'8 [ ( d''8 ) ] d''8 [ ( g''8 ) ] |
    g''16 [ a''16 b''16 a''16 ] b''16 [ g''16 a''16 b''16 ] |
    c'''4 b''8 [ a''16 g''16 ] |
    fis''8 [ e''16 fis''16 ] fis''8 [ a''8 ] |
    g''8 [ g''8 ( fis''8 e''8 ) ] |

    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 e''8 e''8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 b'8 b'8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 e''8 e''8 ] |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 g'8 e''8 ] |
}

tenorsaxsectionca =  {
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
    fis''16 [ g''16 fis''16 g''16 ] fis''16 [ ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
    b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 e''16 ] |
    fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
    dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
}

tenorsaxsectioncb =  {
    a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

tenorsaxsectioncc =  {
    a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

tenorsaxsectionc =  {
    \repeat volta 2 { \tenorsaxsectionca }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxsectiond =  {
    d''16 [ ( e''16 ) e''16 ( d''16 ) ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 g''16 ] |
    fis''16 [ ( g''16 ) fis''16 ( g''16 ) ] fis''16 ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
    b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
    fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
    g'16 [ ( d'16 ) d'16 ( g'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
    g'8 [ b'8 g'8 ] r8 |
}

tenorforflutesectiond =  {
    d''16 [ ( e''16 ) e''16 ( d''16 ) ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

    d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8\trill [ c''16 ( b'16 ) ] |
    d''16 [ e''16 d''16 e''16 ] d''8 [ c''16 b'16 ] |
    c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 g''16 ] |
    fis''16 [ ( g''16 ) fis''16 ( g''16 ) ] fis''16 ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
    b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
    d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
    fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
    g''16 [ ( d''16 ) d''16 ( g''16 ) ] b''16 [ ( a''16 ) a''16 ( g''16 ) ] |
    g''8 [ b''8 g''8 ] r8 |
}

tenorsaxnotes =  {
    \key g \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
}

tenorsaxnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextra
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, {
    \key g \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorforflutesectiond
}

tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, {
    \key g \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorforflutesectiond
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextra =  {
    s2 |
    s2 |
}

altosaxsectiona =  {
    \repeat volta 2 {
          b'8\f [ d''16 d''16 ] d''16 [ d''16 d''16 d''16 ] |
          e''16 [ d''16 e''16 fis''16 ] d''4 |
          d''16\trill [ cis''16 b'16 cis''16 ] d''16 [ e''16 d''16 cis''16 ] |
          b'8 [ b'8 d''8-> b'8 ] |
          b'8 [ d''16 d''16 ] d''16 [ d''16 d''16 d''16 ] |
          e''16 [ d''16 e''16 fis''16 ] d''4 |
          d''16\trill [ cis''16 b'16 cis''16 ] d''16 [ e''16 d''16 cis''16 ] |
    }
    \alternative {
        {
            b'4. fis'8 |
        }
        {
             b'8 [ fis'8 b'8 d''8 ] |
        }
    }
}

altosaxsectionb =  {
      fis''8 [ g''16 fis''16 ] e''8 [ fis''8 ] |
    g''4 fis''4 |
      e''8 [ fis''16 e''16 ] b'8 [ cis''8 ] |
    d''4. a''8 |
      fis''16 [ g''16 ] a''4 a''8 |
      b''8 [ b''8 ] a''4 |
      e''8 [ dis''16 e''16 ] a''8 [ g''8 ] |
    fis''4. fis''8 |

      fis''16 [ ( e''16 ) e''16 ( d''16 ) ] d''16 [ ( cis''16 ) cis''16 ( b'16 ) ] |
      b'8 [ cis''8 d''8 e''8 ] |
      fis''16 [ ( e''16 ) e''16 ( d''16 ) ] d''16 [ ( cis''16 ) cis''16 ( b'16 ) ] |
    b'4. fis''8 |

      fis''16 [ ( e''16 ) e''16 ( d''16 ) ] d''16 [ ( cis''16 ) cis''16 ( b'16 ) ] |
      b'8 [ cis''8 d''8 e''8 ] |
      fis''16 [ e''16 e''16 d''16 ] d''16 [ cis''16 cis''16 b'16 ] |
    b'4. fis''8 |
}

altosaxsectionca =  {
      cis''16 [ d''16 ] e''4 e''8 |
      e''16 [ f''16 e''16 f''16 ] e''8. [ d''16 ] |
      d''16 [ ( cis''16 b'16 cis''16 ) ] d''16 [ ( e''16 d''16 cis''16 ) ] |
    d''4 a''8. [ d''16 ] |
      cis''16 [ d''16 ] e''4 a''8 |
      a''16 [ g''16 fis''16 e''16 ] d''8. [ fis''16 ] |
      fis''16 [ ( e''16 ) e''16 ( d''16 ) ] d''16 [ ( cis''16 ) cis''16 ( b'16 ) ] |
}

altosaxsectioncb =  {
      cis''16 [ ( d''16 ) ] b'4 d''8 |
}

altosaxsectioncc =  {
      cis''16 [ ( d''16 ) ] b'4 d''8 |
}

altosaxsectionc =  {
    \repeat volta 2 { \altosaxsectionca }
    \alternative { { \altosaxsectioncb } { \altosaxsectioncc } }
}

altosaxsectiond =  {
    fis''4. e''16 [ d''16 ] |
      e''16 [ fis''16 d''8 ] a'8 [ d''8 ] |
      fis''16 [ ( g''16 ) fis''16 ( g''16 ) ] fis''8\trill [ e''16 d''16 ] |
      e''16 [ fis''16 d''8 ] a'8 [ d''8 ] |
      fis''16 [ g''16 fis''16 g''16 ] fis''8\trill [ e''16 d''16 ] |
      fis''16 [ g''16 fis''16 g''16 ] fis''8\trill [ e''16 d''16 ] |
      fis''16 [ g''16 fis''16 g''16 ] fis''8\trill [ e''16 d''16 ] |
      e''16 [ fis''16 ] d''4 d''8 |
      cis''16 [ d''16 ] e''4 e''8 |
      e''16 [ f''16 e''16 f''16 ] e''8. [ d''16 ] |
      d''16 [ cis''16 b'16 cis''16 ] d''16 [ e''16 d''16 cis''16 ] |
    d''4 a''8. [ d''16 ] |
      cis''16 [ d''16 ] e''4 a''8 |
      a''16 [ g''16 fis''16 e''16 ] d''8. [ d''16 ] |
      d''16 [ ( a'16 ) a'16 d''16 ] d''16 [ ( c''16 ) c''16 ( b'16 ) ] |
    b'4. r8 |
}

altosaxnotes =  {
    \key d \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
}

altosaxnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextra
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altosaxmelodynotes =  \transpose d' a {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona =  {
    \repeat volta 2 {
          d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
          g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
          f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
          d''8 [ d''8 f''8 d''8 ] |
          d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |

          g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
          f''16\trill [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
    }
    \alternative {
        {
            d''4. a'8 |
        }
        {
            d''4. f''8 |
        }
    }
}

trumpetsectionb =  {
      a''8 [ bes''16 a''16 ] g''8 [ a''8 ] |
    bes''4 a''4 |

      g''8 [ a''16 g''16 ] d''8 [ e''8 ] |
    f''4. c'''8 |
      a''16 [ bes''16 ] c'''4 c'''8 |
      d'''8 [ d'''8 ] c'''4 |
      g''8 [ fis''16 g''16 ] c'''8 [ bes''8 ] |
    a''4. a''8 |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |

      d''8 [ e''8 f''8 g''8 ] |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. a''8 |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
      d''8 [ e''8 f''8 g''8 ] |

      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. f''8 |
}

trumpetsectionca =  {
      e''16 [ ( f''16 ) ] g''4 g''8 |
      g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
      f''16 [ ( e''16 ) d''16 e''16 ] f''16 [ ( g''16 ) f''16 e''16 ] |

    f''4 c'''8. [ f''16 ] |
      e''16 [ ( f''16 ) ] g''4 c'''8 |
      c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

trumpetsectioncb =  {
      e''16 [ ( f''16 ) ] d''4 f''8 |
}

trumpetsectioncc =  {
      e''16 [ ( f''16 ) ] d''4 f''8 |
}

trumpetsectionc =  {
    \repeat volta 2 { \trumpetsectionca }
    \alternative { { \trumpetsectioncb } { \trumpetsectioncc } }
}

trumpetsectiond =  {
    a''4. g''16 [ ( f''16 ) ] |
      g''16 [ ( a''16 ) f''8 ] c''8 [ f''8 ] |
      a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
      g''16 [ ( a''16 ) f''8 ] c''8 [ f''8 ] |
      a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |

      a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
      a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |
      g''16 [ ( a''16 ) ] f''4 f''8 |
      e''16 [ f''16 ] g''4 g''8 |
      g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |

      f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    f''4 c'''8. [ f''16 ] |
      e''16 [ f''16 ] g''4 c'''8 |
      c'''16 [ bes''16 a''16 g''16 ] f''8. [ f''16 ] |
      f''16 [ ( c''16 ) c''16 ( f''16 ) ] f''16 [ ( ees''16 ) ees''16 ( d''16 ) ] |
    d''4. r8 |
}

trumpetnotes =  \transpose c' d {
    \key f \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
}

trumpetnotesmidi =  \transpose c' d {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona =  {
    \repeat volta 2 {
        d8\f r8 d8 [ d8 ] |
          d8 [ r8 d8 ] r8 |
          d8 [ r8 a,8 ] r8 |
          d8 [ d8 f8 d8 ] |

        d8 r8 d8 [ d8 ] |
          d8 [ r8 d8 ] r8 |
        d8 r8 a,8 [ cis8 ] |
    }
    \alternative {
        {
              d8 [ a,8 d8 ] r8 |
        }
        {
              d8 [ a,8 d8 ] r8 |
        }
    }
}

trombonesectionb =  {
      a8 [ bes16 a16 ] g8 [ f8 ] |
    e4 f4 |
    g4 c8 [ c8 ] |
      f8 [ c'8 a8 f8 ] |

      f16 [ g16 ] a4 a8 |
      bes8 [ bes8 ] a8 [ f8 ] |
    e8 r8 c8 r8 |
      f8 [ f8 ( e8 d8 ) ] |

      cis8 [ g8 f8 e8 ] |
      d8 [ f8 a8 d'8 ] |
      a8 [ g8 f8 e8 ] |
      d8 [ a,8 f8 d8 ] |

      cis8 [ g8 f8 e8 ] |
      d8 [ f8 a8 d'8 ] |
      a8 [ g8 f8 e8 ] |
      d8 [ a,8 d8 ] r8 |
}

trombonesectionca =  {
    \set countPercentRepeats = ##t
    \repeat percent 2 {   c8 [ r8 c8 ] r8 | }
      f8 [ c8 e8 c8 ] |
    f4 ( c'8.-^ ) f16 |

      e8 [ r8 c8 ] r8 |
      c8 [ c8 f8 ] r8 |
      a8 [ g8 f8 e8 ]
}

trombonesectioncb =  {
      d8 [ a,8 d8 ] r8 |
}

trombonesectioncc =  {
      d8 [ a,8 d8 ] r8 |
}

trombonesectionc =  {
    \repeat volta 2 { \trombonesectionca }
    \alternative { { \trombonesectioncb } { \trombonesectioncc } }
}

trombonesectiond =  {
      f8 [ r8 c8 ] r8 |
      f8 [ f8 ] c8 [ f8 ] |
      f8 [ r8 c8 ] r8 |
      f8 [ f8 ] c8 [ f8 ] |

    f4 c8 [ f8 ] |
    f4 c8 [ f8 ] |
    f4 c8 [ f8 ] |
    f8 f4 f8 |

    \repeat percent 2 {   c8 [ r8 c8 ] r8 | }
      f8 [ f8 ] c8 [ e8 ] |
    f4 c'8. [ f16 ] |

      e16 [ f16 ] g4 c'8 |
      c'16 [ bes16 a16 g16 ] f8. [ f16 ] |
    c4 c8 [ c8 ] |
      d8 [ a,8 d8 ] r8 |
}

trombonenotes =  {
    \key f \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
}

trombonenotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes =  \transpose c c {
    \melody
}

violinnotesmidi =  \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona =  {
    \repeat volta 2 {
          d''8\f [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
          g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
          f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
          d''8 [ d''8 f''8 d''8 ] |
          d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |

          g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
          f''16\trill [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
    }
    \alternative {
        {
            d''4. a'8 |
        }
        {
            d''4. f''8 |
        }
    }
}

pianorightuppersectionb =  {
      a''8 [ bes''16 a''16 ] g''8 [ a''8 ] |
    bes''4 a''4 |

      g''8 [ a''16 g''16 ] d''8 [ e''8 ] |
    f''4. c'''8 |
    < f'' a'' >16 [ < g'' bes'' >16 ] < a'' c''' >4 < a'' c''' >8 |
    < bes'' d''' >8 [ < bes'' d''' >8 ] < c'' c'''>4 |
      g''8 [ fis''16 g''16 ] c'''8 [ < g'' bes'' >8 ] |
    < f'' a'' >4. a''8 |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |

      d''8 [ e''8 f''8 g''8 ] |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. a''8 |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
      d''8 [ e''8 f''8 g''8 ] |

      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
    d''4. f''8 |
}

pianorightuppersectionca =  {
      e''16 [ f''16 ] g''4 g''8 |
      g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
      f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |

    f''4 c'''8. [ f''16 ] |
      e''16 [ f''16 ] g''4 c'''8 |
      c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

pianorightuppersectioncb =  {
      e''16 [ f''16 ] d''4 f''8 |
}

pianorightuppersectioncc =  {
      e''16 [ f''16 ] d''4 f''8 |
}

pianorightuppersectionc =  {
    \repeat volta 2 { \pianorightuppersectionca }
    \alternative { { \pianorightuppersectioncb } { \pianorightuppersectioncc } }
}

pianorightuppersectiond =  {
    a''4. g''16 [ f''16 ] |
    g''16 [ a''16 f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
    g''16 [ a''16 f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |

    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
    g''16 [ a''16 ] f''4 f''8 |
    e''16 [ f''16 ] g''4 g''8 |
    g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |

    f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    f''4 c'''8. [ f''16 ] |
    e''16 [ f''16 ] g''4 c'''8 |
    c'''16 [ bes''16 a''16 g''16 ] f''8. [ f''16 ] |
    f''16 [ c''16 c''16 f''16 ] f''16 [ ( ees''16 ) ees''16 ( d''16 ) ] |
    < d'' f' >4. r8 |
}

%-------------------------------------------------

pianoleftuppersectiona =  {
    \repeat volta 2 {
          d8 [ < f a >8 ] d8 [ < f a >8 ] |
          d8 [ < g bes >8 ] d8 [ < f a >8 ] |
          d8 [ < f a >8 ] a,8 [ < cis g >8 ] |
          d8 [ < f a >8 ] a,8 [ < f a >8 ] |
          d8 [ < f a >8 ] d8 [ < f a >8 ] |

          d8 [ < g bes >8 ] d8 [ < f a >8 ] |
          d8 [ < f a >8 ] a,8 [ < cis g >8 ] |
    }
    \alternative {
        {
            < d f > 8 a,8 [ < d f >8 ] r8 |
        }
        {
            < d f > 8 a,8 [ < d f >8 ] r8 |
        }
    }
}

pianoleftuppersectionb =  {
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      e8 [ < g c' >8 ] f8 [ < a c' >8 ] |

      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < bes d' >8 ] f8 [ < a c' >8 ] |
      e8 [ < g c' >8 ] c8 [ e8 ] |
      f8 [-. f8 ( e8 d8 ] |
      cis8 [-. ) a8-. ] a,8 [-. a8-. ] |

      d8 [ < f a >8 ] a,8 [ < f a >8 ] |
      cis8 [-. a8-. ] a,8 [-. a8-. ] |
      d8 [ ( a,8 ] f8 [ d8 ) ] |
      cis8 [-. a8-. ] a,8 [-. a8-. ] |
      d8 [ < f a >8 ] a,8 [ < f a >8 ] |

      cis8 [-. a8-. ] a,8 [-. a8-. ] |
      d8 [ a,8 d,8 ] r8 |
}

pianoleftuppersectionca =  {
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      f8 [ < a c' >8 ] c8 [ < e g bes >8 ] |

      f8 [ < a c' >8 ] f8 [ < a c' >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] f8 [ < a c' >8 ] |
      a,8 [ < cis e g >8 ] a,8 [ < cis e g >8 ] |
}

pianoleftuppersectioncb =  {
      d8 [ a,8 < d f >8 ] r8 |
}

pianoleftuppersectioncc =  {
      d8 [ a,8 < d f >8 ] r8 |
}

pianoleftuppersectionc =  {
    \repeat volta 2 { \pianoleftuppersectionca }
    \alternative { { \pianoleftuppersectioncb } { \pianoleftuppersectioncc } }
}

pianoleftuppersectiond =  {
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |

      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |

      f8 [ < a c' >8 ] c8 [ < e g bes >8 ] |
      f8 [ < a c' >8 ] f8 [ < a c' >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] f8 [ < a c' >8 ] |
      c8 [ < ees g a >8 ] c8 [ < ees g a >8 ] |
      d8 [ a,8 d,8 ] r8 |
}

%-------------------------------------------------

pianorightuppernotes =  {
    \key f \major
    \time 2/4
%    \stemUp
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
}

pianorightlowernotes =  {
    \key f \major
    \time 2/4
    \stemDown
}

pianoleftuppernotes =  {
    \key f \major
    \time 2/4
%    \stemUp
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
}

pianoleftlowernotes =  {
    \key f \major
    \time 2/4
    \stemDown
}

pianorightnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

pianoleftnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 hhc >> hhc4 | << sna4 hhc >> hhc4 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighextraintro
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda4 | bda4 bda4 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowextraintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min |
    g4:min d4:min |
    s4 a4:7 |
    d2:min |
}

previewnotes = {
    \key f \major
    \time 2/4
    d''8 f''16 f''16 f''16 f''16 f''16 f''16 |
    g''16 ( f''16 g''16 a''16 ) f''4 |
    f''16 ( e''16 d''16 e''16 ) f''16 g''16 f''16 e''16 |
    d''8 d''8 f''8 d''8 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \bassnotes }

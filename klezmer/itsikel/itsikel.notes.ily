\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This file is built from a template file that
% introduces the basic structure of piece for a
% small ensemble.  The instruments regularly seen
% are here and the basic structure of klezmer
% orchestration is represented.

% A common way to fill this in is to identify each
% of the parts according to the role it fills in
% piece.  The parts are then assigned to
% instruments as necessary.

% Within each part it may be appropriate to
% divide up into sections so that the midi can
% better represent jumps "del segno" and jumps to
% codas.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmsectiona =  {
    \markA \positionA
    \repeat volta 2 {
        s2 | \breakAone
        s2 | \breakAtwo
        s2 | \breakAtre
        s2 | \breakAfor
        s2 | \breakAfiv
        s2 | \breakAsix
        s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \breakA
    \bar ".|:-||"
}

bandmsectionb =  {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone
        s2 | \breakBtwo
        s2 | \breakBtre
        s2 | \breakBfor
        s2 | \breakBfiv
        s2 | \breakBsix
        s2 | \breakBsev
        s2 | \breakBeit
        s2 | \breakBnin
        s2 | \breakBten
        s2 | \breakBelv
        s2 | \breakBtwl
        s2 | \breakBtht
        s2 | \breakBfrt
        s2 | \breakBfft
    }
    \alternative {
        { s2 | \breakBsxt }
        { s2 | }
    }
    \markDC \positionDC
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  {
    s2 |
}

metronomeextraintro =  {
    s2 | s2 |
}

metronomesectiona =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

metronomesectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 100
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb

    \tempo 4 = 105
    \metronomesectiona
    \metronomesectionb
    \metronomesectiona
    \metronomesectionb

    \tempo 4 = 100
    \metronomesectiona
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro =  {
    s2 | s2 |
}

melodysectiona =  {
    \repeat volta 2 {
        a'16\f d''16 f''16 d''16 d''16 f''16 a''16 f''16 |
        g''8 g''16 f''16 g''16 a''16 f''8 |
        f''16 a''16 c'''16 a''16 f''16 a''16 c'''16 f''16 |
        g''8 g''16 f''16 g''16 a''16 f''8 |

        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
        d''4 d''16 g''16 f''8 |
        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

melodysectionb =  {
    \repeat volta 2 {
        d''4. c''16 bes'16 |
        a'4. a'8 |
        d''16 a'16 d''16 a'16 d''8 c''16 bes'16 |
        a'4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8 c''16 bes'16 |
        a'4 r8 a''8 |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8 g''8 |
        g''16 d''16 d''16 g''16 g''16 d''16 d''16 g''16 |
        g''16 d''16 d''16 g''16 g''8 f''8 |

        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
        d''4 d''16 bes''16 a''16 g''16 |
        f''16 g''16 g''16 f''16 f''16 e''16 e''16 d''16 |
    }
    \alternative {
        {
            d''4. a''8 |
        }
        {
            d''4. r8 |
        }
    }
}

melody =  {
    \key d \minor
    \time 2/4
    \melodysectiona
    \melodysectionb
}

melodymidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb

    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb

    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro =  {
    s2 | s2 |
}

tenorharmonysectiona =  {
    \repeat volta 2 {
        g'8 b'8 b'8 e''16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 d''16 |
        b'8 g'16 d''16 b'8 g'16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 g'16 a'16 b'16 c''16 b'16 g'16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
    }
}

tenorharmonysectionb =  {
    \repeat volta 2 {
        g'16 e'16 b'16 a'16 g'8 a'8 |
        g'16 e'16 g'16 e'16 g'8 r8 |
        g'8 g'8 g'16 e'16 d''16 c''16 |
        g'16 ( e'16 ) e'16 ( fis'16 ) g'8 r8 |

        g'16 b'16 g'16 b'16 g'8 r8 |
        r16 b'16 b'16 b'16 b'8 r8 |
        g'8 g'8 a'16 c''16 b'16 a'16 |
        g'16 fis'16 e'16 fis'16 g'8 d''8-^ |

        b'4 d''8 d''16 e''16 |
        d''4 d''8-\trill ( c''8 ) |
        c''8 r8 c''8 r8 |
        c''4 c''8 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'16 e'16 g'16 a'16 b'16 a'16 b'16 c''16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'8 e'8-^ g'8-^ b'8-^ |
        }
        {
            g'8 r8 g'8 r8 |
        }
    }
}

tenorharmony =  \transpose c bes, {
    \key e \minor
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
}

tenorharmonymidi =  \transpose c bes, {
    \key e \minor
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb

    \tenorharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro =  {
    s2 | s2 |
}

altoharmonysectiona =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

altoharmonysectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

altoharmony =  {
    \key d \minor
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
}

altoharmonymidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiona
    \altoharmonysectionb

    \altoharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro =  {
    s2 | s2 |
}

countersectiona =  {
    \repeat volta 2 {
        d2\ff |
        bes4 bes8 a8 |
        f2 |
        bes4 bes8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 a8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 a8 d8 r8 |
        }
        {
            d'8 a8 d8 r8 |
        }
    }
}

countersectionb =  {
    \repeat volta 2 {
        d4. c'16 bes16 |
        a8 d8 f8 a8 |
        d'8 d'8 a8 d'8 |
        f'8 d'8 a8 f8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d'4 bes4 |
        a4 r8 a8 |

        f4 a8 c'8 |
        c'4 ( bes4 ) |
        c'4 d'8 g8 |
        c4 f8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 f8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 d8 ( a8 f8 ) |
        }
        {
            d'8 r8 d8-^ r8 |
        }
    }
}

counter =  \transpose c c' {
    \key d \minor
    \time 2/4
    \countersectiona
    \countersectionb
}

countermidi =  \transpose c c' {
    \key d \minor
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb

    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb

    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro =  {
    s2 | s2 |
}

basslinesectiona =  {
    \repeat volta 2 {
        d4 a,4 |
        g,4 d4 |
        f4 c4 |
        e4 c4 |

        cis4 a,4 |
        d4 a,4 |
        cis4 a,4 |
    }
    \alternative {
        {
            d4-> d4-> |
        }
        {
            d4-> d4-> |
        }
    }
}

basslinesectionb =  {
    \repeat volta 2 {
        d4 a8 d'8 |
        r8 a8 d'8 a8 |
        d4 a8 d'8 |
        r8 a8 d'8 a8 |

        d4 a8 d'8 |
        r8 a8 d'8 a8 |
        d4 g8 d'8 |
        r8 a8 d'8 a8 |

        f4 c4 | f4 g4 |
        c4 g4 | c4 f4 |

        cis4 a,4 | d4 a,4 |
        cis4 a,4 |
    }
    \alternative {
        { d8 d'8 a8 f8 | }
        { d8 r8 d'8 r8 | }
    }
}

bassline =  {
    \key d \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionb
}

basslinemidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb

    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb

    \basslinesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro =  {
    s2 | s2 |
}

guitarsectiona =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
}

guitarsectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

guitarnotes =  {
    \key d \minor
    \time 2/4
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb

    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb

    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro =  {
    s2 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min | g2:min | f2 | c2:7 |
        a2:7 | d2:min | a2:7 |
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

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2:min |
        \chordChangesOn
        d2:min | d2:min | d2:min |
        d2:min | d2:min | d4:min g4:min | d2:min |
        f2 | f4 g4:min | c2:7 | c4:7 f4 |
        a2:7 | d2:min | a2:7 |
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

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
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

flutenotes =  \transpose c c {
    \melody
}

flutenotesmidi =  \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  {
    s2 | s2 |
}

clarinetsectiona =  \transpose bes c' {
    \repeat volta 2 {
        a'16\ff ( d''16 ) f''16 d''16 d''16 ( f''16 ) a''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |
        f''16 ( a''16 ) c'''16 a''16 f''16 ( a''16 ) c'''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( g''16 f''8 ) |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a'8 | } }
}

clarinetsectionb =  \transpose bes c' {
    \repeat volta 2 {
        d''4. c''16 bes'16 |
        a'4. a'8 |
        d''16 ( a'16 ) d''16 ( a'16 ) d''8 c''16 bes'16 |
        a'4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8 c''16 ( bes'16 ) |
        a'4 r8 a''8-^ |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8-\trill ( g''8 ) |
        g''16 ( d''16 ) d''16 ( g''16 ) g''16 ( d''16 ) d''16 ( g''16 ) |
        g''16 ( d''16 ) d''16 ( g''16 ) g''8-\trill ( f''8 ) |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 bes''16 a''16 g''16 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative {
        {
            d''8 d''8-^ f''8-^ a''8-^ |
        }
        {
            d''8 r8 d''8 r8 |
        }
    }
}

clarinetnotes =  {
    \key e \minor
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi =  {
    \key e \minor
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb

    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  {
    s2 | s2 |
}

tenorsaxsectiona =  {
    \repeat volta 2 {
        g'8 b'8 b'8 e''16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 d''16 |
        b'8 g'16 d''16 b'8 g'16 b'16 |
        c''8 c''16 b'16 c''16 d''16 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 g'16 a'16 b'16 c''16 b'16 g'16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
        {
            g'16 e'16 b'16 a'16 g'8 r8 |
        }
    }
}

tenorsaxsectionb =  {
    \repeat volta 2 {
        g'16 e'16 b'16 a'16 g'8 a'8 |
        g'16 e'16 g'16 e'16 g'8 r8 |
        g'8 g'8 g'16 e'16 d''16 c''16 |
        g'16 ( e'16 ) e'16 ( fis'16 ) g'8 r8 |

        g'16 b'16 g'16 b'16 g'8 r8 |
        r16 b'16 b'16 b'16 b'8 r8 |
        g'8 g'8 a'16 c''16 b'16 a'16 |
        g'16 fis'16 e'16 fis'16 g'8 d''8-^ |

        b'4 d''8 d''16 e''16 |
        d''4 d''8-\trill ( c''8 ) |
        c''8 r8 c''8 r8 |
        c''4 c''8 b'16 g'16 |

        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
        g'16 e'16 g'16 a'16 b'16 a'16 b'16 c''16 |
        b'16 ( c''16 ) c''16 ( b'16 ) b'16 ( a'16 ) a'16 ( g'16 ) |
    }
    \alternative {
        {
            g'8 e'8-^ g'8-^ b'8-^ |
        }
        {
            g'8 r8 g'8 r8 |
        }
    }
}

tenorsaxnotes =  {
    \key e \minor
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorsaxnotesmidi =  {
    \key e \minor
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb

    \tenorsaxsectiona
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s2 | s2 |
}

altosaxsectiona =  \transpose ees c {
    \repeat volta 2 {
        a'16\f ( d''16 f''16 d''16 ) d''16 ( f''16 a''16 f''16 ) |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |
        f''16 ( a''16 c'''16 a''16 ) f''16 ( a''16 c'''16 f''16 ) |
        g''8 g''16 ( f''16 ) g''16 ( a''16 f''8 ) |

        f''16 ( g''16 g''16 f''16 ) f''16 ( e''16 e''16 d''16 ) |
        d''4 d''16 ( g''16 f''8 ) |
        f''16 ( g''16 g''16 f''16 ) f''16 ( e''16 e''16 d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

altosaxsectionb =  \transpose ees c {
    \repeat volta 2 {
        d'''4. c'''16 bes''16 |
        a''4. a''8 |
        d'''16 ( a''16 d'''16 a''16 ) d'''8-\trill c'''16 bes''16 |
        a''4. a''8 |

        d'''4. c'''8 |
        e'''4. d'''8 |
        d'''16 ( a''16 d'''16 a''16 ) d'''8-\trill c'''16 bes''16 |
        a''4 r8 a''8-> |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8-\trill g''8 |
        g''16 ( d''16 d''16 g''16 ) g''16 ( d''16 d''16 g''16 ) |
        g''16 ( d''16 d''16 g''16 ) g''8-\trill f''8 |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 bes''16 a''16 g''16 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative {
        {
            d''8 d''8 f''8 a''8 |
        }
        {
            d''4. r8 |
        }
    }
}

altosaxnotes =  {
    \key b \minor
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
}

altosaxnotesmidi =  {
    \key b \minor
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb

    \altosaxsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro =  {
    s2 | s2 |
}

trumpetsectiona =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        {
            s2 |
        }
        {
            s2 |
        }
    }
}

trumpetsectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        {
            s2 |
        }
        {
            s2 |
        }
    }
}

trumpetnotes =  {
    \key e \minor
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotes = \transpose c c, { \clarinetnotes }

trumpetnotesmidi =  {
    \key e \minor
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb

    \trumpetsectiona
}

trumpetnotesmidi = \transpose c c, { \clarinetnotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro =  {
    s2 | s2 |
}

trombonesectiona =  {
    \repeat volta 2 {
        d2\ff |
        bes4 bes8 a8 |
        f2 |
        bes4 bes8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 a8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 a8 d8 r8 |
        }
        {
            d'8 a8 d8 r8 |
        }
    }
}

trombonesectionb =  {
    \repeat volta 2 {
        d4. c'16 bes16 |
        a8 d8 f8 a8 |
        d'8 d'8 a8 d'8 |
        f'8 d'8 a8 f8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d'4 bes4 |
        a4 r8 a8 |

        f4 a8 c'8 |
        c'4 ( bes4 ) |
        c'4 d'8 g8 |
        c4 f8 a8 |

        a4 a8 a8 |
        d'8 a8 f8 f8 |
        a4 a8 a8 |
    }
    \alternative {
        {
            d'8 d8 ( a8 f8 ) |
        }
        {
            d'8 r8 d8-^ r8 |
        }
    }
}

trombonenotes =  {
    \key d \minor
    \time 2/4
    \trombonesectiona
    \trombonesectionb
}

trombonenotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb

    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb

    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro =  {
    s2 | s2 |
}

violinsectiona =  {
    \repeat volta 2 {
        a'16\f ( d''16 ) f''16 d''16 d''16 ( f''16 ) a''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 ) f''8 |
        f''16 ( a''16 ) c'''16 a''16 f''16 ( a''16 ) c'''16 f''16 |
        g''8 g''16 ( f''16 ) g''16 ( a''16 ) f''8 |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( g''16 ) f''8 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative { { d''4 r8 a'8 | } { d''4 r8 a''8 | } }
}

violinsectionb =  {
    \repeat volta 2 {
        d'''4. c'''16 bes''16 |
        a''4. ( a''8 ) |
        d'''16 a''16 d'''16 a''16 d'''8 c'''16 bes''16 |
        a''4. ( a''8 ) |

        d'''4. ( c'''8 ) |
        e'''4. ( d'''8 ) |
        d'''16 a''16 d'''16 a''16 d'''8 c'''16 bes''16 |
        a''4 r8 a''8^\upbow_3 |

        f''16 g''16 a''16 bes''16 a''16 bes''16 a''16 bes''16 |
        a''16 bes''16 a''16 bes''16 a''8-\trill g''8 |
        g''16 ( d''16 ) d''16 ( g''16 ) g''16 ( d''16 ) d''16 ( g''16 ) |
        g''16 ( d''16 ) d''16 g''16 g''8-\trill f''8 |

        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
        d''4 d''16 ( bes''16 ) a''16 g''16 |
        f''16 ( g''16 ) g''16 ( f''16 ) f''16 ( e''16 ) e''16 ( d''16 ) |
    }
    \alternative {
        {
            d''4. a''8 |
        }
        {
            d''4. r8 |
        }
    }
}

violinnotes =  {
    \key d \minor
    \time 2/4
    \violinsectiona
    \violinsectionb
}

violinnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb

    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb

    \violinsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
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

pianorightupperextraintro =  {
    f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 | d'8 r8 < f' a' d'' >8-> r8 |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        a16\ff d'16 f'16 d'16 d'16 f'16 a'16 f'16 |
        << { g'8 g'16 f'16 g'16 a'16 f'8 } \\ { bes4 bes8 a8 } >> |
        f'16 a'16 c''16 a'16 f'16 a'16 c''16 f'16 |
        << { g'8 g'16 f'16 g'16 a'16 f'8 } \\ { bes4 bes8 a8 } >> |

        f'16-3 g'16-4 g'16 f'16 f'16 e'16 e'16 d'16 |
        d'4 d'16 ( g'16 f'8 ) |
        f'16-3 g'16-4 g'16 f'16 f'16 e'16 e'16 d'16 |
    }
    \alternative { { d'4 r8 a8 | } { d'4 r8 a'8 | } }
}

pianorightuppersectionb =  {
    \repeat volta 2 {
        < f' d'' >4. c''16 bes'16 |
        < f' a' >4. a'8 |
        d''16 a'16 d''16 a'16 d''8-\trill c''16 bes'16 |
        < a' f' >4. a'8 |

        d''4. c''8 |
        e''4. d''8 |
        d''16 a'16 d''16 a'16 d''8-4 c''16 bes'16 |
        < f' a' >4 r8 a'8-> |

        f'16 g'16 a'16 bes'16 a'16 bes'16 a'16 bes'16 |
        a'16 bes'16 a'16 bes'16 a'8-\trill g'8 |
        g'16 ( d'16 d'16 g'16 g'16 d'16 d'16 g'16 ) |
        g'16 ( d'16 d'16 g'16 ) g'8-\trill f'8 |

        f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 |
        d'4 d'16 ( g'16 f'8 ) |
        f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 |
    }
    \alternative {
        {
            d'8-. d'8 f'8 a'8 |
        }
        {
            d'8 r8 < f' a' d'' >8-> r8 |
        }
    }
}

pianorightuppernotes =  {
    \key d \minor
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro =  {
    a,8 < cis g >8 a,8 < cis g >8 | < d f >8 r8 < d d, >8-> r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        d,8 d8 a,8 d8 |
        d,8 d8 a,8 d8 |
        f,8 f8 c8 f8 |
        << { c,8 c8 c8 f,8 } \\ { c,4. f,8 } >> |

        a,8 < cis g >8 a,8 < cis g >8 |
        d8 < f a >8 < f a >8 < f a >8 |
        a,8 < cis g >8 a,8 < cis g >8 |
    }
    \alternative {
        {
            < d f >8 a,8 < d f >8 r8 |
        }
        {
            < d f >8 a,8 < d f >8 r8 |
        }
    }
}

pianoleftuppersectionb =  {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 < g-3 bes-2 >8 d'8 |
        d8 d'8 a8 d'8 |

        f8 < a c' >8 f8 < a c' >8 |
        f8 < a c' >8 bes,8 < d g >8 |
        c8 < e bes >8 c8 < e bes >8 |
        c8 < e bes >8 f8 < a c' >8 |

        a,8 < cis g >8 a,8 < cis g >8 |
        d8 < f a >8 < f a >8 < f a >8 |
        a,8 < cis g >8 a,8 < cis g >8 |
    }
    \alternative {
        { < d f >8-. d8 a8 f8 | }
        { < d f >8 r8 < d d, >8-> r8 | }
    }
}

pianoleftuppernotes =  {
    \key d \minor
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb

    \pianorightuppersectiona
}

pianoleftnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb

    \pianoleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro =  {
    f'16 g'16 g'16 f'16 f'16 e'16 e'16 d'16 | d'8 r8 < f' a' d'' >8-> r8 |
}

accordionrightuppersectiona =  {
    \repeat volta 2 {
        a16\ff d'16 f'16 d'16 d'16 f'16 a'16 f'16 |
        g'8 g'16 f'16 g'16 a'16 f'8 |
        f'16 a'16 c''16 a'16 f'16 a'16 c''16 f'16 |
        g'8 g'16 f'16 g'16 a'16 f'8 |

        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
        d'4 d'16 ( g'16 f'8 ) |
        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
    }
    \alternative { { d'4. a8 | } { d'4. a'8 | } }
}

accordionrightuppersectionb =  {
    \repeat volta 2 {
        < f' d'' >4. c''16 bes'16 |
        < f' a' >4. a'8 |
        d''16 a'16 d''16 a'16 d''8-\prall ( c''16 ) bes'16 |
        a'4. a'8 |

        < f' a' d'' >4. < f' a' c'' >8 |
        < f' a' e'' >4. d''8 |
        d''16 a'16 d''16 a'16 d''8-\prall ( c''16 ) bes'16 |
        a'4 r8 a'8-> |

        f'16 g'16 a'16 bes'16 a'16 bes'16 a'16 bes'16 |
        a'16 bes'16 a'16 bes'16 a'8-\prall ( g'8 ) |
        g'16 ( d'16 ) d'16 ( g'16 ) g'16 ( d'16 ) d'16 ( g'16 ) |
        g'16 ( d'16 ) d'16 ( g'16 ) g'8-\prall ( f'8 ) |

        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
        d'4 d'16 ( g'16 f'8 ) |
        f'16 ( g'16 ) g'16 ( f'16 ) f'16 ( e'16 ) e'16 ( d'16 ) |
    }
    \alternative {
        {
            d'8 \< d'8^> f'8^> a'8^> \! |
        }
        {
            d'8 r8 < f' a' d'' >8-> r8 |
        }
    }
}

accordionrightuppernotes =  {
    \key d \minor
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
}

%-------------------------------------------------

accordionrightlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro =  {
    a,8 a8^"7" a,8 a8 | < d, d' >8^"m" a,8 < d, d' >8 r8 |
}

accordionleftuppersectiona =  {
    \repeat volta 2 {
        d,8 d'8^"m" d,8 d'8 |
        g,8 g8^"m" g,8^"B.S." d,8_2 |
        f,8 f8^"M" f,8 f8 |
        c8 c'8^"7" < c c' >8 < f, f >8^"M" |

        a,8 a8^"7" a,8 a8 |
        d,8 d'8^"m" d'8 d'8 |
        a,8 a8^"7" a,8 a8 |
    }
    \alternative {
        { < d, d' >8^"m" a,8 < d, d' >8 r8 | }
        { < d, d' >8^"m" a,8 < d, d' >8 r8 | }
    }
}

accordionleftuppersectionb =  {
    \repeat volta 2 {
        d,8 d'8^"m" d,8 g8^"m" |
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 g,8 g8^"m" |
        d,8 d'8^"m" a,8 d'8 |

        d,8 d'8 a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8^"m" g,8 g8^"m" |
        d,8 d'8^"m" d,8^"B.S." c8_> |

        f,8 f8^"M" c8 f8 |
        f,8 f8 bes,8_4 g8_2^"m" |
        c8 c'8^"7" e,8_- c'8 |
        c8 c'8^"7" < c c' >8 < f, f >8^"M" |

        a,8 a8^"7" a,8 a8 |
        d,8 d'8^"m" d'8 d'8 |
        a,8 a8^"7" a,8 a8 |
    }
    \alternative {
        { < d, d' >8^"m" r8 r4 | }
        { < d, d' >8^"m" r8 < d, d' >8-> r8 | }
    }
}

accordionleftuppernotes =  {
    \key d \minor
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
}

%-------------------------------------------------

accordionleftlowernotes =  {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectiona
    \accordionrightuppersectionb

    \accordionrightuppersectiona
}

accordionleftnotesmidi =  {
    \key d \minor
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiona
    \accordionleftuppersectionb

    \accordionleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    << sna4 cymr4 >> r8 cymc8 |
}

drumshighsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 {
          << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
          sna16 sna16 cymr8 << cymr8 sna >> sna16 sna16 |
        }

        << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
    }
    \alternative {
        {
            << cymr8 sna >> sna16 sna16 r8 cymc8 |
        }
        {
            << cymr8 sna >> sna16 sna16 r8 cymc8 |
        }
    }
}

drumshighsectionb = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 {
          << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
          r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        }

        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
        << sna4 cymr4 >> r8 cymc8 |

        \repeat percent 3 {
          << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
          r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        }

        << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    }
    \alternative {
        {
            << sna4 cymr4 >> r8 cymc8 |
        }
        {
            << sna4 cymr4 >> r8 cymc8 |
        }
    }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectiona
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 {
        \repeat percent 3 {
          bda4 bda8 bda8 ~ |
          bda8 bda8 bda4 |
        }
        bda4 bda8 bda8 ~ |
    }
    \alternative { { bda8 s8 s4 | } { bda8 s8 s4 | } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \repeat percent 3 {
          bda4 bda8 bda8 | s8 bda8 bda4 |
        }
        bda4 bda8 bda8 | bda4 s8 s8 |

        \repeat percent 3 { bda4 bda8 bda8 | s8 bda8 bda4 | }
        bda4 bda8 bda8 |
    }
    \alternative {
        { bda8 s8 s4 | }
        { bda8 s8 s4 | }
    }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | g2:min | f2 | c2:7 |
}

previewnotes = {
    \key d \minor
    \time 2/4
    a'16 d''16 f''16 d''16 d''16 f''16 a''16 f''16 |
    g''8 g''16 f''16 g''16 a''16 f''8 |
    f''16 a''16 c'''16 a''16 f''16 a''16 c'''16 f''16 |
    g''8 g''16 f''16 g''16 a''16 f''8 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

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

bandmintro = {
    \tempo \tempostring
    s2 |
}

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone
        s2 | \breakAtwo
        s2 | \breakAtre
        s2 | \breakAfor
        s2 | \breakAfiv
        s2 | \breakAsix
        s2 | \breakAsev
        s2 | \breakAeit
        s2 | \breakAnin
        s2 | \breakAten
        s2 | \breakAelv
        s2 | \breakAtwl
        s2 | \breakAtht
        s2 | \breakAfrt
        \bar "||" \markTC \positionTC
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
    \bar ".|:-||" \breakA
}

bandmsectionb = {
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
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
    \bar ".|:-||" \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone
        \grace { s16 s16 } s2 | \breakCtwo
        s2 | \breakCtre
        s2 | \breakCfor
        s2 | \breakCfiv
        \grace { s16 s16 } s2 | \breakCsix
        s2 | \breakCsev
        s2 | \breakCeit
        s2 | \breakCnin
        \grace { s16 s16 } s2 | \breakCten
        s2 | \breakCelv
        s2 | \breakCtwl
        s2 | \breakCtht
        s2 | \breakCfrt
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
    \bar "||" \breakC
    \markDS \positionDS
}

blankmeasure = { \stopStaff s2 \startStaff }

bandmcoda = { \markCC \positionCC \grace { s16 s16 s16 } s2 | s2 }

bandmNV = {
    \time 2/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = { s2 | }

metronomeextraintro = { s2 | s2 | s2 | s2 | }

metronomesectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

metronome = \context Voice = "metronome" {
    \time 2/4

    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc

    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc

    \tempo 4 = 120
    \metronomesectionaa
    \bandmcoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = {
    s2 | s2 | s2 | s8 g'8 a'8 b'8 |
}

melodyintro = { s8 g'8\f a'8 b'8 | }

melodysectionaa = {
    c''2 ~ |
    c''8 c''16 ( e''16 d''8 c''8 ) |
    e''2 ~ |
    e''8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 c'''8 b''8 a''8 |
    g''8 f''8 e''8 d''8 |
    c''2 ~ |
    c''8 c''16 ( e''16 d''8 c''8 ) |
    e''2 ~ |
    e''8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

melodysectionab = {
    c''2 ~ |
    c''8 g'8 a'8 b'8 |
}

melodysectionac = {
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

melodysectiona = {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionb = {
    \repeat volta 2 {
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        g''2 ( |
        c'''4. ) r8 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        d''8 e''8 f''8 g''8 |
        e''8 c''8 d''8 b'8 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c''8 c''8 b'8 |
        }
    }
}

melodysectionc = {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        a''4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            a'2 ~ |
            a'8 c''8 c''8 b'8 |
        }
        {
            a'2 ( |
            g'8 ) g'8 a'8 b'8 |
        }
    }
}

melodycoda = {
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''8 r8 g''8 r8 |
    c''2-\fermata |
}

melody = {
    \key c \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \blankmeasure
    \melodycoda
}

melodymidi = {
    \key c \major
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = { s2 | s2 | s2 | s2 | }

tenorharmonyintro = { s2 | }

tenorharmonysectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

tenorharmonysectionab = { s2 | s2 | }

tenorharmonysectionac = { s2 | s2 | }

tenorharmonysectiona = {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

tenorharmonysectionc = {
    \repeat volta 2 {
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

tenorharmonycoda = { \grace { s16 s16 s16 } s2 | s2 | }

tenorharmony = \transpose c bes, {
    \key d \major
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi = \transpose c bes, {
    \key d \major
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectionaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = { s2 | s2 | s2 | s2 | }

altoharmonyintro = { s2 | }

altoharmonysectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

altoharmonysectionab = { s2 | s2 | }

altoharmonysectionac = { s2 | s2 | }

altoharmonysectiona = {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \altoharmonysectionac } }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

altoharmonysectionc = {
    \repeat volta 2 {
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

altoharmonycoda = { \grace { s16 s16 s16 } s2 | s2 | }

altoharmony = {
    \key c \major
    \time 2/4
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \blankmeasure
    \altoharmonycoda
}

altoharmonymidi = {
    \key c \major
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectionaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro = {
    s2 | s2 | s2 | s2 |
}

counterintro = { s2 | }

countersectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

countersectionab = { s2 | s2 | }

countersectionac = { s2 | s2 | }

countersectiona = {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

countersectionc = {
    \repeat volta 2 {
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

countercoda = { \grace { s16 s16 s16 } s2 | s2 | }

counter = {
    \key c \major
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \blankmeasure
    \countercoda
}

countermidi = {
    \key c \major
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectionaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro = {
    c4 g8 c'8 ~ | c'8 g8 c'8 g8 | c4 g8 c'8 ~ | c'8 s8 s8 s8 |
}

basslineintro = { s8 r8 r4 | }

basslinesectionaa = {
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    g,4 d4 |
    c4 g,4 |
    c8 c'8 b8 a8 |
    g8 r8 g,4-> |
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    g,4 d4 |
    c4 g,4 |
}

basslinesectionab = {
    c8 c'8 g8 e8 |
    c8 g,8 a,8 b,8 |
}


basslinesectionac = {
    c8 c'8 g8 e8 |
    c8 r8 r4 |
}

basslinesectiona = {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionb = {
    \repeat volta 2 {
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c8 c'8 g8 c'8 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        g,4 d4 |
        c8 g8 g,8 g8 |
    }
    \alternative {
        {
            c4 g,4 |
            c8 c'8 g8 e8 |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 e4-> |
        }
    }
}

basslinesectionc = {
    \repeat volta 2 {
        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        a,4 e4 |
    }
    \alternative {
        {
            a,8 ( e8 c8 b,8 |
            a,8 ) r8 a4_> |
        }
        {
            a,8 ( e8 c8 a,8 |
            g,8 ) r8 g4_> |
        }
    }
}

basslinecoda = { \grace { s16 s16 s16 } c'8 r8 g8 r8 | c2-\fermata | }

bassline = {
    \key c \major
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \blankmeasure
    \basslinecoda
}

basslinemidi = {
    \key c \major
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectionaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = { s2 | s2 | s2 | s2 | }

guitarintro = { s2 | }

guitarsectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 |
}

guitarsectionab = { s2 | s2 | }

guitarsectionac = { s2 | s2 | }

guitarsectiona = {
    \repeat volta 2 { \guitarsectionaa }
    \alternative { { \guitarsectionab } { \guitarsectionac } }
}

guitarsectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

guitarsectionc = {
    \repeat volta 2 {
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | \grace { s16 s16 } s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

guitarcoda = { \grace { s16 s16 s16 } s2 | s2 | }

guitarnotes = {
    \key c \major
    \time 2/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectionaa
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = {
    s2 | s2 | s2 | s2 |
}

chordlettersintro = { s2 | }

chordletterssectionaa = \chordmode {
    c2 | c2 | c2 | c2 | g2:7 | c4 g4:7 | c2 | g2:7 |
    c2 | c2 | c2 | c2 | g2:7 | c4 g4:7 |
}

chordletterssectionab = \chordmode { c2 | c4 g4:7 | }

chordletterssectionac = \chordmode { c2 | c2 | }

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff c2 \chordChangesOn | c2 | c2 | c2 |
        c2 | c2 | c2 | c2 |
        c2 | c2 | c2 | c2 | g2:7 | c4 g4:7 |
    }
    \alternative {
        { c2 | c2 | }
        { \chordChangesOff c2 \chordChangesOn | c4 e4:7 | }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        a2:min | \grace { s16 s16 } a2:min | a2:min | a2:min |
        a2:min | \grace { s16 s16 } a2:min | a2:min | a2:min |
        a2:min | \grace { s16 s16 } a2:min | a2:min | a2:min |
        a2:min | s4 e4:7 |
    }
    \alternative { { a2:min | s4 e4:7 | } { a2:min | g2:7 | } }
}

chordletterscoda = \chordmode { \grace { c8. } c4 g4:7 | c2 | }

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \blankmeasure
    \grace { c8. } c4 g4:7 | c2 |
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c {
    \melody
}

flutenotesmidi = \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = {
    s2 | s2 | s2 | s2 |
}

clarinetintro = \transpose bes c' { s8 g'8\ff a'8 b'8 | }

clarinetsectionaa = \transpose bes c' {
    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |

    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 c'''8 b''8 a''8 |
    g''8 f''8 e''8 d''8 |

    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

clarinetsectionab = \transpose bes c' {
    c''2 ~ |
    c''8 g'8 a'8 b'8 |
}


clarinetsectionac = \transpose bes c' {
    c''2 ~ |
    c''8 c''8 e''8 g'8 |
}

clarinetsectiona = {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionb = \transpose bes c' {
    \repeat volta 2 {
        a''8 \grace { s16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 g''8 ) g''4 |
        fis''8 \grace { s16 } g''8 r8 g''8 |
        g''16 ( f''16 e''8 ) e''4 |
        a''8 \grace { s16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        g''2 ( |
        c'''4. ) r8 |
        a''8 \grace { s16 } bes''8 r8 bes''8 |
        bes''16 a''16 g''8 g''4 |
        fis''8 \grace { s16 } g''8 r8 g''8 |
        g''16 f''16 e''8 e''4 |
        d''8 e''8 f''8 g''8 |
        e''8 c''8 d''8 b'8 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c''8 c''8 b'8 |
        }
    }
}

clarinetsectionc = \transpose bes c' {
    \repeat volta 2 {
        a'4. e''8 |
        \grace { s16 s16 } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        a''4.-> ) r8 |
        a'4. e''8 |
        \grace { s16 s16 } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            a'2 ~ |
            a'8 c''8 c''8 b'8 |
        }
        {
            a'2 ( |
            g'8 ) g'8 a'8 b'8 |
        }
    }
}

clarinetcoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-^-\fermata |
}

clarinetnotes = {
    \key d \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = {
    s2 | s2 | s2 | s2 |
}

tenorsaxintro = { s8 r8 r4 | }

tenorsaxsectionaa = {
    fis'8\ff a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    fis'8 r8 r4 |
    d''8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    d''4 a'8 fis'8 |
    a'2 |
    a'4 g'4 |
    fis'8 fis''8 e''8 d''8 |
    cis''8 b'8 a'8 g'8 |
    fis'8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    fis'8 r8 r4 |
    d''8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    d''4 a'8 fis'8 |
    g'8 a'8 b'8 cis''8 |
    a'4 g'4 |
}

tenorsaxsectionab = {
    fis'8 a'4 fis'8 |
    d'8 a'8 g'8 g'8 |
}


tenorsaxsectionac = {
    fis'8 d'8 fis'8 a'8 |
    fis'8 a'8 d''8 fis''8 |
}

tenorsaxsectiona = {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        gis''8 a''8 d''4-^ |
        a''16 ( g''16 fis''8 ) fis''8 d''8 |
        eis''8 fis''8 a'4-^ |
        fis''16 ( e''16 d''8 ) d''8 fis''8 |
        gis''8 a''8 r8 a''8 |
        \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { eis''8 ( fis''8 g''8 ) } |
        fis''4 d''4 |
        r8 a''8 a''8 a''8 |
        gis''8 a''8 d''4-^ |
        a''16 g''16 fis''8 fis''8 d''8 |
        eis''8 fis''8 a'4-^ |
        fis''16 e''16 d''8 d''8 a'8 |
        g'8 a'8 b'8 cis''8 |
        a'4 g'4 |
    }
    \alternative {
        {
            fis'4 fis'8 a'8 |
            fis'8 a'8 d''8 fis''8 |
        }
        {
            fis'4 fis'8 a'8 |
            fis'4 fis'8 ais'8 |
        }
    }
}

tenorsaxsectionca = {
    r8 d''8 ( fis'8 ) r8 |
    \grace { s16 s16 } b'4 ais'8 b'8 |
    b'2-^ |
    \tuplet 3/2 { d''8 ( cis''8 b'8 ) } fis'4 |
    r8 d''8 ( fis'8 ) r8 |
    \grace { s16 s16 } b'4 ais'8 b'8 |
    d''8 b'16 b'16 b'8 d''8 |
    r8 fis''16 fis''16 fis''8 fis''8 |
    r8 d''8 ( fis'8 ) r8 |
    \grace { s16 s16 } b'4 ais'8 b'8 |
    b'2-^ |
    \tuplet 3/2 { d''8 [ ( cis''8 b'8 ) ] } fis'8 r8 |
    fis'8 b'4 b'8 |
    fis'4 e'4 |
}

tenorsaxsectioncb = {
    d'4 d'8 fis'8 |
    d'8 fis'8 fis'4 |
}

tenorsaxsectioncc = {
    d'4 d'8 fis'8 |
    d'8 fis'8 g'8 e'8 |
}

tenorsaxsectionc = {
    \repeat volta 2 { \tenorsaxsectionca }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxcoda = {
    \grace { s16 s16 s16 } fis'8 r8 g'8 r8 | fis'2-\fermata | }

tenorsaxnotes = {
    \key d \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

tenorfortrumpetnotes = {
    \key d \major
    \time 2/4
    \tenorsaxintro
    \repeat volta 2 { \transpose c c, { \tenorsaxsectionaa } }
    \alternative { { \tenorsaxsectionab } { \tenorsaxsectionac } }
    \transpose c c, { \tenorsaxsectionb }
    \repeat volta 2 { \transpose c c, { \tenorsaxsectionca } }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
    \blankmeasure
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c' {
    \flutenotes
}

altoflutetenorharmony = \transpose g c' {
    \tenorforflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltoextraintro = {
    s2 | s2 | s2 | s2 |
}

tenorforaltointro = { s8 r8 r4 | }

tenorforaltosectionaa = {
    fis'8\ff a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    fis'8 r8 r4 |
    d''8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    d''4 a'8 fis'8 |
    a'2 |
    a'4 g'4 |
    fis'8 fis''8 e''8 d''8 |
    cis''8 b'8 a'8 g'8 |
    fis'8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    fis'8 r8 r4 |
    d''8 a'8 \acciaccatura { \stemDown cis''16 } b'8 a'8 |
    d''4 a'8 fis'8 |
    g'8 a'8 b'8 cis''8 |
    a'4 g'4 |
}

tenorforaltosectionab = {
    fis'8 a'4 fis'8 |
    d''8 a'8 g'8 g'8 |
}


tenorforaltosectionac = {
    fis'8 d''8 fis'8 a'8 |
    fis'8 a'8 d''8 fis''8 |
}

tenorforaltosectiona = {
    \repeat volta 2 { \tenorforaltosectionaa }
    \alternative { { \tenorforaltosectionab } { \tenorforaltosectionac } }
}

tenorforaltosectionb = {
    \repeat volta 2 {
        gis''8 a''8 d''4-^ |
        a''16 ( g''16 fis''8 ) fis''8 d''8 |
        eis''8 fis''8 a'4-^ |
        fis''16 ( e''16 d''8 ) d''8 fis''8 |
        gis''8 a''8 r8 a''8 |
        \tuplet 3/2 { a''8 ( g''8 fis''8 ) } \tuplet 3/2 { eis''8 ( fis''8 g''8 ) } |
        fis''4 d''4 |
        r8 a''8 a''8 a''8 |
        gis''8 a''8 d''4-^ |
        a''16 g''16 fis''8 fis''8 d''8 |
        eis''8 fis''8 a'4-^ |
        fis''16 e''16 d''8 d''8 a'8 |
        g'8 a'8 b'8 cis''8 |
        a'4 g'4 |
    }
    \alternative {
        {
            fis'4 fis'8 a'8 |
            fis'8 a'8 d''8 fis''8 |
        }
        {
            fis'4 fis'8 a'8 |
            fis'4 fis'8 ais'8 |
        }
    }
}

tenorforaltosectionc = {
    \repeat volta 2 {
        r8 d''8 ( fis'8 ) r8 |
        \grace { s16 s16 } b'4 ais'8 b'8 |
        b'2-^ |
        \tuplet 3/2 { d''8 ( cis''8 b'8 ) } fis'4 |
        r8 d''8 ( fis'8 ) r8 |
        \grace { s16 s16 } b'4 ais'8 b'8 |
        d''8 b'16 b'16 b'8 d''8 |
        r8 fis''16 fis''16 fis''8 fis''8 |
        r8 d''8 ( fis'8 ) r8 |
        \grace { s16 s16 } b'4 ais'8 b'8 |
        b'2-^ |
        \tuplet 3/2 { d''8 [ ( cis''8 b'8 ) ] } fis'8 r8 |
        fis'8 b'4 b'8 |
        fis'4 e'4 |
    }
    \alternative {
        {
            b'2 ~ |
            b'8 d''8 d''8 cis''8 |
        }
        {
            b'2 ( |
            a'8 ) a'8 b'8 cis''8 |
        }
    }
}

tenorforaltocoda = {
    \grace { s16 s16 s16 } fis'8 r8 g'8 r8 | fis'2-\fermata | }

tenorforaltonotes = \transpose ees bes, {
    \key d \major
    \time 2/4
    \tenorforaltointro
    \tenorforaltosectiona
    \tenorforaltosectionb
    \tenorforaltosectionc
    \blankmeasure
    \tenorforaltocoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro = \transpose ees c {
    s2 | s2 | s2 | s2 |
}

altosaxintro = \transpose ees c { s8 g'8 a'8 b'8 | }

altosaxsectionaa = \transpose ees c {
    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |

    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 c'''8 b''8 a''8 |
    g''8 f''8 e''8 d''8 |

    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

altosaxsectionab = \transpose ees c {
    c''2 ~ |
    c''8 g'8 a'8 b'8 |
}


altosaxsectionac = \transpose ees c {
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

altosaxsectiona = {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionb = \transpose ees c {
    \repeat volta 2 {
        a''8 \( \acciaccatura { c'''16 } bes''8 \) r8 bes''8 |
        bes''16 ( a''16 g''8 ) g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 f''16 e''8 e''4 |
        a''8 \( \acciaccatura { c'''16 } bes''8 \) r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        g''2 ( |
        c'''4. ) r8 |
        a''8 \( \acciaccatura { c'''16 } bes''8 \) r8 bes''8 |
        bes''16 ( a''16 g''8 ) g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 e''8 ) e''4 |
        d''8 e''8 f''8 g''8 |
        e''8 c''8 d''8 b'8 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c''8 c''8 b'8 |
        }
    }
}

altosaxsectionc = \transpose ees c {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        a''4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            a'2 ~ |
            a'8 c''8 c''8 b'8 |
        }
        {
            a'2 ( |
            g'8 ) g'8 a'8 b'8 |
        }
    }
}

altosaxcoda = {
    \acciaccatura { e''16 [ fis''16 gis''16 ] } a''8 r8 e''8 r8 |
    a'2-\fermata |
}

altosaxnotes = {
    \key a \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \key a \major
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectionaa
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = {
    s2 | s2 | s2 | s2 |
}

trumpetintro = \transpose bes c { s8 g'8\ff a'8 b'8 | }

trumpetsectionaa = \transpose bes c {
    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 c'''8 b''8 a''8 |
    g''8 f''8 e''8 d''8 |
    c''2 ~ |
    c''8 c''16 e''16 d''8 c''8 |
    e''2 ~ |
    e''8 f''16 e''16 d''8 c''8 |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

trumpetsectionab = \transpose bes c {
    c''2 ~ |
    c''8 g'8 a'8 b'8 |
}


trumpetsectionac = \transpose bes c {
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

trumpetsectiona = {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionb = \transpose bes c {
    \repeat volta 2 {
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        g''2 ( |
        c'''4. ) r8 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        d''8 e''8 f''8 g''8 |
        e''8 c''8 d''8 b'8 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c'''8 c'''8 b''8 |
        }
    }
}

trumpetsectionc = \transpose bes c' {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        < a' a'' >4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            a'2 ~ |
            a'8 c''8 c''8 b'8 |
        }
        {
            a'2 ( |
            g'8 ) g8 a8 b8 |
        }
    }
}

trumpetcoda = {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8 r8 a'8 r8 |
    d'2-\fermata |
}

trumpetnotes = {
    \key d \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 | s2 | s2 |
}

tromboneintro = { s8 r8\ff r4 | }

trombonesectionaa = {
    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g8 r8 d8 r8 |
    c8 r8 g,8 r8 |
    c8 c'8 b8 a8 |
    g8 r8 g4-> |

    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g8 r8 d8 r8 |
    c8 r8 g,8 r8 |
}

trombonesectionab = {
    c8 c'8 g8 e8 |
    c8 g,8 a,8 b,8 |
}


trombonesectionac = {
    c8 c'8 g8 e8 |
    c8 r8 r4 |
}

trombonesectiona = {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionb = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 4 {
            c8 c'8 g8 c'8 |
        }

        a8 bes4 bes8 |
        \tuplet 3/2 { bes8 ( a8 g8 ) } \tuplet 3/2 { fis8 ( g8 a8 ) } |
        g8 c'8 g8 c'8 |
        g8 ( c'16 c'16 g16 g16 c'8 ) |

        \repeat percent 4 {
            c8 c'8 g8 c'8 |
        }

        d8 e8 f8 g8 |
        e8 c8 d8 b,8 |
    }
    \alternative {
        {
            c8 c'8 g8 c'8 |
            c8 c'8 g8 e8 |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 e4-> |
        }
    }
}

trombonesectionc = {
    \repeat volta 2 {
        a,8 r8 e8 r8 |
        \grace { s16 s16 } a,8 r8 e8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        a8 a8 e8 a8 |
        \grace { s16 s16 } a8 a8 e8 a8 |
        a8 a8 e8 a8 |
        a8 a16 a16 e16 e16 a8 |
        a8 r8 e8 a8 |
        \grace { s16 s16 } a8 r8 e8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        b16 d'16 c'4 c'8 |
        e'8 r8 e8 r8 |
    }
    \alternative {
        {
            a8 a8 e8 a8 |
            a8 r8 e4_> |
        }
        {
            a8 e8 c8 a,8 |
            g,8 r8 g4_> |
        }
    }
}

trombonecoda = {
    \acciaccatura { g,16 [ a,16 b,16 ] } c8-> r8 g,8-> r8 | c2->-\fermata |
}

trombonenotes = {
    \key c \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectionaa
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonefortrumpetextraintro = {
    s2 | s2 | s2 | s2 |
}

trombonefortrumpetintro = { s8 r8\ff r4 | }

trombonefortrumpetsectionaa = {
    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g8 r8 d8 r8 |
    c'8 r8 g8 r8 |
    c'8 c'8 b8 a8 |
    g8 r8 g4-> |

    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g8 r8 d8 r8 |
    c'8 r8 g8 r8 |
}

trombonefortrumpetsectionab = {
    c'8 c''8 g'8 e'8 |
    c'8 g8 a8 b8 |
}


trombonefortrumpetsectionac = {
    c'8 c'8 g8 e8 |
    c8 r8 r4 |
}

trombonefortrumpetsectiona = {
    \repeat volta 2 { \trombonefortrumpetsectionaa }
    \alternative { { \trombonefortrumpetsectionab } { \trombonefortrumpetsectionac } }
}

trombonefortrumpetsectionb = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 4 {
            c8 c'8 g8 c'8 |
        }

        a8 bes4 bes8 |
        \tuplet 3/2 { bes8 ( a8 g8 ) } \tuplet 3/2 { fis8 ( g8 a8 ) } |
        g8 c'8 g8 c'8 |
        g8 ( c'16 c'16 g16 g16 c'8 ) |

        \repeat percent 4 {
            c8 c'8 g8 c'8 |
        }

        d8 e8 f8 g8 |
        e8 c8 d8 b,8 |
    }
    \alternative {
        {
            c8 c'8 g8 c'8 |
            c8 c'8 g8 e8 |
        }
        {
            c8 c'8 g8 e8 |
            c8 r8 e4-> |
        }
    }
}

trombonefortrumpetsectionc = {
    \repeat volta 2 {
        a8 r8 e'8 r8 |
        \grace { s16 s16 } a8 r8 e'8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        a8 a8 e8 a8 |
        \grace { s16 s16 } a8 a8 e8 a8 |
        a8 a8 e8 a8 |
        a8 a16 a16 e16 e16 a8 |
        a8 r8 e8 a8 |
        \grace { s16 s16 } a8 r8 e8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        b16 d'16 c'4 c'8 |
        e'8 r8 e8 r8 |
    }
    \alternative {
        {
            a8 a8 e8 a8 |
            a8 r8 e4-> |
        }
        {
            a'8 e'8 c'8 a8 |
            g8 r8 g'4-> |
        }
    }
}

trombonefortrumpetcoda = {
    \acciaccatura { g16 [ a16 b16 ] } c'8-> r8 g8-> r8 | c'2->-\fermata |
}

tromboneforothersnotes = {
    \key c \major
    \time 2/4
    \trombonefortrumpetintro
    \trombonefortrumpetsectiona
    \trombonefortrumpetsectionb
    \trombonefortrumpetsectionc
    \blankmeasure
    \trombonefortrumpetcoda
}

trombonefortrumpetnotes = \transpose bes c'' { \tromboneforothersnotes }
tromboneforflutenotes = \transpose c c' { \tromboneforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro = {
    s2 | s2 | s2 | s8 g'8\f a'8 b'8 |
}

violinintro = { s8 g'8\f a'8 b'8 | }

violinsectionaa = {
    c''2 ~ |
    c''8 c''16 ( e''16 d''8 c''8 ) |
    e''2 ~ |
    e''8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 c'''8 b''8 a''8 |
    g''8 f''8 e''8 d''8 |
    c''2 ~ |
    c''8 c''16 ( e''16 d''8 c''8 ) |
    e''2 ~ |
    e''8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

violinsectionab = {
    c''2 ~ |
    c''8 g'8 a'8 b'8 |
}


violinsectionac = {
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

violinsectiona = {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionb = {
    \repeat volta 2 {
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        g''2 ( |
        c'''4. ) r8 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        d''8 e''8 f''8 g''8 |
        e''8 c''8 d''8 b'8 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c''8 c''8 b'8 |
        }
    }
}

violinsectionc = {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        a''4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            a'2 ~ |
            a'8 c''8 c''8 b'8 |
        }
        {
            a'2 ( |
            g'8 ) g'8 a'8 b'8 |
        }
    }
}

violincoda = {
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''8 r8 g''8 r8 |
    c''2-\fermata |
}

violinnotes = {
    \key c \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectionaa
    \violincoda
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
    s2 | s2 | s2 | s8 g'8\ff a'8 b'8 |
}

pianorightupperintro = { s8 g'8\ff a'8 b'8 | }

pianorightuppersectionaa = {
    < e' g' c'' >2 ~ |
    < e' g' c'' >8 c''16 e''16 d''8 c''8 |
    < c'' e'' >2 ~ |
    < c'' e'' >8 f''16 e''16 d''8 c''8 |
    d''8-2 e''8 f''8 g''8 |
    e''8-3 c''8-1 d''8-4 b'8-2 |
    c''8-1 c'''8-5 b''8 a''8 |
    g''8-2 f''8-1 e''8-3 d''8 |
    < e' g' c'' >2 ~ |
    < e' g' c'' >8 c''16 ( e''16 d''8 c''8 ) |
    < c'' e'' >2 ~ |
    < c'' e'' >8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

pianorightuppersectionab = {
    < e' g' c'' >2 ~ |
    < e' g' c'' >8 g'8 a'8 b'8 |
}


pianorightuppersectionac = {
    < e' g' c'' >2 ~ |
    < e' g' c'' >8 c''8 e''8 g''8 |
}

pianorightuppersectiona = {
    \repeat volta 2 { \pianorightuppersectionaa }
    \alternative { { \pianorightuppersectionab } { \pianorightuppersectionac } }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { fis''8 ( g''8 a''8 ) } |
        < e'' g'' >2 ( |
        < e'' g'' c'''>4.-> ) r8 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 ) g''8 g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 ) e''8 e''4 |
        d''8-2 e''8 f''8 g''8 |
        e''8-3 c''8-1 d''8-4 b'8-2 |
    }
    \alternative {
        {
            < e' g' c'' >2 ~ |
            < e' g' c'' >8 c''8 e''8 g''8 |
        }
        {
            < e' g' c'' >2 ~ |
            < e' g' c'' >8 c''8 c''8 b'8 |
        }
    }
}

pianorightuppersectionc = {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        < c'' e'' >2 ( |
        < c'' e'' a'' >4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 ( d''8 c''8 ) } \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 ( b'8 a'8 ) } \tuplet 3/2 { gis'8 ( a'8 b'8 ) } |
    }
    \alternative {
        {
            < c' e' a' >2 ~ |
            < c' e' a' >8 c''8 c''8 b'8 |
        }
        {
            < c' e' a' >2 ( |
            < b' d' g' >8 ) g'8 < f' a' >8 b'8 |
        }
    }
}

pianorightuppercoda = {
    \acciaccatura { g''16 [ a''16 b''16 ] } < e'' c''' >8 r8 < b' f'' g''>8 r8 |
    < e' g' c'' >2-\fermata |
}

pianorightuppernotes = {
    \key c \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \blankmeasure
    \pianorightuppercoda
}

%-------------------------------------------------

pianorightlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro = {
    c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 s8 s8 s8 |
}

pianoleftupperintro = { s8 r8 r4 | }

pianoleftuppersectionaa = {
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    g,8 g8 d8 g8 |
    c8 g8 g,8 g8 |
    c8 c'8-1 b8-2 a8-3 |
    g8-1 r8 < g, g >4-> |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    g,8 g8 d8 g8 |
    c8 g8 g,8 g8 |
}

pianoleftuppersectionab = {
    c8 ( c'8 g8 e8 |
    c8 ) g,8 ( a,8 b,8 ) |
}


pianoleftuppersectionac = {
    c8 ( c'8 g8 e8 |
    c8 ) r8 r4 |
}

pianoleftuppersectiona = {
    \repeat volta 2 { \pianoleftuppersectionaa }
    \alternative { { \pianoleftuppersectionab } { \pianoleftuppersectionac } }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 ( c'16 c'16 g16 g16 c'8 ) |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        c8 g8 g,8 g8 |
    }
    \alternative {
        {
            c8 c'8 g8 c'8 |
            c8 ( c'8 g8 e8 ) |
        }
        {
            c8 ( c'8 g8 e8 |
            c8 ) r8 < e, e >4-> |
        }
    }
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        a,8 a8 e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 ( a16 a16 e16 e16 a8 ) |
        a,8 a8 e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        e,8 e8 b,8 e8 |
    }
    \alternative {
        {
            a,8 a8 e8 a8 |
            a'8 r8 < e, e >4-> |
        }
        {
            a,8 ( e8-1 c8-2 a,8-4 |
            g,8-5 ) r8 < g, g >4-> |
        }
    }
}

pianoleftuppercoda = {
    \grace { s16 s16 s16 } < c g >8 r8 < g, g >8 r8 |
    < c, c >2-\fermata |
}

pianoleftuppernotes = {
    \key c \major
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \blankmeasure
    \pianoleftuppercoda
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectionaa
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectionaa
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = {
    s2 | s2 | s2 | s8 g'8\ff a'8 b'8 |
}

accordionrightupperintro = { s8 g'8\ff a'8 b'8 | }

accordionrightuppersectionaa = {
    < e' c'' >2 ~ |
    < e' c'' >8 c''16 e''16 d''8 c''8 |
    < g' e'' >2 ~ |
    < g' e'' >8 f''16 e''16 d''8 c''8 |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
    c''8 < e'' c'''>8 < d'' b''>8 < c'' a''>8 |
    < b' g'' >8 < a' f'' >8 < g' e''>8 < f' d'' >8 |
    < e' c'' >2 ~ |
    < e' c'' >8 c''16 ( e''16 d''8 c''8 ) |
    < g' e'' >2 ~ |
    < g' e'' >8 f''16 ( e''16 d''8 c''8 ) |
    d''8 e''8 f''8 g''8 |
    e''8 c''8 d''8 b'8 |
}

accordionrightuppersectionab = {
    c''2 ~ |
    c''8 g'8 < f' a' >8 < f' b' >8 |
}


accordionrightuppersectionac = {
    c''2 ~ |
    c''8 c''8 e''8 g''8 |
}

accordionrightuppersectiona = {
    \repeat volta 2 { \accordionrightuppersectionaa }
    \alternative { { \accordionrightuppersectionab } { \accordionrightuppersectionac } }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 g''8 ) g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 e''8 ) e''4 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        \tuplet 3/2 { bes''8 a''8 g''8 } \tuplet 3/2 { fis''8 g''8 a''8 } |
        g''2 ( |
        < e'' c'''>4.-> ) r8 |
        a''8 \acciaccatura { c'''16 } bes''8 r8 bes''8 |
        bes''16 ( a''16 g''8 ) g''4 |
        fis''8 \acciaccatura { a''16 } g''8 r8 g''8 |
        g''16 ( f''16 e''8 ) e''4 |
        d''8-2 e''8 f''8 g''8 |
        e''8-3 c''8-1 d''8-4 b'8-2 |
    }
    \alternative {
        {
            c''2 ~ |
            c''8 c''8 e''8 g''8 |
        }
        {
            c''2 ~ |
            c''8 c''8 c''8 b'8 |
        }
    }
}

accordionrightuppersectionc = {
    \repeat volta 2 {
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 d''8 c''8 } \tuplet 3/2 { c''8 b'8 a'8 } |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        e''2 ( |
        < c'' a'' >4.-> ) r8 |
        a'4. e''8 |
        \acciaccatura { d''16 [ e''16 ] } d''8 c''8 b'8 c''8 |
        d''4. c''8 |
        \tuplet 3/2 { e''8 d''8 c''8 } \tuplet 3/2 { c''8 b'8 a'8 } |
        b'16 d''16 c''4 c''8 |
        \tuplet 3/2 { c''8 b'8 a'8 } \tuplet 3/2 { gis'8 a'8 b'8 } |
    }
    \alternative {
        {
            a'2 ~ |
            < f' a' >8 c''8 c''8 b'8 |
        }
        {
            a'2 ~ |
            a'8 g'8 < f' a' >8 < f' b' >8 |
        }
    }
}

accordionrightuppercoda = {
    \acciaccatura { g'16 [ a'16 b'16 ] } c''8-.-> r8 < g' b' f'' g''>8-.-> r8 |
    < e' g' c'' >2->-\fermata |
}

accordionrightuppernotes = {
    \key c \major
    \time 2/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \blankmeasure
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro = {
    c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 c'8 g8 c'8 | c8 s8 s8 s8 |
}

accordionleftupperintro = { s8 r8 r4 | }

accordionleftuppersectionaa = {
    c8 c'8^"M" g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    g,8 g8^"7" d8 g8 |
    c8 g8^"M" g,8 g8^"7" |
    c8^"M" r8 r4 |
    g8^"M" r8 < g, g >4^"7"_> |
    c8 c'8^"M" g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    c8 c'8 g8 c'8 |
    g,8 g8^"7" d8 g8 |
    c8 g8^"M" g,8 g8^"7" |
}

accordionleftuppersectionab = {
    c8 c'8^"M" g8 c'8 |
    < c c' >8^"M" r8 < g, g >4^"7" |
}


accordionleftuppersectionac = {
    c8 c'8^"M" g8 c'8 |
    < c c' >8 r8 r4 |
}

accordionleftuppersectiona = {
    \repeat volta 2 { \accordionleftuppersectionaa }
    \alternative { { \accordionleftuppersectionab } { \accordionleftuppersectionac } }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        c8 c'8^"M" g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8^"M" g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8^"M" g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8^"7" d8 g8 |
        c8 g8 g,8 g8 |
    }
    \alternative {
        {
            c8 c'8 g8 c'8 |
            c8 ( c'8 g8 e8 ) |
        }
        {
            c8 ( c'8 g8 e8 |
            c8 ) r8 < e, e >4-> |
        }
    }
}

accordionleftuppersectionc = {
    \repeat volta 2 {
        a,8 a8^"m" e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |

        a,8 a8^"m" e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |

        a,8 a8^"m" e8 a8 |
        \grace { s16 s16 } a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |

        a,8 a8^"m" e8 a8 |
        e,8 e8 b,8 e8^"7" |
    }
    \alternative {
        {
            a,8 a8^"m" e8 a8 |
            < a, a >8 r8 < e, e >4^"7"_> |
        }
        {
            a,8 e8^"m" c8 a,8 |
            < a, a >8 r8 < g, g >4^"7"_> |
        }
    }
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < c g >8^"M" r8 < g, g >8^"7" r8 |
    < c c' >2^"M" |
}

accordionleftuppernotes = {
    \key c \major
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \blankmeasure
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectionaa
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectionaa
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    r8 << sna8 cymr8 >> << sna4 cymr4 >> |
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    r8 << sna8 cymr8 >> << sna4 cymr4 >> |
}

drumshighintro = { s2 | }

drumshighsectionaa = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumshighsectionab = \drummode {
    s2 |
    s2 |
}


drumshighsectionac = \drummode {
    s2 |
    s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumshighcoda = { \grace { s16 s16 s16 } s2 | s2 | }

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectionaa
    \drumshighcoda
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowintro = { s2 | }

drumslowsectionaa = \drummode {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

drumslowsectionab = \drummode {
    s2 |
    s2 |
}


drumslowsectionac = \drummode {
    s2 |
    s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 s16 } s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumslowcoda = { \grace { s16 s16 s16 } s2 | s2 | }

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectionaa
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Btrombonesectionaa = {
    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g'8 r8 d'8 r8 |
    c'8 r8 g8 r8 |
    c'8 c'8 b8 a8 |
    g8 r8 g4-> |

    r8 g8 a8 b8 |
    c'2 ~ |
    c'8 c'16 e'16 d'8 c'8 |
    c'2 |

    g'8 r8 d'8 r8 |
    c'8 r8 g8 r8 |
}

Btrombonesectionab = {
    c'8 c'8 g8 e8 |
    c8 g8 a8 b8 |
}


Btrombonesectionac = {
    c8 c'8 g8 e8 |
    c8 r8 r4 |
}

Btrombonesectiona = {
    \repeat volta 2 { \Btrombonesectionaa }
    \alternative { { \Btrombonesectionab } { \Btrombonesectionac } }
}

Btrombonesectionc = {
    \repeat volta 2 {
        a,8 r8 e8 r8 |
        \grace { s16 s16 } a,8 r8 e8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        a8 a8 e8 a8 |
        \grace { s16 s16 } a8 a8 e8 a8 |
        a8 a8 e8 a8 |
        a8 a16 a16 e16 e16 a8 |
        a8 r8 e8 a8 |
        \grace { s16 s16 } a8 r8 e8 r8 |
        d'4. c'8 |
        \tuplet 3/2 { e'8 ( d'8 c'8 ) } \tuplet 3/2 { c'8 ( b8 a8 ) } |
        b16 d'16 c'4 c'8 |
        e'8 r8 e'8 r8 |
    }
    \alternative {
        {
            a8 a8 e8 a8 |
            a8 r8 e4-> |
        }
        {
            a'8 e'8 c'8 a8 |
            g8 r8 g'4-> |
        }
    }
}

Btrombonenotes = {
    \key c \major
    \time 2/4
    \tromboneintro
    \Btrombonesectiona
    \trombonesectionb
    \Btrombonesectionc
    \blankmeasure
    \transpose c c' { \trombonecoda }
}

Bbasslinesectionaa = {
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |

    g4 d'4 |
    c'4 g4 |
    c8 c'8 b8 a8 |
    g8 r8 g'4-> |

    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |
    c4 g8 c'8 ~ |
    c'8 g8 c'8 g8 |

    g4 d'4 |
    c'4 g4 |
}

Bbasslinesectionab = {
    c8 c'8 g8 e8 |
    c8 g8 a8 b8 |
}


Bbasslinesectionac = {
    c8 c'8 g8 e8 |
    c8 r8 r4 |
}

Bbasslinesectiona = {
    \repeat volta 2 { \Bbasslinesectionaa }
    \alternative { { \Bbasslinesectionab } { \Bbasslinesectionac } }
}

Bbasslinesectionb = {
    \repeat volta 2 {
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c,8 c8 g,8 c8 |
        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |
        g,4 d4 |
        c8 g8 g,8 g8 |
    }
    \alternative {
        {
            c4 g,4 |
            c8 c8 g,8 e,8 |
        }
        {
            c8 c8 g,8 e,8 |
            c8 r8 e4-> |
        }
    }
}

Bbasslinesectionc = {
    \repeat volta 2 {
        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        \grace { s16 s16 } a,4 e4 |
        a,4 c4 |
        a,4 e4 |

        a,4 c4 |
        a,4 e4 |
    }
    \alternative {
        {
            a8 ( e'8 c'8 b8 |
            a8 ) r8 a'4-> |
        }
        {
            a8 ( e'8 c'8 a8 |
            g8 ) r8 g'4-> |
        }
    }
}

bbassnotes = {
    \key c \major
    \time 2/4
    \basslineintro
    \Bbasslinesectiona
    \transpose c c' { \Bbasslinesectionb }
    \Bbasslinesectionc
    \blankmeasure
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 |
    c2 | s2 | s2 | s2
}

previewnotes = {
    \key c \major
    \time 2/4
    s8 g'8 a'8 b'8 |
    \bar ".|:"
    c''2 ~ |
    c''8 c''16 ( e''16 d''8 c''8 ) |
    e''2 ~ |
    e''8 f''16 ( e''16 d''8 c''8 ) |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

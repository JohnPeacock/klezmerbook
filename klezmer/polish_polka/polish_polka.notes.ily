\version "2.18.0"

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

% This Voice contains only spacing  ( invisible
% rests as ) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmintro =  {
    \tempo \tempostring
    \partial 8 s8 |
    \breakIN
}

bandmsectiona =  {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone
        s2 | \breakAtwo
        s2 | \breakAtre
        s2 | \breakAfor
        s2 | \breakAfiv
        s2 | \breakAsix
        s2 | \breakAsev
        s2 |
    }
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    s2 | \breakBone
    s2 | \breakBtwo
    s2 | \breakBtre
    s2 | \breakBfor
    s2 | \breakBfiv
    s2 | \breakBsix
    s2 | \breakBsev
    s2 |
    \bar "||"
    \breakB
}

bandmsectionc =  {
    \markC \positionC
    s2 | \breakCone
    s2 | \breakCtwo
    s2 | \breakCtre
    s2 | \breakCfor
    s2 | \breakCfiv
    s2 | \breakCsix
    s2 | \breakCsev \markFN \positionFN
    s2 |
    \bar ".|:-||"
    \breakC
}

bandmsectiond =  {
    \markD \positionD
    \repeat volta 2 {
        s2 | \breakDone
        s2 | \breakDtwo
        s2 | \breakDtre
        s2 | \breakDfor
        s2 | \breakDfiv
        s2 | \breakDsix
    }
    \alternative {
        {
            s2 | \breakDsev
            s2 | \breakDeit
        }
        {
            s2 | \breakDnin
            s2 |
        }
    }
    \markDS \positionDS
}

bandmNV =  {
    \time 2/4

    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bar "||"
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing  ( invisible
% rests as ) place holders for tempo changes in
% the midi output.

preintro =  { s2 | }

metronomeextraintro =  { s2 | }

metronomeintro =  { s2 | }

metronomesectiona =  {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
}

metronomesectionb =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectionc =  { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }

metronomesectiond =  {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronome =  \context Voice = "metronome" {
    \time 2/4

    \preintro
    \tempo 4 = 115
    \metronomeextraintro
    \metronomeintro

    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond

    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiond

    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  {
    \partial 8 a'16 bes'16 |
}

melodymidiintro =  {
    s4 s8 a'16 bes'16 |
}

melodysectiona =  {
    \repeat volta 2 {
        c''8 a'8 c''4 |
        \acciaccatura { d''16 } c''16 ( b'16 c''16 a''16 f''4 ) |
        f''8 e''8 e''16  ( f''16 g''8 ) |
        g''8 f''8 f''16  ( g''16 a''8 ) |

        c''8 a'8 c''4 |
        \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
        f''8 e''8 e''16 bes''16 g''16 e''16 |
        f''8 a''8 f''8 r8 |
    }
}

melodysectionb =  {
    d''8 d''8 d''8 a'8 |
    d''16  ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |
    d''8 d''8 d''8 a'8 |
    d''16  ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |

    d''16 ( cis''16 d''16 e''16 ) f''16 ( g''16 f''16 e''16 ) |
    d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 f''16 g''16 ) |
    a''8\< a''16 a''16 a''8 a''8 |
    a''8 a'8 bes'8 b'8\! |
}

melodysectionc =  {
    c''8\f a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16 ( f''16 g''8 ) |
    g''8 f''8 f''16 ( g''16 a''8 ) |

    c''8 a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16 bes''16 g''16 e''16 |
    f''8 a''8 f''8 r8 |
}

melodysectiond =  {
    \repeat volta 2 {
        d'''4 c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
        ees''16 d''16 ees''4 f''8 |
        d''16 cis''16 d''8 bes'16-2 ( d''16-1 f''16-2 bes''16-4 |

        d'''4 ) c'''16 bes''16 a''16 g''16 |
        f''16-5 e''16 f''4 g''8 |
    }
    \alternative {
        {
            ees''16 d''16 ees''4 f''8 |
            bes'8 d''8 bes'8 f''8 |
        }
        {
            f''8-3 g''16 f''16 e''16-2 f''16-1 g''16 a''16 |
            bes''8 d'''8 bes''8 a'16 b'16 |
        }
    }
}

melody =  {
    \key f \major
    \time 2/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \key bes \major
    \melodysectiond
}

melodymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \melodymidiintro

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond

    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro =  {
    s2 |
}

tenorharmonyintro =  {
    \partial 8 g'16 a'16 |
}

tenorharmonymidiintro =  {
    s4 s8 g'16 a'16 |
}

tenorharmonysectionaa =  {
    b'8\mf g'8 b'16 ( g'16 b'8 ) |
    b'16 ais'16 b'16 d''16 b'16 ( d''16 ) b'16 ( d''16 ) |
    c''8 d''8 d''16 ( e''16 fis''8 ) |
    b'8 d''8 d''16 ( fis''16 g''8 ) |
    b'8 g'8 b'8\marcato g'16 a'16 
    b'16 ais'16 b'16 d''16 b'16 ( d''16 b'8 ) |
    c''8 d''8 d''8 d''16 c''16 |
    b'8 d''8 b'8 r8 |
}

tenorharmonysectiona =  {
    \repeat volta 2 { \tenorharmonysectionaa }
}

tenorharmonysectionb =  {
    g'8\p g'8 g'8 a'8 |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'8 g'8 g'8 a'8 |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'16 fis'16 g'16 a'16 e''8 e''8 |
    dis''8\< dis''16 dis''16 fis''8 dis''8 |
    b'8\! g'8 a'8 ais'8 |
}

tenorharmonysectionc =  {
    b'8\mf g'8 b'16 ( g'16 b'8 ) |
    b'16 ais'16 b'16 d''16 b'16 ( d''16 ) b'8 |
    c''8 d''8 d''16 ( e''16 fis''8 ) |
    b'8 d''8 d''16 ( fis''16 g''8 ) |
    b'8 g'8 b'8\marcato g'16 a'16 
    b'16 ais'16 b'16 d''16 b'16 ( d''16 b'8 ) |
    c''8 d''8 d''8 d''16 c''16 |
    b'8 d''8 b'8 r8 |
}

tenorharmonysectionda =  {
    c'''8 e''16 g''16 b''16 a''16 g''16 f''16 |
    e''16 ( dis''16 e''16 c''16 g'8 ) r8 |
    d''16 cis''16 d''16 b'16 g'8 r8 |
    c''16 b'16 c''8 g'16 c''16 e''16 g''16 |
    c'''8 e''16 g''16 b''16 a''16 g''16 f''16 |
    e''16 dis''16 e''16 c''16 g'8 r8 |
}

tenorharmonysectiondb =  {
    d''16 cis''16 d''16 b'16 g'8 f'8 |
    e'8 g'8 e'8 r8 |
}

tenorharmonysectiondc =  {
    e''8 f''16 e''16 dis''16 e''16 f''16 dis''16 |
    e''8 g''8 e''8 r8 |
}

tenorharmonysectiond =  {
    \repeat volta 2 { \tenorharmonysectionda }
    \alternative { { \tenorharmonysectiondb } { \tenorharmonysectiondc } }
}

tenorharmony =  \transpose c' bes {
    \key g \major
    \time 2/4
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \key c \major
    \tenorharmonysectiond
}

tenorharmonymidi =  \transpose c' bes {
    \time 2/4
    \preintro
    \metronomeextraintro
    \tenorharmonymidiintro

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro =  {
    \key f \major
    \partial 8 r8 |
}

countermidiintro =  {
    \key f \major
    s4 s8 r8 |
}

countersectionaa =  {
    \repeat unfold 2 { f8\mf r8 c8 r8 | }
    c8 r8 r4 |
    f8 r8 r4 |

    \repeat unfold 2 { f8 r8 c8 r8 | }
    c8 r8 c8 c8 |
    f8 f8 f8 r8 |
}
countersectiona =  { \repeat volta 2 { \countersectionaa } }

countersectionb =  {
    d8\p r8 d8 r8 |
    d8 r8 a,8 r8 |
    d8 r8 d8 r8 |
    d8 r8 a,8 r8 |

    d8 r8 a,8 r8 |
    d4 bes,4 |
    a,8\< a16 a16 a8 a8 |
    a8-.\! r8 r4 |
}

countersectionc =  {
    \repeat unfold 2 { f8\f r8 c8 r8 | }
    c8 r8 r4 |
    f8 r8 r4 |

    \repeat unfold 2 { f8 r8 c8 r8 | }
    c8 r8 c8 c8 |
    f8 f8 f8 r8 |
}

countersectionda =  {
    \key bes \major
    bes,4\mf r4 |
    bes,4 r4 |
    f,4 r4 |
    bes,4 d8 f8 |
    bes,8 r8 r4 |
    bes,8 r8 r4 |
}

countersectiondb =  {
    f,8 r8 a,8 f,8 |
    bes,8 bes,8 bes,8 r8 |
}

countersectiondc =  {
    f,8 r8 a,8 f,8 |
    bes,8 bes,8 bes,8 r8 |
}

countersectiond =  {
    \repeat volta 2 { \countersectionda }
    \alternative { { \countersectiondb } { \countersectiondc } }
}

counter =  \transpose c c' {
    \key f \major
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
}

countermidi =  \transpose c c' {
    \time 2/4
    \preintro
    \metronomeextraintro
    \countermidiintro

    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond

    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond

    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lowmelodyintro =  \transpose d c {
    \partial 8 b'16 c''16 |
}

lowmelodymidiintro =  \transpose d c {
    s4 s8 b'16 c''16 |
}

lowmelodysectiona =  \transpose d c {
    \repeat volta 2 {
        d''8\mf b'8 d''4 |
        \acciaccatura { e''16 } d''16 cis''16 d''16 b'16 g'4 |
        g'8 fis'8 fis'16 ( g'16 a'8 ) |
        a'8 g'8 g'16 ( a'16 b'8 ) |

        d''8 b'8 d''4 |
        \acciaccatura { d''16 [ e''16 ] } d''16 cis''16 d''16 b'16 g'4 |
        g'8 fis'8 fis'16 c''16 a'16 fis'16 |
        g'8 b'8 g'8 r8 |
    }
}

lowmelodysectionb =  \transpose d c {
    e'8\p e'8 e'8 b8 |
    e'16 ( dis'16 e'16 fis'16 ) g'16 ( a'16 g'16 fis'16 ) |
    e'8 e'8 e'8 b8 |
    e'16 ( dis'16 e'16 fis'16 ) g'16 ( a'16 g'16 fis'16 ) |

    e'16 ( dis'16 e'16 fis'16 ) g'16 ( a'16 g'16 fis'16 ) |
    e'16 ( dis'16 e'16 fis'16 ) g'16 ( fis'16 g'16 a'16 ) |
    b'8\< b'16 b'16 b'8 b'8 |
    b'8 b'8 c''8 cis''8\! |
}

lowmelodysectionc =  \transpose d c {
    d''8\mf b'8 d''4 |
    \acciaccatura { d''16 [ e''16 ] } d''16 cis''16 d''16 b'16 g'4 |
    g'8 fis'8 fis'16 ( g'16 a'8 ) |
    a'8 g'8 g'16 ( a'16 b'8 ) |

    d''8 b'8 d''4 |
    \acciaccatura { d''16 [ e''16 ] } d''16 cis''16 d''16 b'16 g'4 |
    g'8 fis'8 fis'16 c''16 a'16 fis'16 |
    g'8 b'8 g'8 r8 |
}

lowmelodysectiond =  \transpose d c {
    \repeat volta 2 {
        e''4\mf d''16 c''16 b'16 a'16 |
        g'16 fis'16 g'4 a'8 |
        f'16 e'16 f'4 g'8 |
        e'16 dis'16 e'8 ~ e'16 e'16 g'16 c''16 |
        e''4 d''16 c''16 b'16 a'16 |

        g'16 fis'16 g'4 a'8 |
    }
    \alternative {
        {
            f'16 e'16 f'4 d'8 |
            c'8 e'8 c'8 g'8 |
        }
        {
            g'8 a'16 ( g'16 ) fis'16 ( g'16 a'16 b'16 ) |
            c''8 e''8 c''8 b'16 c''16 |
        }
    }
}

lowmelody =  {
    \key f \major
    \time 2/4
    \lowmelodyintro
    \lowmelodysectiona
    \lowmelodysectionb
    \lowmelodysectionc
    \key bes \major
    \lowmelodysectiond
}

lowmelodymidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \lowmelodymidiintro

    \lowmelodysectiona
    \lowmelodysectionb
    \lowmelodysectionc
    \lowmelodysectiond

    \lowmelodysectiona
    \lowmelodysectionb
    \lowmelodysectionc
    \lowmelodysectiond

    \lowmelodysectiona
    \lowmelodysectionb
    \lowmelodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro =  {
    \partial 8 r8 |
}

basslinemidiintro =  {
    s4 s8 r8 |
}

basslinesectiona =  {
    \repeat volta 2 {
        f8 r8 c8 r8 |
        f8 r8 c8 r8 |
        c8 r8 g8\2 r8 |
        f8 r8 c'8 r8 |

        f8 r8 c8 r8 |
        f8 r8 c8 r8 |
        c8 r8 g8\2 r8 |
        f8 f8 f8 r8 |
    }
}

basslinesectionb =  {
    d8\3 r8 a8\2 r8 |
    d8\3 r8 a,8\4 a8 |
    d8\3 r8 a8\2 r8 |
    d8\3 r8 a,8\4 a8 |

    d8\3 r8 a,8\4 a8 |
    d8\3 r8 g,8\4 r8 |
    a,8\4 a16\2 a16\2 a8\2 r8 |
    a8\2-. r8 r4 |
}

basslinesectionc =  {
    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    c8 r8 g8\2 r8 |
    f8 r8 c'8 r8 |

    f8 r8 c8 r8 |
    f8 r8 c8 r8 |
    c8 r8 g8\2 r8 |
    f8 f8 f8 r8 |
}

basslinesectiond =  {
    \repeat volta 2 {
        bes,8 r8 f8 r8 |
        bes,8 r8 f8 r8 |
        f,8 r8 c8 r8 |
        bes,8 r8 f8 r8 |

        bes,8 r8 f8 ees8 |
        bes,8 f8 f8 f8 |
    }
    \alternative {
        {
            f,8 r8 c8 r8 |
            bes,8 f8 f8 r8 |
        }
        {
            f,8 r8 c8 r8 |
            bes,8 f8 f8 r8 |
        }
    }
}

bassline =  {
    \key f \major
    \time 2/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \key bes \major
    \basslinesectiond
}

basslinemidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \basslinemidiintro

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond

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

chordlettersintro = \chordmode {
    \partial 8 s8 |
}

chordlettersmidiintro = \chordmode {
    s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        f2 | f2 | c2:7 | f2 |
        f2 | f2 | c2:7 | f2 |
    }
}

chordletterssectionb = \chordmode {
    d2:min | d4:min a4:7 | d2:min | d4:min a4:7 |
    d4:min a4:7 | d4:min g4:min | a2 | a2 |
}

chordletterssectionc = \chordmode {
    f2 | f2 | c2:7 | f2 |
    f2 | f2 | c2:7 | f2 |
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        bes2 | s2 | f2:7 | bes2 |
        bes4. ees8 | bes2 |
    }
    \alternative {
        { f2:7 | bes2 | }
        { f2:7 | bes2 | }
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
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

flutenotes =  \transpose c c {
    \melody
}

flutenotesmidi =  \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  {
    s2 |
}

clarinetintro =  {
    \partial 8 b'16 c''16 |
}

clarinetmidiintro =  {
    s4 s8 b'16 c''16 |
}

clarinetsectionaa =  {
    d''8\mf b'8 d''4 |
    \acciaccatura { e''16 } d''16 cis''16 d''16 b''16 g''4 |
    g''8 fis''8 fis''16 ( g''16 a''8 ) |
    a''8 g''8 g''16 ( a''16 b''8 ) 

    d''8 b'8 d''4\marcato |
    \acciaccatura { d''16 [ e''16 ] } d''16 cis''16 d''16 b''16 g''4 |
    g''8 fis''8 fis''16 c'''16 a''16 fis''16 |
    g''8 b''8 g''8 r8 |
}
clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
}

clarinetsectionb =  {
    e''8\p e''8 e''8 b'8 |
    e''16 ( dis''16 e''16 fis''16 ) g''16 ( a''16 g''16 fis''16 ) |
    e''8 e''8 e''8 b'8 |
    e''16 ( dis''16 e''16 fis''16 ) g''16 ( a''16 g''16 fis''16 ) |

    e''16 ( dis''16 e''16 fis''16 ) g''16 ( a''16 g''16 fis''16 ) |
    e''16 ( dis''16 e''16 fis''16 g''16 fis''16 g''16 a''16 ) |
    b''8\< b''16 b''16 b''8 b''8 |
    b''8\! b'8 c''8 cis''8 |
}

clarinetsectionc =  {
    d''8\mf b'8 d''4\marcato |
    \acciaccatura { e''16 } d''16 cis''16 d''16 b''16 g''4 |
    g''8 fis''8 fis''16 ( g''16 a''8 ) |
    a''8 g''8 g''16 ( a''16 b''8 ) 

    d''8 b'8 d''4\marcato |
    \acciaccatura { d''16 [ e''16 ] } d''16 cis''16 d''16 b''16 g''4 |
    g''8 fis''8 fis''16 c'''16 a''16 fis''16 |
    g''8 b''8 g''8 r8 |
}

clarinetsectionda =  {
    e'''4 d'''16 c'''16 b''16 a''16 |
    g''16 fis''16 g''4 a''8 |
    f''16 e''16 f''4 g''8 |
    e''16 dis''16 e''8 c''16 e''16 g''16 c'''16 |

    e'''4 d'''16 c'''16 b''16 a''16 |
    g''16 fis''16 g''4 a''8 |
}

clarinetsectiondb =  {
    f''16 e''16 f''4 d''8 |
    c''8 e''8 c''8 g''8 |
}

clarinetsectiondc =  {
    g''8 a''16 g''16 fis''16 g''16 a''16 b''16 |
    c'''8 e'''8 c'''8 b'16 c''16 |
}

clarinetsectiond =  {
    \repeat volta 2 { \clarinetsectionda }
    \alternative { { \clarinetsectiondb } { \clarinetsectiondc } }
}

clarinetnotes =  {
    \time 2/4
    \key g \major
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \key c \major
    \clarinetsectiond
}

clarinetnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \clarinetmidiintro

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  {
    s2 |
}

tenorsaxintro =  {
    \partial 8 g'16 a'16 |
}

tenorsaxmidiintro =  {
    s4 s8 g'16 a'16 |
}

tenorsaxsectionaa =  {
    b'8\mf g'8 b'16 ( g'16 b'8 ) |
    b'16 ais'16 b'16 d''16 b'16 ( d''16 ) b'16 ( d''16 ) |
    c''8 d''8 d''16 ( e''16 fis''8 ) |
    b'8 d''8 d''16 ( fis''16 g''8 ) |
    b'8 g'8 b'8\marcato g'16 a'16 
    b'16 ais'16 b'16 d''16 b'16 ( d''16 b'8 ) |
    c''8 d''8 d''8 d''16 c''16 |
    b'8 d''8 b'8 r8 |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
}

tenorsaxsectionb =  {
    g'8\p g'8 g'8 a'8 |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'8 g'8 g'8 a'8 |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
    g'16 fis'16 g'16 a'16 e''8 e''8 |
    dis''8\< dis''16 dis''16 fis''8 dis''8 |
    b'8\! g'8 a'8 ais'8 |
}

tenorsaxsectionc =  {
    b'8\mf g'8 b'16 ( g'16 b'8 ) |
    b'16 ais'16 b'16 d''16 b'16 ( d''16 ) b'8 |
    c''8 d''8 d''16 ( e''16 fis''8 ) |
    b'8 d''8 d''16 ( fis''16 g''8 ) |
    b'8 g'8 b'8\marcato g'16 a'16 
    b'16 ais'16 b'16 d''16 b'16 ( d''16 b'8 ) |
    c''8 d''8 d''8 d''16 c''16 |
    b'8 d''8 b'8 r8 |
}

tenorsaxsectionda =  {
    c'''8 e''16 g''16 b''16 a''16 g''16 f''16 |
    e''16 ( dis''16 e''16 c''16 g'8 ) r8 |
    d''16 cis''16 d''16 b'16 g'8 r8 |
    c''16 b'16 c''8 g'16 c''16 e''16 g''16 |
    c'''8 e''16 g''16 b''16 a''16 g''16 f''16 |
    e''16 dis''16 e''16 c''16 g'8 r8 |
}

tenorsaxsectiondb =  {
    d''16 cis''16 d''16 b'16 g'8 f'8 |
    e'8 g'8 e'8 r8 |
}

tenorsaxsectiondc =  {
    e''8 f''16 e''16 dis''16 e''16 f''16 dis''16 |
    e''8 g''8 e''8 r8 |
}

tenorsaxsectiond =  {
    \repeat volta 2 { \tenorsaxsectionda }
    \alternative { { \tenorsaxsectiondb } { \tenorsaxsectiondc } }
}

tenorsaxnotes =  {
    \key g \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \key c \major
    \tenorsaxsectiond
}

tenorsaxnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \tenorsaxmidiintro

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforfluteintro = { \partial 8 r8 | }

tenorforflutemidiintro = { s4 s8 r8 | }

tenorforflutesectionb =  {
    \transpose c c' {
        g'8\p g'8 g'8 a'8 |
        g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
        g'8 g'8 g'8 a'8 |
        g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
        g'16 ( fis'16 g'16 a'16 ) b'16 ( c''16 b'16 a'16 ) |
        g'16 fis'16 g'16 a'16 e'8 e'8 |
    }
    dis''8\< dis''16 dis''16 fis''8 dis''8 |
    b'8\! g'8 a'8 ais'8 |
}

tenorforflutenotes = \transpose c bes, {
    \key g \major
    \time 2/4
    \tenorforfluteintro
    \tenorsaxsectiona
    \tenorforflutesectionb
    \tenorsaxsectionc
    \key c \major
    \tenorsaxsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s2 |
}

altosaxintro =  {
    \partial 8 fis'16 g'16 |
}

altosaxmidiintro =  {
    s4 s8 fis'16 g'16 |
}

altosaxsectiona =  {
    \repeat volta 2 {
        a'8\mf fis'8 a'4 |
        a'16 ( gis'16 a'16 fis''16 ) d''4 |
        d''8 cis''8 cis''16 ( d''16 e''8 ) |
        e''8 d''8 d''16 ( e''16 fis''8 ) |
        a'8 fis'8 a'4 |
        \acciaccatura { b'16 } a'16 ( gis'16 a'16 fis''16 ) d''4 |
        d''8 cis''8 cis''16 g''16 e''16 cis''16 |
        d''8 fis''8 d''8 r8 |
    }
}

altosaxsectionb =  {
    b'8 b'8 b'8 fis'8 |
    b'16 ( ais'16 b'16 cis''16 d''16 e''16 d''16 cis''16 ) |
    b'8 b'8 b'8 fis'8 |
    b'16 ( ais'16 b'16 cis''16 d''16 e''16 d''16 cis''16 ) |

    b'16 ( ais'16 b'16 cis''16 d''16 e''16 d''16 cis''16 ) |
    b'16 ( ais'16 b'16 cis''16 d''16 e''16 d''16 cis''16 ) |
    fis''8 fis''16 fis''16 fis''8 fis''8 |
    fis''8 fis'8 g'8 gis'8 |
}

altosaxsectionc =  {
    a'8 fis'8 a'4 |
    a'16 gis'16 a'16 fis''16 d''4 |
    d''8 cis''8 cis''16 ( d''16 e''8 ) |
    e''8 d''8 d''16 ( e''16 fis''8 ) |
    a'8 fis'8 a'4 |
    \acciaccatura { b'16 } a'16 ( gis'16 a'16 fis''16 ) d''4 |
    d''8 cis''8 cis''16 g''16 e''16 cis''16 |
    d''8 fis''8 d''8 r8 |
}

altosaxsectiond =  {
    \repeat volta 2 {
        b''4 a''16 g''16 fis''16 e''16 |
        d''16 ( cis''16 d''4 ) e''8 |
        c''16 ( b'16 c''4 ) d''8 |
        b'16 ( ais'16 b'8 ) g'16 ( b'16 d''16 g''16 |
        b''4 ) a''16 g''16 fis''16 e''16 |
        d''16 ( cis''16 d''4 ) e''8 |
    }
    \alternative {
        {
            c''16 b'16 c''4 a'8 |
            g'8 b'8 g'8 d''8 |
        }
        {
            d''16 e''16 d''8 cis''16 d''16 e''16 fis''16 |
            g''8 b''8 g''8 fis'16 g'16 |
        }
    }
}

altosaxnotes =  {
    \key d \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \key g \major
    \altosaxsectiond
}

altosaxnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \altosaxmidiintro

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes =  \transpose c d {
    \lowmelody
}

trumpetnotesmidi =  \transpose c d {
    \lowmelodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro =  {
    \partial 8 r8 |
}

trombonemidiintro =  {
    s4 s8 r8 |
}

trombonesectionaa =  {
    \repeat unfold 2 { f8\mf r8 c8 r8 | }
    c8 r8 r4 |
    f8 r8 r4 |

    \repeat unfold 2 { f8 r8 c8 r8 | }
    c8 r8 c8 c8 |
    f8 f8 f8 r8 |
}
trombonesectiona =  { \repeat volta 2 { \trombonesectionaa } }

trombonesectionb =  {
    d8\p r8 d8 r8 |
    d8 r8 a,8 r8 |
    d8 r8 d8 r8 |
    d8 r8 a,8 r8 |

    d8 r8 a,8 r8 |
    d4 bes,4 |
    a,8\< a16 a16 a8 a8 |
    a8-.\! r8 r4 |
}

trombonesectionc =  {
    \repeat unfold 2 { f8\f r8 c8 r8 | }
    c8 r8 r4 |
    f8 r8 r4 |

    \repeat unfold 2 { f8 r8 c8 r8 | }
    c8 r8 c8 c8 |
    f8 f8 f8 r8 |
}

trombonesectionda =  {
    bes,4\mf r4 |
    bes,4 r4 |
    f,4 r4 |
    bes,4 d8 f8 |
    bes,8 r8 r4 |
    bes,8 r8 r4 |
}

trombonesectiondb =  {
    f,8 r8 a,8 f,8 |
    bes,8 bes,8 bes,8 r8 |
}

trombonesectiondc =  {
    f,8 r8 a,8 f,8 |
    bes,8 bes,8 bes,8 r8 |
}

trombonesectiond =  {
    \repeat volta 2 { \trombonesectionda }
    \alternative { { \trombonesectiondb } { \trombonesectiondc } }
}

trombonenotes =  {
    \key f \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \key bes \major
    \trombonesectiond
}

trombonenotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \trombonemidiintro

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes =  { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro =  {
    \partial 8 a'16 ( bes'16 ) |
}

violinmidiintro =  {
    s4 s8 a'16 ( bes'16 ) |
}

violinsectiona =  {
    \repeat volta 2 {
        c''8\mf a'8 c''4 |
        \acciaccatura { d''16 } c''16 b'16 c''16 a''16 f''4\marcato |
        f''8\downbow e''8 e''16 ( f''16 g''8 ) |
        g''8 f''8 f''16 ( g''16 a''8 ) |

        c''8 a'8 c''4 |
        \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4\marcato |
        f''8 e''8 e''16 bes''16 g''16 e''16 |
        f''8 a''8 f''8 r8 |
    }
}

violinsectionb =  {
    d''8\p d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 ) f''16 ( g''16 f''16 e''16 ) |
    d''8 d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 ) f''16 ( g''16 f''16 e''16 ) |

    d''16 ( cis''16 d''16 e''16 ) f''16 ( g''16 f''16 e''16 ) |
    d''16 ( cis''16 d''16 e''16 ) f''16 ( e''16 f''16 g''16 ) |
    a''8\< a''16 a''16 a''8 a''8 |
    a''8 a'8 bes'8 b'8\! |
}

violinsectionc =  {
    c''8\f a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
    f''8 e''8 e''16 ( f''16 g''8 ) |
    g''8 f''8 f''16 ( g''16 a''8 ) |

    c''8 a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
    f''8 e''8 e''16 bes''16 g''16 e''16 |
    f''8 a''8 f''8 r8 |
}

violinsectiond =  {
    \repeat volta 2 {
        d'''4-4\mf c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
        ees''16 d''16 ees''4 f''8 |
        d''16-3 cis''16 d''8 bes'16 d''16 f''16 bes''16 |

        d'''4-4 c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
    }
    \alternative {
        {
            ees''16 d''16 ees''4 c''8 |
            bes'8-1 d''8 bes'8 f''8 |
        }
        {
            f''8 g''16 f''16 e''16 f''16 g''16 a''16 |
            bes''8 d'''8 bes''8 a'16\open\upbow ( b'16 ) |
        }
    }
}

%-------------------------------------------------

violinnotes =  {
    \key f \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \key bes \major
    \violinsectiond
}

violinnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextraintro
    \violinmidiintro

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \key bes \major
    \violinsectiond

    \key f \major
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \key bes \major
    \violinsectiond

    \key f \major
    \violinsectiona
    \violinsectionb
    \violinsectionc
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

pianorightupperintro =  {
    \partial 8 a'16\mf bes'16 |
}

pianorightuppermidiintro =  {
    s4 s8 a'16\mf bes'16 |
}

pianorightuppersectiona =  {
    \repeat volta 2 {
        c''8 a'8 c''4 |
        \acciaccatura { d''16 } c''16 ( b'16 c''16 a''16 f''4 ) |
        f''8 e''8 e''16 ( f''16 g''8 ) |
        g''8 f''8 f''16 ( g''16 a''8 ) |

        c''8 a'8 c''4 |
        \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
        f''8 e''8 e''16 bes''16 g''16 e''16 |
        f''8 a''8 f''8 r8 |
    }
}

pianorightuppersectionb =  {
    d''8\p d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |
    d''8 d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |

    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |
    d''16 ( cis''16 d''16 e''16 f''16 e''16 f''16 g''16 ) |
    < cis'' a'' >8\< < cis'' a'' >16 < cis'' a'' >16 < a' a'' >8 < a' a'' >8 |
    < a' a'' >8^. a'8 ( bes'8 b'8 ) \! |
}

pianorightuppersectionc =  {
    < a'\f c' >8 < f' a' >8 < a' c' >4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16 ( f''16 g''8 ) |
    g''8 f''8 f''16 ( g''16 a''8 ) |

    c''8 a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16 bes''16 g''16 e''16 |
    f''8 a''8 f''8 r8 |
}

pianorightuppersectiond =  {
    \repeat volta 2 {
        d'''4\mf c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
        ees''16 d''16 ees''4 f''8 |
        d''16 cis''16 d''8 bes'16-2 ( d''16-1 f''16-2 bes''16-4 |
        d'''4-5 ) c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
    }
    \alternative {
        {
            ees''16 d''16 ees''4 f''8 |
            bes'8 d''8 bes'8 f''8 |
        }
        {
            f''8-3 g''16 f''16 e''16-2 f''16-1 g''16 a''16 |
            bes''8 d'''8 bes''8 a'16 b'16 |
        }
    }
}

%-------------------------------------------------

pianoleftupperintro =  {
    \partial 8 r8 |
}

pianoleftuppermidiintro =  {
    s4 s8 r8 |
}

pianoleftuppersectiona =  {
    \repeat volta 2 {
        f8 < a c' >8 c8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |
        c8 < g bes c' >8 < g bes c' >8 < g bes c' >8 |
        f8 < a c' >8 < a c' >8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |
        f8 < a c' >8 c8 < a c' >8 |

        c8 < g bes c' >8 < g bes c' >8 < g bes c' >8 |
        < f a c' >8 < f a c' >8 < f a c' >8 r8 |
    }
}

pianoleftuppersectionb =  {
    d8 < f a >8 < f a >8 < f a >8 |
    d8 < f a >8 a,8 < g a >8 |
    d8 < f a >8 < f a >8 < f a >8 |
    d8 < f a >8 a,8 < g a >8 |

    d8 < f a >8 a,8 < g a >8 |
    d8 < f a >8 bes,8 < f bes >8 |
    < a, e > 8 a16 a16 a8 a8 |
    a8-. r8 r4 |
}

pianoleftuppersectionc =  {
    f8 < a c' >8 c8 < a c' >8 |
    \grace { s8 } f8 < a c' >8 c8 < a c' >8 |
    c8 < g bes c' >8 < g bes c' >8 < g bes c' >8 |
    f8 < a c' >8 < a c' >8 < a c' >8 |

    f8 < a c' >8 c8 < a c' >8 |
    f8 < a c' >8 c8 < a c' >8 |
    c8 < g bes c' >8 < g bes c' >8 < g bes c' >8 |
    < f a c' >8 < f a c' >8 < f a c' >8 r8 |
}

pianoleftuppersectiond =  {
    \repeat volta 2 {
        bes,8 < f bes d' >8 < f bes d' >8 < f bes d' >8 |
        bes,8 < f bes d' >8 < f bes d' >8 < f bes d' >8 |
        f,8 < f a ees' >8 < f a ees' >8 < f a ees' >8 |
        bes,8 < f bes d' >8 < f bes d' >8 < f bes d' >8 |

        bes,8 < f bes d' >8 < f bes d' >8 < g bes ees' >8 |
        bes,8 < f bes d' >8 < f bes d' >8 < f bes d' >8 |
    }
    \alternative {
        {
            f,8 < f a ees' >8 < f a ees' >8 < f a ees' >8 |
            bes,8 < f bes d' >8 < f bes d' >8 r8 |
        }
        {
            f,8 < f a ees' >8 < f a ees' >8 < f a ees' >8 |
            bes,8 < f bes d' >8 < f bes d' >8 r8 |
        }
    }
}

%-------------------------------------------------

pianorightuppernotes =  {
    \key f \major
    \time 2/4
% \stemUp
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \key bes \major
    \pianorightuppersectiond
}

pianorightlowernotes =  {
    \time 2/4
    \stemDown
}

pianoleftuppernotes =  {
    \key f \major
    \time 2/4
% \stemUp
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \key bes \major
    \pianoleftuppersectiond
}

pianoleftlowernotes =  {
    \time 2/4
    \stemDown
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \pianorightuppermidiintro

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

pianoleftnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \pianoleftuppermidiintro

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperintro =  {
    \partial 8 a'16\mf bes'16 |
}

accordionrightuppermidiintro =  {
    s4 s8 a'16\mf bes'16 |
}

accordionrightuppersectiona =  {
    \repeat volta 2 {
        c''8 a'8 c''4 |
        \acciaccatura { d''16 } c''16 b'16 c''16 a''16 f''4 |
        f''8 e''8 e''16 ( f''16 g''8 ) |
        g''8 f''8 f''16 ( g''16 a''8 ) |

        c''8 a'8 c''4 |
        \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
        f''8 e''8 e''16 bes''16 g''16 e''16 |
        f''8 < c'' a'' >8 < a' f'' >8 r8 |
    }
}

accordionrightuppersectionb =  {
    d''8\p d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |
    d''8 d''8 d''8 a'8 |
    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |

    d''16 ( cis''16 d''16 e''16 f''16 g''16 f''16 e''16 ) |
    d''16 ( cis''16 d''16 e''16 f''16 e''16 f''16 g''16 |
    a''8 ) < cis'' a'' >16 \< < cis'' a'' >16 < a' a'' >8 < a' a'' >8 |
    < a' a'' >8^. a'8 bes'8 b'8 \! |
}

accordionrightuppersectionc =  {
    c'8\f a'8 c'4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 b'16 c''16 a''16 f''4 |
    f''8 e''8 e''16 ( f''16 g''8 ) |
    g''8 f''8 f''16 ( g''16 a''8 ) |

    c''8 a'8 c''4 |
    \acciaccatura { c''16 [ d''16 ] } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16 bes''16 g''16 e''16 |
    f''8 < c'' a'' >8 < a' f'' >8 r8 |
}

accordionrightuppersectiond =  {
    \repeat volta 2 {
        d'''4\mf c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
        ees''16 d''16 ees''4 f''8 |
        d''16 cis''16 d''8 bes'16-2 ( d''16-1 f''16-2 bes''16-4 |
        d'''4-5 ) c'''16 bes''16 a''16 g''16 |
        f''16 e''16 f''4 g''8 |
    }
    \alternative {
        {
            ees''16 d''16 ees''4 f''8 |
            bes'8 < f' d'' >8 < d' bes' >8 f''8 |
        }
        {
            f''8-3 g''16 f''16 e''16-2 f''16-1 g''16 a''16 |
            bes''8-4 < f'' d''' >8 < d'' bes'' >8 a'16 b'16 |
        }
    }
}

%-------------------------------------------------

accordionleftupperintro =  {
    \partial 8 r8 |
}

accordionleftuppermidiintro =  {
    s4 s8 r8 |
}

accordionleftuppersectiona =  {
    \repeat volta 2 {
        f,8 f8^"M" c8 f8 |
        f,8 f8 c8 f8 |
        g,8 c'8^"7" c8 c'8
        f,8 f8^"M" c8 f8 |

        f,8 f8^"M" c8 f8 |
        f,8 f8 c8 f8 |
        g,8 c'8^"7" c8 c'8
        f,8 < f, f >8^"M" < f, f >8 r8 |
    }
}

accordionleftuppersectionb =  {
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"7" |

    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" g,8 g8^"m" |
    < a, a >8^"M" a,16^"B.S." a,16 a,8 a,8 |
    a,8 r8 r4 |
}

accordionleftuppersectionc =  {
    f,8 f8^"M" c8 f8 |
    \grace { s8 } f,8 f8 c8 f8 |
    g,8 c'8^"7" c8 c'8 |
    f,8 f8^"M" c8 f8 |

    f,8 f8^"M" c8 f8 |
    f,8 f8 c8 f8 |
    g,8 c'8^"7" c8 c'8 |
    f,8 < f, f >8^"M" < f, f >8 r8 |
}

accordionleftuppersectiond =  {
    \repeat volta 2 {
        bes,8 bes8^"M" f,8 f8^"7" |
        bes,8 bes8^"M" bes8 bes8 |
        f,8 f8^"7" f8 f8 |
        bes,8 bes8^"M" bes8 bes8 |

        bes,8 bes8^"M" f,8 f8^"7" |
        bes,8 bes8^"M" bes8 bes8 |
    }
    \alternative {
        {
            f,8 f8^"7" f8 f8 |
            bes,8 < bes, bes >8^"M" < bes, bes >8 r8 |
        }
        {
            f,8 f8^"7" f8 f8 |
            bes,8 < bes, bes >8^"M" < bes, bes >8 r8 |
        }
    }
}

%-------------------------------------------------

accordionrightuppernotes =  {
    \key f \major
    \time 2/4
% \stemUp
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \key bes \major
    \accordionrightuppersectiond
}

accordionrightlowernotes =  {
    \time 2/4
    \stemDown
}

accordionleftuppernotes =  {
    \key f \major
    \time 2/4
% \stemUp
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \key bes \major
    \accordionleftuppersectiond
}

accordionleftlowernotes =  {
    \time 2/4
    \stemDown
}

%-------------------------------------------------

accordionrightnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \accordionrightuppermidiintro

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppersectiond

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppersectiond

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
}

accordionleftnotesmidi =  {
    \time 2/4
    \preintro
    \metronomeextraintro
    \accordionleftuppermidiintro

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppersectiond

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppersectiond

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
    hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
}

drumshighintro = \drummode {
    \partial 8 r8 |
}

drumshighsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 6 {
            hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
        }
        hhc8 \acciaccatura { sna16 } sna16 sna16 sna8 sna8 |
	sna8 sna8 sna8 cymc8 |
    }
}

drumshighsectionb = \drummode {
    \repeat percent 2
    {
        hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
        hhc8 \acciaccatura { sna16 } sna16 sna16 sna8 sna8 |
    }

    \repeat percent 3
    {
        hhc8 \acciaccatura { sna16 } sna16 sna16 sna8 sna8 |
    }
    sna8 r8 r8 cymc8 |
}

drumshighsectionc = \drummode {
    \repeat percent 6
    {
        hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
    }
    hhc8 \acciaccatura { sna16 } sna16 sna16 sna8 sna8 |
    sna8 sna8 sna8 cymc8 |
}

drumshighsectiond = \drummode {
    \repeat volta 2 {
        \repeat percent 3 { hhc8 < sna hhc >8 hhc8 < sna hhc >8 | }
        hhc8 \acciaccatura { sna16 } sna16 sna16 sna8 sna8 |

        \repeat percent 2 { hhc8 < sna hhc >8 hhc8 < sna hhc >8 | }
    }
    \alternative {
        {
            hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
            sna8 sna8 sna8 cymc8 |
        }
        {
            hhc8 < sna hhc >8 hhc8 < sna hhc >8 |
            sna8 sna8 sna8 cymc8 |
        }
    }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighextraintro

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda4 | bda4 bda4 |
}

drumslowintro = \drummode {
    \partial 8 s8 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        \repeat percent 6 { bda4 bda4 | }
        bda4 bda4 |
        bda4 s4 |
    }
}

drumslowsectionb = \drummode {
    \repeat percent 2 { bda4 bda4 | bda4 bda4 | }
    \repeat percent 3 { bda4 bda4 | }
    bda4 s4 |
}

drumslowsectionc = \drummode {
    \repeat percent 6 { bda4 bda4 | }
    bda4 bda4 |
    bda4 s4 |
}

drumslowsectiond = \drummode {
    \repeat volta 2 {
        \repeat percent 3 { bda4 bda4 | }
        bda4 bda4 |
        \repeat percent 2 { bda4 bda4 | }
    }
    \alternative {
        {
            bda4 bda4 |
            bda4 s4 |
        }
        {
            bda4 bda4 |
            bda4 s4 |
        }
    }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowextraintro

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode { s2 | f2 | s2 | c2:7 | f2 | }

previewnotes = {
    \key f \major
    \time 2/4
    s4 s8 a'16 bes'16 |
    \bar ".|:"
    c''8 a'8 c''4 |
    \acciaccatura { d''16 } c''16 ( b'16 c''16 a''16 f''4 ) |
    f''8 e''8 e''16  ( f''16 g''8 ) |
    g''8 f''8 f''16  ( g''16 a''8 ) |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

\version "2.18.0"

bandmsectiona = {
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        \grace { s16 } s2 | \breakAfiv s2 | \breakAsix
    }
    \alternative {
        { s2 | \breakAsev s2 | \breakAeit } { s2 | \breakAnin s2 | }
    }
    \breakA \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo
        \grace { s16 } s2 | \breakBtre \grace { s16 } s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix
    }
    \alternative {
        { s2 | \breakBsev s2 | \breakBeit } { s2 | \breakBnin s2 | }
    }
    \breakB \bar "||"
}

bandmsectionca = {
    \markC \positionC
    s2 | \breakCone
    s2 | \breakCtwo
    s2 | \breakCtre
    \grace { s16 s16 s16 } s2 | \breakCfor
    s2 | \breakCfiv
    s2 | \breakCsix
    s2 | \breakCsev
    \grace { s16 s16 s16 } s2 | \breakCeit
    s2 | \breakCnin
    s2 | \breakCten
    s2 | \breakCelv
    s2 | \breakCtwl
    s2 | \breakCtht
    s2 | \breakCfrt
    s2 | \breakCfft
    s2 | \breakCsxt
    s2 | \breakCsvt
    s2 | \breakCett
    s2 | \breakCnnt
    s2 | \breakCtwy
    s2 | \breakCton
    s2 | \breakCttw
    \markTC \positionTC
    \bar "||"
}

bandmsectioncb = {
    s2 | \breakCtfr
    s2 |
    \markDC \positionDC
    \breakC \bar "||"
}

bandmsectionc = { \bandmsectionca \bandmsectioncb }

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC
    \grace { s16 s16 s16 } s2 | \breakCCone
    \grace { s16 } s2 | 
}

bandmNV = {
    \time 2/4
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
metronomeextraintro = { s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc

    \tempo 4 = 130
    \bandmsectiona
    \bandmsectionb
    \bandmsectionca
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = { s2 | s2 | }

melodysectiona = {
    \repeat volta 2 {
        e''8\ff e''16 e''16 e''8 e''8 |
        b''4 g''4 |
        a''8 b''16 ( a''16 ) g''8 fis''8 |
        e''2 |
        \grace { s16 } g''8 b''8 g''8 b''8 |
        a''8 b''16 ( a''16 ) g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. b''8 | }
        { e''2 ~ | e''4 r8 d''8 | }
    }
}

melodysectionb = {
    \repeat volta 2 {
        g''8 a''8 b''16 ( c'''16 b''8 ) |
        b''8 b''8 b''4 |
        \grace { s16 } c'''8 b''8 a''4 |
        \grace { s16 } e''8 e''8 e''4 |
        g''8 a''16 g''16 e''8 g''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. d''8 | }
        { e''2 ~ | e''8 e''8 g''8 b''8 | }
    }
}

melodysectionca = {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4 \) r4 |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4 \) r4 |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 a'4 ( |
    b'4. ) r8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

melodysectioncb = {
    e''2 ~ |
    e''8 e''8 g''8 b''8 |
}

melodysectionc = {
    \melodysectionca
    \melodysectioncb
}

melodycoda = {
    \acciaccatura { s16 s16 e'16 } e''8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

melody = {
    \key g \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \blankmeasure
    \melodycoda
}

melodymidi = {
    \key g \major
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionca
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = {
    s2 | s2 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        a'8 cis''16 cis''16 cis''8 fis''8 |
        a''8 cis''8 fis''8 cis''8 |
        d''8 e''16 d''16 cis''8 b'8 |
        a'8 cis''8 a'8 ( cis''8 ) |
        \grace { s16 } fis''4 cis''8 fis''8 |
        d''8 e''16 d''16 cis''8 b'8 |
    }
    \alternative {
        { a'8 ( fis'8 ) d''8 ( b'8 ) | cis''8 d''16 cis''16 cis''8 b'8 | }
        { a'8 fis'8 a'8 cis''8 | a'8 cis''8 a'8 d''8 | }
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        cis''8 gis'8 a'16 b'16 a'8 |
        e''8 e''8 e''8 a'8 |
        \grace { s16 } b'8 ( fis''8 ) fis''8 ( d''8 ) |
        \grace { s16 } a'8 ( cis''8 ) cis''8 ( a'8 ) |
        fis'8 ( cis''8 ) cis''8 ( fis''8 ) |
        d''8 e''16 d''16 cis''8 b'8 |
    }
    \alternative {
        { a'8 ( fis'8 ) d''8 ( b'8 ) | cis''8 ( d''16 cis''16 cis''8 b'8 ) | }
        { a'8 fis'8 cis''8 a'8 | fis'8 fis'8 a'8 cis''8 | }
    }
}

tenorharmonysectionca = {
    fis''4 e''8 d''8 |
    cis''8 d''8 e''8 fis''8 |
    a'4 \acciaccatura { fis'16 [ gis'16 ] } a'4-^ |
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8 r8 fis'4-^ |
    fis''4 e''8 d''8 |
    cis''8 d''8 e''8 fis''8 |
    a'4 \acciaccatura { fis'16 [ gis'16 ] } a'4-^ |
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8 r8 fis'4-^ |
    a'8 fis'8 cis''8 b'8 |
    a'8 gis'8 fis'8 cis''8 |
    d''8. e''16 fis''16 ( e''16 d''8 ) |
    cis''8 b'8 a'8 cis''8 |
    fis''8 cis''8 a'8 cis''8 |
    d''8 e''16 d''16 cis''8 b'8 |
    a'8 fis'8 d''8 d''8 |
    cis''8 fis'8 a'8 cis''8 |
    a'8 fis'8 cis''8 b'8 |
    a'8 gis'8 fis'8 cis''8 |
    d''8. e''16 fis''16 ( e''16 d''8 ) |
    cis''16 ( b'16 ) b'16 ( a'16 ) a'8 cis''8 |
    fis''4 cis''8 fis''8 |
    d''8 e''16 d''16 cis''8 b'8 |
}

tenorharmonysectioncb = {
    a'8 fis'8 cis''8 a'8 |
    fis'8 fis'8 a'8 cis''8 |
}

tenorharmonysectionc = {
    \tenorharmonysectionca
    \tenorharmonysectioncb
}

tenorharmonycoda = {
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8-^ r8 b'8-^ r8 |
    \grace { s16 } a'2-^-\fermata |
}

tenorharmony = \transpose c bes, {
    \key a \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi = \transpose c bes, {
    \key a \major
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = { s2 | s2 | }

altoharmonysectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 } s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        \grace { s16 } s2 |
        \grace { s16 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

altoharmonysectionca = {
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
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

altoharmonysectioncb = {
    s2 |
    s2 |
}

altoharmonysectionc = {
    \altoharmonysectionca
    \altoharmonysectioncb
}

altoharmonycoda = {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

altoharmony = {
    \key g \major
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \blankmeasure
    \altoharmonycoda
}

altoharmonymidi = {
    \key g \major
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionca
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro = { s2 | s2 | }

countersectiona = {
    \repeat volta 2 {
        \repeat percent 2 { e8\ff r8 b,8 r8 | }
        dis8 r8 b,8 r8 |
        e8 b8 g8 e8 |
        \grace { s16 } e8 r8 b,8 r8 |
        dis8 r8 b,8 r8 |
    }
    \alternative {
        { e4 c'4 | b8 b,8 g,8 b,8 | }
        { e8 b,8 g,8 b,8 | e8 b,8 e,8 r8 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        \grace { s16 } a8 a8 a4 |
        \grace { s16 } e8 e8 e4 |
        e'2 |
        dis'2 |
    }
    \alternative {
        { e'4 a8 c'8 | b8 b,8 e8 d8-^ | }
        { e'8 b8 g8 b8 | e8 e8 ( g8 b8 ) | }
    }
}

countersectionca = {
    e8 r8 b,8 r8 |
    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b,8 r8 |
    e8 r8 b,8 r8 |
    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b,8 r8 |

    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 b,8 e8 r8 |
    r8 g8 b8 e'8 |
    dis'4 b4 |

    e'8 r8 a8 c'8 |
    b8 b8 g8 b8 |

    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 b,8 e8 r8 |
    r8 g8 b8 e'8 |
    dis'4 b4 |
}

countersectioncb = {
    e'8 b8 g8 b8 |
    e8 e8 ( g8 b8 ) |
}

countersectionc = {
    \countersectionca
    \countersectioncb
}

countercoda = {
    \grace { s16 s16 s16 } e'8-> r8 b8-> r8 |
    \grace { s16 } e4->-\fermata r4 |
}

counter = \transpose c c' {
    \key g \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \blankmeasure
    \countercoda
}

countermidi = \transpose c c' {
    \key g \major
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionca
    \countercoda
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
        e8 r8 b,8 r8 |
        e8 r8 b,8 r8 |
        dis8 r8 b,8 r8 |
        e8 r8 b,8 r8 |
        \grace { s16 } e8 r8 b,8 r8 |
        dis8 r8 b,8 r8 |
    }
    \alternative {
        { e8 r8 a,8 r8 | e8 b,8 g,8 b,8 | }
        { e8 b,8 g,8 b,8 | e8 b,8 e,8 e8 | }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        b,8 r8 g,8 r8 |
        d8 r8 g,8 r8 |
        \grace { s16 } a,8 b,8 c8 d8 |
        \grace { s16 } e8 r8 b,8 r8 |
        e8 r8 b,8 r8 |
        dis8 r8 b,8 r8 |
    }
    \alternative {
        { e8 r8 a,8 r8 | e8 b,8 e,8 d8 | }
        { e8 b,8 g,8 b,8 | e8 e8 g8 b8 | }
    }
}

basslinesectionca = {
    e8 r8 b,8 r8 |
    e8 r8 a8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b8 r8 |

    e8 r8 b,8 r8 |
    e8 r8 a8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b8 r8 |

    e8 r8 a8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 r8 b,8 r8 |

    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 r8 a,8 c8 |
    e8 b,8 g,8 b,8 |

    e8 r8 a8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 r8 a8 r8 |

    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
}

basslinesectioncb = {
    e8 b,8 g,8 b,8 |
    e8 e8 g8 b8 | 
}

basslinesectionc = {
    \basslinesectionca
    \basslinesectioncb
}

basslinecoda = {
    \grace { s16 s16 s16 } e'8-> r8 b8-> r8 |
    \grace { s16 } e4->-\fermata r4 |
}

bassline = {
    \key g \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \blankmeasure
    \basslinecoda
}

basslinemidi = {
    \key g \major
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = {
    s2 | s2 |
}

guitarsectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 } s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        \grace { s16 } s2 |
        \grace { s16 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

guitarsectionca = {
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
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

guitarsectioncb = {
    s2 |
    s2 |
}

guitarsectionc = {
    \guitarsectionca
    \guitarsectioncb
}

guitarcoda = {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

guitarnotes = {
    \key g \major
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionca
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s2 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        e2:min |
        e2:min |
        b2:7 |
        e2:min |
        \grace { e16:min } e2:min |
        b2:7 |
    }
    \alternative {
        { e4:min a4:min | e4.:min b8:7 | }
        {
            \chordChangesOff
            e2:min |
            \chordChangesOn
            e4.:min d8:7 |
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        g2 |
        g2 |
        \grace { s16 } a2:min |
        \grace { s16 } e2:min |
        e2:min |
        b2:7 |
    }
    \alternative {
        { e4:min a:min | e4.:min d8:7 | }
        { e2:min | e2:min | }
    }
}

chordletterssectionca = \chordmode {
    \chordChangesOff
    e2:min |
    \chordChangesOn
    e4:min a4:min |
    e2:min |
    \grace { s16 s16 s16 } e2:min |
    e2:min |
    e4:min a4:min |
    e2:min |
    \grace { s16 s16 s16 } e2:min |
    e4:min a4:min |
    e2:min |
    b2:7 |
    e2:min |
    e2:min |
    b2:7 |
    e4:min a4:min |
    e2:min |
    e4:min a4:min |
    e2:min |
    b2:7 |
    e2:min |
    e2:min |
    b2:7 |
}

chordletterssectioncb = \chordmode {
    e2:min |
    e2:min |
}

chordletterssectionc = \chordmode {
    \chordletterssectionca
    \chordletterssectioncb
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { e8.:min }
    \chordChangesOn
    e4:min b4:7 |
    \grace { s16 } e2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \blankmeasure
    \chordChangesOff
    \grace { e8.:min }
    \chordChangesOn
    e4:min b4:7 |
    \grace { s16 } e2:min |
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

flutenotes = \transpose c c {
    \melody
}

flutenotesmidi = \transpose c c {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = {
    s2 | s2 |
}

clarinetsectiona = \transpose bes c' {
    \repeat volta 2 {
        e''8\ff e''16 e''16 e''8 e''8 |
        b''4 g''4 |
        a''8 b''16 a''16 g''8 fis''8 |
        e''4. r8 |
        \grace { s16 } g''8 b''8 g''8 b''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. b'8 | }
        { e''2 ~ | e''4 r8 d''8 | }
    }
}

clarinetsectionb = \transpose bes c' {
    \repeat volta 2 {
        g''8 a''8 b''16 c'''16 b''8 |
        b''8 b''8 b''4 |
        \grace { s16 } c'''8 b''8 a''4 |
        \grace { s16 } e''8 e''8 e''4 |
        g''4 e''8 g''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. d''8 | }
        { e''2 ~ | e''8 e'8 g'8 b'8 | }
    }
}

clarinetsectionca = \transpose bes c' {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8-. r8 e'4-^ |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8-. r8 e'4-^ |
    e''4 d''8 c''8 |
    b'8 a''8 g''4 |
    a''8. b''16 c'''16 ( b''16 a''8 ) |
    g''8 fis''8 e''4 |
    g''4 e''8 g''8 |
    a''8 b''16 a''16 g''8 fis''8 |
    e''4 a''4 |
    b''4. b'8 |
    e''8 e''8 d''8 c''8 |
    b'8 a''8 g''4 |
    a''8. b''16 c'''16 ( b''16 a''8 ) |
    g''16 ( fis''16 ) fis''16 ( e''16 ) e''4 |
    g''8 b''8 g''8 b''8 |
    a''8 b''16 a''16 g''8 fis''8 |
}

clarinetsectioncb = \transpose bes c' {
    e''2 ~ |
    e''8 e'8 g'8 b'8 |
}

clarinetsectionc = {
    \clarinetsectionca
    \clarinetsectioncb
}

clarinetcoda = \transpose bes c' {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8-^ r8 b'8-^ r8 |
    \grace { s16 } e''2-^-\fermata |
}

clarinetnotes = {
    \key a \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8-^ r8 b'8-^ r8 |
    \grace { s16 } e''2-^-\fermata |
}

clarinetnotesmidi = {
    \key a \major
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = {
    s2 | s2 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        a'8 cis''16 cis''16 cis''8 fis''8 |
        a''8 cis''8 fis''8 cis''8 |
        d''8 e''16 d''16 cis''8 b'8 |
        a'8 cis''8 a'8 ( cis''8 ) |
        \grace { s16 } fis''4 cis''8 fis''8 |
        d''8 e''16 d''16 cis''8 b'8 |
    }
    \alternative {
        { a'8 ( fis'8 ) d''8 ( b'8 ) | cis''8 d''16 cis''16 cis''8 b'8 | }
        { a'8 fis'8 a'8 cis''8 | a'8 cis''8 a'8 d''8 | }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        cis''8 gis'8 a'16 b'16 a'8 |
        e''8 e''8 e''8 a'8 |
        \grace { s16 } b'8 ( fis''8 ) fis''8 ( d''8 ) |
        \grace { s16 } a'8 ( cis''8 ) cis''8 ( a'8 ) |
        fis'8 ( cis''8 ) cis''8 ( fis''8 ) |
        d''8 e''16 d''16 cis''8 b'8 |
    }
    \alternative {
        { a'8 ( fis'8 ) d''8 ( b'8 ) | cis''8 ( d''16 cis''16 cis''8 b'8 ) | }
        { a'8 fis'8 cis''8 a'8 | fis'8 fis'8 a'8 cis''8 | }
    }
}

tenorsaxsectionca = {
    fis''4 e''8 d''8 |
    cis''8 d''8 e''8 fis''8 |
    a'4 \acciaccatura { fis'16 [ gis'16 ] } a'4-^ |
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8 r8 fis'4-^ |
    fis''4 e''8 d''8 |
    cis''8 d''8 e''8 fis''8 |
    a'4 \acciaccatura { fis'16 [ gis'16 ] } a'4-^ |
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8 r8 fis'4-^ |
    a'8 fis'8 cis''8 b'8 |
    a'8 gis'8 fis'8 cis''8 |
    d''8. e''16 fis''16 ( e''16 d''8 ) |
    cis''8 b'8 a'8 cis''8 |
    fis''8 cis''8 a'8 cis''8 |
    d''8 e''16 d''16 cis''8 b'8 |
    a'8 fis'8 d''8 d''8 |
    cis''8 fis'8 a'8 cis''8 |
    a'8 fis'8 cis''8 b'8 |
    a'8 gis'8 fis'8 cis''8 |
    d''8. e''16 fis''16 ( e''16 d''8 ) |
    cis''16 ( b'16 ) b'16 ( a'16 ) a'8 cis''8 |
    fis''4 cis''8 fis''8 |
    d''8 e''16 d''16 cis''8 b'8 |
}

tenorsaxsectioncb = {
    a'8 fis'8 cis''8 a'8 |
    fis'8 fis'8 a'8 cis''8 |
}

tenorsaxsectionc = {
    \tenorsaxsectionca
    \tenorsaxsectioncb
}

tenorsaxcoda = {
    \acciaccatura { a'16 [ b'16 bis'16 ] } cis''8-^ r8 b'8-^ r8 |
    \grace { s16 } a'2-^-\fermata |
}

tenorsaxnotes = {
    \key a \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key a \major
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionca
    \tenorsaxcoda
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro = {
    s2 | s2 |
}

altosaxsectiona = \transpose ees c, {
    \repeat volta 2 {
        e''8\ff e''16 e''16 e''8 e''8 |
        b''4 g''4 |
        a''8 b''16 a''16 g''8 fis''8 |
        e''4. r8 |
        \grace { s16 } g''8 b''8 g''8 b''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. b''8 | }
        { e''8 g''8 b''8 e'''8 | e'''4. d'''8 | }
    }
}

altosaxsectionb = \transpose ees c {
    \repeat volta 2 {
        g'8 a'8 b'16 c''16 b'8 |
        b'8 b'8 b'4 |
        \grace { s16 } c''8 b'8 a'4 |
        \grace { s16 } e''8 e''8 e''4 |
        g''4 e''8 g''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 c'''4 | b''4. d''8 | }
        { e''8 g''8 b''8 e'''8 | e''8 e''8 g''8 b''8 | }
    }
}

altosaxsectionca = \transpose ees c' {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 \) r8 e'4-> |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 \) r8 e'4-> |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 ( b'16 a'8 ) |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 c''4 |
    b'4. b'8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

altosaxsectioncb = \transpose ees c {
    e''8 g''8 b''8 e'''8 |
    e''8 e''8 g''8 b''8 |
}

altosaxsectionc = {
    \altosaxsectionca
    \altosaxsectioncb
}

altosaxcoda = \transpose ees c' {
    \acciaccatura { s16 s16 e'16 } e''8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

altosaxnotes = {
    \key e \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \acciaccatura { s16 s16 e'16 } e''8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

altosaxnotesmidi = {
    \key e \major
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \blankmeasure
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = {
    s2 | s2 |
}

trumpetsectiona = \transpose bes c {
    \repeat volta 2 {
        e''8\ff e''16 e''16 e''8 e''8 |
        b''4 g''4 |
        a''8 b''16 a''16 g''8 fis''8 |
        e''4. r8 |
        \grace { s16 } g''8 b''8 g''8 b''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. b'8 | }
        { e''2 ~ | e''4 r8 d''8 | }
    }
}

trumpetsectionb = \transpose bes c {
    \repeat volta 2 {
        g''8 a''8 b''16 c'''16 b''8 |
        b''8 b''8 b''4 |
        \grace { s16 } c'''8 b''8 a''4 |
        \grace { s16 } e'''8 e'''8 e'' 4 |
        g''4 e''8 g''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. d''8 | }
        { e''2 ~ | e''8 e''8 g''8 b''8 | }
    }
}

trumpetsectionca = \transpose bes c' {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 \) r8 e'4-> |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 \) r8 e'4-> |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 a'4 |
    g'4. b'8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

trumpetsectioncb = \transpose bes c' {
    e''2 ~ |
    e''8 e''8 g''8 b''8 |
}

trumpetsectionc = {
    \trumpetsectionca
    \trumpetsectioncb
}

trumpetcoda = \transpose bes c' {
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

trumpetnotes = {
    \key a \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

%trumpetonenotes = \transpose c des {
%    \key a \major
%    \time 2/4
%    \trumpetsectiona
%    \trumpetsectionb
%    \trumpetsectionc
%    \blankmeasure
%    \trumpetcoda
%}

trumpetnotesmidi = {
    \key a \major
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = {
    s2 | s2 |
}

trombonesectiona = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 2 { e8\ff r8 b,8 r8 | }
        dis8 r8 b,8 r8 |
        e8 b8 g8 e8 |
        \grace { s16 } e8 r8 b,8 r8 |
        dis8 r8 b,8 r8 |
    }
    \alternative {
        { e4 c'4 | b8 b,8 g,8 b,8 | }
        { e8 b,8 g,8 b,8 | e8 b,8 e,8 r8 | }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        \grace { s16 } a8 a8 a4 |
        \grace { s16 } e8 e8 e4 |
        e'2 |
        dis'2 |
    }
    \alternative {
        { e'4 a8 c'8 | b8 b,8 e8 d8-^ | }
        { e'8 b8 g8 b8 | e8 e8 ( g8 b8 ) | }
    }
}

trombonesectionca = {
    e8 r8 b,8 r8 |
    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b,8 r8 |
    e8 r8 b,8 r8 |
    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    \grace { s16 s16 s16 } e8 r8 b,8 r8 |

    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 b,8 e8 r8 |
    r8 g8 b8 e'8 |
    dis'4 b4 |

    e'8 r8 a8 c'8 |
    b8 b8 g8 b8 |

    e8 r8 e8 r8 |
    e8 r8 b,8 r8 |
    dis8 r8 b,8 r8 |
    e8 b,8 e8 r8 |
    r8 g8 b8 e'8 |
    dis'4 b4 |
}

trombonesectioncb = {
    e'8 b8 g8 b8 |
    e8 e8 ( g8 b8 ) |
}

trombonesectionc = {
    \trombonesectionca
    \trombonesectioncb
}

trombonecoda = {
    \grace { s16 s16 s16 } e'8-> r8 b8-> r8 |
    \grace { s16 } e4->-\fermata r4 |
}

trombonenotes = {
    \key g \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonecoda
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
        e''8\ff e''16 e''16 e''8 e''8 |
        b''4 g''4 |
        a''8 b''16 ( a''16 ) g''8 fis''8 |
        e''2 |
        \grace { s16 } g''8 b''8 g''8 b''8 |
        a''8 b''16 ( a''16 ) g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. b''8 | }
        { e''2 ~ | e''4 r8 d''8 | }
    }
}

violinsectionb = {
    \repeat volta 2 {
        g''8 a''8 b''16 ( c'''16 b''8 ) |
        b''8 b''8 b''4 |
        \grace { s16 } c'''8 b''8 a''4 |
        \grace { s16 } < e'' e''' >8 < e'' e''' >8 e'' 4 |
        g''8 a''16 g''16 e''8 g''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        { e''4 a''4 | g''4. d''8 | }
        { e''2 ~ | e''8 e''8 g''8 b''8 | }
    }
}

violinsectionca = {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4 \) r4 |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    b'2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4 \) r4 |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 < a' c'' >4 ( |
    < g' b' >4. ) r8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

violinsectioncb = {
    e''2 ~ |
    e''8 e''8 g''8 b''8 |
}

violinsectionc = {
    \violinsectionca
    \violinsectioncb
}

violincoda = {
    \grace { s16 s16 s16 } < e' e'' >8 r8 b'8 r8 |
    \grace { s16 } e'2-\fermata |
}

violinnotes = {
    \key g \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionca
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
    s2 |
    s2 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        e'8\ff e'16 e'16 e'8 e'8 |
        b'4 g'4 |
        a'8 b'16 a'16 g'8 fis'8 |
        e'2 |
        \acciaccatura { e'16 } g'8 b'8 g'8 b'8 |
        a'8 b'16 a'16 g'8 fis'8 |
    }
    \alternative {
        { e'4 < c' e' a' >4 | < b e' g' >4 r8 b8 | }
        { < g b e' >2 ~ | < g b e' >4 r8 d'8 | }
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        g'8 a'8 b'16 ( c''16 b'8 ) |
        < g' b' >8 < g' b' >8 < g' b' >4 |
        \acciaccatura { d''16 } c''8 b'8 a'4 |
        \acciaccatura { dis''16 } e''8 e''8 e'4 |
        g'8 a'16 g'16 e'8 g'8 |
        a'8 b'16 a'16 g'8 fis'8 |
    }
    \alternative {
        { e'4 < c' e' a' >4 | < b e' g' >4. d'8-> | }
        { < g b e' >2 ~ | < g b e' >8 \< e'8 ( g'8 b'8 ) \!  | }
    }
}

pianorightuppersectionca = {
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    < g' b' >2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4-> \) r4 |
    e''4 d''8 c''8 |
    b'8 c''8 d''8 e''8 |
    < g' b' >2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4-> \) r4 |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 < a' c'' >4 ( |
    < g' b' >4. ) r8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

pianorightuppersectioncb = {
    < g b e' >2 ~ |
    < g b e' >8 \< e'8 ( g'8 b'8 ) \!  |
}

pianorightuppersectionc = {
    \pianorightuppersectionca
    \pianorightuppersectioncb
}

pianorightuppercoda = {
    \acciaccatura { s16 s16 e'16 } e''8 r8 < dis' a' b' >8 r8 |
    \acciaccatura { b'16 } < e' e'' >4-\fermata r4 |
}

pianorightuppernotes = {
    \key g \major
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \blankmeasure
    \pianorightuppercoda
}

%-------------------------------------------------

pianorightlowernotes = {
    \key g \major
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro = {
    s2 |
    s2 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        e8 < g b >8 b,8 < g b >8 |
        e8 < g b >8 b,8 < g b >8 |
        dis8 < fis a b >8 b,8 < fis a b >8 |
        e8 < g b >8 b,8 < g b >8 |
        \grace { s16 } e8 < g b >8 b,8 < g b >8 |
        dis8 < fis a b >8 b,8 < fis a b >8 |
    }
    \alternative {
        { e8 < g b >8 a,8 c8 | e8 b,8 g,8 b,8 | }
        { e8 b,8 g,8 b,8 | e8 b,8 e,8 r8 | }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        \grace { s16 } a,8 a8 e8 a8 |
        \grace { s16 } e,8 e8 g,8 e8 |
        e8 < g b >8 b,8 < g b >8 |
        dis8 < fis a b >8 b,8 < fis a b >8 |
    }
    \alternative {
        { e8 < g b >8 a,8 c8 | e8 b,8 e,8 < d, d >8-> | }
        { e8 b,8 g,8 b,8 | < e, e >8 e8 ( g8 b8 ) | }
    }
}

pianoleftuppersectionca = {
    e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 e8 < a c' >8 |
    e8 < g b >8 b,8 < g b >8 |
    \grace { s16 s16 s16 } e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 e8 < a c' >8 |
    e8 < g b >8 b,8 < g b >8 |
    \grace { s16 s16 s16 } e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 e8 < a c' >8 |
    e8 < g b >8 b,8 < g b >8 |
    dis8 < fis a b >8 b,8 < fis a b >8 |
    e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 b,8 < g b >8 |
    dis8 < fis a b >8 b,8 < fis a b >8 |
    e8 < g b >8 a,8 c8 |
    e8 b,8 g,8 b,8 |
    e8 < g b >8 e8 < a c' >8 |
    e8 < g b >8 b,8 < g b >8 |
    dis8 < fis a b >8 b,8 < fis a b >8 |
    e8 < g b >8 b,8 < g b >8 |
    e8 < g b >8 b,8 < g b >8 |
    dis8 < fis a b >8 b,8 < fis a b >8 |
}

pianoleftuppersectioncb = {
    e8 b,8 g,8 b,8 |
    < e, e >8 e8 ( g8 b8 ) |
}

pianoleftuppersectionc = {
    \pianoleftuppersectionca
    \pianoleftuppersectioncb
}

pianoleftuppercoda = {
    \grace { s16 s16 s16 } < e g b >8 r8 < b, b >8 r8 |
    \grace { s16 } < e, e >4-\fermata r4 |
}

pianoleftuppernotes = {
    \key g \major
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \blankmeasure
    \pianoleftuppercoda
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key g \major
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionca
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionca
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = {
    s2 |
    s2 |
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        e'8\ff e'16 e'16 e'8 e'8 |
        b'4 g'4 |
        a'8 b'16 a'16 g'8 fis'8 |
        e'2 |
        \acciaccatura { e'16 [ fis'16 ] } g'8 b'8 g'8 b'8 |
        a'8 b'16 a'16 g'8 fis'8 |
    }
    \alternative {
        { e'4 < c' e' a' >4 | < b e' g' >4 r8 b8 | }
        { e'2 ~ | e'4. d'8 | }
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        g'8 < fis' a' >8 < g' b' >16 < a' c'' >16 < g' b' >8 |
        < g' b' >8 < g' b' >8 < g' b' >4 |
        \acciaccatura { d''16 } < c'' e' >8 < gis' b' >8 a'4 |
        \acciaccatura { dis''16 } e''8 e''8 e'4 |
        g'8 a'16 g'16 e'8 g'8 |
        a'8 b'16 a'16 g'8 fis'8 |
    }
    \alternative {
        { e'4 < c' e' a' >4 | < b e' g' >4. d'8 | }
        { e'2 ~ | e'8 e'8 g'8 b'8 | }
    }
}

accordionrightuppersectionca = {
    e''4 d''8 c''8 |
    b'8 < a' c'' >8 < b' d'' >8 < c'' e'' >8 |
    < g' b' >2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4-> \) r4 |
    e''4 d''8 c''8 |
    b'8 < a' c'' >8 < b' d'' >8 < c'' e'' >8 |
    < g' b' >2 \( |
    \acciaccatura { b'16 [ cis''16 dis''16 ] } e''4-> \) r4 |
    e''4 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'4 e'8 g'8 |
    a'8 b'16 a'16 g'8 fis'8 |
    e'4 < a' c'' >4 ( |
    < g' b' >4. ) r8 |
    e''8 e''8 d''8 c''8 |
    b'8 a'8 g'4 |
    a'8. b'16 c''16 b'16 a'8 |
    g'8 fis'8 e'4 |
    g'8 b'8 g'8 b'8 |
    a'8 b'16 a'16 g'8 fis'8 |
}

accordionrightuppersectioncb = {
    e'2 ~ |
    e'8 e'8 g'8 b'8 |
}

accordionrightuppersectionc = {
    \accordionrightuppersectionca
    \accordionrightuppersectioncb
}

accordionrightuppercoda = {
    \acciaccatura { s16 s16 e'16 } e''8^.^> r8 < dis' a' b' >8^.^> r8 |
    \acciaccatura { b'16 } < e' g' b' e'' >2^>^\fermata |
}

accordionrightuppernotes = {
    \key g \major
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \blankmeasure
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key g \major
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro = {
    s2 |
    s2 |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        e,8 e8^"m" b,8 e8 |
        e,8 e8 b,8 e8 |
        fis,8 b8^"7" b,8 b8
        e,8 e8^"m" b,8 e8 |
        \grace { s16 } e,8 e8 b,8 e8 |
        fis,8 b8^"7" b,8 b8
    }
    \alternative {
        { e,8 e8^"m" a,8 a8^"m" | e,8 e8^"m" b,8 b8^"7" | }
        { e,8 e8^"m" b,8 e8 | e,8^"B.S." b,8 e,8 < d, d' >8^"7" | }
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        g,8^"B.S." d,8 g,8 g8^"M" |
        g,8 g8 d,8 g8 |
        \grace { s16 } a,8^"B.S." e,8 a,8 a8^"m" |
        \grace { s16 } e,8 e8^"m" b,8 e8 |
        e,8 e8 b,8 e8 |
        fis,8 b8^"7" b,8 b8 |
    }
    \alternative {
        { e,8 e8^"m" a,8 a8^"m" | e,8^"B.S." b,8 e,8 < d, d' >8^"7" | }
        { e,8 e8^"m" b8 e8 | < e, e >8 r8 r4 | }
    }
}

accordionleftuppersectionca = {
    e,8 e8^"m" a,8 a8^"m" |
    e,8^"B.S." a,8 e,8 a,8 |
    e,8 e8^"m" b,8 e8 |
    \grace { s16 s16 s16 } e,8 e8 b,8 e8 |

    e,8 e8^"m" a,8 a8^"m" |
    e,8^"B.S." a,8 e,8 a,8 |
    e,8 e8^"m" b,8 e8 |
    \grace { s16 s16 s16 } e,8 e8 b,8 e8 |

    e,8 e8^"m" a,8 a8^"m" |
    e,8_3^"B.S." c8_5 b,8_4_- e8^"m" |
    a,8_3 a8^"m" a,8 a8 |
    e,8^"B.S." b,8 e,8 e8^"m" |

    e,8 e8 b,8 e8 |
    fis,8 b8^"7" b,8 b8 |
    e,8 e8^"m" a,8 a8^"m" |
    e,8 e8^"m" e8 e8 |

    e,8 e8^"m" a,8 a8^"m" |
    e,8_3^"B.S." c8_5 b,8_4_- e8^"m" |
    a,8_3 a8^"m" a,8 a8 |
    e,8^"B.S." b,8 e,8 e8^"m" |
    e,8 e8 b,8 e8 |
    fis,8 b8^"7" b,8 b8 |
}

accordionleftuppersectioncb = {
    e,8 e8^"m" b8 e8 |
    < e, e >8 r8 r4 |
}

accordionleftuppersectionc = {
    \accordionleftuppersectionca
    \accordionleftuppersectioncb
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < e, e >8^"m"_._> r8 < b, b >8^"7"_._> r8 |
    \grace { s16 } < e, e >2_>^"m"^\fermata |
}

accordionleftuppernotes = {
    \key g \major
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \blankmeasure
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key g \major
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionca
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionca
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    << sna4 cymr4 >> r8 cymc8 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 } s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        \grace { s16 } s2 |
        \grace { s16 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumshighsectionca = \drummode {
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
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

drumshighsectioncb = \drummode {
    s2 |
    s2 |
}

drumshighsectionc = \drummode {
    \drumshighsectionca
    \drumshighsectioncb
}

drumshighcoda = \drummode {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionca
    \drumshighcoda
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
        \grace { s16 } s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        \grace { s16 } s2 |
        \grace { s16 } s2 |
        s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }
}

drumslowsectionca = {
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
    s2 |
    s2 |
    s2 |
    \grace { s16 s16 s16 } s2 |
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

drumslowsectioncb = {
    s2 |
    s2 |
}

drumslowsectionc = {
    \drumslowsectionca
    \drumslowsectioncb
}

drumslowcoda = {
    \grace { s16 s16 s16 } s2 |
    \grace { s16 } s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionca
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    e2:min | s2 | b2:7 | e2:min | s2 | b2:7 |
}

previewnotes = {
    \key g \major
    \time 2/4
    e''8 e''16 e''16 e''8 e''8 |
    b''4 g''4 |
    a''8 b''16 ( a''16 ) g''8 fis''8 |
    e''2 |
    g''8 b''8 g''8 b''8 |
    a''8 b''16 ( a''16 ) g''8 fis''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

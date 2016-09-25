\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmintro = {
    s1 |
}

bandmsectionaaa = {
    \markSA \positionSA
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 | \breakAeit
    \bar "||" \markTC \positionTC
}

bandmsectionaab = { s1 | \breakAnin }

bandmsectionaa = { \bandmsectionaaa \bandmsectionaab }

bandmsectionab = { s1 | \breakAten }

bandmsectionac = { s1 | }

bandmsectiona = {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \bar ".|:-||" \breakA
}

bandmsectionb = {
    \repeat volta 2 {
        \markB \positionB
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
        s1 | \breakBfor
        s1 | \breakBfiv
        s1 | \breakBsix
        s1 |
        \breakB
    }
}

bandmsectionca = {
    \markC \positionC
    s1 | \breakCone
    s1 | \breakCtwo
    s1 | \breakCtre
}

bandmsectioncb = {
    s1 | \breakCfor
}

bandmsectioncc = {
    s1 |
}

bandmsectionc = {
    \repeat volta 2 { \bandmsectionca }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \bar "||" \markDS \positionDS \breakC
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda = { \markCC \positionCC s1 | \breakCDone s1 | \breakCDtwo s1 | }

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for tempo changes in
% the midi output.

preintro = { s1 | }

metronome =  \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 145
    \preintro
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc

    \bandmsectionaa
    \bandmsectionab
    \bandmsectionaaa
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    s2 s8 r8 r4 |
}

tenorharmonysectionaaa = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

tenorharmonysectionaab = {
    s1 |
}

tenorharmonysectionaa = { \tenorharmonysectionaaa \tenorharmonysectionaab }

tenorharmonysectionab = {
    s1 |
}

tenorharmonysectionac = {
    s1 |
}

tenorharmonysectiona = {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \tenorharmonysectionac } }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

tenorharmonysectionca = {
    s1 |
    s1 |
    s1 |
}

tenorharmonysectioncb = {
    s1 |
}

tenorharmonysectioncc = {
    s1 |
}

tenorharmonysectionc = {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonycoda = {
    s1 |
    s1 |
    s1
}

tenorharmony = {
    \time 4/4
    \key d \minor
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi = {
    \time 4/4
    \preintro
    \preintro

    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectionaa
    \tenorharmonysectionab
    \tenorharmonysectionaaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyintro = {
    s2 s8 r8 r4 |
}

altoharmonysectionaaa = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

altoharmonysectionaab = {
    s1 |
}

altoharmonysectionaa = { \altoharmonysectionaaa \altoharmonysectionaab }

altoharmonysectionab = {
    s1 |
}

altoharmonysectionac = {
    s1 |
}

altoharmonysectiona = {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \altoharmonysectionac } }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

altoharmonysectionca = {
    s1 |
    s1 |
    s1 |
}

altoharmonysectioncb = {
    s1 |
}

altoharmonysectioncc = {
    s1 |
}

altoharmonysectionc = {
    \repeat volta 2 { \altoharmonysectionca }
    \alternative { { \altoharmonysectioncb } { \altoharmonysectioncc } }
}

altoharmonycoda = {
    s1 |
    s1 |
    s1
}

altoharmony = {
    \time 4/4
    \key d \minor
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \blankmeasure
    \altoharmonycoda
}

altoharmonymidi = {
    \time 4/4
    \preintro
    \preintro

    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectionaa
    \altoharmonysectionab
    \altoharmonysectionaaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    s2 s8 r8 r4 |
}

countersectionaaa = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

countersectionaab = {
    s1 |
}

countersectionaa = { \countersectionaaa \countersectionaab }

countersectionab = {
    s1 |
}

countersectionac = {
    s1 |
}

countersectiona = {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \countersectionac } }
}

countersectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

countersectionca = {
    s1 |
    s1 |
    s1 |
}

countersectioncb = {
    s1 |
}

countersectioncc = {
    s1 |
}

countersectionc = {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countercoda = {
    s1 |
    s1 |
    s1
}

counter = {
    \time 4/4
    \key d \minor
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \blankmeasure
    \countercoda
}

countermidi = {
    \time 4/4
    \preintro
    \preintro

    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionc

    \countersectionaa
    \countersectionab
    \countersectionaaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    s2 s8 r8 r4 |
}

basslinesectionaaa = {
    a4--\f gis4-- a4-- b4-- |
    c'4-> b4 a8 gis8 f4 |
    d4\mf a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    a4--\f gis4-- a4-- b4-- |
    c'4-> b4 a8 gis8 f4 |
    a4 e4 a,4 e4 |
    d4 e4 f4 gis4 |
}

basslinesectionaab = {
    a4 e4 a,4 e4 |
}

basslinesectionaa = { \basslinesectionaaa \basslinesectionaab }

basslinesectionab = {
    d4 a,4 d4 r4 |
}

basslinesectionac = {
    d4 a,4 d4 r4 |
}

basslinesectiona = {
    \repeat volta 2 { \basslinesectionaa }
    \alternative { { \basslinesectionab } { \basslinesectionac } }
}

basslinesectionb = {
    \repeat volta 2 {
        d4. d8 ~ d4 d4 |
        e2-- a,4-. r4 |
        e2-- d4-. r4 |
        a4 e4 a4 e4 |
        d4 a,4 d4 f4 |
        a4 e4 a4 e4 |
        d4 a,8 d8 ~ d8 a,8 d4 |
    }
}

basslinesectionca = {
    d8 d4 f8 ~ f8 a,8 d4 |
    e4 a,4 d4 a,4 |
    d8 d4 f8 ~ f8 a,8 d4 |
}

basslinesectioncb = {
    e4 a,4 d8 d4 r8 |
}

basslinesectioncc = {
    e4 a,4 d4 r4 |
}

basslinesectionc = {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinecoda = {
    a4 e4 a,4 e4 |
    d4 r4 a,4 r4 |
    d1\fermata
}

bassline = {
    \time 4/4
    \key d \minor
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \blankmeasure
    \basslinecoda
}

basslinemidi = {
    \time 4/4
    \preintro
    \preintro

    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectionaa
    \basslinesectionab
    \basslinesectionaaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotesintro = {
    s1 |
}

guitarnotessectionaaa = {
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
}

guitarnotessectionaab = {
    s1 |
}

guitarnotessectionaa = { \guitarnotessectionaaa \guitarnotessectionaab }

guitarnotessectionab = {
    s1 |
}

guitarnotessectionac = {
    s1 |
}

guitarnotessectiona = {
    \repeat volta 2 { \guitarnotessectionaa }
    \alternative { { \guitarnotessectionab } { \guitarnotessectionac } }
}

guitarnotessectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarnotessectionca = {
    s1 |
    s1 |
    s1 |
}

guitarnotessectioncb = {
    s1 |
}

guitarnotessectioncc = {
    s1 |
}

guitarnotessectionc = {
    \repeat volta 2 { \guitarnotessectionca }
    \alternative { { \guitarnotessectioncb } { \guitarnotessectioncc } }
}

guitarnotescoda = {
    s1 |
    s1 |
    s1
}

guitarnotes = {
    \time 4/4
    \key d \minor
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \blankmeasure
    \guitarnotescoda
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc

    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc

    \guitarnotessectionaa
    \guitarnotessectionab
    \guitarnotessectionaaa
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotesintro = {
    s2 s8 b8\mf e'8 g'8 |
}

clarinetnotessectionaaa = {
    b'4-- \< ais'4-- b'4-- cis''4-- |
    d''4-> cis''4 b'8 ais'8 g'4 \! |
    ais'16->\f cis''16 b'8 b'8 b'8 b'8 ( ais'8 ) g'8 ais'8 |
    b'8. cis''16 b'8 ais'8 g'8 fis'8 g'8 ais'8 |
    b'4--\mf \< ais'4-- b'4-- cis''4-- |
    d''4-> cis''4 b'8 ais'8 g'4 \! |
    fis'8-. g'8-. b'16-> ais'16 g'8 ais'4 b'4 |
    e'4. b'8 b'16-> ais'16 g'8 g'4 |
}

clarinetnotessectionaab = {
    fis'8 g'8 b'16-> ais'16 g'8 ais'4 b'4 |
}

clarinetnotessectionaa = { \clarinetnotessectionaaa \clarinetnotessectionaab }

clarinetnotessectionab = {
    e'2 r8 b8 e'8 g'8 |
}

clarinetnotessectionac = {
    << e'1 { s2 \< s2 \! } >> |
}

clarinetnotessectiona = {
    \repeat volta 2 { \clarinetnotessectionaa }
    \alternative { { \clarinetnotessectionab } { \clarinetnotessectionac } }
}

clarinetnotessectionb = {
    \repeat volta 2 {
        r8\p e''8 \< e''8 e''8 e''8 e''8 e''8 e''8 \! |
        e''8\sf ( d''8 ) cis''8 e''8 d''8 ( cis''8 ) b'8 d''8 |
        cis''8 ( b'8 ais'8 cis''8 ) b'8 ais'8 g'4 |
        fis'8-. g'8-. b'16-> ais'16 g'8 ais'4 b'4 |
        e'4. b'8 b'16 ais'16 g'8 g'4 |
        f'8-. g'8-. b'16-> ais'16 g'8 ais'4 b'4 |
        << e'1 { s2 \< s2 \! } >> |
    }
}

clarinetnotessectionca = {
    e'8-. e'4-> b'8-. b'16 ais'16 g'8 g'4 |
    fis'16\mp g'16 e'8 fis'8 g'8 ais'8 b'8 g'16 fis'16 e'8 |
    e'8-.\f e'4-> b'8-. b'16 ais'16 g'8 g'4 |
}

clarinetnotessectioncb = {
    fis'8\mp e'8 fis'8 g'8 fis'8 e'4. |
}

clarinetnotessectioncc = {
    fis'8 e'8 fis'8 g'8 e'8 b8 e'8 g'8 |
}

clarinetnotessectionc = {
    \repeat volta 2 { \clarinetnotessectionca }
    \alternative { { \clarinetnotessectioncb } { \clarinetnotessectioncc } }
}

clarinetnotescoda = {
    fis'8-. [ g'8-. ] b'16-> ais'16 g'8 b'16 b'16 ( ais'16 b'16 c''16 cis''16 d''16 dis''16 |
    e''4-.-> ) r4 b'4-.-> r4 |
    e'1\fermata
}

clarinetnotes = {
    \time 4/4
    \key e \minor
    \clarinetnotesintro
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc
    \blankmeasure
    \clarinetnotescoda
}

clarinetnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \clarinetnotesintro
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc

    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc

    \clarinetnotessectionaa
    \clarinetnotessectionab
    \clarinetnotessectionaaa
    \clarinetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotesintro = {
    s2 s8 r8 r4 |
}

altosaxnotessectionaaa = {
    fis''4--\f eis''4-- fis''4-- gis''4-- |
    a''4-> gis''4 fis''8 eis''8 d''4 |
    r8\mf d''8 r8 d''8 r8 d''8 r8 d''8 |
    r8 d''8 r8 cis''8 d''8 cis''8 d''8 f''8 |
    fis''4--\f eis''4-- fis''4-- gis''4-- |
    a''4-> gis''4 fis''8 eis''8 d''4 |
    r8\mf fis''8 r8 fis''8 d''4 cis''4 |
    b'4. d''8 d''16 cis''16 b'8 b'4 |
}

altosaxnotessectionaab = {
    r8 fis''8 r8 fis''8 d''4 cis''4 |
}

altosaxnotessectionaa = { \altosaxnotessectionaaa \altosaxnotessectionaab }

altosaxnotessectionab = {
    r8 fis''16 fis''16 eis''8 fis''8 b'4 r4 |
}

altosaxnotessectionac = {
    b'4 fis'8 b'8 ~ b'8 fis'8 b'4 |
}

altosaxnotessectiona = {
    \repeat volta 2 { \altosaxnotessectionaa }
    \alternative { { \altosaxnotessectionab } { \altosaxnotessectionac } }
}

altosaxnotessectionb = {
    \repeat volta 2 {
        d''2-> ~ d''8 d''8-. d''8-. d''8-. |
        d''2-- cis''4-. r4 |
        cis''2-- d''4-. r4 |
        r8 fis''8 r8 fis''8 d''4 cis''4 |
        b'4. d''8 d''16 cis''16 b'8 b'4 |
        r8 fis''8 r8 fis''8 d''4 cis''4 |
        b'4 fis'8 b'8 ~ b'8 fis'8 b'4 |
    }
}

altosaxnotessectionca = {
    b'8 b'4 d''8 d''8 fis'8 b'4 |
    cis''8 cis''4 cis''8 b'8 d''8 d''4 |
    fis''8-. fis''4-> d''8 cis''8 b'8 b'4 |
}

altosaxnotessectioncb = {
    ais'8 g'8 fis'4 b'8 b'4.-> |
}

altosaxnotessectioncc = {
    ais'8 g'8 fis'4 b'4 r4 |
}

altosaxnotessectionc = {
    \repeat volta 2 { \altosaxnotessectionca }
    \alternative { { \altosaxnotessectioncb } { \altosaxnotessectioncc } }
}

altosaxnotescoda = {
    r8 fis''8 r8 fis''8 gis''4 ais''4 |
    b''4-.-> r4 fis''4-.-> r4 |
    b''1\fermata
}

altosaxnotes = {
    \time 4/4
    \key b \minor
    \altosaxnotesintro
    \altosaxnotessectiona
    \altosaxnotessectionb
    \altosaxnotessectionc
    \blankmeasure
    \altosaxnotescoda
}

altosaxnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \altosaxnotesintro
    \altosaxnotessectiona
    \altosaxnotessectionb
    \altosaxnotessectionc

    \altosaxnotessectiona
    \altosaxnotessectionb
    \altosaxnotessectionc

    \altosaxnotessectionaa
    \altosaxnotessectionab
    \altosaxnotessectionaaa
    \altosaxnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotesintro = {
    s2 s8 r8 r4 |
}

trumpetnotessectionaaa = {
    b'4--\f ais'4-- b'4-- cis''4-- |
    d''4-> cis''4 b'8 ais'8 g'4 |
    e'4\mf b'8 e'8 ~ e'8 b'8 e'4 |
    e'4 b'8 e'8 ~ e'8 b'8 e'4 |
    b'4--\f ais'4-- b'4-- cis''4-- |
    d''4-> cis''4 b'8 ais'8 g'4 |
    dis'8\mf e'8 fis'8 g'8 ais'4 b'4 |
    e'4. b'8 b'8 ( g'8 ) b'4 |
}

trumpetnotessectionaab = {
    dis'8 e'8 fis'8 g'8 ais'4 b'4 |
}

trumpetnotessectionaa = { \trumpetnotessectionaaa \trumpetnotessectionaab }

trumpetnotessectionab = {
    e'2 r2 |
}

trumpetnotessectionac = {
    e'1 |
}

trumpetnotessectiona = {
    \repeat volta 2 { \trumpetnotessectionaa }
    \alternative { { \trumpetnotessectionab } { \trumpetnotessectionac } }
}

trumpetnotessectionb = {
    \repeat volta 2 {
        r8\mp e''8 \< e''8 e''8 e''8 e''8 e''8 e''8 \! |
        e''2\sf \> d''4-. \! r4 |
        cis''2\sf \> b'4-. \! r4|
        dis'8 ( e'8 ) fis'8 ( g'8 ) ais'4 b'4 |
        e'4. b'8 b'8 g'8 b'4 |
        dis'8 e'8 f'8 g'8 ais'4 b'4 |
        e'2 ~ e'2 |
    }
}

trumpetnotessectionca = {
    e'8 e'4 e'8 e'8 g'8 g'4 |
    fis'8 fis'4 fis'8 e'8 g'8 g'4 |
    e'8-. e'4-> e'8 e'8 g'8 g'4 |
}

trumpetnotessectioncb = {
    fis'8 e'8 fis'8 g'8 fis'8 e'4. |
}

trumpetnotessectioncc = {
    fis'8 e'8 fis'8 g'8 e'4 r4 |
}

trumpetnotessectionc = {
    \repeat volta 2 { \trumpetnotessectionca }
    \alternative { { \trumpetnotessectioncb } { \trumpetnotessectioncc } }
}

trumpetnotescoda = {
    dis'8 e'8 fis'8 g'8 ais'4 b'4 |
    e''4-.-> r4 b'-.-> r4 |
    e'1\fermata
}

trumpetnotes = {
    \time 4/4
    \key e \minor
    \trumpetnotesintro
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc
    \blankmeasure
    \trumpetnotescoda
}

trumpetnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \trumpetnotesintro
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc

    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc

    \trumpetnotessectionaa
    \trumpetnotessectionab
    \trumpetnotessectionaaa
    \trumpetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotesintro = {
    s2 s8 r8 r4 |
}

trombonenotessectionaaa = {
    a4--\f gis4-- a4-- b4-- |
    c'4-> b4-> a4-. cis4\glissando |
    d4\mf a,4 d4 cis4\glissando |
    d4 a,4 d4 f4 |
    a4--\f gis4-- a4-- b4-- |
    c'4-> b4-> a4-. gis,4\glissando |
    a,4\mf e4 a,4 e8 a,8 |
    d4 a8 ( f8 ) f16 e16 d8 d4 |
}

trombonenotessectionaab = {
    a,4 e4 r8 cis8 r8 cis8 |
}

trombonenotessectionaa = { \trombonenotessectionaaa \trombonenotessectionaab }

trombonenotessectionab = {
    d4 a,4 d8 a,8 d8 f8 |
}

trombonenotessectionac = {
    d4 a,8 d8 ~ d8 a,8 d4 |
}

trombonenotessectiona = {
    \repeat volta 2 { \trombonenotessectionaa }
    \alternative { { \trombonenotessectionab } { \trombonenotessectionac } }
}

trombonenotessectionb = {
    \repeat volta 2 {
        d'2-> ~ d'8 d'8-. d'8-. d'8-. |
        b2-- ( a4-. ) r4 |
        gis2-- ( a4-. ) r4 |
        a4 e8 cis8 a,4 e8 a,8 |
        d4 f8 d8 d4 f4 |
        a4 e8 cis8 a,4 e8 a,8 |
        d4 a,8 d8 ~ d8 a,8 d4 |
    }
}

trombonenotessectionca = {
    d8 d4-> f8 f8 a,8 d8 f8 |
    e8 a,8 e8 a8 f8 e8 f16 e16 d8 |
    d8-. d4-> f8 f8 a,8 d8 f8 |
}

trombonenotessectioncb = {
    e4 a,4 d8 f8 e8 a,8 |
}

trombonenotessectioncc = {
    e4 a,4 e4 r4 |
}

trombonenotessectionc = {
    \repeat volta 2 { \trombonenotessectionca }
    \alternative { { \trombonenotessectioncb } { \trombonenotessectioncc } }
}

trombonenotescoda = {
    a,4 e4 r8 cis8 r8 cis8 |
    d4-.-> r4 a4-.-> r4 |
    d1\fermata
}

trombonenotes = {
    \time 4/4
    \key d \minor
    \trombonenotesintro
    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc
    \blankmeasure
    \trombonenotescoda
}

trombonenotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \trombonenotesintro
    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc

    \trombonenotessectiona
    \trombonenotessectionb
    \trombonenotessectionc

    \trombonenotessectionaa
    \trombonenotessectionab
    \trombonenotessectionaaa
    \trombonenotescoda
}

tromboneforothersnotes = { \trombonenotes }
baritoneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }
baritonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotesintro = {
    s2 s8 a'8\mf d''8 f''8 |
}

violinnotessectionaaa = {
    f''4-- \< e''4-- f''4-- gis''4-- |
    a''4-> gis''4 f''8 e''8 d''4 \! |
    e''8\f f''8 f''8 f''8 f''8 ( e''8 ) d''8 e''8 |
    f''8 gis''8 f''8 e''8 d''8 cis''8 d''8 e''8 |
    f''4--\mf \< e''4-- f''4-- gis''4-- |
    a''4-> gis''4 f''8 e''8 d''4 \! |
    e''8 ( f''8 ) a''16 gis''16 f''8 gis''4 a''4 |
    d''4. f''8 f''16 e''16 d''8 d''4 |
}

violinnotessectionaab = {
    e''8 ( f''8 ) a''16 gis''16 f''8 gis''4 a''4 |
}

violinnotessectionaa = { \violinnotessectionaaa \violinnotessectionaab }

violinnotessectionab = {
    d''2 r8 a'8 d''8 f''8 |
}

violinnotessectionac = {
    d''1 |
}

violinnotessectiona = {
    \repeat volta 2 { \violinnotessectionaa }
    \alternative { { \violinnotessectionab } { \violinnotessectionac } }
}

violinnotessectionb = {
    \repeat volta 2 {
        r8\p f''8 \< f''8 f''8 f''8 f''8 f''8 f''8 \! |
        f''8\sf ( e''8 ) d''8 f''8 e''8 ( d''8 ) c''8 e''8 |
        d''8 ( c''8 ) b'8 d''8 c''8 b'8 a'4 |
        cis''2 gis'4 a'4 |
        r8 < a' f'' >8 r8 < a' f'' >8 r8 < a' f'' >8 r8 < a' f'' >8 |
        cis''2 gis'4 a'4 |
        d'2 ~ d'2 |
    }
}

violinnotessectionca = {
    a'8 a'4 f''8 e''8 d''8 d''4 |
    cis''8 d''8 cis''8 d''8 e''8 f''8 d''4 |
    a'8 a'4 f''8 e''8 d''8 d''4 |
}

violinnotessectioncb = {
    cis''2 e''8 d''4. |
}

violinnotessectioncc = {
    e''8 d''8 e''8 f''8 d''8 a'8 d''8 f''8 |
}

violinnotessectionc = {
    \repeat volta 2 { \violinnotessectionca }
    \alternative { { \violinnotessectioncb } { \violinnotessectioncc } }
}

violinnotescoda = {
    e''8 ( f''8 ) a''16 gis''16 f''8 gis''4 a''4 |
    d'''4-.-> r4 a''4-.-> r4 |
    d''1\fermata
}

violinnotes = {
    \time 4/4
    \key d \minor
    \violinnotesintro
    \violinnotessectiona
    \violinnotessectionb
    \violinnotessectionc
    \blankmeasure
    \violinnotescoda
}

violinnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \violinnotesintro
    \violinnotessectiona
    \violinnotessectionb
    \violinnotessectionc

    \violinnotessectiona
    \violinnotessectionb
    \violinnotessectionc

    \violinnotessectionaa
    \violinnotessectionab
    \violinnotessectionaaa
    \violinnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotesintro = {
    s2 s8 a'8\mf d''8 f''8 |
}

pianorightuppernotessectionaaa = {
    < f'' a'' >4-- \< < e'' gis'' >4-- < f'' a'' >4-- < gis'' b'' >4-- |
    < a'' c''' >4-> < gis'' b'' >4 < f'' a'' >8 < e'' gis'' >8 < d'' f'' >4\f \! |
    < d' d'' >4\mf a'8 d''8 ~ d''8 a'8 d''4 |
    < d' d'' >4 a'8 d''8 ~ d''8 a'8 d''4 |
    < f'' a'' >4-- \< < e'' gis'' >4-- < f'' a'' >4-- < gis'' b'' >4-- |
    < a'' c''' >4-> < gis'' b'' >4 < f'' a'' >8 < e'' gis'' >8 < d'' f'' >4\f \! |
    < d' d'' >4\mf a'8 d''8 ~ d''8 a'8 d''4 |
    < d' d''>4 a'8 d''8 ~ d''8 a'8 d''4 |
}

pianorightuppernotessectionaab = {
    < cis' e' a' >4 e''4 r8 cis''8 r8 cis''8 |
}

pianorightuppernotessectionaa = { \pianorightuppernotessectionaaa \pianorightuppernotessectionaab }

pianorightuppernotessectionab = {
    < f' a' d'' >4 < d' f' a' >4 d''8 a'8 d''8 f''8 |
}

pianorightuppernotessectionac = {
    < d' d'' >4 a'8 d''8 ~ d''8 a'8 d''4 |
}

pianorightuppernotessectiona = {
    \repeat volta 2 { \pianorightuppernotessectionaa }
    \alternative { { \pianorightuppernotessectionab } { \pianorightuppernotessectionac } }
}

pianorightuppernotessectionb = {
    \repeat volta 2 {
        r8\p d''8 \< d''8 d''8 d''8 d''8 d''8 d''8 \! |
        d''8\sf c''8 b'8 d''8 c''8 b'8 a'8 c''8 |
        b'8 a'8 gis'8 b'8 a'8 gis'8 f'4 |
        e'8-. f'8-. a'16-> gis'16 f'8 gis'4 a'4 |
        < a d' >4. a'8 a'16 gis'16 f'8 f'4 |
        cis'8 d'8 e'8 f'8 gis'4 a'4 |
        < d' f' a' d'' >1 |
    }
}

pianorightuppernotessectionca = {
    d'8-. d'4-> a'8-. a'16 gis'16 f'8 f'4 |
    e'16\mp f'16 d'8 e'8 f'8 gis'8 a'8 f'16 e'16 d'8 |
    d'8-.\f d'4-> a'8-. a'16 gis'16 f'8 f'4 |
}

pianorightuppernotessectioncb = {
    e'8\mp d'8 e'8 f'8 e'8 d'4. |
}

pianorightuppernotessectioncc = {
    e'8 d'8 e'8 f'8 d'8 a8 d'8 f'8 |
}

pianorightuppernotessectionc = {
    \repeat volta 2 { \pianorightuppernotessectionca }
    \alternative { { \pianorightuppernotessectioncb } { \pianorightuppernotessectioncc } }
}

pianorightuppernotescoda = {
    e'8 f'8 gis'8 f'8 gis'4 a'4 |
    d''4-.-> r4 a''4-.-> r4 |
    d''1\fermata |
}

pianorightuppernotes = {
    \time 4/4
    \key d \minor
    \pianorightuppernotesintro
    \pianorightuppernotessectiona
    \pianorightuppernotessectionb
    \pianorightuppernotessectionc
    \blankmeasure
    \pianorightuppernotescoda
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \pianorightuppernotesintro
    \pianorightuppernotessectiona
    \pianorightuppernotessectionb
    \pianorightuppernotessectionc

    \pianorightuppernotessectiona
    \pianorightuppernotessectionb
    \pianorightuppernotessectionc

    \pianorightuppernotessectionaa
    \pianorightuppernotessectionab
    \pianorightuppernotessectionaaa
    \pianorightuppernotescoda
}

%-------------------------------------------------

pianoleftuppernotesintro = {
    s2 s8 r8 r4 |
}

pianoleftuppernotessectionaaa = {
    a4-- gis4-- a4-- b4-- |
    c'4-> b4 a8 gis8 f4 |
    d4 a,4 d4 a,4 |
    d4 a,4 d4 a,4 |
    a4-- gis4-- a4-- b4-- |
    c'4-> b4 a8 gis8 f4 |
    a4 e4 a,4 e4 |
    d4 e4 f4 gis4 |
}

pianoleftuppernotessectionaab = {
    a4 e4 a,4 e4 |
}

pianoleftuppernotessectionaa = { \pianoleftuppernotessectionaaa \pianoleftuppernotessectionaab }

pianoleftuppernotessectionab = {
    d4 a,4 d4 r4 |
}

pianoleftuppernotessectionac = {
    d4 a,4 d4 r4 |
}

pianoleftuppernotessectiona = {
    \repeat volta 2 { \pianoleftuppernotessectionaa }
    \alternative { { \pianoleftuppernotessectionab } { \pianoleftuppernotessectionac } }
}

pianoleftuppernotessectionb = {
    \repeat volta 2 {
        d4. d8 ~ d4 d4 |
        e2-- a,4-. r4 |
        e2-- d4-. r4 |
        a4 e4 a4 e4 |
        d4 a,4 d4 f4 |
        a4 e4 a4 e4 |
        d4 a,8 d8 ~ d8 a,8 d4 |
    }
}

pianoleftuppernotessectionca = {
    d8 d4 f8 ~ f8 a,8 d4 |
    e4 a,4 d4 a,4 |
    d8 d4 f8 ~ f8 a,8 d4 |
}

pianoleftuppernotessectioncb = {
    e4 a,4 d8 d4 r8 |
}

pianoleftuppernotessectioncc = {
    e4 a,4 d4 r4 |
}

pianoleftuppernotessectionc = {
    \repeat volta 2 { \pianoleftuppernotessectionca }
    \alternative { { \pianoleftuppernotessectioncb } { \pianoleftuppernotessectioncc } }
}

pianoleftuppernotescoda = {
    a4 e4 a,4 e4 |
    d4 r4 a,4 r4 |
    d1\fermata
}

pianoleftuppernotes = {
    \time 4/4
    \key d \minor
    \pianoleftuppernotesintro
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionb
    \pianoleftuppernotessectionc
    \blankmeasure
    \pianoleftuppernotescoda
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \time 4/4
    \preintro
    \preintro

    \pianoleftuppernotesintro
    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionb
    \pianoleftuppernotessectionc

    \pianoleftuppernotessectiona
    \pianoleftuppernotessectionb
    \pianoleftuppernotessectionc

    \pianoleftuppernotessectionaa
    \pianoleftuppernotessectionab
    \pianoleftuppernotessectionaaa
    \pianoleftuppernotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighpreintro = \drummode {
    sna4\p sna4 sna4 sna4 |
}

drumshighintro = \drummode {
    s2 r4 r4 |
}

drumshighmidiintro = \drummode {
    sna4 sna4 r4 r4 |
}

drumshighsectionaaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 2 { hhc4\p hhc4 hhc4 hhc4 | }
    \repeat percent 2 { sna8 sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 }
    \repeat percent 2 { hhc4 hhc4 hhc4 hhc4 | }
    \repeat percent 2 { sna8 sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 }
}

drumshighsectionaab = \drummode {
    sna8^"Fill" sna16 sna16 sna8 sna8 sna16 sna16 sna16 sna16 sna8 sna8 |
}

drumshighsectionaa = \drummode { \drumshighsectionaaa \drumshighsectionaab }

drumshighsectionab = \drummode {
    sna4 r4 cymc4 r4 |
}

drumshighsectionac = \drummode {
    sna4 r4 cymc4 r4 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionb = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 7 {
            wbh8\f^"Woodblock" wbh16 wbh16 wbh8 wbh8 wbh16 wbh16 wbh16 wbh16 wbh8 wbh8 |
        }
    }
}

drumshighsectionca = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 3 {
        rb8\p^"Bell" [ sna16 sna16 ] sna8 [ sna8:32-> ~ ]
        sna8:32 [ sna8 ] sna16 [ sna16 sna8 ] |
    }
}

drumshighsectioncb = \drummode {
    sna8 cymr8 sna8 cymr8 sna8 cymr8 sna8 cymr8 |
}

drumshighsectioncc = \drummode {
    sna8 cymr8 sna8 cymr8 sna8 cymr8 r8 cymc8\ff |
}

drumshighsectionc = \drummode {
    \repeat volta 2 { \drumshighsectionca }
    \alternative { { \drumshighsectioncb } { \drumshighsectioncc } }
}

drumshighcoda = \drummode {
    sna8 sna16 sna16 sna8 sna8 sna2:32 |
    cymc4 r4 cymc4 r4 |
    cymc4 r4 r2 |
}

drumshigh = \drummode {
    \stemUp \hideDynamics
    \time 4/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighpreintro

    \drumshighmidiintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectionaa
    \drumshighsectionab
    \drumshighsectionaaa
    \drumshighcoda
}

%-------------------------------------------------

drumslowintro = \drummode {
    s1 |
}

drumslowsectionaaa = \drummode {
    \repeat percent 2 { bda4 bda4 bda4 bda4 | }
    \repeat percent 2 { bda4 bda4 bda4 bda4 | }
    \repeat percent 2 { bda4 bda4 bda4 bda4 | }
    \repeat percent 2 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionaab = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectionaa = \drummode { \drumslowsectionaaa \drumslowsectionaab }

drumslowsectionab = \drummode {
    bda4 s4 s2 |
}

drumslowsectionac = \drummode {
    bda4 s4 s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \repeat percent 7 { bda4 bda4 bda4 bda4 | }
    }
}

drumslowsectionca = \drummode {
    \repeat percent 3 { bda4. bda8 ~ bda4 bda4 | }
}

drumslowsectioncb = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectioncc = \drummode {
    bda4 bda4 bda4 s4 |
}

drumslowsectionc = \drummode {
    \repeat volta 2 { \drumslowsectionca }
    \alternative { { \drumslowsectioncb } { \drumslowsectioncc } }
}

drumslowcoda = \drummode {
    bda4 bda4 bda4 bda4 |
    bda4 s4 bda4 s4 |
    bda4 s4 s2 |
}

drumslow = \drummode {
    \stemDown
    \time 4/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \preintro

    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectionaaa
    \drumslowcoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melody = \transpose c bes {
    \time 4/4
    \key e \minor
    \clarinetnotesintro
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc
    \blankmeasure
    \clarinetnotescoda
}

melodymidi = \transpose c bes {
    \time 4/4
    \preintro
    \preintro

    \clarinetnotesintro
    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc

    \clarinetnotessectiona
    \clarinetnotessectionb
    \clarinetnotessectionc

    \clarinetnotessectionaa
    \clarinetnotessectionab
    \clarinetnotessectionaaa
    \clarinetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotessectionb = {
    \repeat volta 2 {
        r8\p f''8 \< f''8 f''8 f''8 f''8 f''8 f''8 \! |
        f''8\sf ( e''8 ) d''8 f''8 e''8 ( d''8 ) c''8 e''8 |
        d''8 ( c''8 ) b'8 d''8 c''8 b'8 a'4 |
        cis''2 gis''4 a''4 |
        r8 f''8 r8 f''8 r8 f''8 r8 f''8 |
        cis'''2 gis''4 a''4 |
        d'''4 a''8 d'''8 ~ d'''8 a''8 d'''4 |
    }
}

tenorsaxnotes = \transpose bes c {
    \time 4/4
    \key d \minor
    \violinnotesintro
    \violinnotessectiona
    \tenorsaxnotessectionb
    \violinnotessectionc
    \blankmeasure
    \violinnotescoda
}

tenorsaxnotesmidi = \transpose bes c {
    \time 4/4
    \preintro
    \preintro

    \violinnotesintro
    \violinnotessectiona
    \tenorsaxnotessectionb
    \violinnotessectionc

    \violinnotessectiona
    \tenorsaxnotessectionb
    \violinnotessectionc

    \violinnotessectionaa
    \violinnotessectionab
    \violinnotessectionaaa
    \violinnotescoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes { \tenorforothersnotes }
clarinetforaltonotes = \transpose ees bes { \clarinetnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes { \tenorforothersnotes }

clarinetforbassoonnotes = \transpose f bes { \clarinetnotes }
tenorforbassoonnotes = \transpose f bes { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s1 |
}

chordletterssectionaaa = \chordmode {
    r1 |
    r1 |
    d1:min |
    d1:min |
    r1 |
    r1 |
    a1:7 |
    d1:min |
}

chordletterssectionaab = \chordmode {
    a1:7 |
}

chordletterssectionaa = \chordmode { \chordletterssectionaaa \chordletterssectionaab }

chordletterssectionab = \chordmode {
    d1:min |
}

chordletterssectionac = \chordmode {
    \chordChangesOff d1:min \chordChangesOn |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative { { \chordletterssectionab } { \chordletterssectionac } }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d1:min \chordChangesOn |
        e2:7 a2:min |
        e2:7 d2:min |
        a1:7 |
        d1:min |
        a1:7 |
        d1:min |
    }
}

chordletterssectionca = \chordmode {
    \chordChangesOff d1:min \chordChangesOn |
    a2:7 d2:min |
    d1:min |
}

chordletterssectioncb = \chordmode {
    a2:7 d2:min |
}

chordletterssectioncc = \chordmode {
    a2:7 d2:min |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterscoda = \chordmode {
    a1:7 |
    d1:min |
    d1:min
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \blankmeasure
    \chordletterscoda
}

bassoonchordletters = \transpose f c \chordletters
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 |

    s1 |
    s1 |
    d1:min |
    s1 | % d1:min
%    s1 |
%    s1 |
%    a1:7 |
%    d1:min |
}

previewnotes = \transpose c bes {
    \time 4/4
    \key e \minor

    s2 s8 b8 e'8 g'8 | \noBreak
    \bar ".|:"
    b'4--^"No chord" ais'4-- b'4-- cis''4-- | \noBreak
    d''4-> cis''4 b'8 ais'8 g'4 | \noBreak
    ais'16-> cis''16 b'8 b'8 b'8 b'8 ( ais'8 ) g'8 ais'8 | \noBreak
    b'8. cis''16 b'8 ais'8 g'8 fis'8 g'8 ais'8 |
%    b'4-- \< ais'4-- b'4-- cis''4-- |
%    d''4-> cis''4 b'8 ais'8 g'4 \! |
%    fis'8-. g'8-. b'16-> ais'16 g'8 ais'4 b'4 |
%    e'4. b'8 b'16-> ais'16 g'8 g'4 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \bassnotes }

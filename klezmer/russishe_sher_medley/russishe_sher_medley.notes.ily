\version "2.18.2"

bandmsectiona = {
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt
    }
    \alternative {
        { s2 | \breakAfft s2 | \breakAsxt } { s2 | \breakAsvt s2 | }
    }
    \bar ".|:-||" \breakA
}

bandmsectionarepriseA = {
    \repeat volta 2 {
        \markARa \positionARa
        s2 | \breakARAone s2 | \breakARAtwo s2 | \breakARAtre s2 | \breakARAfor
        s2 | \breakARAfiv s2 | \breakARAsix s2 | \breakARAsev s2 | \breakARAeit
        s2 | \breakARAnin s2 | \breakARAten s2 | \breakARAelv s2 | \breakARAtwl
        s2 | \breakARAtht s2 | \breakARAfrt
    }
    \alternative {
        { s2 | \breakARAfft s2 | \breakARAsxt } { s2 | \breakARAsvt s2 | }
    }
    \bar ".|:-||" \breakARA
}

bandmsectionarepriseB = {
    \repeat volta 2 {
        \markARb \positionARb
        s2 | \breakARBone s2 | \breakARBtwo s2 | \breakARBtre s2 | \breakARBfor
        s2 | \breakARBfiv s2 | \breakARBsix s2 | \breakARBsev s2 | \breakARBeit
        s2 | \breakARBnin s2 | \breakARBten s2 | \breakARBelv s2 | \breakARBtwl
        s2 | \breakARBtht s2 | \breakARBfrt
    }
    \alternative {
        { s2 | \breakARBfft s2 | \breakARBsxt } { s2 | \breakARBsvt s2 | }
    }
    \bar ".|:-||" \breakARB
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
    }
    \alternative { { s2 | \breakBeit } { s2 | } }
    \bar ".|:-||" \breakB
}

bandmsectionca = {
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt
}

bandmsectioncb = { \bar "||" \markTC \positionTC s2 | \breakCfft s2 | }

bandmsectionc = {
    \repeat volta 2 { \bandmsectionca \bandmsectioncb }
    \breakC
}

ktebandmsectiona = {
    \repeat volta 2 {
        \markD \positionD
        s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 |
    }
    \breakD
}

ktebandmsectionb = {
    \repeat volta 2 {
        \markE \positionE
        s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
        s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev
    }
    \alternative { { s2 | \breakEeit } { s2 | } }
    \bar ".|:-||" \breakE
}

ktebandmsectionc = {
    \repeat volta 2 {
        \markF \positionF
        s2 | \breakFone s2 | \breakFtwo s2 | \breakFtre s2 | \breakFfor
        s2 | \breakFfiv s2 | \breakFsix s2 | \breakFsev
    }
    \alternative { { s2 | \breakFeit } { s2 | } }
    \bar ".|:-||" \breakF
}

ktebandmsectiond = {
    \repeat volta 2 {
        \markG \positionG
        s2 | \breakGone s2 | \breakGtwo s2 | \breakGtre s2 | \breakGfor
        s2 | \breakGfiv s2 | \breakGsix s2 | \breakGsev s2 |
    }
    \breakG
}

ktebandmsectione = {
    \repeat volta 2 {
        \markH \positionH
        s2 | \breakHone s2 | \breakHtwo s2 | \breakHtre s2 | \breakHfor
        s2 | \breakHfiv s2 | \breakHsix s2 | \breakHsev
    }
    \alternative { { s2 | \breakHeit } { s2 | } }
    \bar ".|:-||" \breakH
}


ktsbandmsectiona = {
    \markI \positionI
    \repeat volta 2 {
        s2 | \breakIone s2 | \breakItwo s2 | \breakItre s2 | \breakIfor
        s2 | \breakIfiv s2 | \breakIsix s2 | \breakIsev
    }
    \alternative { { s2 | \breakIeit } { s2 | } }
    \bar "||" \breakI
}

ktsbandmsectionb = {
    \markJ \positionJ
    s2 | \breakJone s2 | \breakJtwo s2 | \breakJtre s2 | \breakJfor
    s2 | \breakJfiv s2 | \breakJsix s2 | \breakJsev s2 | \breakJeit
    s2 | \breakJnin s2 | \breakJten s2 | \breakJelv s2 | \breakJtwl
    s2 | \breakJtht s2 | \breakJfrt s2 | \breakJfft s2 |
    \bar ".|:-||" \breakJ
}

ktsbandmsectionc = {
    \markK \positionK
    \repeat volta 2 {
        s2 | \breakKone s2 | \breakKtwo s2 | \breakKtre s2 | \breakKfor
        s2 | \breakKfiv s2 | \breakKsix s2 | \breakKsev
    }
    \alternative { { s2 | \breakKeit } { s2 | } }
    \bar "||" \breakK
}

ktsbandmsectiond = {
    \markL \positionL
    s2 | \breakLone s2 | \breakLtwo s2 | \breakLtre s2 | \breakLfor
    s2 | \breakLfiv s2 | \breakLsix s2 | \breakLsev s2 | \breakLeit
    s2 | \breakLnin s2 | \breakLten s2 | \breakLelv s2 | \breakLtwl
    s2 | \breakLtht s2 | \breakLfrt s2 | \breakLfft s2 |
    \markDC \positionDC
    \bar "||" \breakL
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = { \markCC \positionCC s2 | \breakCCone s2 | }

bandmNV = {
    \time 2/4
    \markA \positionA
    \tempo \tempostring

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectionarepriseA

    \ktebandmsectiona
    \ktebandmsectionb
    \ktebandmsectionc
    \ktebandmsectiond
    \ktebandmsectione

    \bandmsectionarepriseB
    \ktsbandmsectiona
    \ktsbandmsectionb
    \ktsbandmsectionc
    \ktsbandmsectiond

    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%-------------------------------------------------

preintro = { s2 | }

metronomeextra = { s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextra
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiona

    \tempo 4 = 120
    \ktebandmsectiona
    \ktebandmsectionb
    \ktebandmsectionc
    \ktebandmsectiond
    \ktebandmsectione

    \tempo 4 = 120
    \bandmsectiona
    \tempo 4 = 95
    \ktsbandmsectiona
    \ktsbandmsectionb
    \tempo 4 = 105
    \ktsbandmsectionc
    \tempo 4 = 115
    \ktsbandmsectiond

    \tempo 4 = 125
    \bandmsectiona
    \bandmsectionb
    \bandmsectionca
    \bandmsectioncb
    \bandmsectionca

    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectionaa = {
    e''8-.\f e''8-. e''4-- |
    b''8-. b''8-. b''4\trill |
    a''8. g''16 a''16 [ g''16 fis''16 g''16 ] |
    a''4-.-> r4 |
    fis''8-. fis''8-. fis''4-- |
    a''8-. a''8-. a''4-- |
    g''8.\trill fis''16 g''16 [ fis''16 e''16 g''16 ] |
    b''4-.-> r4 |
    r8\mf b''8\prall a''16 [ gis''16 a''16 b''16 ] |
    c'''8. b''16 a''4 |
    b''8 e''8 fis''16 [ e''16 fis''16 g''16 ] |
    b''16 ais''16 g''8 g''16 fis''16 e''8 |
    g''8 [ b''8 b''8 b''8 ] |
    b''16 [ a''16 g''8 ] fis''16 [ g''16 a''8 ] |
}

clarinetsectionab = {
    g''4\prall b''4 |
    b''16 [ ais''16 g''8 ] g''16 [ fis''16 e''8 ]
}

clarinetsectionac = {
    e''4-. r4 |
    d''2\ff |
}

clarinetsectionad = {
    e''4-. r4 |
    e''2\ff |
}

clarinetsectiona = {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionac } }
}

clarinetsectionareprise = {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative { { \clarinetsectionab } { \clarinetsectionad } }
}

clarinetsectionb = {
    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    \repeat volta 2 \transpose c c' {
        b'16\f [ d''16 cis'' d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8 d''8 b'8.\prall g'16 |
        a'8. b'16 c''16 b'16 a'8 |
        ais'16 c''16 b'8 ~ b'4 |
        b'16 [ d''16 cis''16 d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8 [ d''8 b'8\trill g'8 ] |
        a'8. [ b'16 ] c''16 [ b'16 a'8 ] |
    }
    \alternative {
        { \transpose c c' { g'4 r4 \stopOctVA } }
        { g'8 [-- b'8-- e''8-- fis''8-- ] }
    }
}

clarinetsectionca = {
    g''8.\f\trill fis''16 e''4 ~ |
    e''8 [ fis''16 a''16 ] g''16 [ fis''16 g''16 a''16 ]
    g''8. [ fis''16 ] e''8 [ b''8 ] |
    ais''16 [ b''16 ais''16 b''16 ] c'''16 [ b''16 c'''16 b''16 ] |
    a''8. [ g''16 ] fis''4 ~ |
    fis''8 [ fis''16 a''16 ] g''16 [ fis''16 g''16 a''16 ] |
    g''16 [ fis''16 e''8 ] b''4 |
    b''16 [ ais''16 g''8 ] g''16 [ fis''16 e''8 ] |
    c'''16 [ b''16 c'''16 b''16 ] a''4 |
    r8 fis''16 [ a''16 ] g''16 [ fis''16 g''16 a''16 ] |
    b''8. [ a''16 ] g''4 |
    r8 b'8 e''8 [ fis''8 ] |
    fis''16 [ a''16 g''8 ] g''8 [ g''8 ] |
    g''16 [ fis''16 e''8 ] dis''16 [ e''16 fis''8 ] |
}

clarinetsectioncb = {
    e''4 b''16 [ ais''16 g''8 ] |
    g''8 [ b'8 e''8 fis''8 ] |
}

clarinetsectionc = {
    \repeat volta 2 {
        \clarinetsectionca
        \clarinetsectioncb
    }
}

%-------------------------------------------------

kteclarinetsectionaa = {
    e''8\f r8 gis''8 r8 |
    gis''16\trill [ f''16 e''16 f''16 ] gis''8 r8 |
    e''8 r8 b''8 r8 |
    b''16 [ a''16 gis''16 a''16 ] b''16 [ a''16 gis''16 f''16 ] |
    e''8 [ d''8 e''8 f''8 ] |
    e''8\trill d''4 a''8 |
    gis''16 [ a''16 b''16 a''16 ] gis''8.\trill [ f''16 ] |
    fis''8 [ e''16 e''16 ] e''8 [ e''8 ] |
}

kteclarinetsectiona = {
    \repeat volta 2 {
        \kteclarinetsectionaa
    }
}

kteclarinetsectionba = {
    c'''4. b''16 [ a''16 ] |
    b''4. a''16 [ gis''16 ] |
    a''16 [ ( gis''16 a''16 b''16 ] c'''16 [ b''16 a''16 gis''16 ) ] |
    a''16 [ ( d'''16 ) d'''16 ( c'''16 ) ] c'''16 [ ( b''16 ) b''16 ( a''16 ) ] |
    c'''4. b''16 [ a''16 ] |
    b''4. a''16 [ gis''16 ] |
    a''16 [ gis''16 a''16 b''16 ] c'''16 [ b''16 a''16 gis''16 ] |
}

kteclarinetsectionbb = {
    a''8 [ e''8 ( a''8 b''8 ) ] |
}

kteclarinetsectionbc = {
    a''8 r8 a''8 r8 |
}

kteclarinetsectionb = {
    \repeat volta 2 { \kteclarinetsectionba }
    \alternative { { \kteclarinetsectionbb } { \kteclarinetsectionbc } }
}

kteclarinetsectionca = {
    d'''8. [ c'''16 ] b''16 [ c'''16 d'''8 ~ ] |
    d'''16 [ c'''16 b''16 c'''16 ] d'''16 [ c'''16 b''16 a''16 ] |
    b''8. [ a''16 ] gis''16 [ a''16 b''8 ~ ] |
    b''16 [ a''16 ( gis''16 a''16 ] b''16 [ a''16 gis''16 f''16 ) ] |
    e''8.\trill [ d''16 ] e''8 [ f''8 ] |
    e''8-\trill( d''4 ) a''8 |
    gis''16 [ a''16 b''16 a''16 ] gis''8.\trill [ ( f''16 ) ] |
}

kteclarinetsectioncb = {
    e''8 [ gis''8 b''8 e'''8 ] |
}

kteclarinetsectioncc = {
    f''8 e''4 r8 |
}

kteclarinetsectionc = {
    \repeat volta 2 { \kteclarinetsectionca }
    \alternative { { \kteclarinetsectioncb } { \kteclarinetsectioncc } }
}

kteclarinetsectionda = {
    e''8 [ e'''16 e'''16 ] e'''8 [ e''8 ] |
    d''16 [ e''16 f''16 d''16 ] e''4 |
    e''8 [ e'''16 e'''16 ] e'''8 [ e'''8 ] |
    d'''16 [ c'''16 b''16 a''16 ] gis''4 |
    e''8 [ e'''16 e'''16 ] e'''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ] e''4 ) |
    d'''16 [ c'''16 b''16 a''16 ] gis''8. [ f''16 ] |
    f''8 [ e''16 e''16 ] e''8 [ e''8 ] |
}

kteclarinetsectiond = {
    \repeat volta 2 {
        \kteclarinetsectionda
    }
}

kteclarinetsectionea = {
    gis''8. [ a''16 ] b''16 [ c'''16 b''16 a''16 ] |
    b''8 gis''4 r8 |
    gis''8 [ ( f''16 e''16 ) ] d''16 [ ( e''16 f''16 d''16 ) ] | % fix not needed
    e''8 [ gis''8 b''8 e''8 ] |                               % fix not needed
    gis''8. [ a''16 ] b''16 [ c'''16 b''16 a''16 ] |
    b''8 gis''4 b''8 |
    b''16 [ ( a''16 ) a''16 ( gis''16 ) ] gis''16 [ ( f''16 ) f''16 ( e''16 ) ] |
}

kteclarinetsectioneb = {
    e''8 [ e'''16 e'''16 ] e'''8 [ e'''8 ] |
}

kteclarinetsectionec = {
    e''8 r8 e''8 r8 |
}

kteclarinetsectione = {
    \repeat volta 2 { \kteclarinetsectionea }
    \alternative { { \kteclarinetsectioneb } { \kteclarinetsectionec } }
}

ktsclarinetsectiona = {
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
        { e''4. b'8 | }
        { e''4. g''8 | }
    }
}

ktsclarinetsectionb = {
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

ktsclarinetsectionca = {
    fis''16 [ g''16 ] a''4 a''8 |
    a''16 [ bes''16 a''16 bes''16 ] a''8. [ g''16 ] |
    g''16 [ fis''16 e''16 fis''16 ] g''16 [ a''16 g''16 fis''16 ] |
    g''4 d'''8. [ g''16 ] |
    fis''16 [ g''16 ] a''4 d'''8 |
    d'''16 [ c'''16 b''16 a''16 ] g''8. [ b''16 ]
    b''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
}

ktsclarinetsectioncb = {
    fis''16 [ g''16 ] e''4 g''8 |
}

ktsclarinetsectioncc = {
    fis''16 [ g''16 ] e''4 g''8 |
}

ktsclarinetsectionc = {
    \repeat volta 2 { \ktsclarinetsectionca }
    \alternative { { \ktsclarinetsectioncb } { \ktsclarinetsectioncc } }
}

ktsclarinetsectiond = {
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

clarinetcoda = { e''4-. b''4-. | e'''4-. r4 }

clarinetnotes = {
    \time 2/4
    \key g \major
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionareprise

    \key c \major
    \kteclarinetsectiona
    \kteclarinetsectionb
    \kteclarinetsectionc
    \kteclarinetsectiond
    \kteclarinetsectione

    \key g \major
    \clarinetsectionareprise
    \ktsclarinetsectiona
    \ktsclarinetsectionb
    \ktsclarinetsectionc
    \ktsclarinetsectiond

    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key g \major
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionareprise

    \key c \major
    \kteclarinetsectiona
    \kteclarinetsectionb
    \kteclarinetsectionc
    \kteclarinetsectiond
    \kteclarinetsectione

    \key g \major
    \clarinetsectionareprise
    \ktsclarinetsectiona
    \ktsclarinetsectionb
    \ktsclarinetsectionc
    \ktsclarinetsectiond

    \key g \major
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetsectioncb
    \clarinetsectionca

    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ktemelodysectionaa = \transpose d c {
    e'8\mf r8 gis'8 r8 |
    gis'16\trill [ ( f'16 e'16 f'16 ) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
    b'16 [ ( a'16 gis'16 a'16 ) ] b'16 [ ( a'16 gis'16 f'16 ) ] |
    e'8 [ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8.\trill [ f'16 ] |
    f'8 e'4. |
}

ktemelodysectiona = { \repeat volta2 { \ktemelodysectionaa } }

ktemelodysectionba = \transpose d c {
    c''4. b'16 [ ( a'16 ) ] |
    b'4. a'16 [ ( gis'16 ) ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
    a'16 [ ( d''16 ) d''16 ( c''16 ) ] c''16 [ ( b'16 ) b'16 ( a'16 ) ] |
    c''4. b'16 [ a'16 ] |
    b'4. a'16 [ gis'16 ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
}

ktemelodysectionbb = \transpose d c {
    a'4. r8 |
}

ktemelodysectionbc = \transpose d c {
    a'8 r8 a'8 r8 |
}

ktemelodysectionb = {
    \repeat volta 2 { \ktemelodysectionba }
    \alternative { { \ktemelodysectionbb } { \ktemelodysectionbc } }
}

ktemelodysectionca = \transpose d c {
    d''8. [ c''16 ] b'16 [ c''16 d''8 ~ ] |
    d''16 [ ( c''16 b'16 c''16 ] d''16 [ c''16 b'16 a'16 ) ] |
    b'8. [ a'16 ] gis'16 [ a'16 b'8 ~ ] |
    b'16 [ ( a'16 gis'16 a'16 ] b'16 [ a'16 gis'16 f'16 ) ] |
    e'8.\trill [ d'16 ] e'8 [ f'8 ] |
    e'8\trill d'4. |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8. [ f'16 ] |
}

ktemelodysectioncb = \transpose d c {
      e'8 [ gis'8 b'8 e''8 ] |
}

ktemelodysectioncc = \transpose d c {
    f'8 e'4. |
}

ktemelodysectionc = {
    \repeat volta 2 { \ktemelodysectionca }
    \alternative { { \ktemelodysectioncb } { \ktemelodysectioncc } }
}

ktemelodysectionda = \transpose d c {
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( c''16 b'16 a'16 ) ] gis'4 |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    d''16 [ ( c''16 b'16 a'16 ) ] gis'8. [ f'16 ] |
    f'8 e'4. |
}

ktemelodysectiond = { \repeat volta2 { \ktemelodysectionda } }

ktemelodysectionea = \transpose d c {
    gis'8. [ a'16 ] b'16 [ c''16 b'16 a'16 ] |
    b'8 gis'4. |
    gis'8 [ f'16 ( e'16 ) ] d'16 [ ( e'16 f'16 d'16 ) ] | % fix per Susan
    e'8 [ gis'8 b'8 e''8 ] |                                % fix per Susan
    gis'8. [ a'16 ] b'16 [ c''16 b'16 a'16 ] |
    b'8 gis'4. |
    b'16 [ ( a'16 ) a'16 ( gis'16 ) ] gis'16 [ ( f'16 ) f'16 ( e'16 ) ] |
}

ktemelodysectioneb = \transpose d c {
    e'8 e''16 e''16 e''8 e''8 |
}

ktemelodysectionec = \transpose d c {
    e'8 r8 e''8-> r8 |
}

ktemelodysectione = {
    \repeat volta 2 { \ktemelodysectionea }
    \alternative { { \ktemelodysectioneb } { \ktemelodysectionec } }
}

ktsmelodysectiona = {
    \repeat volta 2 {
        d''8 [\mf f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
        d''8 [ d''8 f''8 d''8 ] |
        d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16\trill [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    }
    \alternative { { d''4. a'8 | } { d''4. f''8 | } }
}

ktsmelodysectionb = {
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

ktsmelodysectionca = {
    e''16 [ f''16 ] g''4 g''8 |
    g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
    f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
    f''4 c'''8. [ f''16 ] |
    e''16 [ f''16 ] g''4 c'''8 |
    c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

ktsmelodysectioncb = {
    e''16 [ f''16 ] d''4 f''8 |
}

ktsmelodysectioncc = {
    e''16 [ f''16 ] d''4 f''8 |
}

ktsmelodysectionc = {
    \repeat volta 2 { \ktsmelodysectionca }
    \alternative { { \ktsmelodysectioncb } { \ktsmelodysectioncc } }
}

ktsmelodysectiond = {
    a''4. g''16 [ f''16 ] |
    g''16 [ ( a''16 )  f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 ( f''16 ) ] |
    g''16 [ ( a''16 )  f''8 ] c''8 [ f''8 ] |
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

flutecoda = \transpose c' bes { e''4-. b''4-. | e'''4-. r4 | }

melody = {
    \time 2/4
     \transpose d c {
        \key g \major
        \clarinetsectiona
        \clarinetsectionb
        \clarinetsectionc
        \clarinetsectionareprise
    }

    \key bes \major
    \ktemelodysectiona
    \ktemelodysectionb
    \ktemelodysectionc
    \ktemelodysectiond
    \ktemelodysectione

     \transpose d c {
        \key g \major
        \clarinetsectionareprise
    }
    \key f \major
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

    \blankmeasure
    \flutecoda
}

melodymidi = {
    \time 2/4
    \preintro
    \metronomeextra

     \transpose d c {
        \key g \major
        \clarinetsectiona
        \clarinetsectionb
        \clarinetsectionc
        \clarinetsectionareprise
    }

    \key bes \major
    \ktemelodysectiona
    \ktemelodysectionb
    \ktemelodysectionc
    \ktemelodysectiond
    \ktemelodysectione

    \key f \major
    \clarinetsectionareprise
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

     \transpose d c {
        \key g \major
        \clarinetsectiona
        \clarinetsectionb
        \clarinetsectionca
        \clarinetsectioncb
        \clarinetsectionca
    }

    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa = {
    e'8-.\f e'8-. e'4-- |
    g'8-. g'8-. g'4-- |
    fis'8 [ e'8 dis'8 e'8 ] |
    fis'4-. r4 |
    fis'8-. fis'8-. fis'4-- |
    a'8-. a'8-. a'4-- |
    g'8 [ fis'8 e'8 g'8 ] |
    b'4-. r4 |
    r8\mf \tuplet 3/2 { b'16 ( c''16 b'16 ) } a'8 b'8 |
    c''8-. b'8-. a'4-- |
    r8 e'8 fis'8 g'8 |
    b'16 ais'16 g'8 g'16 fis'16 e'8 |
    fis'16 ( a'16 ) g'8 r8 g'8 |
    g'16 fis'16 e'8 dis'16 e'16 fis'8 |
}

trumpetsectionab = {
    e'2 |
    b'2\f
}

trumpetsectionac = {
    e'4-. r4 |
    d'2\ff |
}

trumpetsectionad = {
    e'4-. r4 |
    e'2\ff |
}

trumpetsectiona = {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionac } }
}

trumpetsectionareprise = {
    \repeat volta 2 { \trumpetsectionaa }
    \alternative { { \trumpetsectionab } { \trumpetsectionad } }
}

trumpetsectionb = {
    \repeat volta 2 {
        b'16\f [ d''16 cis'' d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8-. [ d''8-. b'8-. g'8-. ] | a'8. b'16 c''16 b'16 a'8 |
        b'8 d''16 e''16 d''16 [ c''16 b'16 a'16 ] |
        b'16 [ d''16 cis''16 d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8-. [ d''8-. b'8-. g'8-. ] |
        a'8. [ b'16 ] c''16 [ b'16 a'8-. ] |
    }
    \alternative { { g'4 r4 | } { g'8 [ b8 e'8 fis'8 ] } }
}

trumpetsectionca = {
    g'8.\mf fis'16\f e'4 ~ |
    e'8 [ fis'8 ] g'16 [ fis'16 g'16 a'16 ] |
    g'8. [ fis'16 ] e'4 ~ |
    e'8 [ b'8 ] c''16 [ b'16 c''16 b'16 ] |
    a'8. [ g'16 ] fis'4 ~ |   fis'8 [ fis'8 g'8 a'8 ] |
    g'16 [ fis'16 e'8 ] b'4 |
    b'16 [ ais'16 g'8 ] g'16 [ fis'16 e'8 ] |
    c''8 [ b'8 ] a'4 ~ |
    a'8 [ fis'8 ] g'16 [ fis'16 g'16 a'16 ] |
    b'8. [ a'16 ] g'4 ~ |   g'8 [ b8 e'8 fis'8 ] |
    fis'16 [ a'16 g'8 ] g'8 [ g'8 ] |
    g'16 [ fis'16 e'8 ] dis'16 [ e'16 fis'8 ] |
}

trumpetsectioncb = {
    e'2 |
    e'8 [ b8 e'8 fis'8 ] |
}

trumpetsectionc = {
    \repeat volta 2 { \trumpetsectionca \trumpetsectioncb }
}

ktetrumpetsectionaa = \transpose d c {
    e'8\mf r8 gis'8 r8 |
    gis'16\trill [ ( f'16 e'16 f'16 ) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
    b'16 [ ( a'16 gis'16 a'16 ) ] b'16 [ ( a'16 gis'16 f'16 ) ] |
    e'8 [ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8.\trill [ f'16 ] |
    f'8 e'4. |
}

ktetrumpetsectiona = { \repeat volta2 { \ktetrumpetsectionaa } }

ktetrumpetsectionba = \transpose d c {
    c''4. b'16 [ ( a'16 ) ] |
    b'4. a'16 [ ( gis'16 ) ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
    a'16 [ ( d''16 ) d''16 ( c''16 ) ] c''16 [ ( b'16 ) b'16 ( a'16 ) ] |
    c''4. b'16 [ a'16 ] |
    b'4. a'16 [ gis'16 ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
}

ktetrumpetsectionbb = \transpose d c {
    a'4. r8 |
}

ktetrumpetsectionbc = \transpose d c {
    a'8 r8 a'8 r8 |
}

ktetrumpetsectionb = {
    \repeat volta 2 { \ktetrumpetsectionba }
    \alternative { { \ktetrumpetsectionbb } { \ktetrumpetsectionbc } }
}

ktetrumpetsectionca = \transpose d c {
    d''8. [ c''16 ] b'16 [ c''16 d''8 ~ ] |
    d''16 [ ( c''16 b'16 c''16 ] d''16 [ c''16 b'16 a'16 ) ] |
    b'8. [ a'16 ] gis'16 [ a'16 b'8 ~ ] |
    b'16 [ ( a'16 gis'16 a'16 ] b'16 [ a'16 gis'16 f'16 ) ] |
    e'8.\trill [ d'16 ] e'8 [ f'8 ] |
    e'8\trill d'4. |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8. [ f'16 ] |
}

ktetrumpetsectioncb = \transpose d c {
    e'8 [ gis'8 b'8 e''8 ] |
}

ktetrumpetsectioncc = \transpose d c {
    f'8 e'4. |
}

ktetrumpetsectionc = {
    \repeat volta 2 { \ktetrumpetsectionca }
    \alternative { { \ktetrumpetsectioncb } { \ktetrumpetsectioncc } }
}

ktetrumpetsectionda = \transpose d c {
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( c''16 b'16 a'16 ) ] gis'4 |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    d''16 [ ( c''16 b'16 a'16 ) ] gis'8. [ f'16 ] |
    f'8 e'4. |
}

ktetrumpetsectiond = { \repeat volta2 { \ktetrumpetsectionda } }

ktetrumpetsectionea = \transpose d c {
    gis'8. [ a'16 ] b'16 [ c''16 b'16 a'16 ] |
    b'8 gis'4. |
    gis'8 [ f'16 ( e'16 ) ] d'16 [ ( e'16 f'16 d'16 ) ] |  % fix not needed
    e'8 [ gis'8 b'8 e''8 ] |                               % different fix
    gis'8. [ a'16 ] b'16 [ c''16 b'16 a'16 ] |
    b'8 gis'4. |
    b'16 [ ( a'16 ) a'16 ( gis'16 ) ] gis'16 [ ( f'16 ) f'16 ( e'16 ) ] |
}

ktetrumpetsectioneb = \transpose d c {
    e'8 e''16 e''16 e''8 e''8 |
}

ktetrumpetsectionec = \transpose d c {
    e'8 r8 e''8-> r8 |
}

ktetrumpetsectione = {
    \repeat volta 2 { \ktetrumpetsectionea }
    \alternative { { \ktetrumpetsectioneb } { \ktetrumpetsectionec } }
}

ktstrumpetsectiona = {
    \repeat volta 2 {
        d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |
        d''8 [ d''8 f''8 d''8 ] |
        d''8 [ f''16 f''16 ] f''16 [ f''16 f''16 f''16 ] |
        g''16 [ ( f''16 g''16 a''16 ) ] f''4 |
        f''16\trill [ ( e''16 d''16 e''16 ) ] f''16 [ g''16 f''16 e''16 ] |
    }
    \alternative { { d''4. a'8 | } { d''4. f''8 | } }
}

ktstrumpetsectionb = {
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

ktstrumpetsectionca = {
    e''16 [ ( f''16 ) ] g''4 g''8 |
    g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
    f''16 [ ( e''16 ) d''16 e''16 ] f''16 [ ( g''16 ) f''16 e''16 ] |
    f''4 c'''8. [ f''16 ] |
    e''16 [ ( f''16 ) ] g''4 c'''8 |
    c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
    a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

ktstrumpetsectioncb = {
    e''16 [ ( f''16 ) ] d''4 f''8 |
}

ktstrumpetsectioncc = {
    e''16 [ ( f''16 ) ] d''4 f''8 |
}

ktstrumpetsectionc = {
    \repeat volta 2 { \ktstrumpetsectionca }
    \alternative { { \ktstrumpetsectioncb } { \ktstrumpetsectioncc } }
}

ktstrumpetsectiond = {
    a''4. g''16 [ ( f''16 ) ] |
    g''16 [ ( a''16 )  f''8 ] c''8 [ f''8 ] |
    a''16 [ ( bes''16 ) a''16 ( bes''16 ) ] a''8\trill [ g''16 f''16 ] |
    g''16 [ ( a''16 )  f''8 ] c''8 [ f''8 ] |
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

trumpetcoda = { e'4-. g'4-. | g'4-. r4 }

%-------------------------------------------------

trumpetnotes = {
    \time 2/4
    \key g \major
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionareprise

     \transpose c d {
        \key bes \major
        \ktetrumpetsectiona
        \ktetrumpetsectionb
        \ktetrumpetsectionc
        \ktetrumpetsectiond
        \ktetrumpetsectione
    }

    \key g \major
    \trumpetsectionareprise
     \transpose c' d {
        \key f \major
        \ktstrumpetsectiona
        \ktstrumpetsectionb
        \ktstrumpetsectionc
        \ktstrumpetsectiond
    }

    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key g \major
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionareprise

     \transpose c d {
        \key bes \major
        \ktetrumpetsectiona
        \ktetrumpetsectionb
        \ktetrumpetsectionc
        \ktetrumpetsectiond
        \ktetrumpetsectione
    }

    \key g \major
    \trumpetsectionareprise
     \transpose c' d {
        \key f \major
        \ktstrumpetsectiona
        \ktstrumpetsectionb
        \ktstrumpetsectionc
        \ktstrumpetsectiond
    }

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetsectioncb
    \trumpetsectionca

    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectionaa = {
    r8\mf d''8 cis''8 ( d''8 ) |
    r8 d''8 cis''8 ( d''8 ) |
    d''8 d''8 cis''8 cis''8 |
    cis''4-. r4 |
    r8 cis''8 r8 cis''8 |
    r8 cis''8 r8 cis''8 |
    d''8 cis''8 d''8 b'8 |
    d''4-. r4 |
    r8\mp d''8 e''8 fis''8 |
    r8 g''16 g''16 g''8 g''8 |
    r8 d''16 d''16 d''8 d''8 |
    r8 d''8 r8 d''8 |
    b'8 d''8 fis''8 b''8 |
    b''8 fis''8 d''8 cis''8 |
}

altosaxsectionab = {
    r4 b'16 ais'16 b'16 cis''16 |
    d''16 cis''16 b'8 b'8 fis'8 |
}

altosaxsectionac = {
    b'4-. r4 |
    cis''2\mf\trill |
}

altosaxsectionad = {
    b'4-. r4 |
    b''2\mf\trill |
}

altosaxsectiona = {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionac } }
}

altosaxsectionareprise = {
    \repeat volta 2 { \altosaxsectionaa }
    \alternative { { \altosaxsectionab } { \altosaxsectionad } }
}

altosaxsectionb = {
    \repeat volta 2 {
        r8\mp d''16 d''16 e''8 a'8 |
        d''8 d''16 d''16 d''8 d''8 |
        e''8 a'8 e''8 a'8 |
        d''8 fis''8 d''8 cis''8 |
        r8 d''16 d''16 e''8 a'8 |
        d''8 d''16 d''16 d''8 d''8 |
        e''8 a'16 a'16 a'8 a'8 |
    }
    \alternative { { d''4 cis''4 } { d''4 r4 } }
}

altosaxsectionca = {
    r8\mf d'8 r8 d'8 |
    r8 d'8 b8 d'8 |
    r8 d'8 fis'8 d'8 |
    b8 fis'8 g'8 fis'8 |
    cis'8 fis'8 r8 fis'8 |
    r8 fis'8 g'8 e'8 |
    d'8 d'16 fis'16 b'8 fis'16 b'16 |
    d''8 b'8 b'8 fis'8 |
    g'8 fis'8 e'4 ~ |
    e'8 g'4 g'8 |
    fis'8 cis''8 b'4 |
    r8 b'4 b'8 |
    b'8 fis'8 d''16 cis''16 b'8 |
    ais'8 fis'8 cis''16 b'16 ais'8 |
}

altosaxsectioncb = {
    b'16 b'16 b'8 ~ b'8 b'8 |
    b'8 fis'8 r4
}

altosaxsectionc = {
    \repeat volta 2 { \altosaxsectionca \altosaxsectioncb }
}

ktealtosaxextraintro = {
    s2 |
    s2 |
}

ktealtosaxsectionaa = {
    b'8 r8 dis''8 r8 |
    dis''16\trill c''16 b'16 c''16 dis''8 r8 |
    b'8 r8 fis''8 r8 |
    fis''16 ( e''16 dis''16 e''16 fis''16 e''16 dis''16 c''16 ) |
    b'8 a'8 b'8 c''8 |
    b'8\trill a'4 a'8 |
    dis''16 e''16 fis''16 e''16 dis''8.\trill c''16 |
    c''8 b'4. |
}

ktealtosaxsectiona = {
    \repeat volta 2 {
        \ktealtosaxsectionaa
    }
}

ktealtosaxsectionba = {
    g''4. fis''16 ( e''16 ) |
    fis''4. e''16 [ dis''16 ] |
    e''16 [ dis''16 e''16 fis''16 ] g''16 [ fis''16 e''16 dis''16 ] |
    e''16 [ ( a''16 ) a''16 ( g''16 ) ] g''16 [ ( fis''16 ) fis''16 ( e''16 ) ] |
    g''4. fis''16 [ e''16 ] |
    fis''4. e''16 [ dis''16 ] |
    e''16 [ ( dis''16 e''16 fis''16 ] g''16 [ fis''16 e''16 dis''16 ) ] |
}

ktealtosaxsectionbb = {
    e''4. r8 |
}

ktealtosaxsectionbc = {
    e''8 r8 e''8 r8 |
}

ktealtosaxsectionb = {
    \repeat volta 2 { \ktealtosaxsectionba }
    \alternative { { \ktealtosaxsectionbb } { \ktealtosaxsectionbc } }
}

ktealtosaxsectionca = {
    a''8. [ g''16 ] fis''16 [ g''16 a''8 ~ ] |
    a''16 [ g''16 fis''16 g''16 ] a''16 [ g''16 fis''16 e''16 ] |
    fis''8. [ e''16 ] dis''16 [ e''16 fis''8 ~ ] |
    fis''16 [ e''16 dis''16 e''16 ] fis''16 [ e''16 dis''16 c''16 ] |
    b'8.\trill [ a'16 ] b'8 [ c''8 ] |
    b'8\trill a'4. |
    dis''16 [ e''16 fis''16 e''16 ] dis''8. [ c''16 ] |
}

ktealtosaxsectioncb = {
    b'8 [ dis''8 fis''8 b''8 ] |
}

ktealtosaxsectioncc = {
    c''8 b'4. |
}

ktealtosaxsectionc = {
    \repeat volta 2 { \ktealtosaxsectionca }
    \alternative { { \ktealtosaxsectioncb } { \ktealtosaxsectioncc } }
}

ktealtosaxsectionda = {
    b'8 [ b''16 b''16 ] b''8 [ b''8 ] |
    a''16 [ ( b''16 c'''16 a''16 ) ] b''4 |
    b'8 [ b''16 b''16 ] b''8 [ b''8 ] |
    a''16 [ ( g''16 fis''16 e''16 ) ] dis''4 |
    b'8 [ b''16 b''16 ] b''8 [ b''8 ] |
    a''16 [ b''16 c'''16 a''16 ] b''4 |
    a''16 [ g''16 fis''16 e''16 ] dis''8. [ c''16 ] |
    c''8 b'4. |
}

ktealtosaxsectiond = {
    \repeat volta 2 {
        \ktealtosaxsectionda
    }
}

ktealtosaxsectionea = {
    dis''8. [ e''16 ] fis''16 [ g''16 fis''16 e''16 ] |
    fis''8 dis''4. |
    dis''8 [ c''16 b'16 ] a'16 [ ( b'16 c''16 a'16 ) ] |
    b'8 [ dis''8 fis''8 b''8 ] |
    dis''8. [ e''16 ] fis''16 [ g''16 fis''16 e''16 ] |
    fis''8 dis''4. |
    fis''16 [ ( e''16 ) e''16 ( dis''16 ) ] dis''16 [ ( c''16 ) c''16 ( b'16 ) ] |
}

ktealtosaxsectioneb = {
      b'8 [ b''16 b''16 ] b''8 [ b''8 ] |
}

ktealtosaxsectionec = {
    b'8 r8 b''8-> r8 |
}

ktealtosaxsectione = {
    \repeat volta 2 { \ktealtosaxsectionea }
    \alternative { { \ktealtosaxsectioneb } { \ktealtosaxsectionec } }
}

ktsaltosaxsectiona = {
    \repeat volta 2 {
        b'8\f [ d''16 d''16 ] d''16 [ d''16 d''16 d''16 ] |
        e''16 [ d''16 e''16 fis''16 ] d''4 |
        d''16\trill [ cis''16 b'16 cis''16 ] d''16 [ e''16 d''16 cis''16 ] |
        b'8 [ b'8 d''8-> b'8 ] |
        b'8 [ d''16 d''16 ] d''16 [ d''16 d''16 d''16 ] |
        e''16 [ d''16 e''16 fis''16 ] d''4 |
        d''16\trill [ cis''16 b'16 cis''16 ] d''16 [ e''16 d''16 cis''16 ] |
    }
    \alternative { { b'4. fis'8 | } { b'8 [ fis'8 b'8 d''8 ] | } }
}

ktsaltosaxsectionb = {
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

ktsaltosaxsectionca = {
    cis''16 [ d''16 ] e''4 e''8 |
    e''16 [ f''16 e''16 f''16 ] e''8. [ d''16 ] |
    d''16 [ ( cis''16 b'16 cis''16 ) ] d''16 [ ( e''16 d''16 cis''16 ) ] |
    d''4 a''8. [ d''16 ] |
    cis''16 [ d''16 ] e''4 a''8 |
    a''16 [ g''16 fis''16 e''16 ] d''8. [ fis''16 ] |
    fis''16 [ ( e''16 ) e''16 ( d''16 ) ] d''16 [ ( cis''16 ) cis''16 ( b'16 ) ] |
}

ktsaltosaxsectioncb = {
    cis''16 [ ( d''16 ) ] b'4 d''8 |
}

ktsaltosaxsectioncc = {
    cis''16 [ ( d''16 ) ] b'4 d''8 |
}

ktsaltosaxsectionc = {
    \repeat volta 2 { \ktsaltosaxsectionca }
    \alternative { { \ktsaltosaxsectioncb } { \ktsaltosaxsectioncc } }
}

ktsaltosaxsectiond = {
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

altosaxcoda = { e'4-. b'4-. | e''4-. r4 | }

%-------------------------------------------------

altosaxnotes = {
    \time 2/4
    \key d \major
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona

    \key g \major
    \ktealtosaxsectiona
    \ktealtosaxsectionb
    \ktealtosaxsectionc
    \ktealtosaxsectiond
    \ktealtosaxsectione

    \key d \major
    \altosaxsectiona
    \ktsaltosaxsectiona
    \ktsaltosaxsectionb
    \ktsaltosaxsectionc
    \ktsaltosaxsectiond

    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key d \major
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectionareprise

    \key g \major
    \ktealtosaxsectiona
    \ktealtosaxsectionb
    \ktealtosaxsectionc
    \ktealtosaxsectiond
    \ktealtosaxsectione

    \key d \major
    \altosaxsectionareprise
    \ktsaltosaxsectiona
    \ktsaltosaxsectionb
    \ktsaltosaxsectionc
    \ktsaltosaxsectiond

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxsectioncb
    \altosaxsectionca

    \altosaxcoda
}

ktetenorsaxsectionaa = {
    gis'8\f r8 b'8 r8 |
    b'16 [ ( a'16 gis'16 a'16 ) ] b'16 [ ( e''16 b'8 ) ] |
    b'8 r8 gis''8 r8 |
    gis''16 [ f''16 e''16 f''16 ] gis''16 [ f''16 e''16 d''16 ] |
    a'8 [ f'8 a'8 d''8 ]
    a'16 [ ( f'16 ) f'16 ( a'16 ) ] f'8 [ d''16 c''16 ]
    b'16 [ c''16 d''16 c''16 ] b'8. [ a'16 ] |
    a'16 [ b'16 gis'8 ] r8 gis'8 |
}

ktetenorsaxsectiona = {
    \repeat volta 2 {
        \ktetenorsaxsectionaa
    }
}

ktetenorsaxsectionba = {
    e''16 [ c''16 e''16 a''16 ] e''4\marcato |
    e''16 [ b'16 e''16 gis''16 ] e''4\marcato |
    c''16 [ b'16 c''16 d''16 ] e''16 [ d''16 c''16 b'16 ] |
    c''16 [ ( f''16 ) f''16 ( e''16 ) ] e''16 [ ( d''16 ) d''16 ( c''16 ) ] |
    e''16 [ a''16 e''16 c''16 ] e''4\marcato |
    e''16 [ gis''16 e''16 b''16 ] e''4\marcato |
    c''16 [ b'16 c''16 d''16 ] e''16 [ d''16 c''16 b'16 ] |
}

ktetenorsaxsectionbb = {
    c''8 [ a'8 c''8 d''8 ] |
}

ktetenorsaxsectionbc = {
    c''8 r8 c''8 r8 |
}

ktetenorsaxsectionb = {
    \repeat volta 2 { \ktetenorsaxsectionba }
    \alternative { { \ktetenorsaxsectionbb } { \ktetenorsaxsectionbc } }
}

ktetenorsaxsectionca = {
    f''16 e''16 d''16 e''16 f''8. d''16 |
    f''16 ( e''16 d''16 e''16 f''16 e''16 d''16 c''16 ) |
    d''16 c''16 b'16 c''16 d''8. b'16 |
    d''16 ( c''16 b'16 c''16 d''16 c''16 b'16 a'16 ) 
    a'8 f'8 a'8 d''8 |
    a'16 f'16 a'16 d''16 a'8 d'16 c'16 |
    b'16 c''16 d''16 d''16 b'8.\trill ( a'16 ) |
}

ktetenorsaxsectioncb = {
    gis'8 b'8 e''8 gis''8 |
}

ktetenorsaxsectioncc = {
    a'8 gis'8 r8 gis'8 |
}

ktetenorsaxsectionc = {
    \repeat volta 2 { \ktetenorsaxsectionca }
    \alternative { { \ktetenorsaxsectioncb } { \ktetenorsaxsectioncc } }
}

ktetenorsaxsectionda = {
    e'8 [ gis'16 gis'16 ] gis'16 [ ( b'16 gis'8 ) ] |
    f'8 [ a'8 ] gis'16 [ ( b'16 ) b'16 ( gis'16 ) ] |
    e'8 [ gis'16 gis'16 ] gis'16 [ ( b'16 ) b'16 ( e''16 ) ] |
    f'16 [ e'16 d'16 c'16 ] b'8 [ e''8 ] |
    e'8 [ gis'16 gis'16 ] gis'16 [ ( b'16 gis'8 ) ] |
    f'8 [ a'8 ] gis'16 [ ( b'16 ) b'16 ( e''16 ) ] |
    f''16 [ e''16 d''16 c''16 ] b'8. [ a'16 ] |
    a'8 [ gis'16 gis'16 ] gis'8 [ gis'8 ] |
}

ktetenorsaxsectiond = {
    \repeat volta 2 {
        \ktetenorsaxsectionda
    }
}

ktetenorsaxsectionea = {
    e''16 [ b'16 e''16 f''16 ] gis''16 [ a''16 gis''16 f''16 ] |
    gis''8 [ e''16 e''16 ] b'8 [ e''8 ] |
    b'4 a'8 [ a'8 ] |
    gis'8 [ b'8 e''8 b'8 ] |
    e''16 [ b'16 e''16 f''16 ] gis''16 [ a''16 gis''16 f''16 ] |
    gis''8 [ e''16 b'16 ] e''8 r8 |
    d''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( gis'16 ) ] |
}

ktetenorsaxsectioneb = {
      gis'8 [ gis''16 gis''16 ] gis''8 [ gis''8 ] |
}

ktetenorsaxsectionec = {
    gis'8 r8 gis'8 r8 |
}

ktetenorsaxsectione = {
    \repeat volta 2 { \ktetenorsaxsectionea }
    \alternative { { \ktetenorsaxsectioneb } { \ktetenorsaxsectionec } }
}

ktstenorsaxsectiona = {
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

ktstenorsaxsectionb = {
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

ktstenorsaxsectionca = {
      d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
      fis''16 [ g''16 fis''16 g''16 ] fis''16 [ ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
      b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
      d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 e''16 ] |
      fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
      dis''16 [ ( c''16 ) c''16 ( b'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
}

ktstenorsaxsectioncb = {
      a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

ktstenorsaxsectioncc = {
      a'16 [ b'16 g'16 b'16 ] g'8 [ e''8 ] |
}

ktstenorsaxsectionc = {
    \repeat volta 2 { \ktstenorsaxsectionca }
    \alternative { { \ktstenorsaxsectioncb } { \ktstenorsaxsectioncc } }
}

ktstenorsaxsectiond = {
      d''16 [ ( e''16 ) e''16 ( d''16 ) ] d''8 [ c''16 b''16 ] |
      c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
      d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b''16 ) ] |
      c''16 [ d''16 b'8 ] b'8 [ b'8 ] |
      d''16 [ ( e''16 ) d''16 ( e''16 ) ] d''8\trill [ c''16 ( b''16 ) ] |
      d''16 [ e''16 d''16 e''16 ] d''8\trill [ c''16 ( b''16 ) ] |
      d''16 [ e''16 d''16 e''16 ] d''8 [ c''16 b''16 ] |
      c''16 [ d''16 b'8 ] b'8 [ b'8 ] |

      d''16 [ e''16 fis''16 e''16 ] fis'8 [ fis''16 g''16 ] |
      fis''16 [ ( g''16 ) fis''16 ( g''16 ) ] fis''16 ( e''16 d''16 c''16 ) ] |
    b'4 c''8 [ d''16 c''16 ] |
      b'8 [ d''8 ] g''8 [ fis''16 e''16 ] |
      d''16 [ e''16 fis''16 e''16 ] fis''8 [ fis''16 d''16 ] |
      fis''16 [ e''16 d''16 c''16 ] b'16 [ d''16 b'16 ] r16 |
      g'16 [ ( d'16 ) d'16 ( g'16 ) ] b'16 [ ( a'16 ) a'16 ( g'16 ) ] |
      g'8 [ b'8 g'8 ] r8 |
}

tenorsaxnotes = {
    \time 2/4
     \transpose a d {
        \key d \major
        \altosaxsectiona
        \altosaxsectionb
         \transpose c c' { \altosaxsectionc }
        \altosaxsectionareprise
    }

    \key c \major
    \ktetenorsaxsectiona
    \ktetenorsaxsectionb
    \ktetenorsaxsectionc
    \ktetenorsaxsectiond
    \ktetenorsaxsectione

     \transpose a d {
        \key d \major
        \altosaxsectionareprise
    }
    \key g \major
    \ktstenorsaxsectiona
    \ktstenorsaxsectionb
    \ktstenorsaxsectionc
    \ktstenorsaxsectiond

    \blankmeasure
    \transpose a d' {
        \key d \major
        \altosaxcoda
    }
}

tenorsaxnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

     \transpose a d' {
        \key d \major
        \altosaxsectiona
        \altosaxsectionb
        \altosaxsectionc
        \altosaxsectionareprise
    }

    \ktetenorsaxsectiona
    \ktetenorsaxsectionb
    \ktetenorsaxsectionc
    \ktetenorsaxsectiond
    \ktetenorsaxsectione

     \transpose a d' {
        \key d \major
        \altosaxsectionareprise
    }
    \ktstenorsaxsectiona
    \ktstenorsaxsectionb
    \ktstenorsaxsectionc
    \ktstenorsaxsectiond

     \transpose a d' {
        \key d \major
        \altosaxsectiona
        \altosaxsectionb
        \altosaxsectionca
        \altosaxsectioncb
        \altosaxsectionca

        \altosaxcoda
    }
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxmelodynotes = \transpose d' a {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa = {
    d'8\mf d'16 d'16 a8 d'8 |
    d'8 d'16 d'16 a8 d'8 |
    d'8 d'4 d'8 |
    a4-. r4 |
    a8 a16 a16 a8 a8 |
    a8 a16 a16 a8 a8 |
    a8 a16 a16 a8 a8 |
    d'4 r4 |
    r8 a8 f8 a8 |
    g4 g4 |
    a8 a16 a16 a8 a8 |
    a8 a16 a16 a8 a8 |
    d'8 [ d'16 d'16 ] a8 [ d'8 ] |
    d'8 [ d'16 d'16 ] a8 [ d'8 ] |
}

trombonesectionab = {
    d'8 [ d'16 d'16 ] a8 [ d'8 ] |
    r8 a8 d'8 [ a8 ]
}

trombonesectionac = {
    d'4-. r4 |
    c2\p\glissando |
}

trombonesectionad = {
    d'4-. r4 |
    d'8\p d'16 d'16 d'8 d'8 |
}

trombonesectiona = {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionac } }
}

trombonesectionareprise = {
    \repeat volta 2 { \trombonesectionaa }
    \alternative { { \trombonesectionab } { \trombonesectionad } }
}

trombonesectionb = {
    \repeat volta 2 {
        f4\mp c4 |
        f4 c4 |
        e4 c4\glissando |
        f8 [ d8 c8 a,8 ] |
        f4 c4 |
        f4 c4 |
        e4 c4\glissando |
    }
    \alternative {
        {
            f8\mf [ d8 c8 a,8 ]
        }
        {
            f4 r4
        }
    }
}

trombonesectionca = {
    d'8\mf [ d'8 a8 d'8 ] |
    d'16 [ d'16 d'8 ] a8 [ d'8 ~ ] |
    d'8 [ d'16 d'16 ] a4 |
    r8 d'8 a8 [ d'8 ] |
    cis'8 [ cis'16 cis'16 ] a8 [ cis'8 ] |
    cis'8 [ cis'16 cis'16 ] a8 [ cis'8 ] |
    r8 d'8 a8 [ d'8 ] |
    r4 g4 |
    bes8 [ a8 g8 d'8 ] ~ |
    d'8 [ d'8 bes8 g8 ] |
    a8. [ g16 ] f4 |
    r8 a,8 d8 e8 |
    e8-. f4 d8 |
    f16 [ e16 d8 ] cis16 [ d16 e8 ] |
}

trombonesectioncb = {
    d8 [ d'16 d'16 ] a8 [ d'8 ] |
    r8 a8 d'8 e'8 |
}

trombonesectionc = {
    \repeat volta 2 { \trombonesectionca \trombonesectioncb }
}

ktetrombonesectionaa = {
      d8\f [ r8 a,8 ] r8 |
      fis16 [ ( ees16 d16 ees16 ] fis8 ) r8 |
      d8 [ r8 a,8 ] r8 |
      a16 [ ( g16 fis16 g16 ] a8 ) r8 |

      c8 [ r8 g,8 ] r8 |
      c8 [ g8 ees8 c8 ] |
    d4 c4 |
      d8 [ d8 a,8 d8 ] |
}

ktetrombonesectiona = { \repeat volta 2 { \ktetrombonesectionaa } }

ktetrombonesectionba = {
      g8 [ r8 g8 ] r8 |
      d8 [ r8 d8 ] r8 |
      g8 [ bes8 ] g8 [ bes8 ] |
      g8 [ c'8 ] bes8 [ a8 ] |

      g8 [ r8 g8 ] r8 |
      c8 [ r8 c8 ] r8 |
    g4 d8 [ d8 ] |
}

ktetrombonesectionbb = {
      g8 [ d8 g8 ] r8 |
}

ktetrombonesectionbc = {
      g8 [ d8 g,8 ] r8 |
}

ktetrombonesectionb = {
    \repeat volta 2 { \ktetrombonesectionba }
    \alternative { { \ktetrombonesectionbb } { \ktetrombonesectionbc } }
}

ktetrombonesectionca = {
    c'4 g8 [ c'8 ~ ] |
      c'8 [ c'8 g8 c'8 ] |
    d'4 a8 [ d'8 ~ ] |
      d'8 [ d'8 a8 d'8 ] |

      c'8 [ r8 g8 ] r8 |
      c8 [ g8 ees8 c8 ] |
    d4 c8 [ ees8 ] |
}

ktetrombonesectioncb = {
      d8 [ fis8 a8 d'8 ] |
}

ktetrombonesectioncc = {
    c8 d4. |
}

ktetrombonesectionc = {
    \repeat volta 2 { \ktetrombonesectionca }
    \alternative { { \ktetrombonesectioncb } { \ktetrombonesectioncc } }
}

ktetrombonesectionda = {
      d8 [ d'16 d'16 ] d'8 [ d'8 ] |
      c'8 [ c'8 ] d'4 |
      d8 [ d'16 d'16 ] d'8 [ d'8 ] |
      c8 [ c8 ] d4 |

      d8 [ d'16 d'16 ] d'8 [ d'8 ] |
      c'8 [ c'8 ] d'4 |
      c'16 [ bes16 a16 g16 ] fis8 [ ees8 ] |
      ees8 [ d8 a,8 d8 ] |
}

ktetrombonesectiond = {
    \repeat volta 2 {
        \ktetrombonesectionda
    }
}

ktetrombonesectionea = {
      d8 [ r8 d8 ] r8 |
    d8 r8 a,8 [ d8 ] |
      d8 [ r8 c8 ] r8 |
      d8 [ fis8 a8 d'8 ] |
      d8 [ r8 d8 ] r8 |
    d8 r8 a,8 [ d8 ] |
    c8 r8 c8 [ c8 ] |
}

ktetrombonesectioneb = {
      d8 [ d'16 d'16 ] a8 [ d'8 ] |
}

ktetrombonesectionec = {
      d8 [-^ a,8-^ d8-^ ] r8 |
}

ktetrombonesectione = {
    \repeat volta 2 { \ktetrombonesectionea }
    \alternative { { \ktetrombonesectioneb } { \ktetrombonesectionec } }
}

ktstrombonesectiona = {
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

ktstrombonesectionb = {
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

ktstrombonesectionca = {
    \set countPercentRepeats = ##t
    \repeat percent 2 {
        c8 [ r8 c8 ] r8 |
    }
    f8 [ c8 e8 c8 ] |
    f4 ( c'8.-^ ) f16 |
    e8 [ r8 c8 ] r8 |
    c8 [ c8 f8 ] r8 |
    a8 [ g8 f8 e8 ]
}

ktstrombonesectioncb = {
      d8 [ a,8 d8 ] r8 |
}

ktstrombonesectioncc = {
      d8 [ a,8 d8 ] r8 |
}

ktstrombonesectionc = {
    \repeat volta 2 { \ktstrombonesectionca }
    \alternative { { \ktstrombonesectioncb } { \ktstrombonesectioncc } }
}

ktstrombonesectiond = {
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

trombonecoda = { d'4-. a4-. | d4-. r4 | }

%-------------------------------------------------

trombonenotes = {
    \time 2/4
    \key f \major
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionareprise

    \key bes \major
    \ktetrombonesectiona
    \ktetrombonesectionb
    \ktetrombonesectionc
    \ktetrombonesectiond
    \ktetrombonesectione

    \key f \major
    \trombonesectionareprise
    \ktstrombonesectiona
    \ktstrombonesectionb
    \ktstrombonesectionc
    \ktstrombonesectiond

    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionareprise

    \key bes \major
    \ktetrombonesectiona
    \ktetrombonesectionb
    \ktetrombonesectionc
    \ktetrombonesectiond
    \ktetrombonesectione

    \key f \major
    \trombonesectionareprise
    \ktstrombonesectiona
    \ktstrombonesectionb
    \ktstrombonesectionc
    \ktstrombonesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca

    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectionaa = {
    d''8-.\f d''8-. d''4-- |
    d''8-. d''8-. d''4-- |
    e''8\prall [ ( d''8 ) cis''8 ( d''8 ) ] |
    e''4-. r4 |
    e''8-. e''8-. e''4-- |
    e''8-. e''8-. e''4-- |
    d''8. cis''16 d''8 ( f''8 ) |
    a''4-. r4 |
    r8 \tuplet 3/2 { f''16 g''16 f''16 } e''8 f''8 |
    g''8-.\mf f''8-. e''4 |
    a''8-. [ d''8 e''8 f''8 ] |
    a''16 gis''16 f''8 ~ f''16 e''16 d''8 |
    e''16 [ g''16 f''8 ] ~ f''8 f''8 |
    f''16 [ e''16 d''8 ] cis''16 [ d''16 e''8 ] |
}

violinsectionab = {
    d''4 a''4 |
    a''16 [ gis''16 f''8-. ] f''16 [ e''16 d''8-. ]
}

violinsectionac = {
    d''4-. r4 |
    c''2\ff\trill |
}

violinsectionad = {
    d''4-. r4 |
    d''2\ff\trill |
}

violinsectiona = {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionac } }
}

violinsectionareprise = {
    \repeat volta 2 { \violinsectionaa }
    \alternative { { \violinsectionab } { \violinsectionad } }
}

violinsectionb = {
    \repeat volta 2 {
        a'8\mp [ gis'16 a'16 ] bes'8 [ g'8 ] |
        a'8 [ a'8 f'8 f'8 ] |
        e'8. [ ( f'16 ) ] g'8-. [ e'8-. ] |
        r8 f'16 [ g'16 ] a'8-. [ bes'8-. ] |
        c''8 [ ( a'8-. ) bes'8 ( g'8-. ) ] |
        a'8 [ ( c''8 ) a'8-. f'8-. ] |
        e'8. [ f'16 ] g'16 [ f'16 e'8 ] |
    }
    \alternative {
        {
            f'2
        }
        {
            f'8 [ a'8 b'8 cis''8\f ]
        }
    }
}

violinsectionca = {
    d''8.\f [ cis''16 ] d''4 |
    r8 cis''8 d''16 [ cis''16 d''16 cis''16 ] |
    d''8. [\prall cis''16 ] d''8 [ f''8 ] |
    e''16 [ f''16 e''16 f''16 ] g''16 [ f''16 g''16 f''16 ] |
    e''8. [ d''16 ] cis''4 ~ |
    cis''8 [ cis''8 ] d''16 [ cis''16 d''16 e''16 ] |
    d''16 [ ( a'16 ) f'8 ] d''4 |
    f''8 [ d''8 ] d''16 [ cis''16 d''8 ] |
    d'''8 [ c'''8 ] bes''4 |
    r8 g''8 a''16 [ g''16 a''16 bes''16 ] |
    a''8 [ g''8 ] f''4 ~ |
    f''8 [ a'8 d''8 e''8 ] |
    g''16 [ bes''16 a''8 ] a''8 [ a''8 ] |
    a''16 [ g''16 f''8 ] e''16 [ f''16 g''8 ] |
}

violinsectioncb = {
    f''2 |
    r8 a'8 d''8 [ e''8 ] |
}

violinsectionc = {
    \repeat volta 2 { \violinsectionca \violinsectioncb }
}

kteviolinsectionaa = \transpose d c {
    e'8\mf r8 gis'8 r8 |
    gis'16\trill [ ( f'16 e'16 f'16 ) ] gis'8 r8 |
    e'8 r8 b'8 r8 |
    b'16 [ ( a'16 gis'16 a'16 ) ] b'16 [ ( a'16 gis'16 f'16 ) ] |
    e'8 [ d'8 e'8 f'8 ] |
    e'8\trill d'4 d'8 |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8.\trill [ f'16 ] |
    f'8 < gis e' >4. |
}

kteviolinsectiona = { \repeat volta2 { \kteviolinsectionaa } }

kteviolinsectionba = \transpose d c {
    c''4. b'16 [ a'16 ] |
    b'4. a'16 [ gis'16 ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
    a'16 [ ( d''16 ) d''16 ( c''16 ) ] c''16 [ ( b'16 ) b'16 ( a'16 ) ] |
    c''4. b'16 [ a'16 ] |
    b'4. a'16 [ gis'16 ] |
    a'16 [ ( gis'16 a'16 b'16 ) ] c''16 [ ( b'16 a'16 gis'16 ) ] |
}

kteviolinsectionbb = \transpose d c {
    < c' a' >4. r8 |
}

kteviolinsectionbc = \transpose d c {
    < c' a' >8 r8 < c' a' >8 r8 |
}

kteviolinsectionb = {
    \repeat volta 2 { \kteviolinsectionba }
    \alternative { { \kteviolinsectionbb } { \kteviolinsectionbc } }
}

kteviolinsectionca = \transpose d c {
    d''8. [ c''16 ] b'16 [ c''16 d''8 ~ ] |
    d''16 [ ( c''16 b'16 c''16 ] d''16 [ c''16 b'16 a'16 ) ] |
    b'8. [ a'16 ] gis'16 [ a'16 b'8 ~ ] |
    b'16 [ ( a'16 gis'16 a'16 ] b'16 [ a'16 gis'16 f'16 ) ] |
    e'8.\trill [ d'16 ] e'8 [ f'8 ] |
    e'8\trill d'4. |
    gis'16 [ ( a'16 b'16 a'16 ) ] gis'8. [ f'16 ] |
}

kteviolinsectioncb = \transpose d c {
    e'8 [ gis'8 b'8 e''8 ] |
}

kteviolinsectioncc = \transpose d c {
    f'8 < gis e' >4. |
}

kteviolinsectionc = {
    \repeat volta 2 { \kteviolinsectionca }
    \alternative { { \kteviolinsectioncb } { \kteviolinsectioncc } }
}

kteviolinsectionda = \transpose d c, {
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( c''16 b'16 a'16 ] gis'4 ) |
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
    d''16 [ ( e''16 f''16 d''16 ) ] e''4 |
    d''16 [ ( c''16 b'16 a'16 ) ] gis'8. [ f'16 ] |
    f'8 e'4. |
}

kteviolinsectiond = \transpose c c' {
    \repeat volta2 { \kteviolinsectionda }
}

kteviolinsectionea = \transpose d c, {
    gis'8. [ a'16 ] b'16 [ ( c''16 b'16 a'16 ) ] |
    b'8 gis'4. |
    gis'8 [ f'16 e'16 ] d'16 [ ( e'16 f'16 d'16 ) ] | % fix per Susan
    e'8 [ gis'8 b'8 e''8 ] |                            % fix per Susan
    gis'8. [ a'16 ] b'16 [ c''16 b'16 a'16 ] |
    b'8 gis'4. |
    b'16 [ ( a'16 ) a'16 ( gis'16 ) ] gis'16 [ ( f'16 ) f'16 ( e'16 ) ] |
}

kteviolinsectioneb = \transpose d c, {
    e'8 [ e''16 e''16 ] e''8 [ e''8 ] |
}

kteviolinsectionec = \transpose d c, {
    e'8 r8 e''8-> r8 |
}

kteviolinsectione = \transpose c c' {
    \repeat volta 2 { \kteviolinsectionea }
    \alternative { { \kteviolinsectioneb } { \kteviolinsectionec } }
}

violincoda = { d''4-. a''4-. | d'''4 r4 }

%-------------------------------------------------

violinnotes = {
    \key f \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionareprise

     \transpose c c' {
        \key bes \major
        \kteviolinsectiona
        \kteviolinsectionb
        \kteviolinsectionc
        \startOctVA
        \set Staff.ottavation = #"8va. optional"
        \kteviolinsectiond
        \kteviolinsectione
        \stopOctVA
    }

    \key f \major
    \violinsectionareprise
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionareprise

     \transpose c c' {
        \key bes \major
        \kteviolinsectiona
        \kteviolinsectionb
        \kteviolinsectionc
        \kteviolinsectionda
         \transpose c c' { \kteviolinsectionda }
        \kteviolinsectionea
        \kteviolinsectioneb
         \transpose c c' {
            \kteviolinsectionea
            \kteviolinsectionec
        }
    }

    \key f \major
    \violinsectionareprise
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violinsectioncb
    \violinsectionca

    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarchordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min d2:min s2 a2 a2:7 a2:7 a2 d2:min
        d2:min g2:min d2:min d2:min d2:min a2
    }
    \alternative { { d2:min a2 } { d2:min c2:7  } }
}

guitarchordletterssectionarepriseone = \chordmode {
    \repeat volta 2 {
        d2:min d2:min d2:min a2 a2:7 a2:7 a2 d2:min
        d2:min g2:min d2:min d2:min d2:min a2
    }
    \alternative { { d2:min a2 } { d2:min d2  } }
}

guitarchordletterssectionareprisetwo = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2:min
        \chordChangesOn
        d2:min s2 a2 a2:7 a2:7 a2 d2:min
        d2:min g2:min d2:min d2:min d2:min a2
    }
    \alternative { { d2:min a2 } { d2:min d2:min  } }
}

guitarchordletterssectionb = \chordmode {
    \repeat volta 2 { f2 f2 c2:7 f2 f2 f2 c2:7 }
    \alternative {
        { f2 }
        { \chordChangesOff f2 \chordChangesOn }
    }
}
guitarchordletterssectionc = \chordmode {
    \repeat volta 2 {
        d1:min | d1:min a1:7 d1:min | g2:min g2:min d2:min d2:min d2:min |
        a2:7 d2:min a2
    }
}

ktechordletterssectionaa = \chordmode {
    \chordChangesOff d2 \chordChangesOn | d2 | d2 | d2 |
    c2:min | c2:min | d4 c4:min | c2:min |
}

ktechordletterssectiona = \chordmode {
    \repeat volta 2 { \ktechordletterssectionaa }
}

ktechordletterssectionba = \chordmode {
    g2:min | d2 | g2:min | c4:min g4:min | g2:min | d2 | g4:min d4:7 |
}

ktechordletterssectionbb = \chordmode { g2:min | }

ktechordletterssectionbc = \chordmode {
    \chordChangesOff g2:min \chordChangesOn |
}

ktechordletterssectionb = \chordmode {
    \repeat volta 2 { \ktechordletterssectionba }
    \alternative { { \ktechordletterssectionbb } { \ktechordletterssectionbc } }
}

ktechordletterssectionca = \chordmode {
    c2:min | c2:min | d2 | d2 | c2:min | c2:min | c2:min |
}

ktechordletterssectioncb = \chordmode { \chordChangesOff d2 \chordChangesOn | }

ktechordletterssectioncc = \chordmode { c4:min d4 | }

ktechordletterssectionc = \chordmode {
    \repeat volta 2 { \ktechordletterssectionca }
    \alternative { { \ktechordletterssectioncb } { \ktechordletterssectioncc } }
}

ktechordletterssectionda = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    c4:min d4 | d2 | c4:min d4 | d2 | c4:min d4 | c2:min | c8:min d4. |
}

ktechordletterssectiond = \chordmode {
    \repeat volta 2 { \ktechordletterssectionda }
}

ktechordletterssectionea = \chordmode {
    \chordChangesOff d2 \chordChangesOn | d2 | d4 c4:min | d2 |
    d2 | d2 | c2:min |
}

ktechordletterssectioneb = \chordmode { d2 | }

ktechordletterssectionec = \chordmode { \chordChangesOff d2 \chordChangesOn | }

ktechordletterssectione = \chordmode {
  \repeat volta 2 { \ktechordletterssectionea }
  \alternative { { \ktechordletterssectioneb } { \ktechordletterssectionec } }
}

ktschordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2:min |
        \chordChangesOn
        g4:min d4:min | d4:min a4:7 | d2:min |
        d2:min | g4:min d4:min | d4:min a4:7 |
    }
    \alternative {
        { d2:min | }
        { \chordChangesOff d2:min \chordChangesOn | } }
}

ktschordletterssectionb = \chordmode {
    f2 | c4:7 f4 | c2:7 | f2 | f2 | bes4 f4 | c2:7 | f2 |
    a2:7 | d2:min | a2:7 | d2:min | a2:7 | d2:min | a2:7 | d2:min |
}

ktschordletterssectionca = \chordmode {
    c2:7 | s2 | f2 | s2 | c2:7 | s4 f4 | a2:7 |
}

ktschordletterssectioncb = \chordmode { d2:min | }

ktschordletterssectioncc = \chordmode {
    \chordChangesOff d2:min \chordChangesOn |
}

ktschordletterssectionc = \chordmode {
    \repeat volta 2 { \ktschordletterssectionca }
    \alternative { { \ktschordletterssectioncb } { \ktschordletterssectioncc } }
}

ktschordletterssectiond = \chordmode {
    f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 |
    c2:7 | c2:7 | f4 c4:7 | f2 | c2:7 | c4:7 f4 | f2:7 | d2:min |
}

guitarchordletterscoda = \chordmode {
    \chordChangesOff d4:min \chordChangesOn a4 d4:min d4:min
}

guitarchordletters = \chordmode {
    \guitarchordletterssectiona
    \guitarchordletterssectionb
    \guitarchordletterssectionc
    \guitarchordletterssectionarepriseone

    \ktechordletterssectiona
    \ktechordletterssectionb
    \ktechordletterssectionc
    \ktechordletterssectiond
    \ktechordletterssectione

    \guitarchordletterssectionareprisetwo
    \ktschordletterssectiona
    \ktschordletterssectionb
    \ktschordletterssectionc
    \ktschordletterssectiond

    \blankmeasure
    \guitarchordletterscoda
}

clarinetchordletters = \transpose bes, c \guitarchordletters
tenorsaxchordletters = \transpose bes, c \guitarchordletters
trumpetchordletters = \transpose bes, c \guitarchordletters
altosaxchordletters = \transpose ees c \guitarchordletters
%guitarchordletters = \chordletters
flutechordletters = \guitarchordletters
violinchordletters = \guitarchordletters
trombonechordletters = \guitarchordletters
leadsheetchordletters = \guitarchordletters
%pianochordletters = \chordletters
melodychordletters = \guitarchordletters
basschordletters = \guitarchordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% we don't have a guitar part to expand for midi or specific playing

guitarnotes = {
    \key f \major
    \time 2/4
}

guitarnotesmidi = {
    \key f \major
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectionaa = {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    a,4-.\4 r4 |
    a,4\4 e4\3 |
    a,4\4 e4\3 |
    a,4\4 a,4\4 |
    d4-.\3 r4 |
    d4\3 f4\2 |
    g4\2 e4\3 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 f4\2 |
    e4\3 a,4\4 |
}

basssectionab = {
    d4\3 f4\2 |
    a4\2 a,4\4
}

basssectionac = {
    d4\3 r4 |
    c2\3
}

basssectionad = {
    d4\3 r4 |
    d2\3
}

basssectiona = {
    \repeat volta 2 { \basssectionaa }
    \alternative { { \basssectionab } { \basssectionac } }
}

basssectionareprise = {
    \repeat volta 2 { \basssectionaa }
    \alternative { { \basssectionab } { \basssectionad } }
}

basssectionb = {
    \repeat volta 2 {
        f4\2 c4\3 |
        f4\2 c4\3 |
        g4\2 c4\3 |
        f8 [\2 c8\3 d8\3 e8\2 ] |
        f4\2 c4\3 |
        f4\2 c4\3 |
        e4\2 c4\3 |
    }
    \alternative {
        {
            f8 [\2 c8\3 a,8\4 c8\3 ]
        }
        {
            f4\2 r4
        }
    }
}

basssectionca = {
    d4\3 a,8\4 [ d8\3 ~ ] |
    d8\3 [ a,8\4 ] d4\3 |
    d4\3 a,8\4 [ d8\3 ~ ] |
    d8\3 [ a,8\4 ] d4\3 |
    e4\3 a,8\4 [ e8\3 ~ ] |
    e8\3 [ a,8\4 ] e4\3 |
    d4\3 a,8\4 [ d8\3 ~ ] |
    d4\3 f4\2 |
    g4\2 d4\3 |
    g4\2 d4\3 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 f,4\4 |
    a,4\4 cis4\3 |
}

basssectioncb = {
    d4\3 a,4\4 |
    d8\3 [ a,8\4 b,8\4 cis8\3 ]
}

basssectionc = { \repeat volta 2 { \basssectionca \basssectioncb } }

ktebasslinesectionaa = {
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    d4\3 a,4\4 |
    c4\3 g,4\4 |
    c4\3 g,4\4 |
    d4\3 c4\3 |
    d8\3 [ d8\3 a,8\4 d8\3 ] |
}

ktebasslinesectiona = {
    \repeat volta 2 {
        \ktebasslinesectionaa
    }
}

ktebasslinesectionba = {
    g4\2 g4\2 |
    d4\3 d4\3 |
    g4\2 g4\2 |
    c4\3 g4\2 |
    g4\2 g4\2 |
    d4\3 d4\3 |
    g4\2 d4\3 |
}

ktebasslinesectionbb = {
    g8\2 [ d8\3 g8\2 ] r8 |
}

ktebasslinesectionbc = {
    g8\2 [ d8\3 g,8\4 ] r8 |
}

ktebasslinesectionb = {
    \repeat volta 2 { \ktebasslinesectionba }
    \alternative { { \ktebasslinesectionbb } { \ktebasslinesectionbc } }
}

ktebasslinesectionca = {
    c4\3 c4\3 |
    c4\3 c4\3 |
    d4\3 d4\3 |
    d4\3 d4\3 |
    c4\3 g,4\4 |
    c4\3 g,4\4 |
    d4\3 c4\3 |
}

ktebasslinesectioncb = {
    d8\3 [ a8\2 fis8\3 d8\3 ] |
}

ktebasslinesectioncc = {
    c8\3 d4.\3 |
}

ktebasslinesectionc = {
    \repeat volta 2 { \ktebasslinesectionca }
    \alternative { { \ktebasslinesectioncb } { \ktebasslinesectioncc } }
}

ktebasslinesectionda = {
    d4\3 a,4\4 |
    c4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 d4\3 |
    c4\3 c4\3 |
    c8\3 [ d8\3 a,8\4 d8\3 ] |
}

ktebasslinesectiond = {
    \repeat volta 2 {
        \ktebasslinesectionda
    }
}

ktebasslinesectionea = {
    d4\3 d4\3 |
    d4\3 a,4\4 |
    d4\3 c4\3|
    d8\3 [ a8\2 fis8\3 d8\3 ] |
    d4\3 d4\3 |
    d4\3 a,4\4 |
    c4\3 c4\3 |
}

ktebasslinesectioneb = {
    d8\3 [ d'16\1 d'16\1 ] a8\2 [ d'8\1 ] |
}

ktebasslinesectionec = {
    d8\3 [ a,8\4 d8\3-> ] r8 |
}

ktebasslinesectione = {
    \repeat volta 2 { \ktebasslinesectionea }
    \alternative { { \ktebasslinesectioneb } { \ktebasslinesectionec } }
}

ktsbasslinesectiona = {
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

ktsbasslinesectionb = {
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

ktsbasslinesectionca = {
    c8\3 r8 c8\3 r8 |
    c8\3 r8 c8\3 r8 |
    f8\2 r8 c8\3 r8 |
    f8\2 r8 f8\2 r8 |

    c8\3 r8 c8\3 r8 |
    c8\3 r8 f8\2 r8 |
    a,8\4 r8 a,8\4 r8 |
}

ktsbasslinesectioncb = {
    d8\3 a,8\4 d8\3 r8 |
}

ktsbasslinesectioncc = {
    d8\3 a,8\4 d8\3 r8 |
}

ktsbasslinesectionc = {
    \repeat volta 2 { \ktsbasslinesectionca }
    \alternative { { \ktsbasslinesectioncb } { \ktsbasslinesectioncc } }
}

ktsbasslinesectiond = {
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

basscoda = { d4\3 a,4\4 | d4\3 r4 | }

%-------------------------------------------------

bassnotes = {
    \time 2/4
    \key f \major
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionareprise

    \key bes \major
    \ktebasslinesectiona
    \ktebasslinesectionb
    \ktebasslinesectionc
    \ktebasslinesectiond
    \ktebasslinesectione

    \key f \major
    \basssectionareprise
    \ktsbasslinesectiona
    \ktsbasslinesectionb
    \ktsbasslinesectionc
    \ktsbasslinesectiond

    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionareprise

    \key bes \major
    \ktebasslinesectiona
    \ktebasslinesectionb
    \ktebasslinesectionc
    \ktebasslinesectiond
    \ktebasslinesectione

    \key f \major
    \basssectionareprise
    \ktsbasslinesectiona
    \ktsbasslinesectionb
    \ktsbasslinesectionc
    \ktsbasslinesectiond

    \basssectiona
    \basssectionb
    \basssectionca
    \basssectioncb
    \basssectionca

    \basscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \time 2/4
     \transpose d c {
        \key g \major
        \clarinetsectiona
    }
     \transpose c ees {
        \key d \major
        \altosaxsectionb
    }
     \transpose d c {
        \key g \major
        \clarinetsectionc
        \clarinetsectionareprise
    }

     \transpose c c' {
        \key bes \major
        \ktemelodysectiona
        \ktemelodysectionb
        \ktemelodysectionc
        \ktemelodysectiond
        \ktemelodysectione
    }

     \transpose d c {
        \key g \major
        \clarinetsectionareprise
    }
    \key f \major
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

    \blankmeasure
    \flutecoda
}

flutenotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

     \transpose d c {
        \key g \major
        \clarinetsectiona
    }
     \transpose c ees {
        \key d \major
        \altosaxsectionb
    }
     \transpose d c {
        \key g \major
        \clarinetsectionc
        \clarinetsectionareprise
    }

    \key bes \major
    \ktemelodysectiona
    \ktemelodysectionb
    \ktemelodysectionc
    \ktemelodysectiond
    \ktemelodysectione

    \key f \major
    \clarinetsectionareprise
    \ktsmelodysectiona
    \ktsmelodysectionb
    \ktsmelodysectionc
    \ktsmelodysectiond

     \transpose d c {
        \key g \major
        \clarinetsectiona
    }
     \transpose c ees {
        \key d \major
        \altosaxsectionb
    }
     \transpose d c {
        \key g \major
        \clarinetsectionca
        \clarinetsectioncb
        \clarinetsectionca
    }

    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \time 2/4
    \key f \major
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionareprise

    \key bes \major
    \ktebasslinesectiona
    \ktebasslinesectionb
    \ktebasslinesectionc
    \ktebasslinesectiond
    \ktebasslinesectione

    \key f \major
    \trombonesectionareprise
    \ktsbasslinesectiona
    \ktsbasslinesectionb
    \ktsbasslinesectionc
    \ktsbasslinesectiond
    \blankmeasure
    \trombonecoda
}

euphoniumnotesmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionareprise

    \key bes \major
    \ktebasslinesectiona
    \ktebasslinesectionb
    \ktebasslinesectionc
    \ktebasslinesectiond
    \ktebasslinesectione

    \key f \major
    \trombonesectionareprise
    \ktsbasslinesectiona
    \ktsbasslinesectionb
    \ktsbasslinesectionc
    \ktsbasslinesectiond

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min d2:min d2:min a4 r4 a2:7 a2:7
        a2 d4:min r4 d2:min g2:min d2:min d2:min
        d2:min a2
    }
    \alternative {
        { d2:min a2 } { d4:min r4 c2:7  }
    }
}

pianochordletterssectionarepriseone = \chordmode {
    \repeat volta 2 {
        d2:min d2:min d2:min a4 r4 a2:7 a2:7
        a2 d4:min r4 d2:min g2:min d2:min d2:min
        d2:min a2
    }
    \alternative {
        { d2:min a2 } { d4:min r4 d2 }
    }
}

pianochordletterssectionareprisetwo = \chordmode {
    \repeat volta 2 {
        d2:min d2:min d2:min a4 r4 a2:7 a2:7
        a2 d4:min r4 d2:min g2:min d2:min d2:min
        d2:min a2
    }
    \alternative {
        { d2:min a2 } { d4:min r4 d2:min }
    }
}

pianochordletterssectionb = \chordmode {
    \repeat volta 2 { f2 | f2 | c2:7 | f2 | f2 | f2 | c2:7 }
    \alternative {
        { f2 }
        { \chordChangesOff f4 \chordChangesOn r4 } }
}

pianochordletterssectionca = \chordmode {
        d2:min d2:min d2:min d2:min a2:7 a2:7 d2:min d2:min
        g2:min g2:min d2:min d2:min d2:min a2:7
}

pianochordletterssectioncb = \chordmode { d2:min a2 }

pianochordletterssectionc = \chordmode {
    \repeat volta 2 {
        \pianochordletterssectionca
        \pianochordletterssectioncb
    }
}

pianochordletterscoda = \chordmode { \chordChangesOff d4:min \chordChangesOn a4 d4:min r4 }

pianochordletters = \chordmode {
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \pianochordletterssectionarepriseone

    \ktechordletterssectiona
    \ktechordletterssectionb
    \ktechordletterssectionc
    \ktechordletterssectiond
    \ktechordletterssectione

    \pianochordletterssectionareprisetwo
    \ktschordletterssectiona
    \ktschordletterssectionb
    \ktschordletterssectionc
    \ktschordletterssectiond

    \blankmeasure
    \pianochordletterscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochordssectionaa = {
    \chordmode {
        r8 d8:min r8 d8:min |
        r8 d8:min r8 d8:min |
        r8 d8:min r8 d8:min |
    }
    < a cis' e' >4 r4 |
    \chordmode {
        r8 a8:7 r8 a8:7 |
        r8 a8:7 r8 a8:7 |
        r8 a8 r8 a8 |
    }
    < d f a >4 r4 |
    \chordmode {
        r8 d8:min r8 d8:min/f |
        r8 g8:min r8 g8:min/+e |
        r8 d8:min r8 d8:min |
        r8 d8:min r8 d8:min |
        r8 d8:min r8 d8:min/f |
        r8 a8/e r8 a8 |
    }
}

pianochordssectionab = \chordmode { r8 d8:min r8 d8:min/f | r8 a8 r8 a8 | }

pianochordssectionac = \chordmode { d4:min r4 | c2:7 | }

pianochordssectionad = \chordmode { d4:min r4 | d2 | }

pianochordssectionae = \chordmode { d4:min r4 | d2:min | }

pianochordssectiona = \chordmode {
    \repeat volta 2 { \pianochordssectionaa }
    \alternative { { \pianochordssectionab } { \pianochordssectionac } }
}

pianochordssectionarepriseone = \chordmode {
    \repeat volta 2 { \pianochordssectionaa }
    \alternative { { \pianochordssectionab } { \pianochordssectionac } }
}

pianochordssectionareprisetwo = \chordmode {
    \repeat volta 2 { \pianochordssectionaa }
    \alternative { { \pianochordssectionab } { \pianochordssectionac } }
}

pianochordssectionb = {
    \repeat volta 2 {
        a'8 [ gis'16 a'16 ] bes'8 [ g'8 ] |
        a'8 [ a'8 f'8 f'8 ] |
        e'8. [ ( f'16 ) ] g'8-. [ e'8-. ] |
        r8 f'16 [ g'16 ] a'8-. [ bes'8-. ] |
        c''8 [ ( a'8-.) bes'8 ( g'8-.) ] |
        a'8 [ ( c''8 )  a'8-. f'8-. ] |
        e'8. [ f'16 ] g'16 [ f'16 e'8 ] |
    }
    \alternative { { f'2 } { f'8 [ a'8 b'8 cis''8\f ] } }
}

pianochordssectionca = \chordmode {
    d4:min r8 d8:min ~ | d8:min r8 d4:min |
    d4:min r8 d8:min ~ | d8:min r8 d4:min |
    a4:7 r8 a8:7 ~ | a8:7 r8 a4:7 |
    d4:min r8 d8:min ~ | d4:min d4:min |
    r8 g8:min r8 g8:min |
    r8 g8:min r8 g8:min |
    r8 d8:min r8 d8:min |
    r8 d8:min r8 d8:min |
    r8 d8:min r8 d8:min |
    r8 a8:7 r8 a8:7 |
}


pianochordssectioncb = \chordmode { r8 d8:min r8 d8:min | a2 | }

pianochordssectionc = \chordmode {
    \repeat volta 2 { \pianochordssectionca \pianochordssectioncb }
}

pianochordscoda = { \chordmode { d4:min a4 } < d f a >4 r4 }

pianochords = {
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionc
    \pianochordssectionarepriseone
}

pianorightsectionaa = {
    d''8-. d''8-. d''4-- |
    < d'' f'' >8-. < d'' f'' >8-. < d'' f'' >4-- |
    e''8 d''8 cis''8 d''8 ] |
    < cis'' e'' >4-. r4 |

    e''8-. e''8-. e''4-- |
    < e'' g'' >8-. < e'' g'' >8-. < e'' g'' >4-- |
    f''8. e''16 d''8 f''8 |
    < f'' a'' >4-. r4 |

    r8 bes''16 a''16 g''8 a''8 |
    bes''8 a''8 g''4 |
    r8 d''8 e''8 f''8 |
    a''16 ( gis''16 f''8 ) f''16 ( e''16 d''8 ) |

    e''16 g''16 f''8 ~ f''8 f''8 |
    f''16 ( e''16 d''8 ) cis''16 ( d''16 e''8 ) |
}

pianorightsectionab = {
    < f' a' d'' >2 |
    < cis'' e'' a'' >2 |
}

pianorightsectionac = {
    < f' a' d'' >4-. r4 |
    < c'' e'' g'' bes'' >2 |
}

pianorightsectionad = {
    < f' a' d'' >4-. r4 |
    < fis' a' d'' >2 |
}

pianorightsectionae = {
    < f' a' d'' >4-. r4 |
    < f' a' d'' >2 |
}

pianorightsectiona = {
    \repeat volta 2 { \pianorightsectionaa }
    \alternative { { \pianorightsectionab } { \pianorightsectionac } }
}

pianorightsectionarepriseone = {
    \repeat volta 2 { \pianorightsectionaa }
    \alternative { { \pianorightsectionab } { \pianorightsectionad } }
}

pianorightsectionareprisetwo = {
    \repeat volta 2 { \pianorightsectionaa }
    \alternative { { \pianorightsectionab } { \pianorightsectionae } }
}

pianorightsectionb = {
    \repeat volta 2 {
        a''16 c'''16 b''16 c'''16 d'''16 c'''16 b''16 c'''16 |
        f'''8 c'''8 a''8. f''16 |
        g''8. a''16 bes''16 a''16 g''8 |
        gis''16 bes''16 a''8 ~ a''4 |

        a''16 c'''16 b''16 c'''16 d'''16 c'''16 b''16 c'''16 |
        f'''8 c'''8 a''8 f''8 |
        g''8. a''16 bes''16 a''16 g''8 |
    }
    \alternative {
        {
            < f'' a'' >4 r4
        }
        {
            f'8 a'8 d''8 e''8
        }
    }
}

pianorightsectionca = {
    f''8. e''16 d''4 ~ |
    d''8 e''16 g''16 f''16 e''16 f''16 g''16 |
    f''8. e''16 d''8 a''8 |
    gis''16 a''16 gis''16 a''16 bes''16 a''16 bes''16 a''16 |

    g''8. f''16 e''4 ~ |
    e''8 e''16 g''16 f''16 e''16 f''16 g''16 |
    f''16 e''16 d''8 a''4 |
    a''16 gis''16 f''8 f''16 e''16 d''8 |

    bes''16 a''16 bes''16 a''16 g''4 |
    r8 e''16 g''16 f''16 e''16 f''16 g''16 |
    a''8. g''16 f''4 |
    r8 a'8 d''8 e''8 |

    e''16 g''16 f''8 f''8 f''8 |
    f''16 e''16 d''8 cis''16 d''16 e''8 |
}

pianorightsectioncb = {
    d''4. a''8 |
    \tuplet 3/2 { a''8 ( gis''8 f''8 ) } \tuplet 3/2 { gis''8 ( f''8 e''8 ) } |
}

pianorightsectionc = {
    \repeat volta 2 {
        \pianorightsectionca
        \pianorightsectioncb
    }
}

ktepianorightuppersectionaa = {
    d''8\f r8 fis''8 r8 |
      fis''16\trill [ ees''16 d''16 ees''16 ] f''8 r8 |
    d''8 r8 a''8 r8 |
      a''16 [ ( g''16 fis''16 g''16 ] a''16 [ g''16 fis''16 ees''16 ) ] |
      d''8 [ c''8 d''8 ees''8 ] |
    d''8\trill c''4 c''8 |
      fis''16 [ ( g''16 a''16 g''16 ) ] fis''8.\trill [ ees''16 ] |
    ees''8 < fis' a' d'' >4. |
}

ktepianorightuppersectiona = {
    \repeat volta 2 {
        \ktepianorightuppersectionaa
    }
}

ktepianorightuppersectionba = {
    bes''4. a''16 [ g''16 ] |
    a''4. g''16 [ fis''16 ] |
      g''16 [ ( fis''16 g''16 a''16 ) ] bes''16 [ ( a''16 g''16 fis''16 ) ] |
      g''16 [ ( c'''16 )  c'''16 ( bes''16 ) ] bes''16 [ ( a''16 ) a''16 ( g''16 ) ] |
    bes''4. a''16 [ g''16 ] |
    a''4. g''16 [ fis''16 ] |
      g''16 [ ( fis''16 g''16 a''16 ) ] bes''16 [ ( a''16 g''16 fis''16 ) ] |
}

ktepianorightuppersectionbb = {
    < bes' g'' >4. r8 |
}

ktepianorightuppersectionbc = {
    < bes' g'' >8 r8 < bes' g'' >8 r8 |
}

ktepianorightuppersectionb = {
    \repeat volta 2 { \ktepianorightuppersectionba }
    \alternative { { \ktepianorightuppersectionbb } { \ktepianorightuppersectionbc } }
}

ktepianorightuppersectionca = {
      c'''8. [ bes''16 ] a''16 [ bes''16 c'''8 ~ ] |
      c'''16 [ ( bes''16 a''16 bes''16 ] c'''16 [ bes''16 a''16 g''16 ) ] |
      a''8. [ g''16 ] fis''16 [ g''16 a''8 ~ ] |
      a''16 [ ( g''16 fis''16 g''16 ] a''16 [ g''16 fis''16 ees''16 ) ] |
      d''8.\trill [ c''16 ] d''8 [ ees''8 ] |
    d''8\trill c''4. |
      fis''16 [ ( g''16 a''16 g''16 ) ] fis''8. [ ees''16 ] |
}

ktepianorightuppersectioncb = {
      d''8 [ fis''8 a''8 d'''8 ] |
}

ktepianorightuppersectioncc = {
    < g' a' ees'' >8 < fis' a' d'' >4. |
}

ktepianorightuppersectionc = {
    \repeat volta 2 { \ktepianorightuppersectionca }
    \alternative { { \ktepianorightuppersectioncb } { \ktepianorightuppersectioncc } }
}

ktepianorightuppersectionda = {
      d'8 [ d''16 d''16 ] d''8 [ d''8 ] |
      c''16 [ ( d''16 ees''16 c''16 ] d''4 ) |
      d'8 [ d''16 d''16 ] d''8 [ d''8 ] |
      c''16 [ bes'16 a'16 g'16 ] fis'4 |
      d'8 [ d''16 d''16 ] d''8 [ d''8 ] |
      c''16 [ d''16 ees''16 c''16 ] d''4 |
      c''16 [ bes'16 a'16 g'16 ] fis'8. [ ees'16 ] |
    < g a ees' >8 < fis a d' >4. |
}

ktepianorightuppersectiond = {
    \repeat volta 2 {
        \ktepianorightuppersectionda
    }
}

ktepianorightuppersectionea = {
      fis'8. [ g'16 ] a'16 [ bes'16 a'16 g'16 ] |
    a'8 fis'4. |
      fis'8 [ ees'16 ( d'16 ] c'16 [ d'16 ees'16 c'16 ) ] |
      d'8 [ fis'8 a'8 d''8 ] |
      fis'8. [ g'16 ] a'16 [ bes'16 a'16 g'16 ] |
    a'8 fis'4. |
      a'16 [ ( g'16 ) g'16 ( fis'16 ) ] fis'16 [ ( ees'16 ) ees'16 ( d'16 ) ] |
}

ktepianorightuppersectioneb = {
      d'8 [ d''16 d''16 ] d''8 [ d''8 ] |
}

ktepianorightuppersectionec = {
    d'8 r8 < fis' a' d'' >8_> r8 |
}

ktepianorightuppersectione = \transpose c c' {
    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    \repeat volta 2 { \ktepianorightuppersectionea }
    \alternative { { \ktepianorightuppersectioneb } { \ktepianorightuppersectionec } }
    \stopOctVA
}

ktepianorightuppersectionehigh = \transpose c c' {
    \ktepianorightuppersectione
}

ktspianorightuppersectiona = {
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

ktspianorightuppersectionb = {
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

ktspianorightuppersectionca = {
      e''16 [ f''16 ] g''4 g''8 |
      g''16 [ ( aes''16 ) g''16 ( aes''16 ) ] g''8. [ f''16 ] |
      f''16 [ ( e''16 d''16 e''16 ) ] f''16 [ ( g''16 f''16 e''16 ) ] |

    f''4 c'''8. [ f''16 ] |
      e''16 [ f''16 ] g''4 c'''8 |
      c'''16 [ bes''16 a''16 g''16 ] f''8. [ a''16 ] |
      a''16 [ ( g''16 ) g''16 ( f''16 ) ] f''16 [ ( e''16 ) e''16 ( d''16 ) ] |
}

ktspianorightuppersectioncb = {
      e''16 [ f''16 ] d''4 f''8 |
}

ktspianorightuppersectioncc = {
      e''16 [ f''16 ] d''4 f''8 |
}

ktspianorightuppersectionc = {
    \repeat volta 2 { \ktspianorightuppersectionca }
    \alternative { { \ktspianorightuppersectioncb } { \ktspianorightuppersectioncc } }
}

ktspianorightuppersectiond = {
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

pianorightcoda = {
    d''8-. r8 < cis'' g'' a'' >8-.-> r8 | < f'' a'' d''' >8-.-> r8 r4 |
}

pianoleftsectionaa = {
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    < a, cis e >4-. r4 |
    a,8 < cis e >8 < cis e >8 < cis e >8 |
    a,8 < cis e >8 < cis e >8 < cis e >8 |
    a,8 < cis e >8 < a cis e >8 < a cis e >8 |
    < d f a >4-. r4 |
    d8 < f a >8 f8 < f a >8 |
    g8 < bes d' >8 e8 < bes d' >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 f8 < f a >8 |
    e8 < cis' e' >8 a,8 < cis' e' >8 |
}

pianoleftsectionab = {
    d8 < f a >8 f8 < f a >8 |
    a8 < cis' e' >8 a,8 < cis' e' >8
}

pianoleftsectionac = {
    < d f >4 r4 |
    < c e g >2
}

pianoleftsectionad = {
    < d f >4 r4 |
    < d fis >2
}

pianoleftsectionae = {
    < d f >4 r4 |
    < d f >2
}

pianoleftsectiona = {
    \repeat volta 2 { \pianoleftsectionaa }
    \alternative { { \pianoleftsectionab } { \pianoleftsectionac } }
}

pianoleftsectionarepriseone = {
    \repeat volta 2 { \pianoleftsectionaa }
    \alternative { { \pianoleftsectionab } { \pianoleftsectionad } }
}

pianoleftsectionareprisetwo = {
    \repeat volta 2 { \pianoleftsectionaa }
    \alternative { { \pianoleftsectionab } { \pianoleftsectionae } }
}

pianoleftsectionb = {
    \repeat volta 2 {
        f,8 < a, c >8 c,8 < a, c >8 |
        f,8 < a, c >8 c,8 < a, c >8 |
        g,8 < e g >8 c8 < e g >8 |
        f8 c8 d8 e8 |
        f,8 < a, c >8 c,8 < a, c >8 |
        f,8 < a, c >8 c,8 < a, c >8 |
        e,8 < e g >8 c8 < e g >8 |
    }
    \alternative {
        {
            f8 c8 a,8 c8
        }
        {
            < f a c >4 r4
        }
    }
}

pianoleftsectionca = {
    < d, d >4 < a,, a, >8 < d, d >8 ~ |
    < d, d >8 < a,, a, >8 < d, d >4 |
    < d, d >4 < a,, a, >8 < d, d >8 ~ |
    < d, d >8 < a,, a, >8 < d, d >4 |
    < e, e >4 < a,, a, >8 < e, e >8 ~ |
    < e, e >8 < a,, a, >8 < e, e >4 |
    < d, d >4 < a,, a, >8 < d, d >8 ~ |
    < d, d >4 < f, f >4 |
    g8 < bes d' >8 d8 < bes d' >8 |
    g8 < bes d' >8 d8 < bes d' >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    < d f a >8 r8 < f, d f >8 r8 |
    < a, cis e >8 r8 < cis e a >8 r8 |
}

pianoleftsectioncb = {
    d8 < f a >8 a,8 < f a >8 |
    < d f a >8 r8 < a, e g >8 r8 |
}

pianoleftsectionc = {
    \repeat volta 2 {
        \pianoleftsectionca
        \pianoleftsectioncb
    }
}

ktepianoleftuppersectionaa = {
      d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
      d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
      d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
      d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
      c8 [ < ees g >8 ] g,8 [ < ees g >8 ] |
      c8 [ < ees g >8 ] g,8 [ < ees g >8 ] |
      d8 [ < fis a >8 ] c8 [ < ees g >8 ] |
      d8 [ d8 a,8 d8 ] |
}

ktepianoleftuppersectiona = {
    \repeat volta 2 {
        \ktepianoleftuppersectionaa
    }
}

ktepianoleftuppersectionba = {
      g8 [ < bes d' >8 ] g8 [ < bes d' >8 ] |
      d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
      g8 [ < bes d' >8 ] g8 [ < bes d' >8 ] |
      g8 [ < c' ees' >8 ] g8 [ < bes d' >8 ] |
      g8 [ < bes d' >8 ] g8 [ < bes d' >8 ] |
      d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
      g8 [ < bes d' >8 ] d8 [ < fis c' >8 ] |
}

ktepianoleftuppersectionbb = {
      g8 [ d8 g8 ] r8 |
}

ktepianoleftuppersectionbc = {
      g8 [ d8 g,8 ] r8 |
}

ktepianoleftuppersectionb = {
    \repeat volta 2 { \ktepianoleftuppersectionba }
    \alternative { { \ktepianoleftuppersectionbb } { \ktepianoleftuppersectionbc } }
}

ktepianoleftuppersectionca = {
      c8 [ < ees g >8 ] c8 [ < ees g >8 ] |
      c8 [ < ees g >8 ] c8 [ < ees g >8 ] |
      d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
      d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
      c8 [ < ees g >8 ] g,8 [ < ees g >8 ] |
      c8 [ < ees g >8 ] g,8 [ < ees g >8 ] |
      d8 [ < fis a >8 ] c8 [ < ees g a >8 ] |
}

ktepianoleftuppersectioncb = {
      d8 [ a8 fis8 d8 ] |
}

ktepianoleftuppersectioncc = {
    c8 d4. |
}

ktepianoleftuppersectionc = {
    \repeat volta 2 { \ktepianoleftuppersectionca }
    \alternative { { \ktepianoleftuppersectioncb } { \ktepianoleftuppersectioncc } }
}

ktepianoleftuppersectionda = {
    d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
    c8 [ < ees g a >8 ] d8 [ < fis a >8 ] |
    d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
    c8 [ < ees g a >8 ] d8 [ < fis a >8 ] |
    d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
    c8 [ < ees g a >8 ] d8 [ < fis a >8 ] |
    c8 [ < ees g a >8 ] c8 [ < ees g a >8 ] |
    c8 [ d8 a,8 d8 ] |
}

ktepianoleftuppersectiond = {
    \repeat volta 2 {
        \ktepianoleftuppersectionda
    }
}

ktepianoleftuppersectionea = {
    d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
    d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
    d8 [ < fis a >8 ] c8 [ < ees g a >8 ] |
    d8 [ a8 ] fis8 [ d8 ] |
    d8 [ < fis a >8 ] d8 [ < fis a >8 ] |
    d8 [ < fis a >8 ] a,8 [ < fis a >8 ] |
    c8 [ < ees g a >8 ] c8 [ < ees g a >8 ] |
}

ktepianoleftuppersectioneb = {
    d8 [ d'16 d'16 ] a8 [ d'8 ] |
}

ktepianoleftuppersectionec = {
    d8 [ a,8 < d, d >8_> ] r8 |
}

ktepianoleftuppersectione = {
    \repeat volta 2 { \ktepianoleftuppersectionea }
    \alternative { { \ktepianoleftuppersectioneb } { \ktepianoleftuppersectionec } }
}

ktspianoleftuppersectiona = {
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

ktspianoleftuppersectionb = {
    f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
    e8 [ < g c' >8 ] f8 [ < a c' >8 ] |

    c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
    f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
    f8 [ < a c' >8 ] c8 [ < a c' >8 ] |
    f8 [ < bes d' >8 ] f8 [ < a c' >8 ] |
    e8 [ < g c' >8 ] c8 [ e8 ] |
    f8-. [ f8 ( e8 d8 ] |
    cis8-. [ ) a8-. ] a,8-. [ a8-. ] |

    d8 [ < f a >8 ] a,8 [ < f a >8 ] |
    cis8-. [ a8-. ] a,8-. [ a8-. ] |
    d8 [ ( a,8 ] f8 [ d8 ) ] |
    cis8-. [ a8-. ] a,8-. [ a8-. ] |
    d8 [ < f a >8 ] a,8 [ < f a >8 ] |

    cis8-. [ a8-. ] a,8-. [ a8-. ] |
    d8 [ a,8 d,8 ] r8 |
}

ktspianoleftuppersectionca = {
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      f8 [ < a c' >8 ] c8 [ < e g bes >8 ] |

      f8 [ < a c' >8 ] f8 [ < a c' >8 ] |
      c8 [ < e g bes >8 ] c8 [ < e g bes >8 ] |
      c8 [ < e g bes >8 ] f8 [ < a c' >8 ] |
      a,8 [ < cis e g >8 ] a,8 [ < cis e g >8 ] |
}

ktspianoleftuppersectioncb = {
      d8 [ a,8 < d f >8 ] r8 |
}

ktspianoleftuppersectioncc = {
      d8 [ a,8 < d f >8 ] r8 |
}

ktspianoleftuppersectionc = {
    \repeat volta 2 { \ktspianoleftuppersectionca }
    \alternative { { \ktspianoleftuppersectioncb } { \ktspianoleftuppersectioncc } }
}

ktspianoleftuppersectiond = {
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

pianoleftcoda = { d4 a,4 | d4 r4 }

pianorightmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \pianorightsectionarepriseone

    \key bes \major
    \ktepianorightuppersectiona
    \ktepianorightuppersectionb
    \ktepianorightuppersectionc
    \ktepianorightuppersectiond
    \ktepianorightuppersectionehigh

    \key f \major
    \pianorightsectionareprisetwo
    \ktspianorightuppersectiona
    \ktspianorightuppersectionb
    \ktspianorightuppersectionc
    \ktspianorightuppersectiond

    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionca
    \pianorightsectioncb
    \pianorightsectionca

    \pianorightcoda
}

pianolefthighmidi = {
    \time 2/4
    \preintro
    \metronomeextra

    \key f \major
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \pianoleftsectionarepriseone

    \key bes \major
    \ktepianoleftuppersectiona
    \ktepianoleftuppersectionb
    \ktepianoleftuppersectionc
    \ktepianoleftuppersectiond
    \ktepianoleftuppersectione

    \key f \major
    \pianoleftsectionareprisetwo
    \ktspianoleftuppersectiona
    \ktspianoleftuppersectionb
    \ktspianoleftuppersectionc
    \ktspianoleftuppersectiond

    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionca
    \pianoleftsectioncb
    \pianoleftsectionca
    \pianoleftcoda
}

pianolefthigh = {
    \key f \major
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \pianoleftsectionarepriseone

    \key bes \major
    \ktepianoleftuppersectiona
    \ktepianoleftuppersectionb
    \ktepianoleftuppersectionc
    \ktepianoleftuppersectiond
    \ktepianoleftuppersectione

    \key f \major
    \pianoleftsectionareprisetwo
    \ktspianoleftuppersectiona
    \ktspianoleftuppersectionb
    \ktspianoleftuppersectionc
    \ktspianoleftuppersectiond

    \blankmeasure
    \pianoleftcoda
}

pianoleftlowmidi = {
}

pianoleftlow = {
}

%-------------------------------------------------

pianorightuppernotes = {
    \time 2/4
    \key f \major
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \pianorightsectionarepriseone

    \key bes \major
    \ktepianorightuppersectiona
    \ktepianorightuppersectionb
    \ktepianorightuppersectionc
    \ktepianorightuppersectiond
    \ktepianorightuppersectione

    \key f \major
    \pianorightsectionareprisetwo
    \ktspianorightuppersectiona
    \ktspianorightuppersectionb
    \ktspianorightuppersectionc
    \ktspianorightuppersectiond

    \blankmeasure
    \pianorightcoda
}

pianoleftuppernotes = <<
    \time 2/4
    \override TextScript.transparent = ##t
    \pianolefthigh
    \pianoleftlow
>>

pianorightnotesmidi = <<
    \pianorightmidi
>>

pianoleftnotesmidi = <<
    \pianoleftlowmidi
    \pianolefthighmidi
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumsextra = \drummode {
    < bda hhc >4 hhc4 |
    < bda hhc >4 hhc4 |
}

drumssectiona = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

drumssectionb = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumssectionca = \drummode {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

drumssectioncb = \drummode { s2 | s2 | }

drumssectionc = \drummode { \repeat volta 2 { \drumssectionca \drumssectioncb } }

drumscoda = \drummode { s2 | s2 | }

drumshigh = \drummode {
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \drumssectiona
}

drumshighmidi = \drummode {
    \preintro
    \drumsextra
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = { \melody }
tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | s2 | s2 | a2 |
    a2:7 | s2 | a2 | d2:min |
}

previewnotes = {
    \time 2/4
    \transpose d c {
        \key g \major
        e''8-.\f e''8-. e''4-- |
        b''8-. b''8-. b''4\trill |
        a''8. g''16 a''16 [ g''16 fis''16 g''16 ] |
        a''4-.-> r4 |
        fis''8-. fis''8-. fis''4-- |
        a''8-. a''8-. a''4-- |
        g''8.\trill fis''16 g''16 [ fis''16 e''16 g''16 ] |
        b''4-.-> r4 |
    }
}

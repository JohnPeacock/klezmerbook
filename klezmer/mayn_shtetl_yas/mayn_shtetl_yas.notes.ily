\version "2.18.0"

bandmintro =  { s1*2 | \breakIN \bar "||" }

bandmsectiona =  {
    \markSA \positionSA
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 |
    \breakA
    \bar ".|:-||"
}

bandmsectionb =  {
    \markB \positionB
    \repeat volta 2 { s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre }
    \alternative { { s1 | \breakBfor } { s1 | \breakBfiv } }
    s1 | \breakBsix s1 | \breakBsev s1 | \breakBeit s1 |
    \breakB
    \bar "||"
}

bandmsectionca =  {
    \markC \positionC
    s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix
    \bar "||"
    \markTC \positionTC
}

bandmsectioncb =  {
    s1 | \breakCsev s1 |
    \bar "||"
    \markDS \positionDS
}

bandmsectionc =  {
    \bandmsectionca
    \bandmsectioncb
    \breakC
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda =  {
    \markCC \positionCC s1 | \breakCCone s1 | \breakCCtwo s1 |
    \bar "|."
}

bandmNV =  {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro =  { s1 | }
metronomeextra =  { s1 | }
metronomeintro =  { s1 | s1 | }
metronomesectiona =  {
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

metronomesectionb =  {
    \repeat volta 2 { s1 | s1 | s1 | }
    \alternative { { s1 | } { s1 | } }
    s1 | s1 | s1 | s1 |
}

metronomesectionca =  { s1 | s1 | s1 | s1 | s1 | s1 | }

metronomesectioncb =  { s1 | s1 | }

metronomesectionc =  { \metronomesectionca \metronomesectioncb }

metronomecoda =  { s1 | s1 | s1 | }

metronome =  \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 135
    \metronomeextra
    \metronomeintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \tempo 4 = 140
    \metronomesectiona
    \metronomesectionb
    \metronomesectionca
    \tempo 4 = 135
    \metronomecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro =  {
    R1 |
    r2 r4 r8 d''8 |
}

clarinetsectiona = {
    g''4 r4 r8 \acciaccatura { cis'''8 } d'''8 [ c'''8 b''8 ] |
    d'''2 r8   b''8 [ c'''8 cis'''8 ] |
    d'''8\prall [ c'''8 c'''8\prall b''8 ] d'''8\prall [ c'''8 c'''8\prall b''8 ] |
    d'''16-> [ ( e'''16 ) d'''8 ~ ] d'''8 [ e'''8 ] f'''8 [ e'''8 d'''8\prall cis'''8 ] |

    d'''16-> [ ( e'''16 ) d'''8 ~ ] d'''4 r8   b''16 [( d'''16 ) ] c'''16 [ b''16  a''8 ] |
    g''4 \acciaccatura { f'''8^> } g'''8 [ g''8 ~ ] g''8 [ d'''8 c'''8 b''8 ] |
    \acciaccatura { cis'''8^> } d'''2 r8   b''8 [ c'''8 cis'''8 ] |
    \acciaccatura { d'''16 [ e'''16 ] } d'''8\prall [ c'''8 c'''8\prall b''8 ] d'''8\prall [ c'''8 c'''8\prall b''8( ] |

    d'''4.) b''8   b''8 [ a''8 g''8 a''8 ] |
    b''1 |
}

clarinetsectionb = {
% measure 13
    \repeat volta 2 {
        b''8 [ ais''16 ( b''16 ) ] ais''8\prall [ g''8 ] fis''8\prall [ e''8 fis''8 g''8 ] |
        b''8 [ ais''16 ( b''16 ) ] ais''8\prall [ g''8 ] b''8 [ e'''8 ] b''8 r8 |
        b''8 [ ais''16 ( b''16 ) ] ais''8\prall [ g''8 ] fis''8\prall [ e''8 fis''8 g''8 ] |
    }
    \alternative {
        {
            ais''8 [ b''8 ] ais''8\prall [ g''8 ] g''16 [ fis''16 e''8 ] e''8 r8 |
        }
        {
            ais''8 [ b''8 ais''8\prall g''8 ] g''16 [ fis''16 e''8 ] e''8 \tuplet 3/2 { d''16 [ ( e''16 fis''16 ] } |
        }
    }
    g''4 ) r4 r8   b''8 [ c'''8 b''8 ] |
    d'''4 r4 r8   d'''8 [ e'''8 d'''8 ] |
    g'''1-> ~ |
    g'''2. r4 |
}

clarinetsectionca = {
    R1*3 |
    r2 r4 r8 \tuplet 3/2 { b''16 [ ( c'''16 cis'''16 ] } |
    d'''4 ) c'''8 [ b''8 ] d'''8 [ e'''8 ] f'''16 [-> e'''16 d'''8 ] |
    d'''8 [ c'''16 d'''16 ] c'''8 [ b''8 ] cis'''16-> [ ( e'''16 ) d'''8 ] b''4 |
}

clarinetsectioncb = {
    d'''4   c'''8 [ b''8 ] d'''8 [ e'''8 ] f'''16 [ e'''16 d'''8 ] |
    b''8 [ g''8 ] aes''16 [ g''16 f''8 ] g''2 |
}

clarinetsectionc = {
    \clarinetsectionca
    \clarinetsectioncb
}

clarinetcoda = {
    d'''8 [ e'''16 ( d'''16 ) ] c'''8 [ b''8 ] d'''8 [ cis'''16 ( d'''16 ] dis'''16 [ e'''16 eis'''16 fis'''16 ] |
    g'''8-. ) r8 r4 c'''8-.-> r8 r4 |
    b''2^>^\fermata r2 |
}

%-------------------------------------------------

clarinetnotes = {
    \key e \minor
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key e \minor
    \time 4/4
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    R1*2 |
}

trumpetsectiona = {
    g'4 r4 r8   d''8 [ c''8 b'8( ] |
    d''2) r8   b'8 [ c''8 cis''8 ] |
    d''8 [ c''16 ( d''16 ) ] c''8\prall [ b'8 ] d''8 [ c''16 ( d''16 ) ] c''8\prall [ b'8 ] |
    d''4. e''8   f''8 [ e''8 d''8 cis''8 ] |
    d''2 r8   b'16 [ d''16 ] c''16 [ b'16 a'8 ] |
    g'4 r4 r8   d''8 [ c''8 b'8 ] |
    d''2 r8   b'8 [ c''8 cis''8 ] |
    d''8 [ c''16 ( d''16 ) ] c''8\prall [ b'8 ] d''8 [ c''16 ( d''16 ) ] c''8\prall [ b'8 ] |
    d''4. b'8   b'8 [ a'8 g'8 a'8 ] |
    b'1 |
}

trumpetsectionb = {
    \repeat volta 2 {
        e'8 r8 r4 r2 |
        r2 r4 r8 b8\glissando |
        e'8 r8 r4 r2 |
    }
    \alternative {
        {
            r2 r4 r8 c'8*9/10 \glissando \inote g'4*1/20 |
        }
        {
            r2 r4 r8 d'8\glissando |
        }
    }
    g'8 r8 r4 r2 |
    R1*3 |
}

trumpetsectionca = {
    d''4 c''8 [ b'8 ] d''8 [ e''8 ] f''16-> [ e''16 d''8 ] |
    d''4 c''8 [ b'8 ] cis''16-> [ ( e''16 ) d''8 ] b'4 |
    d''4 c''8 [ b'8 ] d''8 [ e''8 ] f''16-> [ e''16 d''8 ] |
    b'8 [ g'8 ] c''16 [ b'16 aes'8 ] g'4 r8 \tuplet 3/2 { b'16 [ ( c''16 cis''16 ] } |
    d''4 ) c''8 [ b'8 ] d''8 [ e''8 ] f''16-> [ e''16 d''8 ~ ] |
    d''4 c''8 [ b'8 ] cis''16-> [ ( e''16 ) d''8 ] b'4 |
}

trumpetsectioncb = {
    d''4 c''8 [ b'8 ] d''8 [ e''8 ] f''16 [ e''16 d''8 ] |
    b'8 [ g'8 ] aes'16 [ g'16 f'8 ] g'2 |
}

trumpetsectionc = {
    \trumpetsectionca
    \trumpetsectioncb
}

trumpetcoda = {
    d''8 [ e''16 ( d''16 ) ] c''8 [ b'8 ] d''8 [ cis''16 ( d''16 ] dis''16 [ e''16 eis''16 fis''16 ] |
    g''8-. ) r8 r4 c''8-.-> r8 r4 |
    g''2->^\fermata r2 |
}

%-------------------------------------------------

trumpetnotes = {
    \key e \minor
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda

}

trumpetnotesmidi = {
    \key e \minor
    \time 4/4
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetcoda

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
% measure 1
    R1 |
    r2 r4 r8 d'8 |
}

altosaxsectiona = {
    g'8 [ g'16 g'16 ] d'8 [ fis'8 ] g'8 r8 r8 d'8 |
    g'8 [ g'16 g'16 ] b8 [ d'8 ] g'8 [ d'8 b8 a8 ] |

    g'8 [ g'16 g'16 ] d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 r8 r4 r2 |
    d''8 [ d''16 d''16 ] fis''8 [ e''8 ] d''8 [ c''8 b'8 a'8 ] |
    g'8 [ g'16 g'16 ] b'8 [ d''8 ] g''8 [ d''8 b'8 d''8 ] |

    r8 g'16 [ g'16 ] d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 [ g''16 g''16 ] d''8 [ fis''8 ] g''8 r8 r4 |
    r8 g'8 b'8 [ d''8 ] g''2 |
    b'4-- cis''4-- d''4-- dis''4-- |
}

altosaxsectionb = {
    \repeat volta 2 {
        r8 e'16 [ e'16 ] b8 [ g8 ] e8 [ g8 b8 dis'8 ( ] |
        e'8 [ ) e8 g8 b8 ] e'8 [ e'8 b8 dis'8-> ( ] |
        e'8 [ ) e'16 e'16 ] b8 [ e'8 ] r8 e'8 [ b8 e'8 ] |
    }
    \alternative {
        {
            r8 e'8 [ b8 e'8 ] g'8 [ e'8 b8 g8 ] |
        }
        {
            r8 g'8 [ e'8 g'8 ] b'8 [ a'8 g'8 d'8 ] |
        }
    }
    g'8 [ g'16 g'16 ] d'8 [ b8 ] g4 r4 |
    r8 b8 [ c'8 b8 ] d'8 [ d'8 des'8 c'8 ] |
    b8^"Solo" [ g16 g16 ] b8 [ c'8 ] d'8 [ c'8 \acciaccatura { fis'8 } g'8 a'8 ] |
    \acciaccatura { a'8 } b'8 [ g'8 b'8 c''8 ] \acciaccatura { cis''8 } d''8 [ b'8 a'8 g'8 ] |
}

altosaxsectionca = \transpose c c, {
    r8 g''16 [ g''16 ] d''8 [ fis''8 ] g''8 [ g''8 d''8 b'8 ] |
    g'8 r8 r4 g'8 [ b'8 d''8 fis''8 ] |
    g''8 r8 d''8 [ fis''8 ] g''8 r8 d''4-> |
    g''8 [ g''16 g''16 ] d''8 [ f''8 ] g''8 r8 d''4-> |
    g'8 [ g'16 g'16 ] r4 g'8 [ b'8 d''8 fis''8 ] |
    g''8 [ g''16 g''16 ] d''8 [ b'8 ] g'8 [ b'8 d''8 fis''8 ] |
}

altosaxsectioncb = \transpose c c, {
    g''8 r8 r8 b'8   d''8 [ g''8 b''8 g''8 ] |
    g''8 r8 d''4 b'2 |
}

altosaxsectionc = {
    \altosaxsectionca
    \altosaxsectioncb
}

altosaxcoda = {
    g'8 [ g'16 g'16 ] b'8 [ d''8 ] r16 d''16 [ ( des''16 c''16 ] b'16 [ bes'16 a'16 aes'16 ] |
    g'8-. ) r8 r4 fis'8-.-> r8 r4 |
    d''2->^\fermata r2
}

%-------------------------------------------------

altosaxnotes = \transpose d a {
    \key e \minor
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = \transpose d a {
    \key e \minor
    \time 4/4
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    R1 |
    r2 r4 r8 d'8 |
}

tenorsaxsectiona = {
    g'8 [ g'16 g'16 ] d'8 [ fis'8 ] g'8 r8 r8 d'8 |
    g'8 [ g'16 g'16 ] b'8 [ d''8 ] g''8 [ d''8 b'8 a'8 ] |
    g'8 [ g'16 g'16 ] d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 r8 r4 r2 |
    d''8 [ d''16 d''16 ] fis''8 [ e''8 ] d''8 [ c''8 b'8 a'8 ] |
    g'8 [ g'16 g'16 ] b'8 [ d''8 ] g''8 [ d''8 b'8 d''8 ] |
    r8 g'16 [ g'16 ] d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 [ g''16 g''16 ] d''8 [ fis''8 ] g''8 r8 r4 |
    r8 g'8   b'8 [ d''8 ] g''2 |
    b'4-- cis''4-- d''4-- dis''4-- |
}

tenorsaxsectionb = {
    \repeat volta 2 {
        r8 e''16 [ e''16 ] b'8 [ g'8 ] e'8 [ g'8 b'8 dis''8( ] |
        e''8 [ ) e'8 g'8 b'8 ] e''8 [ e''8 b'8 dis''8-> ( ] |
        e''8 [ ) e''16 e''16 ] b'8 [ e''8 ] r8 e''8 [ b'8 e''8 ] |
    }
    \alternative {
        {
            r8 e''8 [ b'8 e''8 ] g''8 [ e''8 b'8 g'8 ] |
        }
        {
            r8 g''8 [ e''8 g''8 ] b''8 [ a''8 g''8 d''8 ] |
        }
    }

    g''8 [ g''16 g''16 ] d''8 [ b'8 ] g'4 r4 |
    r8   b'8 [ c''8 b'8 ] d''8 [ d''8 des''8 c''8 ] |
    b'8 [^"Solo" g'16 g'16 ] b'8 [ c''8 ] d''8 [ c''8 \acciaccatura { fis''8 } g''8 a''8 ] |
    \acciaccatura { a''8 } b''8 [ g''8 b''8 c'''8 ] \acciaccatura { cis'''8 } d'''8 [ b''8 a''8 g''8 ] |
}

tenorsaxsectionca = {
    r8 g''16 [ g''16 ] d''8 [ fis''8 ] g''8 [ g''8 d''8 b'8 ] |
    g'8 r8 d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 r8 d''8 [ fis''8 ] g''8 r8 d''4-> |
    g''8 [ g''16 g''16 ] d''8 [ f''8 ] g''8 r8 d'4-> |
    g'8 [ g'16 g'16 ] d'8 [ fis'8 ] g'8 [ b'8 d''8 fis''8 ] |
    g''8 [ g''16 g''16 ] d''8 [ b'8 ] g'8 [ b'8 d'8 fis'8 ] |
}

tenorsaxsectioncb = {
    g'8 r8 r8 b'8   d''8 [ g''8 b''8 g''8 ] |
    g''8 r8 d''4 b'2 |
}

tenorsaxsectionc = {
    \tenorsaxsectionca
    \tenorsaxsectioncb
}

tenorsaxcoda = {
    g'8 [ g'16 g'16 ] b'8 [ d''8 ] r16   d''16 [ ( des''16 c''16 ] b'16 [ bes'16 a'16 aes'16 ] |
    g'8-. ) r8 r4 fis''8-.-> r8 r4 |
    d'''2->^\fermata r2
}

%-------------------------------------------------

tenorsaxnotes = {
    \key e \minor
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key e \minor
    \time 4/4
    \preintro
    \metronomeextra
    \tenorsaxintro
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
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    R1 |
    r2 r4 r8 c8\glissando |
}

trombonesectiona = {
    f8 [ f16 f16 ] c8 [ e8 ] f8 r8 r8 c8\glissando |
    f8 [ f16 f16 ] a8 [ c'8 ] f'8 [ c'8 a8 g8 ] |
    f8.[ f16 ] c8 [ e8 ] f8 [ a8 c'8 e'8 ] |
    f'8 r8 r4 r2 |
    c'8 [ c'16 c'16 ] e'8 [ d'8 ] c'8 [ bes8 a8 g8 ] |
    f8.[ f16 ] a8 [ c'8 ] f'8 [ c'8 a8 c'8 ] |
    r8   f16 [ f16 ] c8 [ e8 ] f8 [ a8 c'8 e'8 ] |
    f'8.[ f'16 ] c'8 [ e'8 ] f'8 r8 r4 |
    r8 f8 a8 [ c'8 ] f'2 |
    a4 b4 c'4 cis'4\glissando
}

trombonesectionb = {
% measure 13
    \repeat volta 2 {
        d'8.[ d'16 ] a8 [ f8 ] d8 [ f8 a8 cis'8->\glissando ] |
        d'4 f8 [ a8 ] d'8 [ d'16 d'16 ] a8 [ cis'8\glissando ] |
        d'8 [ d'16 d'16 ] a8 [ d'8 ] r8   d'8 [ a8 d'8 ] |
    }
    \alternative {
        {
            r8 d'8 [ a8 d'8 ] f'8 [ d'8 a8 f8 ] |
        }
        {
            r8 d'8 [ a8 d'8 ] a8 [ cis'8 d'8 c'8\glissando ] |
        }
    }
    f'8.[ f'16 ] c'8 [ a8 ] f4 r4 |
    r8 a8 [ bes8 a8 ] c'8 [ bes8 a8 g8 ] |
    f4 ees4 d4 c4 |
    f'4 ees'4 d'4 c'4 |
}

trombonesectionca = {
    r8 e'16 [ e'16 ] c'8 [ e'8 ] f'8 [ f'8 c'8 a8 ] |
    f8 r8 c8 [ e8 ] f8 [ a8 c'8 e'8 ] |
    f'8 r8 c'8 [ e'8 ] f'8 r8 c'4-> |
    f'8.[ f'16 ] c'8 [ ees'8 ] f'8 r8 c4^>\glissando |
    f8.[ f16 ] c8 [ e8 ] f8 [ a8 c'8 e'8 ] |
    f'8.[ f'16 ] c'8 [ a8 ] f8 [ a8 c8 e8 ] |
}

trombonesectioncb = {
    f8 r8 r8 a8 c'8 [ f'8 c'8 f'8 ] |
    c'8 r8 bes4 a2 |
}

trombonesectionc = {
    \trombonesectionca
    \trombonesectioncb
}

trombonecoda = {
    f8 [ f16 f16 ] a8 [ c'8 ] r4 c4\glissando |
    f8-. r8 r4 bes8-.-> r8 r4 |
    c'2->^\fermata r2 |
}

%-------------------------------------------------

trombonenotes = {
    \key d \minor
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key d \minor
    \time 4/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% melody from lead sheet

violinintro = {
    R1*2 |
}

violinsectiona = {
    f'2 r8 c''8 [ bes'8 a'8 ] |
    c''1 |
    c''8 [ bes'8 bes'8 a'8 ] c''8 [ bes'8 bes'8 a'8 ] |
    b'8 c''4 d''8 ees''8 [ d''8 c''8 b'8 ] |
    c''2 r8 c'8 [ d'8 e'8 ] |
    f'2 r8 c''8 [ bes'8 a'8 ] |
    c''1 |
    c''8 [ bes'8 bes'8 a'8 ] c''8 [ bes'8 bes'8 a'8 ] |
    c''4. a'8 a'8 [ g'8 f'8 g'8 ] |
    a'1 |
}

violinsectionb = {
    \repeat volta 2 {
        a'4 gis'8 [ f'8 ] e'8 [ d'8 e'8 a'8 ] |
        r8 a'8 [ gis'8 f'8 ] a'8 [ d''8 ] a'4 |
        a'4 gis'8 [ f'8 ] e'8 [ d'8 e'8 a'8 ] |
    }
    \alternative {
        {
            a'4 gis'8 [ f'8 ] e'8 [ f'8 ] d'4 |
        }
        {
            a'4 gis'8 [ f'8 ] e'8 [ f'8 ] d'8 \tuplet 3/2 { c'16 [ d'16 e'16 ] } |
        }
    }
    f'2 r8 a'8 [ bes'8 a'8 ] |
    c''2 r8 c''8 [ d''8 c''8 ] |
    f''1 ~ |
    f''1 |
}

violinsectionca = {
    c''4 bes'8 [ a'8 ] c''8 [ d''8 ] \tuplet 3/2 { ees''8 [ d''8 c''8 ] } |
    c''4 bes'8 [ a'8 ] b'16 [  d''16 b'8 ] a'4 |
    c''4 bes'8 [ a'8 ] c''8 [ d''8 ] \tuplet 3/2 { ees''8 [ d''8 c''8 ] } |
    a'8 [ f'8 ] \tuplet 3/2 { bes'8 [ a'8 ges'8 ] } f'4 r8 \tuplet 3/2 { a'16 [ bes'16 b'16 ] } |
    c''4 bes'8 [ a'8 ] c''8 [ d''8 ] \tuplet 3/2 { ees''8 [ d''8 c''8 ] } |
    c''4 bes'8 [ a'8 ] b'16 [  d''16 b'8 ] a'4 |
}

violinsectioncb = {
    c''4 bes'8 [ a'8 ] c''8 [ d''8 ] \tuplet 3/2 { ees''8 [ d''8 c''8 ] } |
    a'8 [ f'8 ] \tuplet 3/2 { ges'8 [ f'8 ees'8 ] } f'4. r8 |
}

violinsectionc = {
    \violinsectionca
    \violinsectioncb
}

violincoda = {
    c''8 [ d''16 ( c''16 ) ] bes'8 [ a'8 ] c''8 [ b'16 ( c''16 ] cis''16 [ d''16 dis''16 e''16 ] |
    f''8-. ) r8 r4 c''8-.^> r8 r4 |
    f''2^>^\fermata r2 |
}

%-------------------------------------------------

violinnotes = {
    \key d \minor
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key d \minor
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \key d \minor
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

flutenotesmidi = \transpose c c' {
    \key d \minor
    \time 4/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochordsintro = \chordmode {
    \repeat unfold 2 {
        f'2. c'4:7 |
    }
}

pianochordssectiona = \chordmode {
    \repeat unfold 2 { f'2. c'4:7 | }
    \repeat unfold 2 { f'1 | }
    c'4:7 g4:min7/+d ees:dim c'8:7/+e s8 |
    \repeat unfold 2 { f'2. c'4:7 | }
    \repeat unfold 2 { f'1 | }
    a4:7 e4:min7/+b c'4:dim a4:7/+cis |
}

pianochordssectionb = \chordmode {
    \repeat volta 2 {
        \repeat unfold 3 { d1:min | }
    }
    \alternative
    {
        { \chordChangesOff d2:min \chordChangesOn a4:7 d4:min | }
        { \chordChangesOff d4:min \chordChangesOn d4:min a4:7 d8:min c'8:7 }
    }
    f'1 |
    c'1:7 |
    f'1 |
    f'1 |
}

pianochordssectionc = \chordmode {
    \chordChangesOff f'1 | \chordChangesOn f'1 | f'1 | f'4 ees4:min f'2 |
    f'1 | f'1 | f'1 | f'4 ees4:min/+c f'2 |
}

pianochordscoda = \chordmode {
    \chordChangesOff f'2. \chordChangesOn c'8:7 s8 |
    f'2 c'4:7 s4 |
    f'1 |
}

pianochords = \chordmode {
    \pianochordsintro
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionc
    \blankmeasure
    \pianochordscoda
}

chordletters = \pianochords
hornchordletters = {
    s1*2 |
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionc
    \blankmeasure
    \pianochordscoda
}
clarinetchordletters = \transpose bes, c \hornchordletters
tenorsaxchordletters = \transpose bes, c \hornchordletters
trumpetchordletters = \transpose bes, c \hornchordletters
altosaxchordletters = \transpose ees c \hornchordletters
guitarchordletters = \chordletters
flutechordletters = \hornchordletters
violinchordletters = \hornchordletters
trombonechordletters = \hornchordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightintro = {
    \set countPercentRepeats = ##t
    \repeat percent 2 {
        r8 < a c' f' >8 [ r8 < a c' f' >8 ] r8 < a c' f' >8 [ r8 < bes e' g' >8 ] |
    }
}

pianorightsectiona = {
    \repeat percent 2 {
        r8 < a c' f' >8 [ r8 < a c' f' >8 ] r8 < a c' f' >8 [ r8 < bes e' g' >8 ] |
    }
    \repeat percent 2 {
        f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] |
    }
    < e e' >4 < f f' >4 < fis fis' >4 < g g' >4 |

    \repeat percent 2 {
        r8 < a c' f' >8 [ r8 < a c' f' >8 ] r8 < a c' f' >8 [ r8 < bes e' g' >8 ] |
    }
    \repeat percent 2 {
        f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] |
    }
    < cis' g' a' >4 < d' g' a' >4 < dis' fis' a' >4 < e' g' a' >4 |
}

pianorightsectionb = {
    \repeat volta 2 {
        \repeat percent 3 {
            r8 < a d' f' >8 [ r8 < a d' f' >8 ] r8 < a d' f' >8 [ r8 < a d' f' >8 ] |
        }
    }
    \alternative {
        {
            r8 < a d' f' >8 [ r8 < a d' f' >8 ] r8 < g cis' e' >8 [ r8 < a d' f' >8 ] |
        }

% measure 17
        {
            r8 < a d' f' >8 [ r8 < a d' f' >8 ] r8 < g cis' e' >8 [ < a d' f' >8 < g bes e' >8 ] |
        }
    }
    r8 < a c' f' >8 [ r8 < a c' f' >8 ] r8 < a c' f' >8 [ r8 < a c' f' >8 ] |
    r8 < bes e' g' >8 [ r8 < bes e' g' >8 ] < c' e' g' >8 r8 < bes e' g' >4 |
    r8 < a c' f' >8 [ r8 < a c' f' >8 ] r8 < a c' f' >8 [ r8 < a c' f' >8 ] |

% measure 21
    r8 < c' f' a' >8 [ r8 < c' f' a' >8 ] r8 < c' f' a' >8 [ r8 < c' f' a' >8 ] |
}

pianorightsectionca = {
    \repeat percent 3 {
        f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] |
    }

% measure 25
    r8 < a c' f' >8 [ r8 < bes ees' ges' >8 ] r8 < a c' f' >8 [ r8 < a c' f' >8 ] |
    \repeat percent 2 {
        f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] |
    }
}

pianorightsectioncb = {
    f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] |

% measure 29
    r8 < a c' f' >8 [ r8 < bes ees' ges' >8 ] r8 < a c' f' >8 [ r8 < a c' f' >8 ] |
}

pianorightsectionc = {
    \pianorightsectionca
    \pianorightsectioncb
}

pianorightcoda = {
    f''8\rest < c'  f' >8 [ g'8\rest < c' f' >8 ] < a c' f' >8 r8 < g bes e' >4-> |
    < a c' f' >8-. r8 r4 < bes e' g' >8->-. r8 r4 |
    < c' f' a' >2:32^\fermata < f'' a'' c''' f''' >8^>^. r8 r4 |
}

%-------------------------------------------------

pianorightthumbintro = {
% measure 1
    s1 s1 |
}

pianorightthumbsectiona = {
    \set countPercentRepeats = ##t
    s1 |
    s1 |
    \repeat percent 2 {
        < a a' >2 < a a' >2 |
    }
    r8 < bes c' >8 r8 < bes d' >8 r8 < c' ees' >8 r8 < bes e' >8 |

    s1 |
    s1 |
    \repeat percent 2 {
        < a a' >2 < a a' >2 |
    }
    s1 |
}

pianorightthumbsectionb = {
    \repeat volta 2 {
        s1 |

% measure 14
        s1 |
        s1 |
    }
    \alternative {
        {
            s1 |
        }

% measure 17
        {
            s1 |
        }
    }
    s1 |
    s1 |
    s1 |

% measure 21
    s1 |
}

pianorightthumbsectionca = {
    \repeat percent 3 {
        < a a' >2 < a a' >2 |
    }

% measure 25
    s1 |
    \repeat percent 2 {
        < a a' >2 < a a' >2 |
    }
}

pianorightthumbsectioncb = {
    < a a' >2 < a a' >2 |

% measure 29
    s1 |
}

pianorightthumbsectionc = {
    \pianorightthumbsectionca
    \pianorightthumbsectioncb
}

pianorightthumbcoda = {
    < a a' >2 s2 |
    s1 |
    s1 |
}

%-------------------------------------------------

pianoleftintro = {
    \set countPercentRepeats = ##t
% measure 1
    \repeat percent 2 {
        f,8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
}

pianoleftsectiona = {
    \repeat percent 2 {
        f,8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
    \repeat percent 2 {
        f,8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
    < c, c >4 < d, d >4 < ees, ees >4 < e, e >4 |

    \repeat percent 2 {
        < f, f >8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
    \repeat percent 2 {
        < f, f >8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
    < a,, a, >4 < b,, b, >4 < c, c >4 < cis, cis >4 |
}

pianoleftsectionb = {
    \repeat volta 2 {
        \repeat percent 3 {
            < d, d >8 r8 a,8 r8 d,8 r8 a,8 r8 |
        }
    }
    \alternative {
        {
            d,8 r8 a,8 r8 a,,8 r8 d,8 r8 |
        }

% measure 17
        {
            d,8 r8 a,8 r8 a,,8 r8 d,8 c,8 |
        }
    }
    f,8 r8 c,8 r8 f,8 r8 a,8 r8 |
    g,8 r8 c,8 r8 g,8 [ < c, c >8 < d, d >8 < e, e >8 ] |
    < f, f >4 < ees, ees >4 < d, d >4 < c, c >4 |

% measure 21
    < f, f >4 < ees, ees >4 < d, d >4 < c, c >4 |
}

pianoleftsectionca = {
    \repeat percent 3 {
        f,8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }

% measure 25
    f,8 r8 ees,8 r8 f,8 r8 c,8 r8 |
    \repeat percent 2 {
        f,8 r8 c,8 r8 f,8 r8 c,8 r8 |
    }
}

pianoleftsectioncb = {
    f,8 r8 c,8 r8 f,8 r8 c,8 r8 |

% measure 29
    f,8 r8 c,8 r8 f,8 r8 f,8 r8 |
}

pianoleftsectionc = {
    \pianoleftsectionca
    \pianoleftsectioncb
}

pianoleftcoda = {
    f,8 r8 c,8 r8 f,8 r8 < c, c >4-> |
    f,8-. r8 r4 < c, c >8->-. r8 r4 |
    < f,, f, >2:32^\fermata < f,, f, >8->-. r8 r4 |
}

%-------------------------------------------------

pianorightuppernotes = {
    \key d \minor
    \time 4/4
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \blankmeasure
    \pianorightcoda
}

pianorightlowernotes = {
    \key d \minor
    \time 4/4
    \stemDown
    \pianorightthumbintro
    \pianorightthumbsectiona
    \pianorightthumbsectionb
    \pianorightthumbsectionc
    \blankmeasure
    \pianorightthumbcoda
}

pianoleftuppernotes = {
    \key d \minor
    \time 4/4
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \blankmeasure
    \pianoleftcoda
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarchordsintro = \chordmode {
% intro
    f4 f4 f4 c4:7 |
    c1:7 |
}

guitarchordssectiona = \chordmode {
% section a
    \repeat unfold 2 { f4 s4 s4 c4:7 | }
    \repeat unfold 2 { f1 | }
    c1:7 |

    \repeat unfold 2 { f4 s4 s4 s8 c8:7 | }
    \repeat unfold 2 { f1 | }
    a1:7 |
}

guitarchordssectionb = \chordmode {
% section b
    \repeat volta 2 {
        d4:min d4:min d4:min d4:min |
        d4:min d4:min d4:min d4:min |
        d4:min d4:min d4:min d4:min |
    }
    \alternative {
        { \chordChangesOff d4:min \chordChangesOn d4:min a4:7 d4:min | }
        { \chordChangesOff d4:min \chordChangesOn d4:min a4:7 d8:min c8:7 | }
    }
    f1 |
    c4:7 c4:7 c4:7 c4:7 |
    f1 |
    f1 |
}

guitarchordssectionc = \chordmode {
% section c
    \chordChangesOff f1 \chordChangesOn |
    f1 |
    f1 |

% measure 25
    f4 ees4:min f4 f4 |
    f4 s4 s4 s4 |
    s1 |
    f4 s4 s4 s4 |

% measure 29
    f4 ees4:min f2 |
}

guitarchordscoda = \chordmode {
    \chordChangesOff f4 \chordChangesOn s4 s4 c4:7 |
    f4 s4 c4:7 s4 |
    f2 f8 s8 s4 |
}
guitarchords = \chordmode {
    \guitarchordsintro
    \guitarchordssectiona
    \guitarchordssectionb
    \guitarchordssectionc
    \blankmeasure
    \guitarchordscoda
}

basschordletters = \guitarchords

guitarfchord = < f\4 a\3 c'\2 f'\1 >8
guitarcsevchord = < c\5 e\4 bes\3 c'\2 e'\1 >8
guitarcsevchordq = < c\5 e\4 bes\3 c'\2 e'\1 >4
guitarasevchord = < a,\5 e\4 g\3 cis'\2 e'\1 >8
guitarasevchordq = < a,\5 e\4 g\3 cis'\2 e'\1 >4
guitardminchord = < d\4 a\3 d'\2 f'\1 >8
guitareesminchord = < ees\5 bes\4 ees'\3 ges'\2 bes'\1 >8

guitarnotesintro = {
    \set countPercentRepeats = ##t
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarcsevchord |
    }
}

guitarnotessectiona = {
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarcsevchord |
    }
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    }
    \guitarcsevchordq d4\4 ees\4 e\4 |

    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarcsevchord |
    }
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    }
    \guitarasevchordq b,4\5 c4\5 cis4\5 |
}

guitarnotessectionb = {
    \repeat volta 2 {
        \repeat percent 3 {
            r8 \guitardminchord r8 \guitardminchord r8 \guitardminchord r8 \guitardminchord |
        }
    }
    \alternative {
        {
            r8 \guitardminchord r8 \guitardminchord r8 \guitarasevchord r8 \guitardminchord |
        }
        {
            r8 \guitardminchord r8 \guitardminchord r8 \guitarasevchord \guitardminchord \guitarcsevchord |
        }
    }
    r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    r8 \guitarcsevchord r8 \guitarcsevchord r8 \guitarcsevchord r8 \guitarcsevchord |
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    }
}

guitarnotessectionca = {
    \repeat percent 3 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    }
    r8 \guitarfchord r8 \guitareesminchord r8 \guitarfchord r8 \guitarfchord |
    \repeat percent 2 {
        r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    }
}

guitarnotessectioncb = {
    r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord r8 \guitarfchord |
    r8 \guitarfchord r8 \guitareesminchord r8 \guitarfchord r8 \guitarfchord |
}

guitarnotessectionc = {
    \guitarnotessectionca
    \guitarnotessectioncb
}

guitarnotescoda = {
    r8 \guitarfchord r8 \guitarfchord \guitarfchord r8 \guitarcsevchordq |
    \guitarfchord r8 r4 \guitarcsevchord r8 r4 |
    < f\4 a\3 c'\2 f'\1 >2:32 \guitarfchord r8 r4 |
}

guitarnotes = {
    \time 4/4
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
    \metronomeextra
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionca
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumnotesintro = {
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
}

guitarstrumnotessectiona = {
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
    b'4 b'4 b'4 b'4 % d4\4 ees\4 e\4 |

    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
    b'4 b'4 b'4 b'4 % b,4\5 c4\5 cis4\5 |
}

guitarstrumnotessectionb = {
    \repeat volta 2 {
        \repeat unfold 3 {
            r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
        }
    }
    \alternative {
        { r8 b'8 r8 b'8 r8 b'8 r8 b'8 | }
        { r8 b'8 r8 b'8 r8 b'8 b'8 b'8 | }
    }
    r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
}

guitarstrumnotessectionca = {
    \repeat unfold 3 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
    r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    \repeat unfold 2 {
        r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    }
}

guitarstrumnotessectioncb = {
    r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
    r8 b'8 r8 b'8 r8 b'8 r8 b'8 |
}

guitarstrumnotessectionc = {
    \guitarstrumnotessectionca
    \guitarstrumnotessectioncb
}

guitarstrumnotescoda = {
    r8 b'8 r8 b'8 b'8 r8 b'4 |
    b'8 r8 r4 b'8 r8 r4 |
%    < f\4 a\3 c'\2 f'\1 >2:32 b'8 r8 r4 |
   b'2:32 b'8 r8 r4 |
}

guitarstrumnotes = {
    \time 4/4
    \improvisationOn
    \guitarstrumnotesintro
    \guitarstrumnotessectiona
    \guitarstrumnotessectionb
    \guitarstrumnotessectionc
    \blankmeasure
    \guitarstrumnotescoda
    \improvisationOff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
% measure 1
    f4^\pizz c4 f4 c4 |
    f4 c4 f4 c4 |
}

bassintronotext = {
% measure 1
    f4 c4 f4 c4 |
    f4 c4 f4 c4 |
}

basssectiona = {
    \repeat unfold 2 {
        f4 c4 f4 c4 |
    }

% measure 5
    \repeat unfold 2 {
        f4 c4 f4 c4 |
    }
    c4\3 d4\3 ees4\2 e4\2 |

% measure 8
    \repeat unfold 3 {
        f4 c4 f4 c4 |
    }

% measure 11
    f4 c4 f4 c4 |
    a,4\4 b,4\4 c4\3 cis4\3 |
}

basssectionb = {
    \repeat volta 2 {
        d4\3 a,4\4 d4\3 a4\2 |

% measure 14
        \repeat unfold 2 {
            d4\3 a,4\4 d4\3 a4\2 |
        }
    }
    \alternative {
        {
            d4\3 a4\2 a,4\4 d4\3 |
        }

% measure 17
        {
            d4\3 a4\2 a,4\4 d8\3 c8\3 |
        }
    }
    f4\2 c4\3 f4\2 a4\1 |
    g4\2 c4\3   g8\2 [ c8\3 d8\3 e8\2 ] |
    f4\2 ees4\3 d4\3 c4\3 |

% measure 21
    f4\2 ees4\3 d4\3 c4\3 |
}

basssectionca = {
    \repeat unfold 3 {
        f4 c4 f4 c4 |
    }

% measure 25
    f4\2 ees4\3 d4\3 c4\3 |
    \repeat unfold 2 {
        f4 c4 f4 c4 |
    }
}

basssectioncb = {
    f4 c4 f4 c4 |

% measure 29
    f4 c4 f4 f,4 |
}

basssectionc = {
    \basssectionca
    \basssectioncb
}

basscoda = {
    f4 c4 f8 r8 c4-> |
    f8^. r8 r4 c8-.-> r8 r4^\arco |
    f2^>^\fermata f,8-.-> r8 r4 |
}

bassnotes = {
    \key d \minor
    \time 4/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \key d \minor
    \time 4/4
    \preintro
    \metronomeextra
    \bassintronotext
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionca
    \basscoda
}

euphoniumnotes = { \bassnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

extradrums = \drummode {
    \stemUp \hideDynamics
    sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie
    \snarerolleighteight sna16 [ sna16 sna8 ] |
}

drumshighintro = \drummode {
    \set countPercentRepeats = ##t
    \stemUp \hideDynamics
    \repeat percent 2 {
        \stemUp
        sna8\p [ sna16 sna16 ] \snareeightrolleightaccenttie
        \snarerolleighteight sna16 [ sna16 sna8 ] |
    }
}

drumshighsectiona = \drummode {
    \stemUp \hideDynamics
    \repeat percent 5 {
        \stemUp \hideDynamics
        sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie
        \snarerolleighteight sna16 [ sna16 sna8 ] |
    }

    \stemUp \hideDynamics
    sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie
    \snarerolleighteight sna16 [ sna16 sna8 ] |

    \repeat percent 3 {
        \stemUp \hideDynamics
        sna8 [ sna16 sna16 ] sna8 [ sna8^> ~ ]
        sna8 [ sna8 ] sna16 [ sna16 sna8 ] |
    }
    \snarerollwhole |
}

drumshighsectionb = \drummode {
    \stemUp \hideDynamics
    \repeat volta 2 {
        \repeat percent 3 {
            cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ]
            sna8 [ sna8 ] sna16 [ sna16 sna8 ] |
        }
    }
    \alternative {
        {
            cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ]
            sna8 [ sna8 ] sna16 [ sna16 sna8 ] |
        }
        {
            cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ]
            sna8 [ sna8 ] sna16^Fill [ sna16 sna8 ] |
        }
    }
    \repeat percent 2 {
        cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ]
        sna8 [ sna8 ] sna16 [ sna16 sna8 ] |
    }
    cymr8^"Bell of Cym." [ sna8 ] cymr8 [ sna8 ]
    cymr8 [ sna8 ] cymr8 [ sna8 ] |
    cymr8 [ sna8 ] cymr8 [ sna8 ]
    cymr8 [ sna8 ] cymr8 [ sna8 ] |
}

drumshighsectionca = \drummode {
    \stemUp \hideDynamics
    \repeat percent 3 {
        cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ] sna8 [ sna8 ] sna16 [ sna16 sna8 ] |
    }
    cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ] sna8 [ sna8 ] sna16^Fill [ sna16 sna8 ] |

    \repeat percent 2 {
        cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ] sna8 [ sna8 ] sna16^Fill [ sna16 sna8 ] |
    }
}

drumshighsectioncb = \drummode {
    \stemUp \hideDynamics
    cymr8 [ sna16 sna16 ] sna8 [ sna8 ~ ] sna8 [ sna8 ] sna16^Fill [ sna16 sna8 ] |
    cymr8 [ sna16 sna16 ] \snareeightrolleighttie \snarerolleighteight sna16^Fill [ sna16 sna8 ] |
}

drumshighsectionc = \drummode {
    \drumshighsectionca
    \drumshighsectioncb
}

drumshighcoda = \drummode {
    \stemUp \hideDynamics
    sna8 [ sna16 sna16 ] sna8 [ sna8 ] sna8^.^> r8 \snarerollquarter |
    ss8^.^Rim\f r8 r4 ss8^.^>\f r8 r4 |
    \snarerollhalfaccent hhc8^>\f r8 r4 |
}

%-------------------------------------------------

drumslowintro = \drummode {
    \set countPercentRepeats = ##t
% measure 1
    \repeat percent 2 {
        bda4. bda8 ~ bda4 bda4 |
    }
}

drumslowsectiona = \drummode {
    \repeat percent 5 {
        bda4. bda8 ~ bda4 bda4 |
    }

    bda4. bda8 ~ bda4 bda4 |
    \repeat percent 3 {
        bda4. bda8 ~ bda4 bda4 |
    }
    bda4 \< bda4 bda4 bda4 \! |
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \repeat percent 3 {
            bda4. bda8 ~ bda4 bda4 |
        }
    }
    \alternative {
        {
            bda4. bda8 ~ bda4 bda4 |
        }
        {
            bda4. bda8 ~ bda4 bda4 |
        }
    }
    \repeat percent 2 {
        bda4. bda8 ~ bda4 bda4 |
    }
    bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 |
}

drumslowsectionca = \drummode {
    \repeat percent 3 {
        bda4. bda8 ~ bda4 bda4 |
    }
    bda4. bda8 ~ bda4 bda4 |

    \repeat percent 2 {
        bda4. bda8 ~ bda4 bda4 |
    }
}

drumslowsectioncb = \drummode {
    bda4. bda8 ~ bda4 bda4 |
    bda4. bda8 ~ bda4 bda4 |
}

drumslowsectionc = \drummode {
    \drumslowsectionca
    \drumslowsectioncb
}

drumslowcoda = \drummode {
    bda4 bda4 bda8 s8 bda4 |
    bda8 s8 s4 bda8 s8 s4 |
    bda4-> s4 s2
}

%-------------------------------------------------

textdrum = \drummode {
    \repeat percent 2 { s1 } \repeat percent 3 { s1 }
    s1 | s4^Fill s4 s2 | s1 \repeat percent 2 { s1 }
    s1 | s1 |
    \repeat volta 2 {
        \repeat percent 2 { s1 }
        s1
    }
    \alternative { { s1 } { s1 } }
    \repeat percent 2 { s1 }
    s1 s1
    \repeat percent 3 { s1 }
    \repeat percent 3 { s1 } s1
    s1 | s1 | s1 | s1 |
}

%-------------------------------------------------

drumshigh = \drummode {
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
    \stemUp
    \dynamicUp
    \preintro
    \extradrums
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionca
    \drumshighcoda
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \blankmeasure
    \drumslowcoda
}
 
drumslowmidi = \drummode {
    \stemDown
    \preintro
    \metronomeextra
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionca
    \drumslowcoda
}

tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 |

    f2. c4:7 |
    f2. c4:7 |
    f1 |
    f1 |
}

previewnotes = \transpose c' bes {
    \key e \minor
    \time 4/4
    s2 s4 s8 d''8 |
    \bar "||"
    g''4 r4 r8 \acciaccatura { cis'''8 } d'''8 c'''8 b''8 |
    d'''2 r8 b''8 c'''8 cis'''8 |
    d'''8 c'''8 c'''8 b''8 d'''8 c'''8 c'''8 b''8 |
    d'''16-> ( e'''16 ) d'''8 ~ d'''8 e'''8 f'''8 e'''8 d'''8 cis'''8 |
}

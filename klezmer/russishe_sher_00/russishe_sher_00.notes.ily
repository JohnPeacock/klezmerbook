\version "2.18.2"

bandmsectiona = {
    \repeat volta 2 {
        \markA \positionA
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
    }
    \alternative { { s2 | } { s2 | } }
    \bar ".|:-||" \breakB
}

bandmsectionca = {
    \markC \positionC
    s2 | \breakCone
    s2 | \breakCtwo
    s2 | \breakCtre
    s2 | \breakCfor
    s2 | \breakCfiv
    s2 | \breakCsix
    s2 | \breakCsev
    s2 | \breakCeit
    s2 | \breakCnin
    s2 | \breakCten
    s2 | \breakCelv
    s2 | \breakCtwl
    s2 | \breakCtht
    s2 | \breakCfrt
    \bar "||" \breakC
}

bandmsectioncb = {
    \markTC \positionTC
    s2 | \breakCfft
    s2 |
    \markDC \positionDC 
}

bandmsectionc = {
    \repeat volta 2 {
        \bandmsectionca
        \bandmsectioncb
    }
    \breakC
}

blankmeasure = { \stopStaff s2 \startStaff }

bandmcoda = {
    \markCC \positionCC s2 | \breakCDone s2 |
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
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
    \bandmsectionca
    \bandmsectioncb
    \bandmsectionca
    \bandmsectioncb

    \tempo 4 = 130
    \bandmsectiona
    \bandmsectionb
    \bandmsectionca
    \bandmsectioncb
    \bandmsectionca

    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutesectiona = {
    \repeat volta 2 {
        e''8-. \f e''8-. e''4-- |
        b''8-. b''8-. b''4\trill |
        a''8. g''16   a''16[ g''16 fis''16 g''16 ] |
        a''4-.-> r4-\markup \bold "HEY!" |
        fis''8-. fis''8-. fis''4-- |
        a''8-. a''8-. a''4-- |
        g''8.\trill fis''16   g''16[ fis''16 e''16 g''16 ] |
        b''4-.-> r4-\markup \bold "HEY!" |
        r8 b''8\prall   a''16[ gis''16 a''16 b''16 ] |
        c'''8. b''16 a''4 |
        b''8 e''8 fis''16[ e''16 fis''16 g''16 ] |
        b''16 ais''16 g''8 g''16 fis''16 e''8 |
        g''8 [ b''8 b''8 b''8 ] |
        b''16 [ a''16 g''8 ] fis''16 [ g''16 a''8 ] |
    }
    \alternative {
        {
            g''4\prall b''4 |
            b''16 [ ais''16 g''8 ] g''16 [ fis''16 e''8 ]
        }
        {
            e''4-. r4 |
            d'''2 |
        }
    }
}

flutesectionb = {
    \repeat volta 2 {
        b''16 [ d'''16 cis''' d'''16 ] e'''16 [ d'''16 cis'''16 d'''16 ] |
        g'''8 d'''8 b''8.\prall g''16 |
        a''8. b''16 c'''16 b''16 a''8 |
        ais''16 c'''16 b''8 ~ b''4 |
        b''16 [ d'''16 cis'''16 d'''16 ] e'''16 [ d'''16 cis'''16 d'''16 ] |
        g'''8 [ d'''8 b''8\trill g''8 ] |
        a''8. [ b''16 ] c'''16 [ b''16 a''8 ] |
    }
    \alternative {
        {
            g''4 r4
        }
        {
            g''8-- [ b'8-- e''8-- fis''8-- ]
        }
    }
}

flutesectionca = {
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

flutesectioncb = {
    e''4   b''16 [ ais''16 g''8 ] |
    g''8 [ b'8 e''8 fis''8 ] |
}

flutesectionc = {
    \repeat volta 2 { \flutesectionca \flutesectioncb }
}

flutecoda = {
    e''4-. b''4-. |
    e'''4-. r4-\markup \bold "HEY!"
}

%-------------------------------------------------

flutenotes = \transpose c' bes {
    \key g \major
    \time 2/4
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \blankmeasure
    \flutecoda
}

flutenotesmidi = \transpose c' bes {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \flutesectiona
    \flutesectionb
    \flutesectionca
    \flutesectioncb
    \flutesectionca
    \flutesectioncb

    \flutesectiona
    \flutesectionb
    \flutesectionca
    \flutesectioncb
    \flutesectionca

    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c {
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
        e''8-.\f e''8-. e''4-- |
        b''8-. b''8-. b''4\trill |
        a''8. g''16   a''16 [ g''16 fis''16 g''16 ] |
        a''4-.-> r4-\markup \bold "HEY!" |
        fis''8-. fis''8-. fis''4-- |
        a''8-. a''8-. a''4-- |
        g''8.\trill fis''16   g''16 [ fis''16 e''16 g''16 ] |
        b''4-.-> r4-\markup \bold "HEY!" |
        r8 b''8\prall   a''16 [ gis''16 a''16 b''16 ] |
        c'''8. b''16 a''4 |
        b''8 e''8 fis''16 [ e''16 fis''16 g''16 ] |
        b''16 ais''16 g''8 g''16 fis''16 e''8 |
        g''8 [ b''8 b''8 b''8 ] |
        b''16 [ a''16 g''8 ] fis''16 [ g''16 a''8 ] |
    }
    \alternative {
        {
            g''4\prall b''4 |
            b''16 [ ais''16 g''8 ] g''16 [ fis''16 e''8 ]
        }
        {
            e''4-. r4 |
            d''2 |
        }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        b'16^\markupOctOpt [ d''16 cis'' d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8 d''8 b'8.\prall g'16 |
        a'8. b'16 c''16 b'16 a'8 |
        ais'16 c''16 b'8 ~ b'4 |
        b'16 [ d''16 cis''16 d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8 [ d''8 b'8\trill g'8 ] |
        a'8. [ b'16 ] c''16 [ b'16 a'8 ] |
    }
    \alternative {
        {
            g'4 r4
        }
        {
            g'8-- [ b'8-- e''8-- fis''8-- ]
        }
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
        e''4   b''16 [ ais''16 g''8 ] |
          g''8 [ b'8 e''8 fis''8 ] |
}

clarinetsectionc = {
    \repeat volta 2 {
        \clarinetsectionca
        \clarinetsectioncb
    }
}

clarinetcoda = {
    e''4-. b''4-. |
    e'''4-. r4-\markup \bold "HEY!"
}

%-------------------------------------------------

clarinetnotes = {
    \key g \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetsectioncb
    \clarinetsectionca
    \clarinetsectioncb

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionca
    \clarinetsectioncb
    \clarinetsectionca

    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melody = \transpose d c {
    \key g \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \repeat volta 2 {
        e'8-.\f e'8-. e'4-- |
        g'8-. g'8-. g'4-- |
          fis'8 [ e'8 dis'8 e'8 ] |
        fis'4-. r4-\markup \bold "HEY!" |
        fis'8-. fis'8-. fis'4-- |
        a'8-. a'8-. a'4-- |
          g'8 [ fis'8 e'8 g'8 ] |
        b'4-. r4-\markup \bold "HEY!" |
        r8 \tuplet 3/2 { b'16( c''16 b'16) } a'8 b'8 |
        c''8-. b'8-. a'4-- |
        r8 e'8 fis'8 g'8 |
        b'16 ais'16 g'8 g'16 fis'16 e'8 |
        fis'16( a'16) g'8 r8 g'8 |
        g'16 fis'16 e'8 dis'16 e'16 fis'8 |
    }
    \alternative {
        {
            e'2 |
            b'2
        }
        {
            e'4-. r4 |
            d'2 |
        }
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        b'16 [ d''16 cis'' d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8-. [ d''8-. b'8-. g'8-. ] | a'8. b'16 c''16 b'16 a'8 |
        b'8 d''16 e''16   d''16 [ c''16 b'16 a'16 ] |
        b'16 [ d''16 cis''16 d''16 ] e''16 [ d''16 cis''16 d''16 ] |
        g''8-. [ d''8-. b'8-. g'8-. ] |
        a'8. [ b'16 ] c''16 [ b'16 a'8-. ] |
    }
    \alternative {
        {
            g'4 r4
        }
        {
              g'8 [ b8 e'8 fis'8 ]
        }
    }
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
    \repeat volta 2 {
        \trumpetsectionca
        \trumpetsectioncb
    }
}

trumpetcoda = {
    e'4-. g'4-. |
    g'4-. r4-\markup \bold "HEY!"
}

%-------------------------------------------------

trumpetnotes = {
    \key g \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetsectioncb
    \trumpetsectionca
    \trumpetsectioncb

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionca
    \trumpetsectioncb
    \trumpetsectionca

    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona = {
    \repeat volta 2 {
        r8\mf d''8 cis''8( d''8) |
        r8 d''8 cis''8( d''8) |
          d''8 [ d''8 cis''8 cis''8 ] |
        cis''4-. r4-\markup \bold "HEY!" |
        r8 cis''8 r8 cis''8 |
        r8 cis''8 r8 cis''8 |
          d''8 [ cis''8 d''8 b'8 ] |
        d''4-. r4-\markup \bold "HEY!" |
        r8 d''8 e''8 fis''8 |
        r8 g''16 g''16 g''8 g''8 |
        r8 d''16 d''16 d''8 d''8 |
        r8 d''8 r8 d''8 |
          b'8 [ d''8 fis''8 b''8 ] |
          b''8 [ fis''8 d''8 cis''8 ] |
    }
    \alternative {
        {
            r4   b'16 [ ais'16 b'16 cis''16 ] |
              d''16 [ cis''16 b'8 ] b'8 [ fis'8 ]
        }
        {
            b'4-. r4 |
            cis''2\trill |
        }
    }
}

altosaxsectionb = {
    \repeat volta 2 {
        r8\mp d''16 d''16 e''8 a'8 |
        d''8 d''16 d''16 d''8 d''8 |
          e''8 [ a'8 e''8 a'8 ] |
          d''8 [ fis''8 d''8 cis''8 ] |
        r8 d''16 d''16 e''8 a'8 |
          d''8 [ d''16 d''16 ] d''8 [ d''8 ] |
          e''8 [ a'16 a'16 ] a'8 [ a'8 ] |
    }
    \alternative {
        {
            d''4 cis''4
        }
        {
            d''4 r4
        }
    }
}

altosaxsectionca = {
        r8 d'8 r8 d'8 |
        r8 d'8 b8 [ d'8 ] |
        r8 d'8 fis'8 d'8 |
          b8 [ fis'8 g'8 fis'8 ] |
          cis'8 [ fis'8 ] r8 fis'8 |
        r8 fis'8 g'8 [ e'8 ] |
          d'8 [ d'16 fis'16 ] b'8 [ fis'16 b'16 ] |
          d''8 [ b'8 b'8 fis'8 ] |
          g'8 [ fis'8 ] e'4 ~ |
        e'8 g'4 g'8 |
          fis'8 [ cis''8 ] b'4 |
        r8 b'4 b'8 |
          b'8 [ fis'8 ] d''16 [ cis''16 b'8 ] |
          ais'8 [ fis'8 ] cis''16 [ b'16 ais'8 ] |
}

altosaxsectioncb = {
          b'16 [ b'16 b'8 ] ~   b'8 [ b'8 ] |
          b'8 [ fis'8 ] r4
}

altosaxsectionc = {
    \repeat volta 2 {
        \altosaxsectionca
        \altosaxsectioncb
    }
}

altosaxcoda = {
    e'4-. b'4-. |
    e''4-. r4-\markup \bold "HEY!"
}

%-------------------------------------------------

altosaxnotes = {
    \key d \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \metronomeextra
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxsectioncb
    \altosaxsectionca
    \altosaxsectioncb

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionca
    \altosaxsectioncb
    \altosaxsectionca

    \altosaxcoda
}

tenorsaxnotes = \transpose a d' {
    \altosaxnotes
}

tenorsaxnotesmidi = \transpose a d' {
    \altosaxnotesmidi
}

altosaxmelodynotes = \transpose d' a {
    \clarinetnotes
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }
tenorforfluteviolin = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxforaltoflutesectionca = {
    r8 d''8 r8 d''8 |
    r8 d''8 b'8 [ d''8 ] |
    r8 d''8 fis''8 d''8 |
    b'8 [ fis''8 g''8 fis''8 ] |
    cis''8 [ fis'8 ] r8 fis'8 |
    r8 fis'8 g'8 [ e'8 ] |
    d'8 [ d'16 fis'16 ] b'8 [ fis'16 b'16 ] |
    d''8 [ b'8 b'8 fis'8 ] |
    g'8 [ fis'8 ] e'4 ~ |
    e'8 g'4 g'8 |
    fis'8 [ cis''8 ] b'4 |
    r8 b'4 b'8 |
    b'8 [ fis'8 ] d''16 [ cis''16 b'8 ] |
    ais'8 [ fis'8 ] cis''16 [ b'16 ais'8 ] |
}

altosaxforaltoflutesectionc = {
    \repeat volta 2 {
        \altosaxforaltoflutesectionca
        \altosaxsectioncb
    }
}


altosaxforaltoflutenotes = {
    \key d \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxforaltoflutesectionc
    \blankmeasure
    \altosaxcoda
}

tenorforaltoflutenotes = \transpose c bes, {
    \transpose a d' {
        \altosaxforaltoflutenotes
    }
}

altoflutetenorharmony = \transpose g c {
    \tenorforaltoflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \repeat volta 2 {
        d'8\mf d'16 d'16 a8 d'8 |
        d'8\mf d'16 d'16 a8 d'8 |
        d'8 d'4 d'8 |
        a4-. r4-\markup \bold "HEY!" |
        a8 a16 a16 a8 a8 |
        a8 a16 a16 a8 a8 |
        a8 a16 a16 a8 a8 |
        d'4 r4-\markup \bold "HEY!" |
        r8 a8 f8 a8 |
        g4 g4 |
        a8 a16 a16 a8 a8 |
        a8 a16 a16 a8 a8 |
          d'8 [ d'16 d'16 ] a8 [ d'8 ] |
          d'8 [ d'16 d'16 ] a8 [ d'8 ] |
    }
    \alternative {
        {
              d'8 [ d'16 d'16 ] a8 [ d'8 ] |
            r8 a8 d'8 [ a8 ]
        }
        {
            d'4-. r4 |
            c2\p\glissando |
        }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        f4 c4 |
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
    \repeat volta 2 {
        \trombonesectionca
        \trombonesectioncb
    }
}

trombonecoda = {
    d'4-. a4-. |
    d4-. r4-\markup \bold "HEY!"
}

%-------------------------------------------------

trombonenotes = {
    \key f \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca
    \trombonesectioncb

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca

    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = \transpose c' c {
    \key f \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

euphoniumnotesmidi = \transpose c' c {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca
    \trombonesectioncb

    \trombonesectiona
    \trombonesectionb
    \trombonesectionca
    \trombonesectioncb
    \trombonesectionca

    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    \repeat volta 2 {
        d''8-. d''8-. d''4-- |
        d''8-. d''8-. d''4-- |
        e''8\prall [ ( d''8 ) cis''8 ( d''8 ) ] |
        e''4-. r4-\markup \bold "HEY!" |
        e''8-. e''8-. e''4-- |
        e''8-. e''8-. e''4-- |
        d''8. cis''16 d''8( f''8) |
        a''4-. r4-\markup \bold "HEY!" |
        r8 \tuplet 3/2 { f''16 g''16 f''16 } e''8 f''8 |
        g''8-. f''8-. e''4 |
        a''8-. [ d''8 e''8 f''8 ] |
        a''16 gis''16 f''8 ~ f''16 e''16 d''8 |
        e''16 [ g''16 f''8 ] ~ f''8 f''8 |
        f''16 [ e''16 d''8 ] cis''16 [ d''16 e''8 ] |
    }
    \alternative {
        {
            d''4 a''4 |
            a''16 [ gis''16 f''8-. ] f''16 [ e''16 d''8-. ]
        }
        {
            d''4-. r4 |
            c''2\trill |
        }
    }
}

violinsectionb = {
    \repeat volta 2 {
        a'8 [ gis'16 a'16 ] bes'8 [ g'8 ] |
        a'8 [ a'8 f'8 f'8 ] |
        e'8. [ ( f'16 ) ] g'8-. [ e'8-. ] |
        r8 f'16 [ g'16 ] a'8-. [ bes'8-. ] |
        c''8 [ ( a'8-. ) bes'8 ( g'8-. ) ] |
        a'8 [ ( c''8 )  a'8-. f'8-. ] |
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
    d''8. [ cis''16 ] d''4 |
    r8 cis''8 d''16 [ cis''16 d''16 cis''16 ] |
    d''8.\prall [ cis''16 ] d''8 [ f''8 ] |
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
    \repeat volta 2 {
        \violinsectionca
        \violinsectioncb
    }
}

violincoda = {
    d''4-. a''4-. |
    d'''4 r4-\markup \bold "HEY!"
}

%-------------------------------------------------

violinnotes = {
    \key f \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \violinsectiona
    \violinsectionb
    \violinsectionca
    \violinsectioncb
    \violinsectionca
    \violinsectioncb

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
        d2:min d2:min d2:min a2 a2:7 a2:7
        a2 d2:min d2:min g2:min d2:min d2:min
        d2:min a2
    }
    \alternative {
        { d2:min a2 } { d2:min c2:7  }
    }
}
guitarchordletterssectionb = \chordmode {
    \repeat volta 2 {
        f2 f2 c2:7 f2 f2
        f2 c2:7
    }
    \alternative {
        { f2 }
        { \chordChangesOff f2 \chordChangesOn }
    }
}
guitarchordletterssectionc = \chordmode {
    \repeat volta 2 {
        d1:min
        d1:min a1:7 d1:min
        g2:min g2:min d2:min d2:min d2:min
        a2:7
        d2:min a2
    }
}

guitarchordletterscoda = \chordmode {
    d4:min a4 d4:min s4
}

guitarchordletters = \chordmode {
    \guitarchordletterssectiona
    \guitarchordletterssectionb
    \guitarchordletterssectionc
    \blankmeasure
    \guitarchordletterscoda
}

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

basssectiona = {
    \repeat volta 2 {
        d4\3 a,4\4 |
        d4\3 a,4\4 |
        d4\3 a,4\4 |
        a,4-.\4 r4-\markup \bold "HEY!" |
        a,4\4 e4\3 |
        a,4\4 e4\3 |
        a,4\4 a,4\4 |
        d4-.\3 r4-\markup \bold "HEY!" |
        d4\3 f4\2 |
        g4\2 e4\3 |
        d4\3 a,4\4 |
        d4\3 a,4\4 |
        d4\3 f4\2 |
        e4\3 a,4\4 |
    }
    \alternative {
        {
            d4\3 f4\2 |
            a4\2 a,4\4
        }
        {
            d4\3 r4 |
            c2\3
        }
    }
}

basssectionb = {
    \repeat volta 2 {
        f4\2 c4\3 |
        f4\2 c4\3 |
        g4\2 c4\3 |
        f8\2 [ c8\3 d8\3 e8\2 ] |
        f4\2 c4\3 |
        f4\2 c4\3 |
        e4\2 c4\3 |
    }
    \alternative {
        {
            f8\2 [ c8\3 a,8\4 c8\3 ]
        }
        {
            f4\2 r4
        }
    }
}

basssectionca = {
    d4\3   a,8\4 [ d8\3 ~ ] |
    d8\3 [ a,8\4 ] d4\3 |
    d4\3   a,8\4 [ d8\3 ~ ] |
    d8\3 [ a,8\4 ] d4\3 |
    e4\3   a,8\4 [ e8\3 ~ ] |
    e8\3 [ a,8\4 ] e4\3 |
    d4\3   a,8\4 [ d8\3 ~ ] |
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

basssectionc = {
    \repeat volta 2 { \basssectionca \basssectioncb }
}

basscoda = {
    d4\3 a,4\4 |
    d4\3 r4-\markup \bold "HEY!"
}

%-------------------------------------------------

bassnotes = {
    \key f \major
    \time 2/4
    \basssectiona
    \basssectionb
    \basssectionc
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \basssectiona
    \basssectionb
    \basssectionca
    \basssectioncb
    \basssectionca
    \basssectioncb

    \basssectiona
    \basssectionb
    \basssectionca
    \basssectioncb
    \basssectionca

    \basscoda
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

pianochordletterssectionb = \chordmode {
    \repeat volta 2 {
        f2 |
        f2 |
        c2:7 |
        f2 |
        f2 |
        f2 |
        c2:7
    }
    \alternative {
        { f2 }
        { \chordChangesOff f4 \chordChangesOn r4 }
    }
}

pianochordletterssectionca = \chordmode {
        d2:min d2:min
        d2:min d2:min a2:7 a2:7 d2:min d2:min
        g2:min g2:min d2:min d2:min d2:min
        a2:7
}

pianochordletterssectioncb = \chordmode {
        d2:min a2
}

pianochordletterssectionc = \chordmode {
    \repeat volta 2 {
        \pianochordletterssectionca
        \pianochordletterssectioncb
    }
}

pianochordletterscoda = \chordmode {
    d4:min a4 d4:min r4
}

chordletters = \chordmode {
    \pianochordletterssectiona
    \pianochordletterssectionb
    \pianochordletterssectionc
    \blankmeasure
    \pianochordletterscoda
}

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
altosaxchordletters = \transpose ees c \chordletters
flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
%guitarchordletters = \chordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochordssectiona = {
    \repeat volta 2 {
        \chordmode {
            r8 d8:min r8 d8:min |
            r8 d8:min r8 d8:min |
            r8 d8:min r8 d8:min |
        }
        < a cis' e' >4 r4-\markup \bold "HEY!" |
        \chordmode {
            r8 a8:7 r8 a8:7 |
            r8 a8:7 r8 a8:7 |
            r8 a8 r8 a8 |
        }
        < d f a >4 r4-\markup \bold "HEY!" |
        \chordmode {
            r8 d8:min r8 d8:min/f |
            r8 g8:min r8 g8:min/+e |
            r8 d8:min r8 d8:min |
            r8 d8:min r8 d8:min |
            r8 d8:min r8 d8:min/f |
            r8 a8/e r8 a8 |
        }
    }
    \alternative {
        {
            \chordmode {
                r8 d8:min r8 d8:min/f |
                r8 a8 r8 a8 |
            }
        }
        {
            \chordmode {
                d4:min r4 |
                c2:7 |
            }
        }
    }
}

pianochordssectionb = {
    \repeat volta 2 {
        a'8 [ gis'16 a'16 ] bes'8 [ g'8 ] |
        a'8 [ a'8 f'8 f'8 ] |
        e'8. [ ( f'16 ) ] g'8-. [ e'8-. ] |
        r8 f'16 [ g'16 ] a'8-. [ bes'8-. ] |
        c''8 [ ( a'8-. ) bes'8 ( g'8-.) ] |
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


pianochordssectioncb = \chordmode {
        r8 d8:min r8 d8:min |
        a2 |
}

pianochordssectionc = \chordmode {
    \repeat volta 2 {
        \pianochordssectionca
        \pianochordssectioncb
    }
}

pianochordscoda = {
    \chordmode { d4:min a4  } < d f a >4 r4-\markup \bold "HEY!"
}

pianochords = {
    \pianochordssectiona
    \pianochordssectionb
    \pianochordssectionc
    \blankmeasure
    \pianochordscoda
}

pianorightsectiona = {
    \repeat volta 2 {
        d''8-. d''8-. d''4-- |
        < d'' f'' >8-. < d'' f'' >8-. < d'' f'' >4-- |
        e''8 d''8 cis''8 d''8 ] |
        < cis'' e'' >4-. r4-\markup \bold "HEY!" |

        e''8-. e''8-. e''4-- |
        < e'' g'' >8-. < e'' g'' >8-. < e'' g'' >4-- |
        f''8. e''16 d''8 f''8 |
        < f'' a'' >4-. r4-\markup \bold "HEY!" |

        r8 bes''16 a''16 g''8 a''8 |
        bes''8 a''8 g''4 |
        r8 d''8 e''8 f''8 |
        a''16 ( gis''16 f''8 ) f''16 ( e''16 d''8 ) |

        e''16 g''16 f''8 ~ f''8 f''8 |
        f''16 ( e''16 d''8 ) cis''16 ( d''16 e''8 ) |
    }
    \alternative {
        {
            < f' a' d'' >2 |
            < cis'' e'' a'' >2 |
        }
        {
            < f' a' d'' >4-. r4 |
            < c'' e'' g'' bes'' >2 |
        }
    }
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

pianorightcoda = {
    d''8-. r8 < cis'' g'' a'' >8-.-> r8 |
    < f'' a'' d''' >8-.-> r8 r4-\markup \bold "HEY!"
}

pianoleftsectiona = {
    \repeat volta 2 {
        d8 < f a >8 a,8 < f a >8 |
        d8 < f a >8 a,8 < f a >8 |
        d8 < f a >8 a,8 < f a >8 |
        < a, cis e >4-. r4-\markup \bold "HEY!" |
        a,8 < cis e >8 < cis e >8 < cis e >8 |
        a,8 < cis e >8 < cis e >8 < cis e >8 |
        a,8 < cis e >8 < a cis e >8 < a cis e >8 |
        < d f a >4-. r4-\markup \bold "HEY!" |
        d8 < f a >8 f8 < f a >8 |
        g8 < bes d' >8 e8 < bes d' >8 |
        d8 < f a >8 a,8 < f a >8 |
        d8 < f a >8 a,8 < f a >8 |
        d8 < f a >8 f8 < f a >8 |
        e8 < cis' e' >8 a,8 < cis' e' >8 |
    }
    \alternative {
        {
            d8 < f a >8 f8 < f a >8 |
            a8 < cis' e' >8 a,8 < cis' e' >8
        }
        {
            < d f >4 r4 |
            < c e g >2
        }
    }
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

pianoleftcoda = {
    d4 a,4 |
    d4 r4-\markup \bold "HEY!"
}

pianorightmidi = {
    \preintro
    \metronomeextra
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionca
    \pianorightsectioncb
    \pianorightsectionca
    \pianorightsectioncb

    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionca
    \pianorightsectioncb
    \pianorightsectionca

    \pianorightcoda
}

pianolefthighmidi = {
    \preintro
    \metronomeextra
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionca
    \pianoleftsectioncb
    \pianoleftsectionca
    \pianoleftsectioncb

    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionca
    \pianoleftsectioncb
    \pianoleftsectionca

    \pianoleftcoda
}

pianolefthigh = {
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \blankmeasure
    \pianoleftcoda
}

pianoleftlowmidi = {
}

pianoleftlow = {
}

%-------------------------------------------------

pianorightuppernotes = {
    \key f \major
    \time 2/4
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionc
    \blankmeasure
    \pianorightcoda
}

pianoleftuppernotes = <<
    \key f \major
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

drumssectionb = \drummode {
    \repeat volta 2 {
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
        }
        {
            s2 |
        }
    }
}

drumssectionca = \drummode {
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

drumssectioncb = \drummode {
    s2 |
    s2 |
}

drumssectionc = \drummode {
    \repeat volta 2 {
        \drumssectionca
        \drumssectioncb
    }
}

drumscoda = \drummode {
    s2 |
    s2 |
}

drumshigh = \drummode {
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \blankmeasure
    \drumscoda
}

drumshighmidi = \drummode {
    \preintro
    \drumsextra
    \drumssectiona
    \drumssectionb
    \drumssectionca
    \drumssectioncb
    \drumssectionca
    \drumssectioncb

    \drumssectiona
    \drumssectionb
    \drumssectionca
    \drumssectioncb
    \drumssectionca
    \blankmeasure
    \drumscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min d2:min s2 a2 a2:7 a2:7
    a2 d2:min
}

previewnotes = \transpose d c {
    \key g \major
    \time 2/4
    e''8-. e''8-. e''4-- |
    b''8-. b''8-. b''4\trill |
    a''8. g''16   a''16 [ g''16 fis''16 g''16 ] |
    a''4-.-> r4-\markup \bold "HEY!" |
    fis''8-. fis''8-. fis''4-- |
    a''8-. a''8-. a''4-- |
    g''8.\trill fis''16   g''16 [ fis''16 e''16 g''16 ] |
    b''4-.-> r4-\markup \bold "HEY!" |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

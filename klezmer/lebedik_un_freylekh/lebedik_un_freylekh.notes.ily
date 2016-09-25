\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = { s2 | \breakINone s2 | \breakIN }

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix
    }
    \alternative {
        { s2 | \breakAsev s2 | \breakAeit } { s2 | \breakAnin s2 | }
    }
    \bar "||" \breakA
}

bandmsectionb = {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt
    \bar "||"
}

bandmsectionbend = {
    \markTC \positionTC s2 | \breakBfft s2 | \bar ".|:-||" \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
        s2 | \breakCtht s2 | \breakCfrt
    }
    \alternative {
        { s2 | \breakCfft s2 | \breakCsxt }
        { s2 | \breakCsvt s2 | }
    }
    \bar "||" \markDS \positionDS
    \breakC
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC s2 | \breakCCone
    s2 | \breakCCtwo s2 |
    \bar "|."
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionbend
    \bandmsectionc
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 | }
metronomeextra = { s2 | s2 | }
metronomeintro = { s2 | s2 | }
metronomesectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}
metronomesectionb = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}
metronomesectionbend = { s2 | s2 | }
metronomesectionc = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}
metronomecoda = { s2 | s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 130
    \metronomeextra
    \metronomeintro

    \metronomesectiona
    \metronomesectionb
    \metronomesectionbend
    \metronomesectionc

    \tempo 4 = 140
    \metronomesectiona
    \metronomesectionb
    \metronomesectionbend
    \metronomesectionc

    \tempo 4 = 150
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 130
    \metronomecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    b''8\mf ais''16 b''16 c'''8 b''8 |
    a''8 g''8 fis''8 b''8 |
}

clarinetsectiona = {
    \repeat volta 2 {
        e''4 g''8 fis''8 ~ |
        fis''8 e''8 fis''8 g''8 |
        b''8 ais''8 cis'''8 b''8 ~ |
        b''8 ais''8 g''8 fis''8 |
        e''4 g''8 fis''8 ~ |
        fis''8 e''8 fis''8 g''8 |
    }
    \alternative {
        {
            b''8 ais''8 cis'''8 ais''8 |
            b''8 b'8 cis''8 dis''8 |
        }
        {
            e''2 |
            r8\mp e''8 g''8 b''8 |
        }
    }
}

clarinetsectionb = {
    < e'' e''' >8. < dis'' dis''' >16 \< < e'' e''' >8. < dis'' dis''' >16 |
    < e'' e''' >8. < dis'' dis''' >16 < e'' e''' >8 < fis'' fis''' >8 |
    < d'' d''' >16 \! < cis'' cis''' >16 < b' b'' >8 < b' b'' >8 < b' b'' >8 ~ |
    < b' b'' >8 < e' e'' >8\mp < g' g'' >8 < b' b'' >8 |

    < e'' e''' >8. < dis'' dis''' >16 < e'' e''' >8. < dis'' dis''' >16 |
    < e'' e''' >8. < dis'' dis''' >16 < e'' e''' >8 < fis'' fis''' >8 |
    < d'' d''' >16\f < cis'' cis''' >16 < b' b'' >8 < b' b'' >8 < b' b'' >8 ~ |
    < b' b'' >8 b'8 cis''8 dis''8 |

    e''4 g''8 fis''8 ~ |
    fis''8 e''8 fis''8 g''8 |
    b''8 ais''8 cis'''8 b''8 ~ |
    b''8 ais''8 g''8 fis''8 |

    e''4 g''8 fis''8 ~ |
    fis''8 e''8 fis''8 g''8 |
}

clarinetsectionbend = {
    e''2 ~ |
    e''8 e''8 a''8 b''8 |
}

clarinetsectionc = {
    \repeat volta 2 {
        \key a \major
        cis'''2\mf^\soloclar ~ |
        cis'''8 b''8 cis'''8 b''8 |
        a''8 e''4. ~ |
        e''8 e''8 a''8 b''8 |
        cis'''8.^\prall b''16 cis'''8.^\prall b''16 |
        cis'''8.^\prall b''16 cis'''8.^\prall b''16 |
        a''2 ~ |
        a''8 e''8 a''8 b''8 |
        cis'''4-> r4 |
        c'''4-> r4 |
        b''8. a''16 gis''8 fis''8 ~ |
        fis''8 fis''8 gis''8 a''8 |
        b''8.\trill gis''16 a''8.\trill fis''16 |
        gis''8.\trill e''16 fis''8.\trill dis''16 |
    }
    \alternative {
        {
            e''2 ~ |
            e''8 e''8 a''8 b''8 |
        }
        {
            e''2 ~ |
            e''8 b'8 cis''8 dis''8 |
        }
    }
}

clarinetcoda = {
    \key g \major
    e''4\tenuto r4 |
    b'4\tenuto r4 |
    e'4 r4
}

%-------------------------------------------------

clarinetnotes = {
    \key g \major
    \time 2/4

    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionbend
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionbend
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionbend
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetcoda
}

clarinetforaltonotes = \transpose ees bes, { \clarinetnotes }

clarinetfortenorcoda = \transpose c c' {
    \key g \major
    e''4\tenuto r4 |
    b'4\tenuto r4 |
    e'4 r4
}

clarinetfortenornotes = \transpose c c, {
    \key g \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionbend
    \clarinetsectionc
    \blankmeasure
    \clarinetfortenorcoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    b'8\mf ais'16 b'16 c''8 b'8 |
    a'8 [ g'8 fis'8 b'8 ] |
}

trumpetsectiona = {
    \repeat volta 2 {
        e'4 g'8 fis'8 ~ |
        fis'8 [ e'8 fis'8 g'8 ] |
        b'8 [ ais'8 cis''8 b'8 ~ ] |
        b'8 [ ais'8 g'8 fis'8 ]
        e'4 g'8 fis'8 ~ |
        fis'8 [ e'8 fis'8 g'8 ] |
    }
    \alternative {
        { b'8 [ ais'8 cis''8 ais'8 ] | b'8 [ b8 cis'8 dis'8 ] }
        { e'2 | r8\mp e'8 g'8 b'8 | }
    }
}

trumpetsectionb = {
    e''4\< e''4 |
    e''4 e''8 fis''8\! |
    d''16\f cis''16 b'8 b'8 b'8 ~ |
    b'8 [ e'8\mp g'8 b'8 ] |
    e''4 e''4 |
    e''4 e''8 fis''8 |
    d''16\f cis''16 b'8 b'8 b'8 ~ |
    b'8 [ b8 cis'8 dis'8 ] |
    e'4 g'8 fis'8 ~ |
    fis'8 [ e'8 fis'8 g'8 ] |
    b'8 [ ais'8 cis''8 b'8 ] ~ |
    b'8 [ ais'8 g'8 fis'8 ] |
    e'4 g'8 fis'8 ~ |
    fis'8 [ e'8 fis'8 g'8 ] |
}

trumpetsectionbend = { e'2 ~ | e'8 r8 r4 | }

trumpetsectionc = {
    \repeat volta 2 {
        \key a \major

        cis''2\mf^\solotrum ~ |
        cis''8 [ b'8 cis''8 b'8 ] |
        a'8 e'4. ~ |
        e'8 [ e'8 a'8 b'8 ] |
        cis''8 [ b'8 cis''8 b'8 ] |
        cis''8 [ b'8 cis''8 b'8 ] |
        a'2 ~ |
        a'8 [ e'8 a'8 b'8 ]
        cis''4-> r4 |
        c''4-> r4 |
        b'8. a'16 gis'8 fis'8 ~ |
        fis'8 [ fis'8 gis'8 a'8 ] |
        b'8. gis'16 a'8. fis'16 |
        gis'8. e'16 fis'8. dis'16 |
    }
    \alternative {
        { e'2 ~ | e'8 [ e'8 a'8 b'8 ] | }
        { e'2 ~ | e'8 [ b8 cis'8 dis'8 ] | }
    }
}

trumpetcoda = {
    \key g \major
    e''4\tenuto r4 |
    b'4\tenuto r4 |
    e'4 r4
}

%-------------------------------------------------

trumpetnotes = {
    \key g \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionbend
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionbend
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionbend
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    r2 |
    r2 |
}

altosaxsectiona = {
    \repeat volta 2 {
        b'4\mf fis'8 b'8 ~ |
        b'8 fis'8 b'4 |
        b'4 fis'8 b'8 ~ |
        b'8 fis'8 b'4
        b'4 fis'8 b'8 ~ |
        b'8 fis'8 b'4 |
    }
    \alternative {
        {
            fis''8 [ f''8 ] gis''8 [ eis''8 ] |
            \stemDown fis''8 [ fis'8 ] \stemNeutral gis'8 [ ais'8 ]
        }
        {
            b'4 fis'4 |
            b'4 r4\mp |
        }
    }
}

altosaxsectionb = {
    b''4\< b''4 |
    b''4 b''8 cis'''8\! |
    a''8\f [ fis''8 ] fis''8 [ fis''8 ] ~ |
    fis''4 r4\mp |
    b''4 b''4 |
    b''4 b''8 cis'''8 |
    a''8\f [ fis''8 ] fis''8 [ fis''8 ] ~ |
    fis''8 [ fis'8 ] gis'8 [ ais'8 ] |
    b'4 fis'8 b'8 ~ |
    b'8 fis'8 b'4 |
    b'4 fis'8 b'8 ~ |
    b'8 fis'8 b'4 |
    b'4 fis'8 b'8 ~ |
    b'8 fis'8 b'4 |
}

altosaxsectionbend = {
    b'4 fis'4 |
    b'4 r4
}

altosaxsectionc = {
    \repeat volta 2 {
        \key e \major
        e''4 b'4 |
        e''4 r4 |
        e''4 b'4 |
        e''4 r4 |
        gis''8. fis''16 gis''8. fis''16 |
        gis''8. fis''16 gis''8. fis''16  |
        e''4 b'4 |
        e''4 r4 |
        r4 e''4-> |
        r4 e''4-> |
        fis''8 [ e''8 ] dis''8 [ cis''8 ] |
        r8 cis''8 dis''8 e''8 |
        b'4 fis''4 |
        b'4 fis''4 |
    }
    \alternative {
        { b'4 fis'4 | b'4 r4 | }
        { b'4 fis'4 | b'4 fis''4 | }
    }
}

altosaxcoda = {
    \key d \major
    b''4\tenuto r4 |
    fis''4\tenuto r4 |
    b'4 r4
}

%-------------------------------------------------

altosaxnotes = {
    \key d \major
    \time 2/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionbend
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionbend
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionbend
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxcoda
}

altoforothersnotes = { \altosaxnotes }
altofortrumpetnotes = \transpose bes, ees, { \altoforothersnotes }
altofortenornotes = \transpose bes, ees, { \altoforothersnotes }
altoforclarinetnotes = \transpose bes, ees, { \altoforothersnotes }
altoforviolinnotes = \transpose c ees { \altoforothersnotes }
altoforflutenotes = \transpose c ees { \altoforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = { \altofortenornotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    r2 |
    r4 cis'4\glissando |
}

trombonesectiona = {
    \repeat volta 2 {
        d'8 [ d'8 a8 d'8 ] ~ |
        d'8 d'16 d'16 a8 d'8 |
        r8 d'8 a8 d'8 |
        d'16 d'16 d'8 a8 cis'8
        d'8 [ d'8 a8 d'8 ] ~ |
        d'8 [ d'8 a8 d'8 ]
    }
    \alternative {
        { f'4 e'4 | d'8 [ a8 b8 cis'8 ] | }
        { d'4 a4 | d'4 r4\mp | }
    }
}

trombonesectionb = {
    d'4\< d'4 |
    d'4 e4\! |
    a4 e8 a8 ~ |
    a8 e8 a4\mp |
    d'4 d'4 |
    d'4 e'4 |
    a4\f e8 a8 ~ |
    a8 [ a8 b8 cis'8 ] |
    d'4 a8 d'8 ~ |
    d'8 [ d'8 a8 d'8 ] |
    r8 d'8 a8 d'8 |
    d'16 [ d'16 d'8 ] a8 [ d'8 ] ~ |
    d'8 [ d'8 a8 d'8 ] |
    f'8 [ e'8 d'8 cis'8 ] |
}

trombonesectionbend = {
    d'4 a4 |
    d4 r4
}

trombonesectionc = {
    \repeat volta 2 {
        \key g \major
        r8 b4 b8 |
        r8 b4 a8 |
        r8 b4 b8 |
        b4 r4 |
        d'4 d'4 |
        d'4 d'8 c'8 |
        r8 b4 b8 |
        b4 r4 |
        r4 b4-> |
        r4 d'4-> |
        a8 [ b8 c'8 cis'8 ( ] |
        c'8 [ ) c'8 b8 a8 ] |
        d'8 [ d8 e8 g8 ] |
        a8 a16 a16 b8 cis'8
    }
    \alternative {
        {
            r8 d'16 d'16 a8 d'8 |
            d'4 r4
        }
        {
            r8 d'16 d'16 a8 d'8 ~ |
            d'8 d'8 cis'4 |
        }
    }
}

trombonecoda = {
    \key f \major
    d'4\tenuto r4 |
    a4\tenuto r4 |
    d4 r4
}


%-------------------------------------------------

trombonenotes = {
    \key f \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonecoda
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = \transpose c' c {
    \key f \major
    \time 2/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

euphoniumnotesmidi = \transpose c' c {
    \key g \major
    \time 2/4
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionbend
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    a''8\mf gis''16 a''16 bes''8 a''8 |
      g''8[ f''8 e''8 a''8 ] |
}

violinsectiona = {
    \repeat volta 2 {
        d''4\f f''8 e''8 ~ |
          e''8[ d''8 e''8 f''8 ] |
          a''8[ gis''8 b''8 a''8 ] ~ |
          a''8[ gis''8 f''8 e''8 ]
        d''4 f''8 e''8 ~ |
          e''8[ d''8 e''8 f''8 ]
    }
    \alternative {
        {
              a''8[ gis''8 b''8 gis''8 ] |
              a''8[ a'8 b'8 cis''8 ]
        }
        {
            d''2 |
            r8 d''8\mp f''8 a''8 |
        }
    }
}

violinsectionb = {
    d'''8. cis'''16\< d'''8. cis'''16 |
    d'''8. cis'''16 d'''8 e'''8\! |
    c'''16 b''16 a''8 a''8 a''8 ~ |
    a''8 d''8 f''8\mp a''8 |
    d'''8. cis'''16 d'''8. cis'''16 |
    d'''4 d'''8 e'''8 |
    c'''16\f b''16 a''8 a''8 a''8 ~ |
      a''8[ g''8 f''8 e''8 ] |
    d''4 f''8 e''8 ~ |
      e''8[ d''8 e''8 f''8 ] |
      a''8[ gis''8 b''8 a''8 ] ~ |
      a''8[ gis''8 f''8 e''8 ] |
    d''4 f''8 e''8 ~ |
      e''8[ d''8 e''8 f''8 ] |
}

violinsectionbend = {
    d''2 ~ |
      d''8[ d''8 g''8 a''8 ] |
}

violinsectionc = {
    \repeat volta 2 {
        \key g \major
	b''2\mp ~ |
          b''8[ a''8 b''8 a''8 ] |
        g''8 d''4. ~ |
          d''8[ d''8 g''8 a''8 ] |
          b''8.[^\prall a''16 b''8.^\prall a''16 ] |
          b''8.[^\prall a''16 b''8.^\prall a''16 ] |
        g''2 ~ |
          g''8[ d''8 g''8 a''8 ] |
        b''4-> r4 |
        bes''4-> r4 |
        a''8. g''16 fis''8 e''8 ~ |
          e''8[ e''8 fis''8 g''8 ] |
        a''8. fis''16 g''8. e''16 |
        fis''8. d''16 e''8. cis''16 |
    }
    \alternative {
        {
            d''2 ~ |
              d''8[ d''8 g''8 a''8 ]
        }
        {
            d''2 ~ |
              d''8[ a'8 b'8 cis''8 ] |
        }
    }
}

violincoda = {
    \key f \major
    d'''4\tenuto r4 |
    a''4\tenuto r4 |
    d''4 r4
}

%-------------------------------------------------

violinnotes = \transpose c' c {
    \key f \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = \transpose c' c {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violincoda
}

%-------------------------------------------------

leadsheetnotes = {
    \key a \minor
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \blankmeasure
    \violincoda
}

%-------------------------------------------------

flutenotes = \transpose c c {
    \key f \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \blankmeasure
    \violincoda
}

flutenotesmidi = \transpose c c {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionbend
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% only apply to print.  don't have to expand.



chordlettersintro = \chordmode { s1 }
chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min |
    }
    \alternative {
        { \chordChangesOff d2:min \chordChangesOn | d2:min }
        { \chordChangesOff d2:min \chordChangesOn | d2:min }
    }
}

chordletterssectionb = \chordmode {
    \chordChangesOff d2:min \chordChangesOn | d2:min | a2:min | a2:min |
    d2:min | d2:min | a2:min | a2 |
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min |
}

chordletterssectionbend = \chordmode {
    \chordChangesOff d2:min \chordChangesOn | d2:min | }

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        g2 | g2 | g2 | g2 |
        d2:7 | d2:7 | g2 | g2 |
        g2 | g2:min | d2 | a2:7 |
        d4 a4:7 | d4 a4:7 |
    }
    \alternative {
        { d2 | d2 | }
        { \chordChangesOff d2 \chordChangesOn | d2 | }
    }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    d2 |
    \chordChangesOn
    s2 | s2 |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionbend
    \chordletterssectionc
    \blankmeasure
    \chordletterscoda
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
% we don't have a guitar part to expand for midi or specific playing

guitardminchorde = < d\4 a\3 d'\2 f'\1 >8
guitardmajchorde = < d\4 a\3 d'\2 fis'\1 >8
guitardsevchorde = < d\4 a\3 c'\2 fis'\1 >8
guitargminchorde = < g\4 bes\3 d'\2 g'\1 >8
guitargmajchorde = < g\4 b\3 d'\2 g'\1 >8
guitaraminchorde = < a\4 c'\3 e'\2 a'\1 >8
guitaramajchorde = < a\4 cis'\3 e'\2 a'\1 >8
guitarasevchorde = < a,\5 e\4 g\3 cis'\2 e'\1 >8

guitardminchordq = < d\4 a\3 d'\2 f'\1 >4
guitardmajchordq = < d\4 a\3 d'\2 fis'\1 >4
guitardsevchordq = < d\4 a\3 c'\2 fis'\1 >4
guitargminchordq = < g\4 bes\3 d'\2 g'\1 >4
guitargmajchordq = < g\4 b\3 d'\2 g'\1 >4
guitaraminchordq = < a\4 c'\3 e'\2 a'\1 >4
guitaramajchordq = < a\4 cis'\3 e'\2 a'\1 >4
guitarasevchordq = < a,\5 e\4 g\3 cis'\2 e'\1 >4

guitarintro = {
    r2 |
    r2 |
}

guitarsectiona = {
    \repeat volta 2 {
        \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
        \guitardminchorde \guitardminchorde \guitardminchordq |
        \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
        \guitardminchorde \guitardminchorde \guitardminchordq |
        \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
        \guitardminchorde \guitardminchorde \guitardminchordq |
    }
    \alternative {
        {
            \guitardminchordq \guitardminchordq |
            \guitardminchordq r4
        }
        {
            \guitardminchordq \guitardminchordq |
            \guitardminchordq r4
        }
    }
}

guitarsectionb = {
    r8 \guitardminchorde r8 \guitardminchorde |
    r8 \guitardminchorde r8 \guitardminchorde |
    \guitaraminchordq r8 \guitaraminchorde |
    \guitaraminchordq r4 |
    r8 \guitardminchorde r8 \guitardminchorde |
    r8 \guitardminchorde r8 \guitardminchorde |
    \guitaraminchordq r8 \guitaraminchorde |
    \guitaramajchordq r4 |
    \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
    \guitardminchorde \guitardminchorde \guitardminchordq |
    \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
    \guitardminchorde \guitardminchorde \guitardminchordq |
    \guitardminchordq \guitardminchorde < d\4 a\3 d'\2 f'\1 >8 ~ |
    \guitardminchorde \guitardminchorde \guitardminchordq |
}

guitarsectionbend = {
    \guitardminchordq \guitardminchordq |
    \guitardminchordq r4
}

guitarsectionc = {
    \repeat volta 2 {
        \guitargmajchordq \guitargmajchordq |
        \guitargmajchordq \guitargmajchordq |
        \guitargmajchordq \guitargmajchordq |
        \guitargmajchordq \guitargmajchordq |
        \guitardsevchorde r8 \guitardsevchorde r8 |
        \guitardsevchorde r8 \guitardsevchorde r8 |
        \guitargmajchordq \guitargmajchordq |
        \guitargmajchordq r4 |
        r4 \guitargmajchordq |
        r4 \guitargminchordq |
        \guitardmajchordq \guitardmajchordq |
        \guitarasevchordq \guitarasevchordq |
        r8 \guitardmajchorde r8 \guitarasevchorde |
        r8 \guitardmajchorde r8 \guitarasevchorde |
    }
    \alternative {
        {
            \guitardmajchordq \guitardmajchordq |
            \guitardmajchordq r4 |
        }
        {
            \guitardmajchordq \guitardmajchordq |
            \guitardmajchordq r4 |
        }
    }
}

guitarcoda = {
    \key f \major
    \guitardminchordq r4 |
    \guitardminchordq r4 |
    \guitardminchordq r4 |
}

guitarnotes = {
%    \guitarintro
%    \guitarsectiona
%    \guitarsectionb
%    \guitarsectionbend
%    \guitarsectionc
%    \blankmeasure
%    \guitarcoda
}

guitarnotesmidi = \transpose c c' {
%    \key f \major
%    \time 2/4
%    \preintro
%    \metronomeextra
%    \guitarintro
%    \guitarsectiona
%    \guitarsectionb
%    \guitarsectionbend
%    \guitarsectionc
%    \guitarsectiona
%    \guitarsectionb
%    \guitarsectionbend
%    \guitarsectionc
%    \guitarsectiona
%    \guitarsectionb
%    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    r2 |
    r2 |
}

basssectiona = {
    \repeat volta 2 {
        d4\3 r8 d8\3 ~ |
        d4\3 d4\3 |
        d4\3 r8 d8\3 ~ |
        d4\3 d4\3 |
        d4\3 r8 d8\3 ~ |
        d4\3 d4\3 |
    }
    \alternative {
        {
            d4\3 a,4\4 |
              d8[\3 d'8\1 a8\2 f8\2 ]
        }
        {
            d4\3 a,4\4 |
            d4\3 r4 |
        }
    }
}

basssectionb = {
    d4\3 d4\3 |
    d4\3 d4\3 |
    a,4\4 e4\3 |
    a,4\4 e4\3\mp |
    d4\3 d4\3 |
    d4\3 d4\3 |
    a,4\4 e4\3 |
      a,8[\4 a,8\4 b,8\3 cis8\3 ] |
    d4\3 r8 d8\3 ~ |
    d4\3 d4\3 |
    d4\3 r8 d8\3 ~ |
    d4\3 d4\3 |
    d4\3 r8 d8\3 ~ |
    d4\3 d4\3 |
}

basssectionbend = {
    d4\3 a,4\4 |
    d4\3 r4 |
}

basssectionc = {
    \repeat volta 2 {
        \key g \major
        g,4\4\p d4\3 |
        g,4\4 d4\3 |
        g,4\4 d4\3 |
        g,4\4 d4\3 |
        r8\f d8\3-> r8 d8\3-> |
        r8 d8\3-> r8 d8\3-> |
        g,4\4 d4\3 |
        g,4\4 r4 |
        r4 g,4\4 |
        r4 g,4\4 |
        d4\3 d4\3 |
        a,4\4 a,4\4 |
        d4\3 a,4\4 |
        d4\3 a,4\4 |
    }
    \alternative {
        {
            d4\3 a,4\4 |
            d4\3 r4
        }
        {
            d4\3 a,4\4 |
            d4\3 a,4\4 |
        }
    }
}

basscoda = {
    \key f \major
    d'4\1\tenuto r4 |
    a4\2\tenuto r4 |
    d4\3 r4
}

bassnotes = {
    \key f \major
    \time 2/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionbend
    \basssectionc
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionbend
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionbend
    \basssectionc
    \basssectiona
    \basssectionb
    \basscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianodminchorde = < d f a d' >8
pianoaminchorde = < a c' e' a' >8
pianoamajchorde = < a cis' e' a' >8
pianogmajchorde = < g b d' g' >8
pianodmajchorde = < d fis a d' >8
pianodsevchorde = < d fis a c' >8
pianogminchorde = < g bes d' g' >8
pianoasevchorde = < a cis' e' g' >8

pianodminchordq = < d f a d' >4
pianoaminchordq = < a c' e' a' >4
pianoamajchordq = < a cis' e' a' >4
pianodmajchordq = < d fis a d' >4
pianodsevchordq = < d fis a c' >4
pianogminchordq = < g bes d' g' >4
pianoasevchordq = < a cis' e' g' >4

pianogmajchordq = < g b d' g' >4
pianogmajchorddq = < d g b d' >4
pianogmajchordbq = < b d g b >4
pianogmajchordgq = < g b d g' >4

pianorightsectionc = {
    \repeat volta 2 {
        \pianogmajchordq \pianogmajchorddq |
        \pianogmajchordbq \pianogmajchordgq |
        \pianogmajchordq \pianogmajchorddq |
        \pianogmajchordbq \pianogmajchordgq |
        \pianodsevchorde r8 \pianodsevchorde r8 |
        \pianodsevchorde r8 \pianodsevchorde r8 |
        \pianogmajchordq \pianogmajchorddq |
        \pianogmajchordq r4 |
        r4 \pianogmajchordq |
        r4 \pianogminchordq |
        \pianodmajchordq \pianodmajchordq |
        \pianoasevchordq \pianoasevchordq |
        r8 \pianodmajchorde r8 \pianoasevchorde |
        r8 \pianodmajchorde r8 \pianoasevchorde |
    }
    \alternative {
        {
            \pianodmajchordq < a' d'' fis'' a'' >4 |
            \pianodmajchordq r4 |
        }
        {
            \pianodmajchordq < a' d'' fis'' a'' >4 |
            \pianodmajchordq r4 |
        }
    }
}

pianorightcoda = {
    \key f \major
    < d'' fis'' a'' d''' >4 r4 |
    < a' d'' fis'' a'' >4 r4 |
    \pianodmajchordq r4 |
}

%-------------------------------------------------

pianorightintro = {
    a''8\p gis''16 a''16 bes''8 a''8 |
    g''8 f''8 e''8 a''8  |
}

pianorightsectiona = {
    \repeat volta 2 {
        d''4\mp f''8 e''8 ~ |
        e''8 d''8 e''8 f''8  |
        a''8 gis''8 b''8 a''8  ~ |
        a''8 gis''8 f''8 e''8 
        d''4 f''8 e''8 ~ |
        e''8 d''8 e''8 f''8 
    }
    \alternative {
        {
            a''8 gis''8 b''8 gis''8  |
            a''8 a'8 b'8 cis''8 
        }
        {
            d''2 |
            r8 d''8\p f''8 a''8 |
        }
    }
}

pianorightsectionb = {
    d'''8. cis'''16\< d'''8. cis'''16 |
    d'''8. cis'''16 d'''8 e'''8\! |
    c'''16 b''16 a''8 a''8 a''8 ~ |
    a''8 d''8 f''8\p a''8 |
    d'''8. cis'''16 d'''8. cis'''16 |
    d'''4 d'''8 e'''8 |
    c'''16\mp b''16 a''8 a''8 a''8 ~ |
    a''8 g''8 f''8 e''8  |
    d''4 f''8 e''8 ~ |
    e''8 d''8 e''8 f''8  |
    a''8 gis''8 b''8 a''8  ~ |
    a''8 gis''8 f''8 e''8  |
    d''4 f''8 e''8 ~ |
    e''8 d''8 e''8 f''8  |
}

pianorightsectionbend = {
    d''2 ~ |
    d''8 d''8 g''8 a''8  |
}

pianorightsectionc = {
    \repeat volta 2 {
        \key g \major
	b''2\p ~ |
        b''8 a''8 b''8 a''8 |
        g''8 d''4. ~ |
        d''8 d''8 g''8 a''8 |
        b''8. a''16 b''8. a''16 |
        b''8. a''16 b''8. a''16 |
        g''2 ~ |
        g''8 d''8 g''8 a''8 |
        b''4-> r4 |
        bes''4-> r4 |
        a''8. g''16 fis''8 e''8 ~ |
        e''8 e''8 fis''8 g''8 |
        a''8. fis''16 g''8. e''16 |
        fis''8. d''16 e''8. cis''16 |
    }
    \alternative {
        {
            d''2 ~ |
            d''8 d''8 g''8 a''8 |
        }
        {
            d''2 ~ |
            d''8 a'8 b'8 cis''8 |
        }
    }
}

pianorightcoda = {
    \key f \major
    d''4-> r4 |
    a''4-> r4 |
    d'''4-> r4
}

%-------------------------------------------------

pianorightuppernotes = {
    \key f \major
    \time 2/4
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionbend
    \pianorightsectionc
    \blankmeasure
    \pianorightcoda
}

pianoleftintro = {
    r2\p |
    r2 |
}

pianoleftsectiona = {
    \repeat volta 2 {
        \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
        \pianodminchorde \pianodminchorde \pianodminchordq |
        \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
        \pianodminchorde \pianodminchorde \pianodminchordq |
        \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
        \pianodminchorde \pianodminchorde \pianodminchordq |
    }
    \alternative {
        {
            \pianodminchordq < a d' f' a' >4 |
            \pianodminchordq r4
        }
        {
            \pianodminchordq < a d' f' a' >4 |
            \pianodminchordq r4
        }
    }
}

pianoleftsectionb = {
    d,8 \pianodminchorde d,8 \pianodminchorde |
    d,8 \pianodminchorde d,8 \pianodminchorde |
    \pianoaminchordq e,8 \pianoaminchorde |
    \pianoaminchordq e,8 r8 |
    d,8 \pianodminchorde d,8 \pianodminchorde |
    d,8 \pianodminchorde d,8 \pianodminchorde |
    \pianoaminchordq e,8 \pianoaminchorde |
    < a, a >8 < a, a >8 < b, b >8 < cis cis' >8 |
    \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
    \pianodminchorde \pianodminchorde \pianodminchordq |
    \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
    \pianodminchorde \pianodminchorde \pianodminchordq |
    \pianodminchordq \pianodminchorde < d f a d' >8 ~ |
    \pianodminchorde \pianodminchorde \pianodminchordq |
}

pianoleftsectionbend = {
    \pianodminchordq < a d' f' a' >4 |
    \pianodminchordq r4
}

pianoleftsectionc = {
    \repeat volta 2 {
        \key g \major
        g,4\p d4 |
        g,4 d4 |
        g,4 d4 |
        g,4 d4 |
        r8\f d8-> r8 d8-> |
        r8 d8-> r8 d8-> |
        g,4 d4 |
        g,4 r4 |
        r4 g,4 |
        r4 g,4 |
        d4 d4 |
        a,4 a,4 |
        d4 a,4 |
        d4 a,4 |
    }
    \alternative {
        {
            d4 a,4 |
            d4 r4
        }
        {
            d4 a,4 |
            d4 a,4 |
        }
    }
}

pianoleftcoda = {
    \key f \major
    d4-> r4 |
    a4-> r4 |
    d'4-> r4
}

pianoleftuppernotes = {
    \key f \major
    \time 2/4
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionbend
    \pianoleftsectionc
    \blankmeasure
    \pianoleftcoda
}

pianorightnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \pianorightintro
    \pianorightsectiona
    \pianoleftsectionb
    \pianorightsectionbend
    \pianorightsectionc
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionbend
    \pianorightsectionc
    \pianorightsectiona
    \pianorightsectionb
    \pianorightcoda
}

pianoleftnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \metronomeextra
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionbend
    \pianoleftsectionc
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionbend
    \pianoleftsectionc
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% drums
% some possible patterns

% pattern 2
%      sna8[ sna16 sna16 ]   sna8[ sna8^> ~ ]
%      sna8[ sna8 ]   sna16[ sna16 sna8 ] |

% transition 1
%    << sna1:32 { s4\< s4 s4 s8 s8\! } >> |

% pattern 3
%      cymr8[ sna16 sna16 ]   sna8[ sna8 ~ ]
%      sna8[ sna8 ]   sna16[ sna16 sna8 ] |

% transition 2
%      cymr8[^"Bell of Cym." sna8 ]   cymr8[ sna8 ]
%      cymr8[ sna8 ]   cymr8[ sna8 ] |

% measure 29
%      cymr8[ sna16 sna16 ]   sna8[ sna8:32 ~ ]
%      sna8:32[ sna8 ]   sna16[^Fill sna16 sna8 ] |
%      sna8[ sna16 sna16 ]   sna8[ sna8 ]
%    sna8^.^> r8 << sna4:32 { s16\< s16 s16 s16\! } >> |
%    ss8^.^Rim r8 r4 ss8^.^> r8 r4 |
%    sna2:32^> hhc8^.^> r8 r4 |

%%

drumsextra = \drummode {
    < bda hhc >4 hhc4 |
    < bda hhc >4 hhc4 |
}

drumshighintro = \drummode {
    r2 |
    r2 |
}

drumshighsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 {
            sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie |
            \snarerolleighteight sna16 [ sna16 sna8 ] |
        }
    }
    \alternative {
        {
            sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie |
            \snarerollquarter cymr4 |
        }
        {
            \snarerollhalfcresc |
            cymc4 r4 |
        }
    }
}

drumshighsectionb = \drummode {
    cymr8^"Bell of cymbal" [ sna8 ] cymr8 [ sna8 ] |
    cymr8 [ sna8 ] cymr8 [ sna8 ] |
    sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie |
    \snarerolleighteight   sna16 [ sna16 sna8 ] |

    cymr8 [ sna8 ] cymr8 [ sna8 ] |
    cymr8 [ sna8 ] cymr8 [ sna8 ] |
    \repeat percent 4 {
        sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie |
        \snarerolleighteight sna16 [ sna16 sna8 ] |
    }
}

drumshighsectionbend = \drummode {
    cymr8[ sna8 ] sna4 | cymc4 r4 |
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        \repeat percent 2 {
            sna8[ sna16 sna16 ]   \snareeightrolleightaccenttie |
            \snarerolleighteight   sna16[ sna16 sna8 ] |
        }
        cymr8 [ sna8 ] cymr8 [ sna8 ] |
        cymr8 [ sna8 ] cymr8 [ sna8 ] |
        sna8 [ sna16 sna16 ] \snareeightrolleightaccenttie |
        \snarerollquarter r4 |

        cymc4 r4 | % crash
        cymc4 r4 | % crash
          sna8[ sna16 sna16 ]   \snareeightrolleightaccenttie |
          \snarerolleighteight   sna16[ sna16 sna8 ] |
          cymr8[ sna8 ]   cymr8[ sna8 ] |
          cymr8[ sna8 ]   cymr8[ sna8 ] |
    }
    \alternative {
        {
            cymr4 r4 |
            cymc4 r4 | % crash
        }
        {
            cymr4 r4 |
            cymc4 r4 | % crash
        }
    }
}

drumshighcoda = \drummode {
    s4 r4 |
    s4 r4 |
    cymc4 r4 |
}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \drumshighintro
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \stemUp
    \dynamicUp
    \drumshighsectionb
    \stemUp
    \dynamicUp
    \drumshighsectionbend
    \stemUp
    \dynamicUp
    \drumshighsectionc
    \blankmeasure
    \stemUp
    \dynamicUp
    \drumshighcoda
}

drumshighmidi = {
    \time 2/4
    \preintro
    \drumsextra
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionbend
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionbend
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighcoda
}

drumslowintro = \drummode {
    s2 |
    s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        \repeat percent 3 {
            bda4. bda8 ~ | bda4 bda4 |
        }
    }
    \alternative {
        {
            bda4. bda8 ~ | bda4 s4 |
        }
        {
            bda4 bda4 | s2 |
        }
    }
}

drumslowsectionb = \drummode {
    bda4 bda4 | bda4 bda4 |
    bda4. bda8 ~ | bda4 bda4 |
    bda4 bda4 | bda4 bda4 |
    \repeat percent 4 {
        bda4. bda8 ~ | bda4 bda4 |
    }
}

drumslowsectionbend = \drummode {
    bda4 bda4 | bda4 s4 |
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        \repeat percent 2 {
            bda4. bda8 ~ | bda4 bda4 |
        }
        bda4 bda4 | bda4 bda4 |
        bda4. bda8 ~ | bda4 bda4 |
        bda4 s4 |
        bda4 s4 |
        bda4. bda8 ~ | bda4 bda4 |
        bda4 bda4 |
        bda4 bda4 |
    }
    \alternative {
        {
            bd4 s4 |
            s2 |
        }
        {
            bd4 s4 |
            s2 |
        }
    }
}

drumslowcoda = \drummode {
    bd4 s4 | bd4 s4 | bd4 s4 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionbend
    \drumslowsectionc
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = {
    \time 2/4
    \preintro
    \metronomeextra
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionbend
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionbend
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowcoda
}

tenorharmony = { }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | s2 |
    d2:min | s2 | s2 | s2 |
}

previewnotes = {
    \key f \major
    \time 2/4
    a''8 gis''16 a''16 bes''8 a''8 |
    g''8 f''8 e''8 a''8 |
    \bar ".|:"
    d''4 f''8 e''8 ~ |
    e''8 d''8 e''8 f''8 |
    a''8 gis''8 b''8 a''8 ~ |
    a''8 gis''8 f''8 e''8 |
}

tromboneforbassclarinetnotes = { \transpose c c { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

\version "2.18.0"

intro = { s2 | \breakIN }

bandmsectionaa = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

bandmsectiona = {
    \markSA \positionSA
    \tempo \tempostring
    \bar ".|:"
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt
        \markTC \positionTC
    }
    \alternative { { s2 | \breakAfft s2 | \breakAsxt } { s2 | \breakAsvt s2 } }
    \breakA \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt
    }
    \alternative { { s2 | \breakBfft s2 | \breakBsxt } { s2 | \breakBsvt s2 } }
    \breakB \bar ".|:-||"

    \markC \positionC
    \repeat volta 2 {
        \grace { s8. } s2 | \breakCone s2 | \breakCtwo
        s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
        s2 | \breakCtht s2 | \breakCfrt
    }
    \alternative { { s2 | \breakCfft s2 | \breakCsxt } { s2 | \breakCsvt s2 } }
    \markDS \positionDS
    \breakC \bar "||"
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
}

bandmNV = {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \blankmeasure
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s2 | }

metronome = {
    \time 2/4
    \preintro
    \intro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \tempo 4 = 130
    \bandmsectiona
    \bandmsectionb
    \bandmsectionaa
    \tempo 4 = 105
    \bandmcoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = { d''8 a''8 b''8 cis''8 | }

melodysectionaa = {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |
    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''8 g''8 f''8 e''8 |
    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill f''8 g''8-\trill e''8 |
    f''8-\trill d''8 e''8-\trill ( cis''8 ) |
}

melodysectiona = {
    \repeat volta 2 {
        d''2\ff ~ |
        d''8 g''8 f''8 e''8 |
        f''2 ~ |
        f''8 f''8 e''8 d''8 |
        d''2 ~ |
        d''8 bes''8 a''8 g''8 |
        g''2 ~ |
        g''8 g''8 f''8 e''8 |
        f''4. a''8 |
        c'''8 bes''8 a''8 g''8 |
        f''8 g''8 f''8 e''8 |
        d''8 e''8 f''8 g''8 |
        a''8-\trill f''8 g''8-\trill e''8 |
        f''8-\trill d''8 e''8-\trill ( cis''8 ) |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a'8 \< b'8 cis''8 | }
    }
}

melodysectionb = {
    \repeat volta 2 {
        d''8 r8 a'8 r8 |
        f''8 r8 a'8 r8 \! |
        d''2 |
        r8 d''8 e''8 f''8 |
        g''8 f''8 e''8 d''8 |
        cis''8 d''8 cis''8 bes'8 |
        a'2 ~ |
        a'2 |
        a'8 ( cis''8 ) cis''8 cis''8 |
        cis''8 ( bes'16 cis''16 ) bes'8 a'8 |
        a'8 d''8 d''8 d''8 |
        d''2 |
        g''8 f''8 e''8 d''8 |
        cis''8 d''8 e''8 f''8 |
    }
    \alternative {
        { d''2 | r8 a'8 b'8 cis''8 | }
        { d''2 ~ | d''8 r8 c''4-> | }
    }

    \repeat volta 2 {
        \grace { s8. } f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        a''8-. r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        g''4 a''4 |
        g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''2 | c'''8 bes''8 a''8 g''8 | }
        {
            f''2 \( |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) \) } \tuplet 3/2 { g''8 ( f''8 e''8 ) }  |
        }
    }
}

melodycoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

melody = {
    \key d \minor
    \time 2/4
    \melodysectiona
    \melodysectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

melodymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyintro = { r2 | }

tenorharmonysectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

tenorharmonycoda = { \grace { s8. } s2 | s2 | }

tenorharmony =  \transpose c' bes {
    \key e \minor
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

tenorharmonymidi =  \transpose c' bes {
    \key e \minor
    \time 2/4
    \preintro
    \harmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

altoharmonysectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

altoharmonycoda = { \grace { s8. } s2 | s2 | }

altoharmony = {
    \key d \minor
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

altoharmonymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

countersectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

countersectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

countercoda = { \grace { s8. } s2 | s2 | }

counter =  \transpose c c' {
    \key d \minor
    \time 2/4
    \countersectiona
    \countersectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

countermidi =  \transpose c c' {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb
    \countersectionaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa = {
    d4-. a4-. | d4-. g4-. | d4-. a4-. | d4-. a4-. |
    d4-. a4-. | fis4-. d4-. | g8 d'8 bes8 g8 | c4-. g4-. |
    f4-. c4-. | e4-. c4-. | cis4-. a,4-. | d4-. a4-. |
    d4-. g,4-. | a,4-. a,4-. |
}

basslinesectiona = {
    \repeat volta 2 {
        d4-. a4-. | d4-. g4-. | d4-. a4-. | d4-. a4-. |
        d4-. a4-. | fis4-. d4-. | g8 d'8 bes8 g8 | c4-. g4-. |
        f4-. c4-. | e4-. c4-. | cis4-. a,4-. | d4-. a4-. |
        d4-. g,4-. | a,4-. a,4-. |
    }
    \alternative {
        { d8 a8 f8 d8 | a,8 r8 a,8 r8 | }
        { d8 d'8 a8 f8 | d8 a,8 b,8 cis8 | }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        d4-. a,4-. | d4-. a4-. | d4-. a,4-. | d4-. a4-. |
        g,4-. d4-. | g,4-. d4-. | a,4-. e4-. | a,4-. e4-. |
        a,4-. e4-. | a,4-. e4-. | d4-. a4-. | d4-. a,4-. |
        g,4-. d4-. | a,4-. g4-. |
    }
    \alternative {
        { d8 d'8 a8 f8 | d8 a,8 b,8 cis8 | }
        { d8 d'8 a8 f8 | d8 r8 c4 | }
    }

    \repeat volta 2 {
        \grace { s8. } f4-. c4-. | f4-. c4-. | f4-. c4-. | f4-. c4-. |
        f4-. c4-. | f8 f,8 g,8 a,8 | c4-. g,4-. | c4-. g4-. |
        c4-. g,4-. | c4-. g4-. | c4-. g,4-. | c4-. g4-. |
        c4-. g,4-. | c4-. g4-. |
    }
    \alternative {
        { f4-. r4 | f8 c8 d8 e8 | }
        { f8 c'8 a8 g8 | f8 r8 e4 | }
    }
}

basslinecoda = { \grace { s8. } d'8 r8 a8 r8 | d2-\fermata | }

bassline = {
    \key d \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \stopStaff s2 \startStaff
    \grace { s8. } d'8 r8 a8 r8 | d2-\fermata |
}

basslinemidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectionaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectionaa = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

guitarsectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

guitarsectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

guitarcoda = { \grace { s8. } s2 | s2 | }

guitarnotes = {
    \key d \minor
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

guitarnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
    \guitarsectionaa
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    d2:min | g2:min | d2:min | d2:min |
    d2:7 | d2:7 | g2:min | c2:7 |
    f2 | c2:7 | a2:7 | d2:min |
    d4:min a4:7 | s2 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
    d2:min | g2:min | d2:min | d2:min |
    d2:7 | d2:7 | g2:min | c2:7 |
    f2 | c2:7 | a2:7 | d2:min |
    d4:min a4:7 | s2 |
    }
    \alternative { { d2:min | a2:7 | } { d2:min | d4.:min a8:7 } }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        g2:min | g2:min | a2 | a2 |
        a2 | a2 | d2:min | d2:min |
        g2:min | a2:7 |
    }
    \alternative { { d2:min | d4.:min a8:7 | } { d2:min | d4.:min c8:7 | } }

    \repeat volta 2 {
        \grace { s8. } f2 | f2 | f2 | f2 |
        f2 | f2 | c2:7 | c2:7 |
        c2:7 | c2:7 | c2:7 | c2:7 |
        c2:7 | c2:7 |
    }
    \alternative { { f2 | c2:7 | } { f2 | f4 a4:7 } }
}

chordletterscoda = \chordmode { \grace { d8.:min } d4:min a4:7 | d2:min | }

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \stopStaff s2 \startStaff
    \grace { d8.:min } d4:min a4:7 | d2:min |
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

melodystaff =  \context Staff = "melodystaff"  \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutesectionaa = {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |
    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''8 g''8 f''8 e''8 |
    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill f''8 g''8-\trill e''8 |
    f''8-\trill d''8 e''8-\trill ( cis''8 ) |
}

flutesectiona = {
    \repeat volta 2 {
        d''2\ff ~ |
        d''8 g''8 f''8 e''8 |
        f''2 ~ |
        f''8 f''8 e''8 d''8 |
        d''2 ~ |
        d''8 bes''8 a''8 g''8 |
        g''2 ~ |
        g''8 g''8 f''8 e''8 |
        f''4. a''8 |
        c'''8 bes''8 a''8 g''8 |
        f''8 g''8 f''8 e''8 |
        d''8 e''8 f''8 g''8 |
        a''8-\trill f''8 g''8-\trill e''8 |
        f''8-\trill d''8 e''8-\trill ( cis''8 ) |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a'8 b'8 cis''8 | }
    }
}

flutesectionb = {
    \startOctVA
    \repeat volta 2 {
        d'''8 r8 a''8 r8 |
        f'''8 r8 a''8 r8 |
        d'''2 |
        r8 d'''8 e'''8 f'''8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 cis'''8 bes''8 |
        a''2 ~ |
        a''2 |
        a''8 ( cis'''8 ) cis'''8 cis'''8 |
        cis'''8 ( bes''16 cis'''16 ) bes''8 a''8 |
        a''8 d'''8 d'''8 d'''8 |
        d'''2 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 e'''8 f'''8 |
    }
    \alternative {
        { d'''2 | r8 a''8 b''8 cis'''8 | } { d'''2 ~ | d'''8 r8 c'''4-> | }
    }
    \stopOctVA

    \repeat volta 2 {
        \grace { s8. } f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        a''8-. r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        g''4 a''4 |
        g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''8 f'''8 e'''8 d'''8 | c'''8 bes''8 a''8 g''8 | }
        {
            f''2 \( |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) \) } \tuplet 3/2 { g''8 ( f''8 e''8 ) }  |
        }
    }
}

flutecoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

flutenotes = {
    \key d \minor
    \time 2/4
    << {
        \stemNeutral
        \flutesectiona
        \flutesectionb
    } \\ {
        \repeat volta 2 {
            s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
            s2 | s2 | s2 | s2 | s2 | s2 |
        }
        \alternative { { s2 | s2 | } { s2 | s4 \< s4 | } }
        \repeat volta 2 {
            s2 | s2 \! | s2 | s2 | s2 | s2 | s2 | s2 |
            s2 | s2 | s2 | s2 | s2 | s2 |
        }
        \alternative { { s2 | s2 | } { s2 | s2 } }
    } >>
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

flutenotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \flutesectiona
    \flutesectionb
    \flutesectiona
    \flutesectionb
    \flutesectionaa
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectionaa = {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''4. c''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill ( f''8 ) g''8-\trill ( e''8 ) |
    f''8-\trill ( d''8 ) e''8-\trill ( cis''8 ) |
}

clarinetsectiona = {
    \repeat volta 2 {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''4. c''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill ( f''8 ) g''8-\trill ( e''8 ) |
    f''8-\trill ( d''8 ) e''8-\trill ( cis''8 ) |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a'8 b'8 cis''8 | }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        d''8-. r8 a'8-. r8 |
        f''8-. r8 a'8-. r8 |
        d''2 |
        r8 d''8 e''8 f''8 |
        g''8 f''8 e''8 d''8 |
        cis''8 \acciaccatura { e'' } d''8 cis''8 bes'8 |
        a'2 ~ |
        a'4. r8 |
        a'8 cis''8 cis''8 cis''8 |
        cis''8 bes'16 cis''16 bes'8 a'8 |
        a'8 d''8 d''8 d''8 |
        d''2 |
        g''8 f''8 e''8 d''8 |
        cis''8 d''8 e''8 f''8 |
    }
    \alternative {
        { d''2 | r8 a'8 b'8 cis''8 | } { d''2 ~ | d''8 r8 c''4-^ | }
    }

    \repeat volta 2 {
        \grace { s8. } f''8-^ a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        f''8-^ a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        a''8-. r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-^ g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        e''8-^ g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        g''4 a''4 |
        g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''8 f''8 ( e''8 d''8 | c''8 ) bes''8 ( a''8 g''8 ) | }
        {
            f''2 \( |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) \) } \tuplet 3/2 { g''8 ( f''8 e''8 ) }  |
        }
    }
}

clarinetcoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

clarinetnotes = \transpose bes c' {
    \key d \minor
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

clarinetnotesmidi = \transpose bes c' {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa = {
    g'8\ff b'8 g'8 e'8 |
    g'8 r8 r4 |
    b'8 e''8 b'8 g'8 |
    b'8 r8 r4 |
    g'8 b'8 g'8 e'8 |
    g'8 r8 r4 |
    c''8 c''8 e''8 c''8 |
    a'8 c''8 b'8 a'8 |
    b'8 d''8 b'8 d''8 |
    b'8 e''8 d''8 c''8 |
    b'8 c''8 b'8 a'8 |
    g'8 b'8 e''8 fis''8 |
    g''8 ( e''8 ) c''8 ( a'8 ) |
    b'8 ( g'8 ) a'8 ( fis'8 ) |
}

tenorsaxsectiona = {
    \repeat volta 2 {
    g'8\ff b'8 g'8 e'8 |
    g'8 r8 r4 |
    b'8 e''8 b'8 g'8 |
    b'8 r8 r4 |
    g'8 b'8 g'8 e'8 |
    g'8 r8 r4 |
    c''8 c''8 e''8 c''8 |
    a'8 c''8 b'8 a'8 |
    b'8 d''8 b'8 d''8 |
    b'8 e''8 d''8 c''8 |
    b'8 c''8 b'8 a'8 |
    g'8 b'8 e''8 fis''8 |
    g''8 ( e''8 ) c''8 ( a'8 ) |
    b'8 ( g'8 ) a'8 ( fis'8 ) |
    }
    \alternative {
        { g'8 b'8 e''8 b'8 | dis''8 r8 b'8 r8 | }
        { g'8 b'8 e''8 b'8 | g'8 b'8 ais'8 a'8 }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        g'4-. g'4-. |
        b'4-. a'4-. |
        g'4 b'8-^ g'8-^ ~ |
        g'8 g'8 a'8 b'8 |
        c''8 b'8 a'8 g'8 |
        fis'8 g'8 fis'8 e'8 |
        dis'8 fis'8 fis'8 fis'8 |
        fis'8 fis'8-^ dis'4-^ |
        dis'8 fis'8 fis'8 fis'8 |
        fis'8 e'16 fis'16 d'8 dis'8 |
        e'8 g'8 g'8 g'8 |
        g'8 g'8 ( a'8 b'8 ) |
        c''8 b'8 a'8 g'8 |
        fis'8 g'8 a'8 b'8 |
    }
    \alternative {
        { g'8 b'8 b'8 b'8 | b'8 b'8 ais'8 a'8 | }
        { g'8 g'8 b'8 a'8 | g'8 r8 c''4-^ | }
    }

    \repeat volta 2 {
        \grace { s8. } b'8-^ d''8 d''8 d''8 |
        d''8 c''16 d''16 c''8 b'8 |
        b'8-^ d''8 d''8 d''8 |
        d''8 c''16 d''16 c''8 b'8 |
        g''8 r8 a''8 r8 |
        b''8 a''8 g''8 a''8 |
        fis''8 d''8 fis''8 g''8 |
        a''8 r8 d''8 r8 |
        a'8-^ c''8 c''8 c''8 |
        c''8 b'16 c''16 b'8 a'8 |
        a'8-^ c''8 c''8 c''8 |
        c''8 b'16 c''16 b'8 a'8 |
        c''4 d''4 |
        c''8 b'8 a'8 c''8 |
    }
    \alternative {
        { b'8 b'8 ( a'8 g'8 | fis'8 ) e''8 ( d''8 c''8 ) | }
        { b'8 b'8 d''8 b'8 | dis''8 r8 b'8 r8 | }
    }
}

tenorsaxcoda = {
    \grace { s8. } g'8-^ r8 a'8 r8 | g'2-^-\fermata |
}

tenorsaxnotes = {
    \key e \minor
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \stopStaff s2 \startStaff
    \grace { s8. } g'8-^ r8 a'8 r8 | g'2-^-\fermata |
}

tenorsaxnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \harmonyintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforflutenotes = \transpose c' bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c' bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltosectionaa = {
    g'8\ff b'8 g'8 b'8 |
    g'8 r8 r4 |
    b'8 e''8 b'8 g'8 |
    b'8 r8 r4 |
    g'8 b'8 g'8 b'8 |
    g'8 r8 r4 |
    c''8 c''8 e''8 c''8 |
    a'8 c''8 b'8 a'8 |
    b'8 d''8 b'8 d''8 |
    b'8 e''8 d''8 c''8 |
    b'8 c''8 b'8 a'8 |
    g'8 b'8 e''8 fis''8 |
    g''8 ( e''8 ) c''8 ( a'8 ) |
    b'8 ( g'8 ) a'8 ( fis'8 ) |
}

tenorforaltosectiona = {
    \repeat volta 2 {
    g'8\ff b'8 g'8 b'8 |
    g'8 r8 r4 |
    b'8 e''8 b'8 g'8 |
    b'8 r8 r4 |
    g'8 b'8 g'8 b'8 |
    g'8 r8 r4 |
    c''8 c''8 e''8 c''8 |
    a'8 c''8 b'8 a'8 |
    b'8 d''8 b'8 d''8 |
    b'8 e''8 d''8 c''8 |
    b'8 c''8 b'8 a'8 |
    g'8 b'8 e''8 fis''8 |
    g''8 ( e''8 ) c''8 ( a'8 ) |
    b'8 ( g'8 ) a'8 ( fis'8 ) |
    }
    \alternative {
        { g'8 b'8 e''8 b'8 | dis''8 r8 b'8 r8 | }
        { g'8 b'8 e''8 b'8 | g'8 b'8 ais'8 a'8 }
    }
}

tenorforaltosectionb = {
    \repeat volta 2 {
        g''4-. g''4-. |
        b''4-. a''4-. |
        g''4 b''8-> g''8-> ~ |
        g''8 g''8 a''8 b''8 |
        c'''8 b''8 a''8 g''8 |
        fis''8 g''8 fis''8 e''8 |
        dis''8 fis''8 fis''8 fis''8 |
        fis''8 fis''8-> dis''4-> |
        dis''8 fis''8 fis''8 fis''8 |
        fis''8 e''16 fis''16 d''8 dis''8 |
        e''8 g''8 g''8 g''8 |
        g''8 g''8 ( a''8 b''8 ) |
        c'''8 b''8 a''8 g''8 |
        fis''8 g''8 a''8 b''8 |
    }
    \alternative {
        { g''8 b''8 b''8 b''8 | b''8 b''8 ais''8 a''8 | }
        { g''8 g''8 b''8 a''8 | g''8 r8 c'''4-> | }
    }

    \repeat volta 2 {
        \grace { s8. } b'8-> d''8 d''8 d''8 |
        d''8 c''16 d''16 c''8 b'8 |
        b'8-> d''8 d''8 d''8 |
        d''8 c''16 d''16 c''8 b'8 |
        g''8 r8 a''8 r8 |
        b''8 a''8 g''8 a''8 |
        fis''8 d''8 fis''8 g''8 |
        a''8 r8 d''8 r8 |
        a'8-> c''8 c''8 c''8 |
        c''8 b'16 c''16 b'8 a'8 |
        a'8-> c''8 c''8 c''8 |
        c''8 b'16 c''16 b'8 a'8 |
        c''4 d''4 |
        c''8 b'8 a'8 c''8 |
    }
    \alternative {
        { b'8 b''8 ( a''8 g''8 | fis''8 e''8 d''8 c''8 ) | }
        { b'8 b'8 d''8 b'8 | dis''8 r8 b'8 r8 | }
    }
}

tenorforaltocoda = {
    \grace { s8. } g'8-> r8 a'8 r8 | g'2->-\fermata |
}

tenorforaltonotes = \transpose ees bes, {
    \key e \minor
    \time 2/4
    \tenorforaltosectiona
    \tenorforaltosectionb
    \stopStaff s2 \startStaff
    \grace { s8. } g'8-> r8 a'8 r8 | g'2->-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectionaa = {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 \acciaccatura { f''16 [ g''16 ] } f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''8 g''8 f''8 e''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8 f''8 g''8 e''8 |
    f''8 d''8 e''8 cis''8 |
}

altosaxsectiona = {
    \repeat volta 2 {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 \acciaccatura { f''16 [ g''16 ] } f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''8 g''8 f''8 e''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8 f''8 g''8 e''8 |
    f''8 d''8 e''8 cis''8 |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a''8 b''8 cis'''8 | }
    }
}

altosaxsectionb = {
    \repeat volta 2 {
        d'''8 r8 a''8 r8 |
        f'''8 r8 a''8 r8 |
        d'''2 ~ |
        d'''8 d'''8 e'''8 f'''8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 cis'''8 bes''8 |
        a''2 ~ |
        a''4. r8 |
        a''8 cis'''8 cis'''8 cis'''8 |
        cis'''8 bes''16 cis'''16 bes''8 a''8 |
        a''8 d'''8 d'''8 d'''8 |
        d'''4. r8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 e'''8 f'''8 |
    }
    \alternative {
        { d'''2 ~ | d'''8 a''8 b''8 cis'''8 | }
        { d'''2 ~ | d'''8 r8 c'''4-> | }
    }

    \repeat volta 2 {
        \grace { s8. } f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        a''8-. r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        g''4 a''4 |
        \acciaccatura { g''16 [ a''16 ] } g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''8 \< f'''8 e'''8 d'''8 | c'''8 bes''8 a''8 g''8 \! | }
        {
            f''2 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        }
    }
}

altosaxcoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

altosaxnotes = \transpose ees c {
    \key d \minor
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

altosaxnotesmidi = \transpose ees c {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionaa
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectionaa = {
    d''2\f ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''4. c''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8 f''8 g''8 e''8 |
    f''8 d''8 e''8 cis''8 |
}

trumpetsectiona = {
    \repeat volta 2 {
    d''2\f ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |

    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''4. c''8 |

    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8 f''8 g''8 e''8 |
    f''8 d''8 e''8 cis''8 |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a'8 b'8 cis''8 | }
    }
}

trumpetsectionb = {
    \startOctVA
    \repeat volta 2 {
        d'''8 r8 a''8 r8 |
        f'''8 r8 a''8 r8 |
        d'''2 |
        r8 d'''8 e'''8 f'''8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 cis'''8 bes''8 |
        a''2 ~ |
        a''2 |
        a''8 ( cis'''8 ) cis'''8 cis'''8 |
        cis'''8 bes''16 cis'''16 bes''8 a''8 |
        a''8 d'''8 d'''8 d'''8 |
        d'''2 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 e'''8 f'''8 |
    }
    \alternative {
        { d'''2 | r8 a''8 b''8 cis'''8 | }
        { d'''2 ~ | d'''8 r8 c'''4-> | }
    }
    \stopOctVA

    \repeat volta 2 {
        \grace { s8. } f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        a''8-. r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        g''4 a''4 |
        g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''8 f'''8 e'''8 d'''8 | c'''8 bes''8 a''8 g''8 | }
        {
            f''2 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) }  |
        }
    }
}

trumpetcoda = {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8 r8 a'8 r8 |
    d''2-\fermata |
}

trumpetnotes = \transpose bes c {
    \key d \minor
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8 r8 a'8 r8 |
    d''2-\fermata |
}

trumpetnotesmidi = \transpose bes c {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectionaa = {
    d8\ff d'8 a8 d'8 |
    d8 r8 r4 |
    d8 d'8 a8 d'8 |
    d8 r8 r4 |
    d8 d'8 a8 d'8 |
    fis8 r8 d8 r8 |
    g8 d'8 bes8 g8 |
    c8 g8 e8 c8 |
    f4. a8 |
    c'8 bes8 a8 g8 |
    cis8 r8 a,8 r8 |
    d8 r8 a,8 r8 |
    a4 g4 |
    f4 e8 a8 |
}

trombonesectiona = {
    \repeat volta 2 {
        d8\ff d'8 a8 d'8 |
        d8 r8 r4 |
        d8 d'8 a8 d'8 |
        d8 r8 r4 |
        d8 d'8 a8 d'8 |
        fis8 r8 d8 r8 |
        g8 d'8 bes8 g8 |
        c8 g8 e8 c8 |
        f4. a8 |
        c'8 bes8 a8 g8 |
        cis8 r8 a,8 r8 |
        d8 r8 a,8 r8 |
        a4 g4 |
        f4 e8 a8 |
    }
    \alternative {
        { d8 a8 f8 d8 | \tuplet 3/2 { a8 g8 f8 } \tuplet 3/2 { f8 e8 d8 } | }
        { d8 d'8 a8 f8 | d8 a,8 b,8 cis8 | }
    }
}

trombonesectionb = {
    \repeat volta 2 {
        d4 a,4 |
        f4 a4 |
        d8 d'8 a8 d'8 |
        d8 r8 r4 |
        g,8 r8 d8 r8 |
        g,8 r8 d8 r8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        a4 cis'4 |
        cis'4 bes8 a8 |
        f8 d8 f8 a8 |
        d'4. r8 |
        g,8 r8 d8 r8 |
        a,8 r8 g,8 a,8 |
    }
    \alternative {
        { d8 ( d'8 a8 f8 | d8 ) a,8 ( b,8 cis8 ) | }
        { d8 d'8 a8 f8 | d8 r8 c4-> | }
    }

    \repeat volta 2 {
        \acciaccatura { c16 [ d16 e16 ] } f2-^ ~ |
        f2 |
        \acciaccatura { c16 [ d16 e16 ] } f2-^ ~ |
        f2 |
        f8 r8 g8 r8 |
        a4 f4 |
        c'8 c'8 g8 c'8 |
        \tuplet 3/2 { bes8 a8 g8 } \tuplet 3/2 { g8 f8 e8 } |
        \acciaccatura { g,16 [ a,16 bes,16 ] } c2-^ ~ |
        c2 |
        \acciaccatura { g,16 [ a,16 bes,16 ] } c2-^ ~ |
        c2 |
        bes4 c'4 |
        bes8 a8 g8 c'8 |
    }
    \alternative { { f8 r8 r4 | c2-^ | } { f8 c'8 a8 g8 | f8 r8 a4-^ | } }
}

trombonecoda = {
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 | d2->-\fermata |
}

trombonenotes = {
    \key d \minor
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a,16 [ b,16 cis16 ] } d8-> r8 a,8-> r8 | d2->-\fermata |
}

trombonenotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \trombonesectionaa
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { \bassline }

euphoniumnotesmidi = { \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectionaa = {
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |
    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    g''2 ~ |
    g''8 g''8 f''8 e''8 |
    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill f''8 g''8-\trill e''8 |
    f''8-\trill d''8 e''8-\trill ( cis''8 ) |
}

violinsectiona = {
    \repeat volta 2 {
        d''2\ff ~ |
        d''8 g''8 f''8 e''8 |
        f''2 ~ |
        f''8 f''8 e''8 d''8 |
        d''2 ~ |
        d''8 bes''8 a''8 g''8 |
        g''2 ~ |
        g''8 g''8 f''8 e''8 |
        f''4. a''8 |
        c'''8 bes''8 a''8 g''8 |
        f''8 g''8 f''8 e''8 |
        d''8 e''8 f''8 g''8 |
        a''8-\trill f''8 g''8-\trill e''8 |
        f''8-\trill d''8 e''8-\trill ( cis''8 ) |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { d''2 ~ | d''8 a'8 b'8 cis''8 | }
    }
}

violinsectionb = {
    \startOctVA
    \repeat volta 2 {
        d'''8 r8 a''8 r8 |
        f'''8 r8 a''8 r8 |
        d'''2 |
        r8 d'''8\upbow e'''8 f'''8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 cis'''8 bes''8 |
        a''2 ~ |
        a''2 |
        a''8 ( cis'''8 ) cis'''8 cis'''8 |
        cis'''8 ( bes''16 cis'''16 ) bes''8 a''8 |
        a''8 d'''8 d'''8 d'''8 |
        d'''2 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 e'''8 f'''8 |
    }
    \alternative {
        { d'''2 | r8 a''8 b''8 cis'''8 | } { d'''2 ~ | d'''8 r8 c'''4-> | }
    }
    \stopOctVA

    \repeat volta 2 {
        \grace { s8. } f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        f''8-> ( a''8 ) a''8-. a''8-. |
        a''8 g''16 a''16 g''8-\trill ( f''8 ) |
        a''8-.-1 r8 bes''8-. r8 |
        c'''8 bes''8 a''8 bes''8 |
        g''2-2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        e''8-> ( g''8 ) g''8 g''8 |
        g''8 ( f''16 g''16 ) f''8 e''8 |
        g''4 a''4 |
        g''8 f''8 e''8 g''8 |
    }
    \alternative {
        { f''2 | c'''8 bes''8-2 a''8 g''8-2 | }
        {
            f''2 \( |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) \) } \tuplet 3/2 { g''8 ( f''8 e''8 ) }  |
        }
    }
}

violincoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

violinnotes = {
    \key d \minor
    \time 2/4
    << {
        \stemNeutral
        \violinsectiona
        \violinsectionb
    } \\ {
        \repeat volta 2 {
            s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
            s2 | s2 | s2 | s2 | s2 | s2 |
        }
        \alternative { { s2 | s2 | } { s2 | s4 \< s4 | } }
        \repeat volta 2 {
            s2 | s2 \! | s2 | s2 | s2 | s2 | s2 | s2 |
            s2 | s2 | s2 | s2 | s2 | s2 |
        }
        \alternative { { s2 | s2 | } { s2 | s2 } }
    } >>
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 a''8 r8 |
    d''2-\fermata |
}

violinnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb
    \violinsectionaa
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = { \bassline }

bassnotesmidi = { \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectionaa = {
    < f' a' d'' >2\ff ~ |
    d''8 g''8 f''8 e''8 |
    < d'' f'' >2 ~ |
    < d'' f'' >8 \acciaccatura { f''16 [ g''16 ] } f''8 e''8 d''8 |
    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
    < bes' d'' g'' >2 ~ |
    < bes' d'' g'' >8 g''8 f''8 e''8 |
    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\trill f''8 g''8-\trill e''8 |
    f''8-\trill d''8 e''8-\trill < a' cis'' >8 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        < f' a' d'' >2\ff ~ |
        d''8 g''8 f''8 e''8 |
        < d'' f'' >2 ~ |
        < d'' f'' >8 \acciaccatura { f''16 [ g''16 ] } f''8 e''8 d''8 |
        d''2 ~ |
        d''8 bes''8 a''8 g''8 |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >8 g''8 f''8 e''8 |
        f''4. a''8 |
        c'''8 bes''8 a''8 g''8 |
        f''8 g''8 f''8 e''8 |
        d''8 e''8 f''8 g''8 |
        a''8-\trill f''8 g''8-\trill e''8 |
        f''8-\trill d''8 e''8-\trill < a' cis'' >8 |
    }
    \alternative {
        {
            < f' a' d'' >4. < d'' f'' >8 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
        }
        { < f' a' d'' >2 ~ | < f' a' d'' >8 a'8 ( b'8 cis''8 ) | }
    }
}

pianorightuppersectionb = {
    \startOctVA
    \repeat volta 2 {
        < f'' d''' >8 r8 < f'' a'' >8 r8 |
        < a'' f''' >8 r8 < f'' a'' >8 r8 |
        < f'' a'' d''' >2 ~ |
        < f'' a'' d''' >8 d'''8 e'''8 f'''8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 cis'''8 bes''8 |
        < cis'' e'' a'' >2 ~ |
        < cis'' e'' a'' >4. r8 |
        a''8 cis'''8 cis'''8 cis'''8 |
        cis'''8 bes''16 cis'''16 bes''8 a''8 |
        a''8 < f'' d''' >8 < f'' d''' >8 < f'' d''' >8 |
        < f'' d''' >4. r8 |
        g'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 e'''8 f'''8 |
    }
    \alternative {
        { < f'' a'' d''' >2 ~ | < f'' a'' d''' >8-. a''8 b''8 cis'''8 | }
        { < f'' a'' d''' >2 ~ | < f'' a'' d''' >8 r8 < e'' b'' c''' >4 | }
    }
    \stopOctVA

    \repeat volta 2 {
        \grace { s8. } f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        < f'' a'' >8-. r8 < g'' bes'' >8-. r8 |
        < a'' c''' >8 bes''8 < f'' a'' >8 bes''8 |
        < e'' g'' >2 |
        \tuplet 3/2 { bes''8 ( a''8 g''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        < bes' e'' g'' >4 < c'' e'' a'' >4 |
        \acciaccatura { g''16 [ a''16 ] } g''8 f''8 < bes' e' >8 g''8 |
    }
    \alternative {
        {
            < a' f'' >8 \< f'''8-4 e'''8-3 d'''8-2 |
            c'''8-1 bes''8-4 a''8-3 g''8-2 \! |
        }
        {
            < a' c'' f'' >2 |
            \tuplet 3/2 { a''8 ( g''8 f''8 ) } \tuplet 3/2 { g''8 ( f''8 e''8 ) } |
        }
    }
}

pianorightuppercoda = {
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 < cis'' g'' a'' >8 r8 |
    < f' a' d'' >2-\fermata |
}

pianorightuppernotes = {
    \key d \minor
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a''16 [ b''16 cis'''16 ] } d'''8 r8 < cis'' g'' a'' >8 r8 |
    < f' a' d'' >2-\fermata |
}

%-------------------------------------------------

pianorightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftuppersectionaa = {
    d8 d'8 a8 d'8 |
    d8 d'8 < g-1 bes-2 >8 d'8 |
    d8 d'8 a8 d'8 |
    d8 d'8 a8 d'8 |

    d8 d'8 a8 d'8 |
    fis8 d'8 d8 d'8 |
    g8 d'8 bes8 g8 |
    c8 c'8 g8 c'8 |
    f8 < a c' >8 c8 < a c' >8 |
    e8 < g c' >8 c8 < g c' >8 |
    cis8 < g a >8 a,8 < g a >8 |
    d8 < f a >8 a8 < f a >8 |
    d8 < f a >8 g,8 g8 |
    a,8 a8 a,8 a8 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 < g-1 bes-2 >8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        d8 d'8 a8 d'8 |
        fis8 d'8 d8 d'8 |
        g8 d'8 bes8 g8 |
        c8 c'8 g8 c'8 |

        f8 < a c' >8 c8 < a c' >8 |
        e8 < g c' >8 c8 < g c' >8 |
        cis8 < g a >8 a,8 < g a >8 |
        d8 < f a >8 a8 < f a >8 |

        d8 < f a >8 g,8 g8 |
        a,8 a8 a,8 a8 |
    }
    \alternative {
        { d8 a8 f8 d8 | < a, a >8 r8 < a, cis g >8 r8 | }
        { d8 ( d'8 a8 f8 | d8 ) a,8 ( b,8 cis8 ) | }
    }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |

        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |

        g,8 g8 d8 g8 |
        a,8 a8 g8 a8 |
    }
    \alternative {
        { d8 ( d'8 a8 f8 | d8-. ) a,8 b,8 cis8 | }
        { d8 d'8 a8 f8 | d8 r8 < c c' >4-> | }
    }

    \repeat volta 2 {
        \grace { s8. } f,8-> f8 c8 f8 |
        f,8 f8 c8 f8 |
        f,8-> f8 c8 f8 |
        f,8 f8 c8 f8 |
        f,8 f8 c8 f8 |
        f,8 f8 c8 f8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8-> c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8-> c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
    }
    \alternative {
        { < f a c' >8 r8 r4 | < c e bes >2-> | }
        { f8 c'8 a8 g8 | < f a c' >8 r8 < e a cis' >4-> | }
    }
}

pianoleftuppercoda = {
    \grace { s8. } < d f a >8 r8 < a, a >8 r8 | < d, d >2-\fermata |
}

pianoleftuppernotes = {
    \key d \minor
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \stopStaff s2 \startStaff
    \grace { s8. } < d f a >8 r8 < a, a >8 r8 | < d, d >2-\fermata |
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionaa
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionaa
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppersectionaa = {
    < f' a' d'' >2\ff ~ |
    < f' a' d'' >8 g''8 f''8 e''8 |
    < a' d'' f'' >2 ~ |
    < a' d'' f'' >8 f''8 e''8 d''8 |
    < fis' c'' d'' >2 ~ |
    < fis' c'' d'' >8 bes''8 a''8 g''8 |
    < bes' d'' g'' >2 ~ |
    < bes' d'' g'' >8 g''8 f''8 e''8 |
    f''4. a''8 |
    c'''8 bes''8 a''8 g''8 |
    f''8 g''8 f''8 e''8 |
    d''8 e''8 f''8 g''8 |
    a''8-\prall ( f''8 ) g''8-\prall ( e''8 ) |
    f''8-\prall ( d''8 ) e''8-\prall ( cis''8 ) |
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        < f' a' d'' >2\ff ~ |
        < f' a' d'' >8 g''8 f''8 e''8 |
        < a' d'' f'' >2 ~ |
        < a' d'' f'' >8 f''8 e''8 d''8 |
        < fis' c'' d'' >2 ~ |
        < fis' c'' d'' >8 bes''8 a''8 g''8 |
        < bes' d'' g'' >2 ~ |
        < bes' d'' g'' >8 g''8 f''8 e''8 |
        f''4. a''8 |
        c'''8 bes''8 a''8 g''8 |
        f''8 g''8 f''8 e''8 |
        d''8 e''8 f''8 g''8 |
        a''8-\prall ( f''8 ) g''8-\prall ( e''8 ) |
        f''8-\prall ( d''8 ) e''8-\prall ( cis''8 ) |
    }
    \alternative {
        {
            d''4. f''8 |
            \tuplet 3/2 { a''8 g''8 f''8 } \tuplet 3/2 { f''8 e''8 d''8 } |
        }
        { d''2 ~ | d''8 a'8 < gis' b' >8 < g' cis'' >8 | }
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        < f' d'' >8 r8 < f' a' >8 r8 |
        < a' f'' >8 r8 < g' a' >8 r8 |
        < f' d'' >2 ~ |
        < f' d'' >8 < f' d'' >8 < g' e'' >8 < a' f'' >8 |
        < bes' g'' >8 < a' f'' >8 < g' e' >8 < f' d' >8 |
        < e' cis'' >8 < f' d'' >8 < e' cis'' >8 < d' bes' >8 |
        < cis' a' >2 ~ |
        < cis' a' >4. r8 |
        a'8 cis''8 cis''8 cis''8 |
        cis''8 bes'16 cis''16 bes'8 a'8 |
        a'8 < f' d'' >8 < f' d'' >8 < f' d'' >8 |
        < f' d'' >4. r8 |
        < bes' g'' >8 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
        < e' cis'' >8 < f' d'' >8 < g' e'' >8 < a' f'' >8 |
    }
    \alternative {
        { < f' d'' >2 ~ | < f' d'' >8 a'8 < gis' b' >8 < g' cis' >8 | }
        {
            <<
                { d''2 ~ | d''8 r8 < e' b' c'' >4-> | } \\
                { f'4 a'8 ( g'8  | f'8 ) s8 s4 | }
            >>
        }
    }

    \repeat volta 2 {
        \grace { s8. } f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |
        f''8-> a''8 a''8 a''8 |
        a''8 g''16 a''16 g''8 f''8 |

        < f'' a'' >8-. r8 < g'' bes'' >8-. r8 |
        < a'' c''' >8 < g'' bes'' >8 < f'' a'' >8 < g'' bes'' >8
        << { g''2 } \\ { e''4. ( f''8 ) } >> |
        \tuplet 3/2 { < e'' bes'' >8 a''8 g''8 } \tuplet 3/2 { g''8 f''8 e''8 } |

        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |
        e''8-> g''8 g''8 g''8 |
        g''8 f''16 g''16 f''8 e''8 |

        < bes' g'' >4 < c'' a'' >4 |
        < bes' g'' >8 < a' f'' >8 < g' e'' >8 < bes' g'' >8 |
    }
    \alternative {
        { < a' f'' >8 f'''8 \< e'''8 d'''8 | c'''8 bes''8 a''8 g''8 \! | }
        {
            < a' c'' f'' >2 |
            <<
                { \tuplet 3/2 { a''8 g''8 f''8 } \tuplet 3/2 { g''8 f''8 e''8 } } \\
                { < a' cis' >8 r8 < g' cis'' >4-> }
            >> |
        }
    }
}

accordionrightuppercoda = {
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8-.-> r8 < a' cis'' g'' a'' >8-.-> r8 |
    < f' a' d'' >2->-\fermata |
}

accordionrightuppernotes = {
    \key d \minor
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \stopStaff s2 \startStaff
    \acciaccatura { a'16 [ b'16 cis''16 ] } d''8-.-> r8 < a' cis'' g'' a'' >8-.-> r8 |
    < f' a' d'' >2->-\fermata |
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftuppersectionaa = {
    d,8 d'8^"m" a,8 d'8 |
    d,8 g8^"m" d,8 g8 |
    d,8 d'8^"m" a,8 d'8 |
    d,8 d'8 a,8 d'8 |
    d,8 d'8^"7" a,8 d'8 |
    d,8 g8^"m" d,8 g8 |
    g,8 g8 d,8 g8 |
    g,8 g8 c8 c'8^"7" |
    f,8 f8^"M" c8 f8 |
    g,8 c'8^"7" c8 c'8 |
    cis8_- a8^"7" a,8 a8 |
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"7" |
    d,8 d'8^"m" a,8 a8^"7" |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        d,8 d'8^"m" a,8 d'8 |
        d,8 g8^"m" d,8 g8 |
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        d,8 d'8^"7" a,8 d'8 |
        d,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8 g8 c8 c'8^"7" |
        f,8 f8^"M" c8 f8 |
        g,8 c'8^"7" c8 c'8 |
        cis8_- a8^"7" a,8 a8 |
        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"m" a,8 a8^"7" |
        d,8 d'8^"m" a,8 a8^"7" |
    }
    \alternative {
        { d,8 d'8^"m" d,8 d'8 | < a, a >8^"7" r8 < a, a >8 r8 | }
        { d,8 d'8^"m" a,8 d'8 | d,8 r8 r4 | }
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 a8^"7" |
        d,8 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        g,8^"B.S."_4 d,8_3 g,8 d,8 |
        a,8_2 d,8_4 a,8_3 e,8_2 |
        a,8 a8^"M" e,8 a8 |
        a,8 a8 e,8 a8 |
        a,8 a8 e,8 a8 |
        a,8^"B.S."_3 e,8_2 g,8_4 a,8_2 |
        d,8_3 d'8^"m" a,8 d'8 |
        d,8 d'8 a,8 d'8 |
        g,8^"B.S."_4 d,8_3 g,8 d,8 |
        a,8_2 d,8_4 a,8_3 a8^"7" |
    }
    \alternative {
        { d,8 d'8^"m" a,8 d'8 | d,8 r8 r4 | }
        { d,8 d'8^"m" d,8 g8^"m" | < d, d' >8^"m" r8 < c c' >4^"7"_> | }
    }

    \repeat volta 2 {
        \grace { s8. } f,8 f8^"M" f,8 f8 |
        c8 c'8^"7" f,8 f8^"M" |
        f,8 f8 f,8 f8 |
        c8 c'8^"7" f,8 f8^"M" |
        f,8 f8^"M" c8 c'8^"7" |
        f,8^"B.S."_4 c8_3 f,8_4 e,8_3_- |
        c8_3 c'8^"7" g,8 g8^"m" |
        c8 c'8^"7" g,8 c'8 |
        c8 c'8 e,8_- c'8 |
        c8^"B.S." f,8 c8 c'8^"7" |
        c8 c'8 e,8_- c'8 |
        c8^"B.S." f,8 c8 c'8^"7" |
        e,8_- c'8^"7" c8 c'8 |
        e,8_3_-^"B.S." f,8_4 c8_3 c'8^"7" |
    }
    \alternative {
        { < f, f >8^"M" r8 r4 | < c c' >2^"7"_> | }
        { f,8 f8^"M" f8 f,8^"B.S." | e,8_- r8 < a, a >4^"7"_> | }
    }
}

accordionleftuppercoda = {
    \grace { s8. } < d, d' >8_._>^"m" r8 < a, a >8^"7"_._> r8 | < d, d' >2^"m"^>_\fermata |
}

accordionleftuppernotes = {
    \key d \minor
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \stopStaff s2 \startStaff
    \grace { s8. } < d, d' >8_._>^"m" r8 < a, a >8^"7"_._> r8 | < d, d' >2^"m"^>_\fermata |
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodyintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionaa
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \harmonyintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionaa
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectionaa = \drummode {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

drumshighcoda = \drummode { \grace { s8. } s2 | s2 | }

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \harmonyintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionaa
    \drumshighcoda
}

drumslowsectionaa = \drummode {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }

    \repeat volta 2 {
        \grace { s8. } s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 } }
}

drumslowcoda = \drummode { \grace { s8. } s2 | s2 | }

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \stopStaff s2 \startStaff
    \grace { s8. } s2 | s2 |
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \harmonyintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionaa
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | g2:min | d2:min | d2:min | d2:7 | d2:7 |
}

previewnotes = {
    \key d \minor
    \time 2/4
    \bar ".|:"
    d''2\ff ~ |
    d''8 g''8 f''8 e''8 |
    f''2 ~ |
    f''8 f''8 e''8 d''8 |
    d''2 ~ |
    d''8 bes''8 a''8 g''8 |
}

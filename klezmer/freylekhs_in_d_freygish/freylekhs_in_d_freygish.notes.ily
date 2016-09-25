\version "2.18.2"

bandmintro = {
    s2
}

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    }
    \alternative {
        {  s2 | \breakAsxt } { s2 | }
    }
    \bar "||"
    \breakA
}

bandmsectionb = {
    \markB \positionB
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 |
    \bar "||"
    \breakB
}

bandmsectionc = {
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt s2 | \breakCfft s2 |
    \breakC
}

bandmsectiond = {
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakDeit
        s2 | \breakDnin s2 | \breakDten s2 | \breakDelv s2 | \breakDtwl
        s2 | \breakDtht s2 | \breakDfrt s2 | \breakDfft
    }
    \alternative {
        {  s2 | \breakAsxt } { s2 \markDSsimple \positionDS | }
    }
    \bar "||"
}

bandmmain = {
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmmain
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandmintro
    \bandmmain
    \bandmmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = {
    s4 s8 a8 |
}

voiceonesectiona = {
    \repeat volta 2 {
        d'8 ees'8 d'8 ees'8 |
        fis'8 g'8 fis'8 ees'8 |
        g'8 fis'4. ~ |
        fis'4 r8 fis'8 |

        fis'8 g'8 fis'8 g'8 |
        a'8 bes'8 a'8 g'8 |
        bes'8 a'4. ~ |
        a'4 r8 d'8 |

        g'8 fis'8 g'8 a'8 |
        bes'8 a'8 bes'8 b'8 |
        c''8 c'8 ees'8 g'8 |
        c''4 \tuplet 3/2 { c'8 ees'8 g'8 } |

        \tuplet 3/2 { c''8 g'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
        \tuplet 3/2 { a'8 fis'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
        \tuplet 3/2 { fis'8 g'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
    }
    \alternative {
        {  d'4. a8 | } { d'8 d'8 g'8 bes'8 | }
    }
}

voiceonesectionb = {
    cis''8 d''4. ~ |
    d''2 |
    cis''8 d''8 d''8 d''8 |
    d''2 |

    cis''8 d''8 cis''8 bes'8 |
    a'8 g'8 fis'8 g'8 |
    a'2 |
    r8 c'8 f'8 a'8 |

    b'8 c''4. ~ |
    c''2 |
    b'8 c''8 c''8 c''8 |
    c''4. d''8 |

    ees''8 d''8 c''8 bes'8 |
    c''8 bes'8 a'8 g'8 |
    a'4 \grace cis''8 d''4 |
    \grace cis''8 d''4 \grace cis''8 d''4 |
}

voiceonesectionc = {
    d'8 ees'8 d'8 ees'8 |
    fis'8 g'8 fis'8 ees'8 |
    g'8 fis'4. ~ |
    fis'4 r8 fis'8 |

    fis'8 g'8 fis'8 g'8 |
    a'8 bes'8 a'8 g'8 |
    bes'8 a'4. ~ |
    a'4 r8 d'8 |

    g'8 fis'8 g'8 a'8 |
    bes'8 a'8 bes'8 b'8 |
    c''8 c'8 ees'8 g'8 |
    c''4 \tuplet 3/2 { c'8 ees'8 g'8 } |

    \tuplet 3/2 { c''8 g'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
    \tuplet 3/2 { a'8 fis'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
    \tuplet 3/2 { fis'8 g'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
    d'8 d''8 a'8 g'8 |
}

voiceonesectiond = {
    \repeat volta 2 {
        fis'8 g'8 a'4 ~ |
        a'8 g'8 fis'8 ees'8 |
        fis'8. ees'16 d'4 |
        r8 d''8 a'8 g'8 |

        fis'8 g'8 a'8 bes'8 |
        c''8 a'16 c''16 \tuplet 3/2 { bes'8 a'8 g'8 } |
        a'2 |
        r8 d''8 a'8 g'8 |

        fis'8 g'8 a'4 ~ |
        a'8 fis'16 a'16 \tuplet 3/2 { g'8 fis'8 ees'8 } |
        d'8 ees'8 c'4 |
        r8 c'8 ees'8 g'8 |

        \tuplet 3/2 { c''8 g'8 c''8 } \tuplet 3/2 { bes'8 a'8 g'8 } |
        \tuplet 3/2 { a'8 fis'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
        \tuplet 3/2 { fis'8 g'8 a'8 } \tuplet 3/2 { g'8 fis'8 ees'8 } |
    }
    \alternative {
        { d'8 d''8 a'8 g'8 | } { d'4 r8 a8 | }
    }
}

voiceonemain = {
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
    \voiceonesectiond
}

voiceone = {
    \key bes \major
    \time 2/4
    \voiceoneintro
    \voiceonemain
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \preintro
    \voiceoneintro
    \voiceonemain
    \voiceonemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    s2
}


voicetwosectiona = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

voicetwosectionb = {
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
    s2 |
    s2 |
}

voicetwosectionc = {
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
    s2 |
    s2 |
}

voicetwosectiond = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

voicetwomain = {
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
    \voicetwosectiond
}

voicetwo = {
    \key bes \major
    \time 2/4
    \voicetwointro
    \voicetwomain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    s4 s8 r8 |
}

tenorharmonysectiona = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

tenorharmonysectionb = {
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
    s2 |
    s2 |
}

tenorharmonysectionc = {
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
    s2 |
    s2 |
}

tenorharmonysectiond = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

tenorharmonymain = {
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
}

tenorharmony = {
    \key bes \major
    \time 2/4
    \tenorharmonyintro
    \tenorharmonymain
}

tenorharmonymidi = {
    \preintro
    \tenorharmonyintro
    \tenorharmonymain
    \tenorharmonymain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    s2 |
}

countersectiona = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 } { s2 | s2 | } }
}

countersectionca = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 |
}

countersectioncb = {
    s2 |
}

countersectionc = {
    \repeat volta 2 {
        \countersectionca
        \countersectioncb
    }
}

countersectiond = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

countermain = {
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiond
}

countercoda = {
    s2 | s2 |
}

counter = {
    \key bes \major
    \time 2/4
    \counterintro
    \countermain
}

countermidi = {
    \preintro
    \counterintro
    \countermain
    \countermain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    s4 s8 r8
}

basslinesectiona = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

basslinesectionb = {
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
    s2 |
    s2 |
}

basslinesectionc = {
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
    s2 |
    s2 |
}

basslinesectiond = {
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
        s2 |
    }
    \alternative {
        {  s2 | } { s2 | }
    }
}

basslinemain = {
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
}

bassline = {
    \time 2/4
    \key d \minor
    \basslineintro
    \basslinemain
    \basslinemain
}

basslinemidi = {
    \preintro
    \basslineintro
    \basslinemain
    \basslinemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes, c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \melodynotes
}

tenorsaxnotesmidi = {
    \melodynotes
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s2 |
}

chordlettersmain = \chordmode {
    \repeat volta 2 {
        d2*8 |
        g2:min |
        g4.:min g8:7 |
        c2*3:min |
        d4 c4:min |
        d4 c4:min |
    }
    \alternative {
        {  d2 | } { d2:7 | }
    }

    g2*6:min |
    d2*2 |
    f2*4 |
    f2:7 |
    c2:min |
    d2*2 |

    d2*8 |
    g2:min |
    g4.:min g8:7 |
    c2*3:min |
    d4 c4:min |
    d4 c4:min |
    d2 |

    \repeat volta 2 {
        d2*5 |
        c2:min |
        d2*4 |
        c2*3:min |
        d4 c4:min |
        d4 c4:min |
    }
    \alternative {
        {  d2 | } { d2 | }
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordlettersmain
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

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 2/4
    \key d \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 2/4
    \key d \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown

}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | \bar ".|:" d2*4 |
}

previewnotes = {
    \key bes \major
    \time 2/4
    s4 s8 a8 |
    \bar ".|:"
    d'8 ees'8 d'8 ees'8 | fis'8 g'8 fis'8 ees'8 |
    g'8 fis'4. ~ | fis'4 r8 fis'8 |
}

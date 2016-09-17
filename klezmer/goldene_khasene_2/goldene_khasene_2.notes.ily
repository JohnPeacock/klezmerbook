\version "2.18.0"

bandmintro = {
    \partial 4. s4.
}

metronomeintro = {
    s1
}

bandmsectiona = {
    \markSA \positionSA
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev
    }
    \alternative {
        {  s1 | \breakAeit } { s1 | }
    }
    \bar ".|:-||"
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 |
    }
    \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
        s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 | \breakCeit
        s1 | \breakCnin s1 | \breakCten s1 | \breakCelv
    }
    \alternative {
        {  s1 | \breakCtwl } { s1 | }
    }
    \bar "|."
}

bandmmain = {
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmmain
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \metronomeintro
    \bandmmain
    \bandmmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = {
    \partial 4. g8 c'8 [ ees'8 ] |
}

voicemidiintro = {
    s2 s8 g8 c'8 [ ees'8 ] |
}

voiceonesectiona = {
    \repeat volta 2 {
        g'4 c''4 b'8 [ c''8 ] g'8 [ aes'8 ] |
        f'2. fis'4 |
        g'2 ~ g'8 [ f'8 ] ees'8 [ f'8 ] |
        g'2 ~ g'8 [ g8 ] c'8 [ ees'8 ] |
        g'4 c''4 b'8 [ c''8 ] g'8 [ aes'8 ] |
        f'2. fis'4 |
        g'4 ees'4 f'8 g'16 f'16 ees'8 d'8 |
    }
    \alternative { { c'2 r8 g8 c'8 [ ees'8 ] } { c'2 r4 g'4 } }
}

voiceonesectionb = {
    \repeat volta 2 {
        ees''4 d''8 c''8 ees''4 d'8 c''8 |
        g'2. g'4 |
        f'4 f'4 f'8. g'16 \tuplet 3/2 { aes'8 g'8 f'8 } |
        g'2. c''4 |
        ees''4 d''8 c''8 ees''4 d''8 c''8 |
        aes'2 ~ aes'8 f'8 g'8 aes'8 |
        g'8 [ f'8 ] f'8 [ ees'8 ] ees'8 [ d'8 ] d'8 [ c'8 ] |
        c'2. g'4 |
    }
}

voiceonesectionc = {
    \repeat volta 2 {
        ees''16 [ d''16 c''8 ] ees''16 [ d''16 c''8 ] c''8 [ c''8 ] c''4 |
        ees''16 [ d''16 c''8 ] ees''16 [ d''16 c''8 ] f'8 [ f'8 ] f'4 |
        aes'4 aes'4. g'8 bes'8 aes'8 |
        g'1 |
        f'8 g'8 aes'4 d'8 ees'8 f'4 |
        ees'8 f'8 g'4 c'8 [ d'8 ] ees'8 [ g'8 ] |
        g'8 [ f'8 ] f'8 [ ees'8 ] ees'8 [ d'8 ] d'8 [ c'8 ] |
        ees'1 |
        f'8 g'8 aes'4 d'8 ees'8 f'4 |
        ees'8 f'8 g'4 c'8 [ d'8 ] ees'8 [ g'8 ] |
        g'8 [ f'8 ] f'8 [ ees'8 ] ees'8 [ d'8 ] d'8 [ c'8 ] |
     }
     \alternative {
        { ees'2. g'4 | }
        { ees'2 r8 g8 c'8 [ ees'8 ] | }
     }
}

voiceonemain = {
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

voiceone = {
    \key c \minor
    \time 4/4
    \voiceoneintro
    \voiceonemain
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \preintro
    \voicemidiintro
    \voiceonemain
    \voiceonemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \partial 4. s4.
}

voicetwomidiintro = {
    s1
}

voicetwosectiona = {
}

voicetwosectionb = {
}

voicetwosectionc = {
}

voicetwomain = {
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
}

voicetwo = {
    \key c \minor
    \time 4/4
    \voicetwointro
    \voicetwomain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    \partial 4. s4.
}

tenorharmonymidiintro = {
    s1 |
}

tenorharmonysectiona = {
}

tenorharmonysectionb = {
}

tenorharmonysectionc = {
}

tenorharmonymain = {
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

tenorharmony = {
    \key c \minor
    \time 4/4
    \tenorharmonyintro
    \tenorharmonymain
}

tenorharmonymidi = {
    \preintro
    \tenorharmonymidiintro
    \tenorharmonymain
    \tenorharmonymain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    \partial 4. s4.
}

countermidiintro = {
    s1 |
}

countersectiona = {
}

countersectionb = {
}

countersectionc = {
}

countermain = {
    \countersectiona
    \countersectionb
    \countersectionc
}

countercoda = {
    s2 | s2 |
}

counter = {
    \key c \minor
    \time 4/4
    \counterintro
    \countermain
}

countermidi = {
    \preintro
    \countermidiintro
    \countermain
    \countermain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \partial 4. s4.
}

basslinemidiintro = {
    s1 |
}

basslinesectiona = {
}

basslinesectionb = {
}

basslinesectionc = {
}

basslinemain = {
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

bassline = {
    \time 4/4
    \key d \minor
    \basslineintro
    \basslinemain
    \basslinemain
}

basslinemidi = {
    \preintro
    \basslinemidiintro
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

trombonenotes = \transpose c c, {
    \melodynotes
}

trombonenotesmidi = \transpose c c, {
    \melodynotesmidi
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
    \partial 4. s4.
}

chordlettersmain = \transpose d c { \chordmode {
    \repeat volta 2 {
        d1:min g1:min a1 d1:min |
	d1:min g1:min a2 a2:7 |
    }
    \alternative { { d1:min } { d1:min } }
    \repeat volta 2 {
        d1*2:min g1:min d1:min |
        d1:min g1:min a1 d1:min
    }
    \repeat volta 2 {
        d1:min d2:min g2:min g1:min d1:min |
        g1:min d1:min a1 d1:min |
        g1:min d1:min a1
    }
    \alternative { { d1:min } { d1:min } }
} }

chordletters = \chordmode {
    \time 4/4
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

bassnotes = \transpose c c, {
    \melodynotes
}

bassnotesmidi = \transpose c c, {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 4/4
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
    \time 4/4
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
    \time 4/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 4/4
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
    s1 c1:min f1:min g1 c1:min
}

previewnotes = {
    \key c \minor
    \time 4/4
    s2 s8 g8 c'8 [ ees'8 ] |
    \bar ".|:"
    g'4 c''4 b'8 [ c''8 ] g'8 [ aes'8 ] |
    f'2. fis'4 |
    g'2 ~ g'8 [ f'8 ] ees'8 [ f'8 ] |
    g'2 ~ g'8 [ g8 ] c'8 [ ees'8 ] |
}

\version "2.18.0"

bandmintro = {
    s2
}

bandmmain = {
    \markSA \positionSA
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    }
    \alternative { { s2 | \breakAsxt } { s2 | } }
    \breakA
    \bar ".|:-||"
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft
    }
    \alternative { { s2 \breakBsxt } { s2 | } }
    \breakB
    \bar ".|:-||"
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
        s2 | \breakCtht s2 | \breakCfrt s2 | \breakCfft s2 | \breakCsxt
        s2 | \breakCsvt s2 | \breakCett s2 | \breakCnnt
    }
    \alternative {
        { s2 | }
        { s8 \bar "|." \markFN \positionFN s4. | }
    }
    \markDSsimple \positionDS
}

bandmNV = {
    \tempo \tempostring
    \time 2/4
    \bandmintro
    \bandmmain
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 160
    \bandmintro
    \bandmmain
    \tempo 4 = 170
    \bandmmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = \transpose c bes, {
    \key d \minor
    s8 a'8 gis'8 a'8 |
}

voiceoneAB = \transpose c bes, {
    \repeat volta 2 {
        bes'4 a'4 |
        g'4 f'4 |
        e'2 |
        r8 a8 cis'8 e'8 |

        g'4. f'8 |
        \tuplet 3/2 { a'8 ( gis'8 f'8 ) } \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
        e'8 f'4. |
        r8 a'8 gis'8 a'8 |

        f''4. e''8 |
        d''4. c''8 |
        bes'4. a'8 |
        g'4. f'8 |
        gis'8 a'4 gis'8 |
        \tuplet 3/2 { a'8 ( gis'8 f'8 ) } \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
        d'2 |
    }
    \alternative { { r8 a'8 gis'8 a'8 | } { r8 a'8 bes'8 a'8 | } }
    \repeat volta 2 {
        cis''2 |
        r8 a'8 bes'8 a'8 |
        d''2 |
        r8 a8 cis'8 e'8 |

        g'4. gis'8 |
        \tuplet 3/2 { a'8 ( gis'8 f'8 ) } \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
        a'2 |
        r8 a'8 bes'8 a'8 |

        cis''2 |
        r8 a'8 bes'8 a'8 |
        d''2 |
        r8 a'8 g'8 f'8 |

        g'4. gis'8 |
        \tuplet 3/2 { a'8 ( gis'8 f'8 ) } \tuplet 3/2 { f'8 ( e'8 d'8 ) } |
        d'2 |
    }
    \alternative { { r8 a'8 bes'8 a'8 } { r16 a'16 ( gis'16 a'16 bes'16 b'16 c''16 cis''16 ) | } }
}
voiceoneCa = \transpose c bes, {
    \key d \major
    d''4 r8 fis'8 |
    a'4 r8 g'8 |
    \tuplet 3/2 { fis'8 ( g'8 a'8 ) } \tuplet 3/2 { g'8 ( fis'8 e'8 ) } |
    d'8 a'8 aes'8 g'8 |

    fis'8. a'16 b'8 a'8 |
    d''8 fis'8 a'8 d'8 |
    fis'8 a8 d'8 e'8 |
    fis'8 g'16 fis'16 e'8 d'8 |

    e'8. fis'16 g'8 a'8 |
    fis'8 g'16 fis'16 e'8 d'8 |
    gis'8 a'4. |
    r8 a'8 aes'8 g'8 |

    fis'8 a'8 fis''8 f''8 |
    e''8 ees''8 d''8 cis''8 |
    c''8 b'8 bes'8 a'8 |
    g'8. fis'16 e'8 d'8 |

    e'8. fis'16 g'8 b'8 |
    a'8 g'8 fis'8 e'8 |
    d'2 |
}

voiceoneCba = \transpose c bes, {
    r16 a'16 ( gis'16 a'16 bes'16 b'16 c''16 cis''16 ) | 
}

voiceoneCbb = \transpose c bes, {
    r8 a'8 gis'8 a'8 |
}

voiceoneCfine = \transpose c bes, {
    r8 s8 s4 |
}

voiceonemain = {
    \voiceoneAB
    \repeat volta 2 {
        \voiceoneCa
    }
    \alternative {
        { \voiceoneCba }
        { \voiceoneCbb }
    }
}

voiceone = {
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
    \voiceoneAB
    \voiceoneCa
    \voiceoneCba
    \voiceoneCa
    \voiceoneCfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    \key c \minor
    s2 |
}

tenorharmonyAB = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 } { s2 | } }
}

tenorharmonyCa = {
    \key c \major
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 |
}

tenorharmonyCba = {
    s2 |
}

tenorharmonyCbb = {
    s2 |
}

tenorharmonyCfine = {
    s8 s4. |
}

tenorharmonymain = {
    \tenorharmonyAB
    \repeat volta 2 {
        \tenorharmonyCa
    }
    \alternative {
        { \tenorharmonyCba }
        { \tenorharmonyCbb }
    }
}

tenorharmony = {
    \time 2/4
    \tenorharmonyintro
    \tenorharmonymain
}

tenorharmonymidi = {
    \preintro
    \tenorharmonyintro
    \tenorharmonymain
    \tenorharmonyAB
    \tenorharmonyCa
    \tenorharmonyCba
    \tenorharmonyCa
    \tenorharmonyCfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    s2 |
}

counterAB = {
    \key c \minor
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 | } { s2 | } }
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative { { s2 } { s2 | } }
}

counterCa = {
    \key c \major
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 |
}

counterCba = {
    s2 |
}

counterCbb = {
    s2 |
}

counterCfine = {
    s8 s4. |
}

countermain = {
    \counterAB
    \repeat volta 2 {
        \counterCa
    }
    \alternative {
        { \counterCba }
        { \counterCbb }
    }
}

counter = {
    \time 2/4
    \counterintro
    \countermain
}

countermidi = {
    \preintro
    \counterintro
    \countermain
    \counterAB
    \counterCa
    \counterCba
    \counterCa
    \counterCfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key c \minor
    s8 r8 r4 |
}

basslineAB = {
    \repeat volta 2 {
        c4 g,4 | c4 ees4 | g4 d4 | g4 d4 |
        g,4 aes,4 | a,4 b,4 | c4 g,4 | c4 g,4 |
        c4 d4 | ees4 f4 | g4 aes4 | c'4 f4 |
        c'4 g4 | c4 ees4 | c4 g4 |
    }
    \alternative { { c4 r4 | } { c4 r4 | } }
    \repeat volta 2 {
        g,4 b,4 | g,4 r4 | c4 f4 | c4 r4 |
        d4 g,4 | d4 g,4 | c4 g,4 | c4 r4 |
        g,4 b,4 | g,4 r4 | c4 g,4 | c4 g,4 |
        d4 a,4 | d4 g,4 | c4 g,4 |
    }
    \alternative { { c4 r4 } { c4 r4 | } }
}

basslineCa = {
    \key c \major
    r4 c8 c8 | r4 c8 c8 | g8 g8 g8 g8 | g4 r4 |
    c4 g,4 | c4 g4 | c4 g4 | c4 c4 |
    d4 d4 | d4 d4 | g4 d'4 | g4 d4 |
    c8 des8 d8 ees8 | e8 f8 ges8 g8 | aes8 a8 bes8 b8 | c'4 f4 |
    d4 a,4 | g,4 d4 | c4 g,4 |
}

basslineCba = {
    c4 r4 |
}

basslineCbb = {
    c4 r4 |
}

basslineCfine = {
    r8 s4. |
}

basslinemain = {
    \basslineAB
    \repeat volta 2 {
        \basslineCa
    }
    \alternative {
        { \basslineCba }
        { \basslineCbb }
    }
}

bassline = {
    \time 2/4
    \basslineintro
    \basslinemain
}

basslinemidi = {
    \preintro
    \basslineintro
    \basslinemain
    \basslineAB
    \basslineCa
    \basslineCba
    \basslineCa
    \basslineCfine
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c'' {
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
    \tenorharmony
}

tenorsaxnotesmidi = \transpose bes c' {
    \tenorharmonymidi
}

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
        c2:min | c2:min | g2:7 | g2:7 |
        g2:7 | g2:7 | c2:min | c2:min |
        c2:min | c2:min | c2:7 | f2:min |
        g2:7 | g2:7 | c2:min |
    }
    \alternative { { c2:min | } { c2:min | } }
    \repeat volta 2 {
        g2:7 | g2:7 | c2:min | c2:min |
        g2:7 | g2:7 | c2:min | c2:min |
        g2:7 | g2:7 | c2:7 | c2:7 |
        d2:min7-5 | g2:7 | c2:min |
    }
    \alternative { { c2:min } { c2:min | } }
    \repeat volta 2 {
        c2 | c2 | g2:7 | g2:7 |
        c2 | c2 | c2 | c2 |
        d2:min | d2:min | g2 | g2 |
        c2 | c2 | f2:7 | f2:7 |
        d2:min | g2 | c2 |
    }
    \alternative {
        { c2 | }
        { c2 | }
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

guitarnotes = {
    \time 2/4
    \key c \minor
}

guitarnotesmidi = {
    \preintro
}

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
    \key c \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
}

pianoleftnotes = {
    \time 2/4
    \key c \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
}

drumslow = \drummode {
    \time 2/4
    \stemDown

}

drumslowmidi = \drummode {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | \bar ".|:" c2:min |
}

previewnotes = {
  \time 2/4
  \key c \minor

  \transpose c bes, {
    s8 a'8 gis'8 a'8 |
    \bar ".|:"
    bes'4 a'4 |
    g'4 f'4 |
    e'2 |
    r8 a8 cis'8 e'8 |
  }
}

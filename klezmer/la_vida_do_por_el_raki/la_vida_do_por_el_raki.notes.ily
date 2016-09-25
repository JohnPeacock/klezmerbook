\version "2.18.2"

bandmintro = {
    \tempo \tempostring
    s1 | \breakIN
}

bandmsectiona = {
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
        s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
        s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakAsxt
        s1 | \breakAsvt s1 | \breakAett s1 | \breakAnnt
        s2 \bar "||" \markFN \positionFN s2 |
    }
}

bandm = {
    \time 4/4
    \bandmintro
    \bandmsectiona
}

bandmNV = {
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 110
    \bandmintro
    \bandmsectiona
    \bandmsectiona
}

% ----------------------------------------

voiceoneintro = {
    \key d \major
    s2 s8 d'8 fis'8 g'8 |
}

voiceonesectiona = {
    \repeat volta 2 {
        a'4. b'8 g'4. a'8 |
        fis'2 r8 d'8 fis'8 g'8 |
        a'4. a'8 b'8. ( a'16 g'8 a'8 ) |
        b'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 fis''8 e''8 d''8 |

        cis''4. b'8 a'4. b'8 |
        cis''2 r8 e''8 d''8 cis''8 |
        b'4. d''8 a'4. ( g'8 ) |
        fis'2 r8 d''8 cis''8 b'8 |

        a'4. g'8 fis'4. g'8 |
        a'2 r8 cis''8 b'8 a'8 |
        g'4. b'8 a'4. ( g'8 ) |
        fis'2 r8 d'8 fis'8 g'8 |
    }
}

melodynotes = {
    \time 4/4
    \voiceoneintro
    \voiceonesectiona
}

melodynotesmidi = {
    \time 4/4
    \preintro
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
% currently identical to voiceone
    \key d \major
    s2 s8 d'8 fis'8 g'8 |
}

voicetwosectiona = {
    \repeat volta 2 {
        a'4. b'8 g'4. a'8 |
        fis'2 r8 d'8 fis'8 g'8 |
        a'4. a'8 b'8. ( a'16 g'8 a'8 ) |
        b'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 fis''8 e''8 d''8 |

        cis''4. b'8 a'4. b'8 |
        cis''2 r8 e''8 d''8 cis''8 |
        b'4. d''8 a'4. ( g'8 ) |
        fis'2 r8 d''8 cis''8 b'8 |

        a'4. g'8 fis'4. g'8 |
        a'2 r8 cis''8 b'8 a'8 |
        g'4. b'8 a'4. ( g'8 ) |
        fis'2 r8 d'8 fis'8 g'8 |
    }
}

tenorharmony = {
    \time 4/4
    \voicetwointro
    \voicetwosectiona
}

tenorharmonymidi = {
    \time 4/4
    \preintro
    \voicetwointro
    \voicetwosectiona
    \voicetwosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
% currently identical to voiceone
    \key d \major
    s2 s8 d'8 fis'8 g'8 |
}

voicethreesectiona = {
    \repeat volta 2 {
        a'4. b'8 g'4. a'8 |
        fis'2 r8 d'8 fis'8 g'8 |
        a'4. a'8 b'8. ( a'16 g'8 a'8 ) |
        b'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 fis''8 e''8 d''8 |

        cis''4. b'8 a'4. b'8 |
        cis''2 r8 e''8 d''8 cis''8 |
        b'4. d''8 a'4. ( g'8 ) |
        fis'2 r8 d''8 cis''8 b'8 |

        a'4. g'8 fis'4. g'8 |
        a'2 r8 cis''8 b'8 a'8 |
        g'4. b'8 a'4. ( g'8 ) |
        fis'2 r8 d'8 fis'8 g'8 |
    }
}

counter = {
    \time 4/4
    \voicethreeintro
    \voicethreesectiona
}

countermidi = {
    \time 4/4
    \preintro
    \voicethreeintro
    \voicethreesectiona
    \voicethreesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key d \major
    s1 |
}

basslinesectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |
    }
}

bassline = {
    \time 4/4
    \basslineintro
    \basslinesectiona
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslineintro
    \basslinesectiona
    \basslinesectiona
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

clarinetnotesmidi = \transpose bes c' {
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

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
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

trombonenotes = \transpose c c, {
    \counter
}

trombonenotesmidi = \transpose c c, {
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
    s1 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2 a2:7 |
        d1 |
        d2 d2:7 |
        g1 |

        d2 a2:7 |
        a1:7 |
        g2 a2:7 |
        d1 |

        d2 a2:7 |
        a1:7 |
        g2 a2:7 |
        d1 |

        a1:7 |
        a1:7 |
        g2 a2:7 |
        d1 |

        b2:min a2:dim |
        a1:7 |
        g2 a2:7 |
        d1 |
    }
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
}

chordlettersmidi = \chordmode {
    \time 4/4
    \preintro
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectiona
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

guitarnotesintro = {
    \key d \major
    s1 |
}

guitarnotessectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarnotes = {
    \time 4/4
    \guitarnotesintro
    \guitarnotessectiona
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotesintro = {
% currently identical to voiceone
    \key d \major
    s2 s8 d'8 fis'8 g'8 |
}

pianorightnotessectiona = {
    \repeat volta 2 {
        a'4. b'8 g'4. a'8 |
        fis'2 r8 d'8 fis'8 g'8 |
        a'4. a'8 b'8. ( a'16 g'8 a'8 ) |
        b'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 a'8 b'8 cis''8 |

        d''4-> d''4-> cis''4-> b'8 ( a'8 ) |
        cis''4. ( b'8 a'4. ) fis'8 |
        g'4 a'8 b'8 a'8 ( g'8 g'8 fis'8 ) |
        fis'2 r8 fis''8 e''8 d''8 |

        cis''4. b'8 a'4. b'8 |
        cis''2 r8 e''8 d''8 cis''8 |
        b'4. d''8 a'4. ( g'8 ) |
        fis'2 r8 d''8 cis''8 b'8 |

        a'4. g'8 fis'4. g'8 |
        a'2 r8 cis''8 b'8 a'8 |
        g'4. b'8 a'4. ( g'8 ) |
        fis'2 r8 d'8 fis'8 g'8 |
    }
}

pianorightnotes = {
    \time 4/4
    \pianorightnotesintro
    \pianorightnotessectiona
}

pianorightnotesmidi = {
    \time 4/4
    \preintro
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectiona
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotesintro = {
    \key d \major
    s1 |
}

pianoleftnotessectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |
    }
}

pianoleftnotes = {
    \time 4/4
    \pianoleftnotesintro
    \pianoleftnotessectiona
}

pianoleftnotesmidi = {
    \time 4/4
    \preintro
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectiona
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    s1 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |
    }
}

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowintro = \drummode {
    s1 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
        s1 |
    }
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

leadsheetnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    La vi- da
    do por el ra-
    kí no pue- do
    yo de- shar- __
    lo de be- ber
    nun- ca me har-
    tí __ de
    tan- to a- mar- __
    lo de be- ber
    nun- ca me har-
    tí __ de
    tan- to a- mar- __
    lo cuan- do es-
    tá en el bar-
    míl él no ha-
    bla del to- __
    do cuan- do me
    ha- go kior can-
    díl meha- go ba-
    ños de lo-
    do La vi- da
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 4/4
    s1 |
    d2 a2:7 |
    d1 |
    d2 d2:7 |
    g1 |
}

previewnotes = {
    \time 4/4
    \key d \major
    \tempo \tempostring
    s2 s8 d'8 fis'8 g'8 |
    \bar ".|:"
    a'4. b'8 g'4. a'8 |
    fis'2 r8 d'8 fis'8 g'8 |
    a'4. a'8 b'8. ( a'16 g'8 a'8 ) |
    b'2 r8 a'8 b'8 cis''8 |
}

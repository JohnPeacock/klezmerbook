\version "2.18.0"

bandmsectiona = {
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakA
    }
}

bandmsectionb = {
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | s2 | \breakBtre
    }
    \alternative {
        {
            s2 | \breakBfor s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev
        }
        {
            s2 | \breakBeit s2 | \breakBnin s2 | \breakBten s2 | \breakB
        }
    }
}

bandmsectionc = {
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakC
    }
}

bandmsectiond = {
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo s2 | s2 | \breakDtre
    }
    \alternative {
        {
            s2 | \breakDfor s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev
        }
        {
            s2 | \breakDeit s2 | \breakDnin s2 | \breakDten s2 |
        }
    }
    \markDC \positionDC
    \bar "|."
}

bandm = {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
}

bandmNV = {
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 70
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond

    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
}

% ----------------------------------------

voiceonesectiona = {
    \key f \major
    \repeat volta 2 {
        a'4 d''8 e''8 |
        \tuplet 3/2 { f''8 f''8 f''8 } e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'8 ( c''16 bes'16 ) |
        a'2 ~ |
        a'2 |
    }
}

voiceonesectionb = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

voiceonesectionc = {
    \repeat volta 2 {
        a'4 d''8 e''8 |
        f''8 f''8 e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'4 |
        a'2 ~ |
        a'2 |
    }
}

voiceonesectiond = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

melodynotes = {
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
    \voiceonesectiond
}

melodynotesmidi = {
    \time 2/4
    \preintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
    \voiceonesectiond

    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
    \voiceonesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
% currently identical to voiceone
    \key f \major
    \repeat volta 2 {
        a'4 d''8 e''8 |
        \tuplet 3/2 { f''8 f''8 f''8 } e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'8 ( c''16 bes'16 ) |
        a'2 ~ |
        a'2 |
    }
}

voicetwosectionb = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

voicetwosectionc = {
    \repeat volta 2 {
        a'4 d''8 e''8 |
        f''8 f''8 e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'4 |
        a'2 ~ |
        a'2 |
    }
}

voicetwosectiond = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

tenorharmony = {
    \time 2/4
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
    \voicetwosectiond
}

tenorharmonymidi = {
    \time 2/4
    \preintro
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
    \voicetwosectiond

    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
    \voicetwosectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
% currently identical to voiceone
    \key f \major
    \repeat volta 2 {
        a'4 d''8 e''8 |
        \tuplet 3/2 { f''8 f''8 f''8 } e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'8 ( c''16 bes'16 ) |
        a'2 ~ |
        a'2 |
    }
}

voicethreesectionb = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

voicethreesectionc = {
    \repeat volta 2 {
        a'4 d''8 e''8 |
        f''8 f''8 e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'4 |
        a'2 ~ |
        a'2 |
    }
}

voicethreesectiond = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

counter = {
    \time 2/4
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionc
    \voicethreesectiond
}

countermidi = {
    \time 2/4
    \preintro
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionc
    \voicethreesectiond

    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionc
    \voicethreesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \key f \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

basslinesectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

basslinesectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

basslinesectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

bassline = {
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
}

basslinemidi = {
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
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

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2:min |
        d4:min a4:7 |
        d2:min |
        d2:min |

        d2:min |
        c4 bes4 |
        a2 |
        a2 |
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        g2:min |
        c2:7 |
        f2 ~ |
        f2 |
    }
    \alternative {
        {
            e2:dim |
            a2:7 |
            d2:min |
            d2:min |
        }
        {
            g2:min |
            e4:7 a4:7 |
            d2:min |
            d2:min |
        }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        d2:min |
        d4:min a4:7 |
        d2:min |
        d2:min |

        d2:min |
        c4 bes4 |
        a2 |
        a2 |
    }
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        g2:min |
        c2:7 |
        f2 ~ |
        f2 |
    }
    \alternative {
        {
            e2:dim |
            a2:7 |
            d2:min |
            d2:min |
        }
        {
            e2:dim |
            a2:7 |
            d2:min |
            d2:min |
        }
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
}

chordlettersmidi = \chordmode {
    \time 2/4
    \preintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond

    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
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

guitarnotessectiona = {
    \key f \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

guitarnotessectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

guitarnotessectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

guitarnotessectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

guitarnotes = {
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
}

guitarnotesmidi = {
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond

    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotessectiona = {
% currently identical to voiceone
    \key f \major
    \repeat volta 2 {
        a'4 d''8 e''8 |
        \tuplet 3/2 { f''8 f''8 f''8 } e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'8 ( c''16 bes'16 ) |
        a'2 ~ |
        a'2 |
    }
}

pianorightnotessectionb = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

pianorightnotessectionc = {
    \repeat volta 2 {
        a'4 d''8 e''8 |
        f''8 f''8 e''8 e''8 |
        d''2 ~ |
        d''2 |

        a'4 d''8 d''8 |
        c''8 c''8 bes'4 |
        a'2 ~ |
        a'2 |
    }
}

pianorightnotessectiond = {
    \repeat volta 2 {
        g'4 a'8 bes'8 |
        a'8 g'8 f'8 g'8 |
        a'2 ~ |
        a'2 |
    }
    \alternative {
        {
            e'4 f'8 g'8 |
            f'8 e'8 d'4 |
            a'2 ~ |
            a'2 |
        }
        {
            e'4 f'8 g'8 |
            f'8 f'8 e'4 |
            d'2 ~ |
            d'2 |
        }
    }
}

pianorightnotes = {
    \time 2/4
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectiond
}

pianorightnotesmidi = {
    \time 2/4
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectiond

    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectiond
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    \key f \major
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

pianoleftnotessectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

pianoleftnotessectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

pianoleftnotessectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

pianoleftnotes = {
    \time 2/4
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectiond
}

pianoleftnotesmidi = {
    \time 2/4
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectiond

    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectiond
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumshighsectiond = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

drumslowsectiond = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
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
    En el ca-
    fé del a- ma- ne-
    cer __

    hay lu- ces
    de co- lo- __
    res __

    an- si- naes-
    tá mi co- ra-
    zón __

    hen- chi- do
    ya "de a-" mo-
    res __

    hen- chi- do
    ya "de a-" mo-
    res __

    A- gua de
    ro- sas te mer-
    kí __

    pa- ra la-
    var tu ca-
    ra __

    Yan- sí po-
    der- te- la be-
    sar __

    la ta- drey
    la ma- ña-
    na __

    la ta- drey
    la ma- ña-
    na __
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
        d2:min |
        d4:min a4:7 |
        d2:min |
        d2:min |
}

previewnotes = {
    \time 2/4
    \key f \major
    \tempo \tempostring
    a'4 d''8 e''8 |
    \tuplet 3/2 { f''8 f''8 f''8 } e''8 e''8 |
    d''2 ~ |
    d''2 |
}

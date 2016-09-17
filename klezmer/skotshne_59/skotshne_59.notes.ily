\version "2.18.0"

bandmNVbody = {
    \time 2/4
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \bar ".|:-||"
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt
    }
    \alternative { { s2 | \breakBfft s2 | \breakBsxt } { s2 | \breakBsvt s2 | } }
    \bar ".|:-||" 
    \breakB

    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
        s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
        s2 | \breakCtht s2 | \breakCfrt s2 | \breakCfft s2 |
    }
}

bandmNV = {
    \markA \positionA
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 90
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 2/4
    \key d \minor
    \repeat volta 2 {
        a'8 d''8 a'8 d''8 |
        a'8 d''8 f''16 e''16 d''8 |
        f''16 e''16 d''8 e''8 f''8 |
        gis''8 a''4. |

        a'8 d''8 a'8 d''8 |
        a'8 d''8 f''16 e''16 d''8 |
        f''16 e''16 d''8 cis''16 d''16 e''16 cis''16 |
    }
    \alternative {
        { d''2 }
        { d''4 r8 a''8 }
    }
    \repeat volta 2 {
        gis''8 a''8 b''8 c'''8 |
        b''8 a''4. |
        gis''8 a''4. |
        gis''8 f''4. |

        c'''16 b''16 a''8 a''16 gis''16 f''8 |
        a''16 gis''16 f''8 f''16 e''16 d''16 cis''16 |
        d''2 |
        a''4. a''8 |

        gis''8 a''8 b''8 c'''8 |
        b''8 e'''4. |
        d'''8 c'''8 b''8 a''8 |
        gis''8 f''4. |

        c'''16 b''16 a''8 a''16 gis''16 f''8 |
        a''16 gis''16 f''8 f''16 e''16 d''16 cis''16
    }
    \alternative {
        { d''2 ~ | d''4 r8 a''8 | }
        { d''2 ~ | d''4 r4 | }
    }

    \repeat volta 2 {
        a''8 d''8 e''8 f''8 |
        g''8 f''8 e''8 d''8 |
        f''8 e''8 f''8 g''8 |
        a''4. a''8 |

        c'''8 b''8 a''8 gis''8 |
        a''8 gis''8 a''8 b''8 |
        c'''8 b''8 a''8 gis''8 |
        a''4. a''8 |

        gis''8 a''8 b''8 c'''8 |
        b''8 e'''4. |
        d'''8 c'''8 b''8 a''8 |
        gis''8 f''4. |

        c'''16 b''16 a''8 a''16 gis''16 f''8 |
        a''16 gis''16 f''8 f''16 e''16 d''16 cis''16 |
        d''2 ~ |
        d''4 r4 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = \transpose c' bes {
    \time 2/4
    \key e \minor
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 | g'8 g'8 e''8 b'8 |
        e''8 b'8 dis''8 e''8 | fis''8 g''4. |
        g'8 g'8 g'8 g'8 | g'8 g'8 e''8 b'8 |
        e''8 b'8 dis''8 e''8 |
    }
    \alternative { { a'8 g'4. | } { b'8 g'4 e''8 | } }
    \repeat volta 2 {
        fis'8 g'8 a'8 b'8 |
        a'8 g'4. |
        g'8 fis'4. |
        fis'8 e'4. |

        b'16 ais'16 g'8 g'16 fis'16 e'8 |
        g'16 fis'16 e'8 e'8 b8 |
        g2 |
        g'4. g'8 |

        fis'8 g'8 ais'8 b'8 |
        ais'8 bes'4. |
        g'8 fis'8 ais'8 g'8 |
        fis'8 e'4. |

        b'16 ais'16 g'8 g'16 fis'16 e'8 |
        g'16 fis'16 e'8 e'8 b8 |
    }
    \alternative { { g'2 ~ | g'4 r4 | } { g'2 ~ | g'4 r4 | } }

    \repeat volta 2 {
        g''8 b'8 ais'8 b'8 |
        c''8 b'8 a'8 g'8 |
        b'8 dis''8 e''8 fis''8 |
        g''2 |

        b'8 ais'8 g'8 fis'8 |
        g'8 fis'8 g'8 ais'8 |
        b'8 ais'8 g'8 fis'8 |
        fis'2 |

        fis'8 g'8 ais'8 b'8 |
        ais'8 cis''4. |
        g'8 fis'8 ais'8 g'8 |
        fis'8 e'4. |

        b'16 ais'16 g'8 g'16 fis'16 e'8 |
        g'16 fis'16 e'8 dis'8 b8 |
        e'2 ~ |
        e'4 r4 |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key d \minor
    \repeat volta 2 {
        d8-. a16-. a16-. d8-. a8-. |
        d8-. a8-. d8-. a8 |
        d8-. a16-. a16-. d8-. a8-. |
        d8-. a8-. g8-. f8-. |

        d8-. a16-. a16-. d8-. a8-. |
        d8 \glissando a8 d8 \glissando a8 |
        d8-. a16-. a16-. e8-. a8-. |
    }
    \alternative {
        { d8-. a8-. g8-. f8-. | }
        { d4 a,8-. d8-. | }
    }

    \repeat volta 2 {
        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. d'8-. |
        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. r8 |

        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. d'8-. |
        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. r8 |

        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. d'8-. |
        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. d'8-. a8-. r8 |

        d'16-. d'16-. d'16-. d'16-. a8-. d'8-. |
        a8-. e'8-. a8-. e'8-. |
    }
    \alternative {
        {
            d'4-. a4-. |
            d'8-. a8-. d'8-. r8 |
        }
        {
            d'4 a4 |
            b4 cis'4 |
        }
    }

    \repeat volta 2 {
        R2*16 |
%        s2 |
%        s2 |
%        s2 |
%        s2 |
%
%        s2 |
%        s2 |
%        s2 |
%        s2 |
%
%        s2 |
%        s2 |
%        s2 |
%        s2 |
%
%        s2 |
%        s2 |
%        s2 |
%        s2 |
    }
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key d \minor
    \repeat volta 2 {
        d4-.\p a,4-. |
        d4-. a,4-. |
        d4-. a,4-. |
        d4-. a,4-. |

        d4-. a,4-. |
        d4-. a,4-. |
        d8-. a,8-. e8-. a,8-. |
    }
    \alternative {
        { d8-. a,8-. b,8-. cis8-. | }
        { d8-. cis8 b,8-. a,8 | }
    }

    \repeat volta 2 {
        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4-. a,4-. |
        d4-. a8-. a8-. |

        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4 a,4 |
        b,4 cis4 |

        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4-. a,4-. |
        d4-. a8-. a8-. |

        d4-. a,4-. |
        e4-. a8-. a8-. |
    }
    \alternative {
        {
            d4-. a,4-. |
            d8-. a,8-. d8-. r8 |
        }
        {
            d4 a,4 |
            b,4 cis4 |
        }
    }

    \repeat volta 2 {
        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4-. a,4-. |
        d4-. a8-. a8-. |

        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4 a,4 |
        b,4 cis4 |

        d4-. a,4-. |
        d4-. a8-. a8-. |
        d4-. a,4-. |
        d4-. a8-. a8-. |

        d4-. a,4-. |
        e4-. a8-. a8-. |
        d4 a,4 |
        b,4 cis4 |
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melodynotes
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \melodynotes
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c {
    \melodynotes
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = \transpose c' c {
    \melodynotes
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetfortenornotes = { \clarinetnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }
tenorforfluteviolin = \transpose c bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 2/4
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d4:min a4:7 |
    }
    \alternative {
        { d2:min }
        { d2:min }
    }
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | a2:7 |
    }
    \alternative {
        { d2:min | d2:min | }
        { d2:min | d2:min | }
    }
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | a2:7 | d2:min | d2:min |
    }
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
    \key d \minor
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \melodynotes
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
    \bassnotes
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \bassnotesmidi
}

accordionrightnotes = { \pianorightnotes }
accordionleftnotes = { \pianoleftnotes }
accordionrightnotesmidi = { \pianorightnotesmidi }
accordionleftnotesmidi = { \pianoleftnotesmidi }

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

leadsheetnotes = {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min |
}

previewnotes = {
    \time 2/4
    \key d \minor
    \markA \positionA
    \tempo \tempostring
    a'8 d''8 a'8 d''8 |
    a'8 d''8 f''16 e''16 d''8 |
    f''16 e''16 d''8 e''8 f''8 |
    gis''8 a''4. |
    a'8 d''8 a'8 d''8 |
    a'8 d''8 f''16 e''16 d''8 |
}

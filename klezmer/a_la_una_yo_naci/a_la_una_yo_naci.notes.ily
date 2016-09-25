\version "2.18.2"

bandmintro = {
    \tempo \tempostring
    s2. | \breakIN
}

bandmsectiona = {
    \repeat volta 2 {
        s2. | \breakAone s2. | \breakAtwo s2. | \breakAtre s2. | \breakAfor
        s2. | \breakAfiv s2. | \breakAsix s2. | \breakAsev s2. | \breakAeit
        s2. | \breakAnin s2. | \breakAten s2. | \breakAelv s2. | \breakAtwl

        s2. | \breakAtht s2. | \breakAfrt s2. | \breakAfft
        s4. \bar "||" \markFN \positionFN s8 \bar "" \markPL \positionPL s4 | \breakAsxt
        s2. | \breakAsvt s2. | \breakAett s2. | \breakAnnt s2. |
    }
}

bandm = {
    \time 6/8
    \bandmintro
    \bandmsectiona
}

bandmNV = {
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2. }

metronome = {
    \time 6/8
    \preintro
    \tempo 4. = 70
    \bandmintro
    \bandmsectiona
    \bandmsectiona
}

% ----------------------------------------

voiceoneintro = {
    s4. s8 e'8 e'8 |
}

voiceonesectiona = {
    \key c \major
    \repeat volta 2 {
        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 e'8 e'8 |

        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 b'8 a'8 |

        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 b'8 a'8 |
        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 e'8 e'8 |
    }
}

melodynotes = {
    \time 6/8
    \voiceoneintro
    \voiceonesectiona
}

melodynotesmidi = {
    \time 6/8
    \preintro
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
% currently identical to voiceone
    \key c \major
    s4. s8 e'8 e'8 |
}

voicetwosectiona = {
% currently identical to voiceone
    \key c \major
    \repeat volta 2 {
        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 e'8 e'8 |

        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 b'8 a'8 |

        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 b'8 a'8 |
        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 e'8 e'8 |
    }
}

tenorharmony = {
    \time 6/8
    \voicetwointro
    \voicetwosectiona
}

tenorharmonymidi = {
    \time 6/8
    \preintro
    \voicetwointro
    \voicetwosectiona
    \voicetwosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
% currently identical to voiceone
    \key c \major
    s4. s8 e'8 e'8 |
}

voicethreesectiona = {
% currently identical to voiceone
    \key c \major
    \repeat volta 2 {
        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 e'8 e'8 |

        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 b'8 a'8 |

        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 b'8 a'8 |
        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 e'8 e'8 |
    }
}

counter = {
    \time 6/8
    \voicethreeintro
    \voicethreesectiona
}

countermidi = {
    \time 6/8
    \preintro
    \voicethreeintro
    \voicethreesectiona
    \voicethreesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key c \major
    s2. |
}

basslinesectiona = {
    \key c \major
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |
    }
}

bassline = {
    \time 6/8
    \basslineintro
    \basslinesectiona
}

basslinemidi = {
    \time 6/8
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
    s2. |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        a4.:min e4.:7 |
        a2.:min |
        a4.:min e4.:7 |
        a2.:min |

        a4.:min e4.:7 |
        a2.:min |
        a4.:min e4.:7 |
        a2.:min |

        a2.:min |
        e2.:7 |
        e4.:7 f4. |
        e4.:7 a4.:min |

        a2.:min |
        e2.:7 |
        e4.:7 f4. |
        e2.:7 |

        e4.:7 f4. |
        e2.:7 |
        e4.:7 f4. |
        e2.:7 |
    }
}

chordletters = \chordmode {
    \time 6/8
    \chordlettersintro
    \chordletterssectiona
}

chordlettersmidi = \chordmode {
    \time 6/8
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
    \key c \major
    s2. |
}

guitarnotessectiona = {
    \key c \major
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |
    }
}

guitarnotes = {
    \time 6/8
    \guitarnotesintro
    \guitarnotessectiona
}

guitarnotesmidi = {
    \time 6/8
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
    \key c \major
    s4. s8 e'8 e'8 |
}

pianorightnotessectiona = {
    \key c \major
    \repeat volta 2 {
        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 e'8 e'8 |

        a'4 a'8 gis'4 e'8 |
        a'4. r8 a'8 b'8 |
        c''4 d''8 b'4 c''8 |
        a'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 c''8 c''8 |

        c''4 c''8 c''8 ( b'8 ) a'8 |
        b'8 b'4 r8 a'8 a'8 |
        gis'4 a'8 f'4 gis'8 |
        e'4. r8 b'8 a'8 |

        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 b'8 a'8 |
        gis'4 b'8 a'8 ( gis'8 ) f'8 |
        gis'16 ( f'16 e'4 ) r8 e'8 e'8 |
    }
}

pianorightnotes = {
    \time 6/8
    \pianorightnotesintro
    \pianorightnotessectiona
}

pianorightnotesmidi = {
    \time 6/8
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
    \key c \major
    s2. |
}

pianoleftnotessectiona = {
    \key c \major
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |
    }
}

pianoleftnotes = {
    \time 6/8
    \pianoleftnotesintro
    \pianoleftnotessectiona
}

pianoleftnotesmidi = {
    \time 6/8
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
    s2. |
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |
    }
}

drumshigh = \drummode {
    \time 6/8
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 6/8
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowintro = \drummode {
    s2. |
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |

        s2. |
        s2. |
        s2. |
        s2. |
    }
}

drumslow = \drummode {
    \time 6/8
    \stemDown
    \drumslowintro
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 6/8
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
    A la

    u- na yo na-
    cí a las
    dos m'en- gran- de-
    cí. A la

    u- na yo na-
    cí a las
    dos m'en- gran- de-
    cí. A las

    tres to- mí __ a-
    man- te a las
    cua- tro me ca-
    sí. A las

    tres to- mí __ a-
    man- te a las
    cua- tro me ca-
    sí. Al- may

    vi- day co- ra-
    zón. __ Al- may
    vi- day co- ra-
    zón. __ A la
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 6/8
    s2. |
    a4.:min e4.:7 |
    a2.:min |
    a4.:min e4.:7 |
    a2.:min |
}

previewnotes = {
    \time 6/8
    \key c \major
    \tempo \tempostring
    s4. s8 e'8 e'8 |
    \bar ".|:"
    a'4 a'8 gis'4 e'8 |
    a'4. r8 a'8 b'8 |
    c''4 d''8 b'4 c''8 |
    a'4. r8 e'8 e'8 |
}

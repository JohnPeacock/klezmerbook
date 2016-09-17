\version "2.18.0"

bandmintro = {
    s2. |
}

bandmsectiona = {
    \bar "||"
    \markS \positionS
    s2. | \breakAone s2. | \breakAtwo s2. | \breakAtre s2. | \breakAfor
    s2. | \breakAfiv s2. | \breakAsix s2. | \breakAsev s2. | \breakAeit
    s2. | \breakAnin s2. | \breakAten s2. | \breakAelv s2. | \breakAtwl
    s2. | \breakAtht s2. | \breakAfrt s2. | \breakAfft s2. |
    \markDSsimple \positionDS
    \bar "|."
}

bandm = {
    \time 3/4
    \bandmintro
    \bandmsectiona
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2. }

metronome = {
    \time 3/4
    \preintro
    \tempo 4 = 90
    \bandmintro
    \bandmsectiona
    \bandmsectiona
}

% ----------------------------------------

voiceoneintro = {
    \key c \major
    s2 c''8 d''8 |
}

voiceonesectiona = {
    \key c \major
    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''16 ( e''16 d''16 c''16 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |

    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''8 ( c''8 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |
}

melodynotes = \transpose a c' {
    \time 3/4
    \voiceoneintro
    \voiceonesectiona
}

melodynotesmidi = \transpose a c' {
    \time 3/4
    \preintro
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \key c \major
    s2 c''8 d''8 |
}

voicetwosectiona = {
% currently identical to voiceone
    \key c \major
    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''16 ( e''16 d''16 c''16 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |

    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''8 ( c''8 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |
}

tenorharmony = \transpose a c' {
    \time 3/4
    \voicetwointro
    \voicetwosectiona
}

tenorharmonymidi = \transpose a c' {
    \time 3/4
    \preintro
    \voicetwointro
    \voicetwosectiona
    \voicetwosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
    \key c \major
    s2 c''8 d''8 |
}

voicethreesectiona = {
% currently identical to voiceone
    \key c \major
    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''16 ( e''16 d''16 c''16 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |

    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''8 ( c''8 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |
}

counter = \transpose a c' {
    \time 3/4
    \voicethreeintro
    \voicethreesectiona
}

countermidi = \transpose a c' {
    \time 3/4
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

bassline = \transpose a c' {
    \time 3/4
    \basslineintro
    \basslinesectiona
}

basslinemidi = \transpose a c' {
    \time 3/4
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
    a2.:min |
    a2.:min |
    a4:min g4 f4 |
    e2.:7 |

    e2.:7 |
    a2.:min |
    d4:min e2:7 |
    a2.:min |

    a2.:min |
    a2.:min |
    a4:min g4 f4 |
    e2.:7 |

    e2.:7 |
    a2.:min |
    d4.:min e4.:7 |
    a2.:min |
}

chordletters = \transpose a c' \chordmode {
    \time 3/4
    \chordlettersintro
    \chordletterssectiona
}

chordlettersmidi = \transpose a c' \chordmode {
    \time 3/4
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

guitarnotes = \transpose a c' {
    \time 3/4
    \guitarnotesintro
    \guitarnotessectiona
}

guitarnotesmidi = \transpose a c' {
    \time 3/4
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
    \key c \major
    s2 c''8 d''8 |
}

pianorightnotessectiona = {
    \key c \major
    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''16 ( e''16 d''16 c''16 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |

    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''8 ( c''8 ) b'4 b'8 c''8 |

    d''8 ( e''8 ) d''4 c''8 b'8 |
    d''4 c''4 b'8 a'8 |
    c''8 b'4 d''4 c''8 |
    \tuplet 3/2 { b'8 ( c''8 b'8 ) } a'4 c''8 d''8 |
}

pianorightnotes = \transpose a c' {
    \time 3/4
    \pianorightnotesintro
    \pianorightnotessectiona
}

pianorightnotesmidi = \transpose a c' {
    \time 3/4
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

pianoleftnotes = \transpose a c' {
    \time 3/4
    \pianoleftnotesintro
    \pianoleftnotessectiona
}

pianoleftnotesmidi = \transpose a c' {
    \time 3/4
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

drumshighintro = {
    s2. |
}

drumshighsectiona = \drummode {
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

drumshigh = \drummode {
    \time 3/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 3/4
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowintro = {
    s2. |
}

drumslowsectiona = \drummode {
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

drumslow = \drummode {
    \time 3/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 3/4
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
    U- na
    tar- de de ve-
    ra- no pa- se
    por la mo- re-
    rí- __ a y víu-
    na- mo- ra la-
    van- do al pie
    d'u- na fuen- te
    frí- __ a Yo le
    di- je mo- ra
    lin- da yo le
    di- je mo- ra
    be- lla de- ja
    be- ber mis ca-
    ba- llos d'e- sas
    a- guas
    cris- ta-
    li- __ nas si que

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose a c' \chordmode {
    \time 3/4
    s2. |

    a2.:min |
    a2.:min |
    a4:min g4:min f4 |
    e2.:7 |
}

previewnotes = \transpose a c' {
    \time 3/4
    \key c \major
    \tempo \tempostring
    s2 c''8 d''8 |
    \bar "||"
    \markS \positionS
    e''4 e''4 c''8 d''8 |
    e''4 e''4 c''8 d''8 |
    e''8 d''4 f''4 e''8 |
    d''16 ( e''16 d''16 c''16 ) b'4 b'8 c''8 |
}

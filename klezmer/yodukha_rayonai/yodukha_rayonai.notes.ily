\version "2.18.0"

bandmsectiona = {
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 |
    \breakA
}

bandm = {
    \time 2/4
    \bandmsectiona
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 130
    \bandmsectiona
    \bandmsectiona
}

% ----------------------------------------

voiceonesectiona = {
    \key ees \major
    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 g'4 ) |

    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 ees'16 d'16 c'8 ) |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ( ees'16 ) ees'16 ( d'16 ) d'16 ( c'16 ) b16 ( c'16 ) |
    d'2 |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ees'16 ees'16 ( d'16 ) d'16 ( c'16 c'16 b16 ) |
    c'2 |
}

melodynotes = {
    \time 2/4
    \voiceonesectiona
}

melodynotesmidi = {
    \time 2/4
    \preintro
    \voiceonesectiona
    \voiceonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
% currently identical to voiceone
    \key ees \major
    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 g'4 ) |

    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 ees'16 d'16 c'8 ) |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ( ees'16 ) ees'16 ( d'16 ) d'16 ( c'16 ) b16 ( c'16 ) |
    d'2 |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ees'16 ees'16 ( d'16 ) d'16 ( c'16 c'16 b16 ) |
    c'2 |
}

tenorharmony = {
    \time 2/4
    \voicetwosectiona
}

tenorharmonymidi = {
    \time 2/4
    \preintro
    \voicetwosectiona
    \voicetwosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
% currently identical to voiceone
    \key ees \major
    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 g'4 ) |

    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 ees'16 d'16 c'8 ) |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ( ees'16 ) ees'16 ( d'16 ) d'16 ( c'16 ) b16 ( c'16 ) |
    d'2 |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ees'16 ees'16 ( d'16 ) d'16 ( c'16 c'16 b16 ) |
    c'2 |
}

counter = {
    \time 2/4
    \voicethreesectiona
}

countermidi = {
    \time 2/4
    \preintro
    \voicethreesectiona
    \voicethreesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \key ees \major
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

bassline = {
    \time 2/4
    \basslinesectiona
}

basslinemidi = {
    \time 2/4
    \preintro
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
    c2:min |
    c2:min |
    f2:min |
    g2 |

    c2:min |
    c2:min |
    f2:min |
    g2 |

    c2:min |
    c2:min |
    f2:min |
    g2 |

    c2:min |
    c2:min |
    f2:min |
    c2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
}

chordlettersmidi = \chordmode {
    \time 2/4
    \preintro
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

guitarnotessectiona = {
    \key ees \major
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

guitarnotes = {
    \time 2/4
    \guitarnotessectiona
}

guitarnotesmidi = {
    \time 2/4
    \preintro
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

pianorightnotessectiona = {
% currently identical to voiceone
    \key ees \major
    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 g'4 ) |

    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 ees'16 d'16 c'8 ) |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ( ees'16 ) ees'16 ( d'16 ) d'16 ( c'16 ) b16 ( c'16 ) |
    d'2 |

    c'8. ( d'16 ) ees'8 ( f'8 ) |
    g'16 ( aes'16 ) g'16 ( f'16 ) ees'16 ( d'16 ) c'8 |
    f'16 ees'16 ees'16 ( d'16 ) d'16 ( c'16 c'16 b16 ) |
    c'2 |
}

pianorightnotes = {
    \time 2/4
    \pianorightnotessectiona
}

pianorightnotesmidi = {
    \time 2/4
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectiona
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    \key ees \major
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

pianoleftnotes = {
    \time 2/4
    \pianoleftnotessectiona
}

pianoleftnotesmidi = {
    \time 2/4
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectiona
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
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

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowsectiona = \drummode {
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

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
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
    Yo- du- kha
    ra- yo- nai
    A- do- nai ro-
    i __

    Yo- du- kha
    ra- yo- nai
    A- do- nai ro-
    i __

    be- yom __
    sha- bat __ ko- desh
    yom __ ha- she- vi-
    i

    be- yom __
    sha- bat __ ko- desh
    yom __ ha- she- vi-
    i
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
    c2:min |
    c2:min |
    f2:min |
    g2 |
}

previewnotes = {
    \time 2/4
    \key ees \major
    \tempo \tempostring
    c'8. ( g'16 ) g'8 g'8 |
    aes'16 ( g'16 ) aes'16 ( bes'16 ) g'4 |
    f'8. f'16 ees'8 f'8 |
    g'16 ( aes'16 g'16 f'16 g'4 ) |
}

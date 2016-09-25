\version "2.18.2"

bandmsectiona = {
    \time 2/4
    \tempo \tempostring
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 |
    \breakA
    \bar "||" \markS \positionS
}

bandmsectionb = {
    \time 4/4
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix
    \time 2/4
    s2 | \breakBsev
    \time 3/4
    s2. | \breakBeit
    \time 4/4
    s1 | \breakBnin s1 | \breakBten s1 | \breakBelv
    \time 3/4
    s2. | \breakBtwl
    \time 2/4
    s2 |
    \bar "||"
    \markDSsimple \positionDS
}

bandm = {
    \bandmsectiona
    \bandmsectionb
}

bandmNV = {
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = {
    \time 2/4
    s2
}

metronome = {
    \preintro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    \key g \major
    \time 2/4
    r8 c''8 b'8\turn a'8 |
    g'4 a'4 |
    r8 b'8 a'8\turn g'8 |
    fis'4 g'4 |

    r8 a'8 g'8 e'8 |
    fis'4 g'4 |
    a'8 g'8 f'8 e'8 |
    r8 e'16 fis'16 g'16 a'16 b'8 |

    r8 b'16 c''16 b'8 a'8 |
    g'16 a'16 b'16 g'16 a'4 |
    r8 a'16 b'16 a'8 g'8 |
    fis'16 g'16 a'16 fis'16 g'4 |

    r8 g'16 a'16 g'8 f'8 |
    e'4 f'8 g'8 |
    a'8 g'8 f'8 e'8 |
    e'8 d'16 c'16 b16 a16 g16 fis16 |
}

voiceonesectionb = {
    \time 4/4
    e'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
    a'8 b'16 ( a'16 ) g'8 a'8 b'4 b'4 |
    d''8 ( cis''8 ) d''8 cis''8 d''8 ( cis''8 ) b'4 |
    a'8 ( b'16 a'16 ) g'8 ( a'8 ) b'4. c''8 |

    b'8 a'8 g'4 a'4 r8 b'8 |
    a'8 g'8 fis'4 g'4. a'8 |
    \time 2/4
    g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) e'8 ( f'8 ) |
    \time 4/4
    e'4 r8 c''8 b'8 a'8 g'4 |
    a'4 r8 b'8 a'8 g'8 fis'4 |
    g'4 r8 a'8 g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) f'8 ( e'8 ) |
    \time 2/4
    e'2 |
}

melodynotes = {
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \preintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
% currently mostly identical to voiceone
    \key g \major
    \time 2/4
    r8 c''8 b'8\turn a'8 |
    g'4 a'4 |
    r8 b'8 a'8\turn g'8 |
    fis'4 g'4 |

    r8 a'8 g'8 e'8 |
    fis'4 g'4 |
    a'8 g'8 f'8 e'8 |
    r8 e'16 fis'16 g'16 a'16 b'8 |

    r8 b'16 c''16 b'8 a'8 |
    g'16 a'16 b'16 g'16 a'4 |
    r8 a'16 g'16 a'8 g'8 |
    fis'16 g'16 a'16 fis'16 g'4 |

    r8 g'16 a'16 g'8 f'8 |
    e'4 f'8 g'8 |
    a'8 g'8 f'8 e'8 |
    e''8 d''16 c''16 b'16 a'16 g'16 fis'16 |
}

voicetwosectionb = {
    \time 4/4
    e'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
    a'8 b'16 ( a'16 ) g'8 a'8 b'4 b'4 |
    d''8 ( cis''8 ) d''8 cis''8 d''8 ( cis''8 ) b'4 |
    a'8 ( b'16 a'16 ) g'8 ( a'8 ) b'4. c''8 |

    b'8 a'8 g'4 a'4 r8 b'8 |
    a'8 g'8 fis'4 g'4. a'8 |
    \time 2/4
    g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) e'8 ( f'8 ) |
    \time 4/4
    e'4 r8 c''8 b'8 a'8 g'4 |
    a'4 r8 b'8 a'8 g'8 fis'4 |
    g'4 r8 a'8 g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) f'8 ( e'8 ) |
    \time 2/4
    e'2 |
}

tenorharmony = {
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \preintro
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
% currently mostly identical to voiceone
    \key g \major
    \time 2/4
    r8 c''8 b'8\turn a'8 |
    g'4 a'4 |
    r8 b'8 a'8\turn g'8 |
    fis'4 g'4 |

    r8 a'8 g'8 e'8 |
    fis'4 g'4 |
    a'8 g'8 f'8 e'8 |
    r8 e'16 fis'16 g'16 a'16 b'8 |

    r8 b'16 c''16 b'8 a'8 |
    g'16 a'16 b'16 g'16 a'4 |
    r8 a'16 g'16 a'8 g'8 |
    fis'16 g'16 a'16 fis'16 g'4 |

    r8 g'16 a'16 g'8 f'8 |
    e'4 f'8 g'8 |
    a'8 g'8 f'8 e'8 |
    e''8 d''16 c''16 b'16 a'16 g'16 fis'16 |
}

voicethreesectionb = {
    \time 4/4
    e'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
    a'8 b'16 ( a'16 ) g'8 a'8 b'4 b'4 |
    d''8 ( cis''8 ) d''8 cis''8 d''8 ( cis''8 ) b'4 |
    a'8 ( b'16 a'16 ) g'8 ( a'8 ) b'4. c''8 |

    b'8 a'8 g'4 a'4 r8 b'8 |
    a'8 g'8 fis'4 g'4. a'8 |
    \time 2/4
    g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) e'8 ( f'8 ) |
    \time 4/4
    e'4 r8 c''8 b'8 a'8 g'4 |
    a'4 r8 b'8 a'8 g'8 fis'4 |
    g'4 r8 a'8 g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) f'8 ( e'8 ) |
    \time 2/4
    e'2 |
}

counter = {
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \preintro
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \key g \major
    \time 2/4
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

basslinesectionb = {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    \time 2/4
    s2 |
    \time 3/4
    s2. |
    \time 4/4
    s1 |
    s1 |
    s1 |
    \time 3/4
    s2. |
    \time 2/4
    s2 |
}

bassline = {
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionb
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
    \tenorharmony
}

violinnotesmidi = {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \time 2/4
    e2:min |
    e4:min a4:min |
    a2:min |
    a4:min e4:min |

    e2:min |
    e2:min |
    e4:min d4:min |
    e2:min |

    c2 |
    c4 a4:min |
    a2:min |
    a4:min e4:min |

    e2:min |
    e2:min |
    d2:min |
    d2:min |
}

chordletterssectionb = \chordmode {
    \time 4/4
    e1:min |
    e1:min |
    e1:min |
    e1:min |

    e2:min a2:min |
    a2:min e2:min |
    \time 2/4
    e2:min |
    \time 3/4
    e4.:min d4.:min |
    \time 4/4
    e1:min |
    a1:min |
    e1:min |
    \time 3/4
    e4:min d2:min |
    \time 2/4
    e2:min |
}

chordletters = \chordmode {
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \preintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionb
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
    \key g \major
    \time 2/4
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

guitarnotessectionb = {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    \time 2/4
    s2 |
    \time 3/4
    s2. |
    \time 4/4
    s1 |
    s1 |
    s1 |
    \time 3/4
    s2. |
    \time 2/4
    s2 |
}

guitarnotes = {
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionb
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
    \key g \major
    \time 2/4
    r8 c''8 b'8\turn a'8 |
    g'4 a'4 |
    r8 b'8 a'8\turn g'8 |
    fis'4 g'4 |

    r8 a'8 g'8 e'8 |
    fis'4 g'4 |
    a'8 g'8 f'8 e'8 |
    r8 e'16 fis'16 g'16 a'16 b'8 |

    r8 b'16 c''16 b'8 a'8 |
    g'16 a'16 b'16 g'16 a'4 |
    r8 a'16 g'16 a'8 g'8 |
    fis'16 g'16 a'16 fis'16 g'4 |

    r8 g'16 a'16 g'8 f'8 |
    e'4 f'8 g'8 |
    a'8 g'8 f'8 e'8 |
    e'8 d'16 c'16 b16 a16 g16 fis16 |
}

pianorightnotessectionb = {
    \time 4/4
    e'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
    a'8 b'16 ( a'16 ) g'8 a'8 b'4 b'4 |
    d''8 ( cis''8 ) d''8 cis''8 d''8 ( cis''8 ) b'4 |
    a'8 ( b'16 a'16 ) g'8 ( a'8 ) b'4. c''8 |

    b'8 a'8 g'4 a'4 r8 b'8 |
    a'8 g'8 fis'4 g'4. a'8 |
    \time 2/4
    g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) e'8 ( f'8 ) |
    \time 4/4
    e'4 r8 c''8 b'8 a'8 g'4 |
    a'4 r8 b'8 a'8 g'8 fis'4 |
    g'4 r8 a'8 g'8 e'8 f'4 |
    \time 3/4
    g'4 a'8 ( g'8 ) f'8 ( e'8 ) |
    \time 2/4
    e'2 |
}

pianorightnotes = {
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    \key g \major
    \time 2/4
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

pianoleftnotessectionb = {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    \time 2/4
    s2 |
    \time 3/4
    s2. |
    \time 4/4
    s1 |
    s1 |
    s1 |
    \time 3/4
    s2. |
    \time 2/4
    s2 |
}

pianoleftnotes = {
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    \time 2/4
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

drumshighsectionb = \drummode {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    \time 2/4
    s2 |
    \time 3/4
    s2. |
    \time 4/4
    s1 |
    s1 |
    s1 |
    \time 3/4
    s2. |
    \time 2/4
    s2 |
}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionb
}

drumslowsectiona = \drummode {
    \time 2/4
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

drumslowsectionb = \drummode {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    \time 2/4
    s2 |
    \time 3/4
    s2. |
    \time 4/4
    s1 |
    s1 |
    s1 |
    \time 3/4
    s2. |
    \time 2/4
    s2 |
}

drumslow = \drummode {
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionb
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
    _ _ _
    _ _
    _ _ _
    _ _
    _ _ _
    _ _
    _ _ _ _
    _ _ _ _ _
    _ _ _ _
    _ _ _ _ _
    _ _ _ _
    _ _ _ _ _
    _ _ _ _
    _ _ _
    _ _ _ _
    _ _ _ _ _ _ _
    Hi- ja mí- a mi que- ri- da
    te vo __ dar un al- to
    no __ ke- ro pa- dri
    no __ ke- ro ke
    él es al- to yo
    no loal- can zó no
    ke- ro pa-
    dri no __ ke-
    ro ke él es al-
    to yo no loal- can-
    zó no ke- ro pa-
    dri no __ ke- __
    ro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
    e2:min |
    e4:min a4:min |
    a2:min |
    a4:min e4:min |
}

previewnotes = {
    \key g \major
    \time 2/4
    \tempo \tempostring
    r8 c''8 b'8\turn a'8 |
    g'4 a'4 |
    r8 b'8 a'8\turn g'8 |
    fis'4 g'4 |
}

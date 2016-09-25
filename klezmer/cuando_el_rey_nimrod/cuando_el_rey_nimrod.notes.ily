\version "2.18.2"

bandmsectiona = {
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 |
    \breakA
}

bandmsectionb = {
    \repeat volta 2 {
        \time 3/4
        s2. | \breakBone s2. | \breakBtwo
        \time 4/4
        s1 | \breakBtre
    } \alternative {
        { s1 | \breakBfor }
        { s1 | }
    }
}

bandm = {
    \time 4/4
    \bandmsectiona
    \bar ".|:-||"
    \bandmsectionb
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

% ----------------------------------------

voiceonesectiona = {
    \key bes \major
    d'8 d'16 d'16 fis'8 g'8 a'2 |
    g'8. fis'16 ees'8 fis'8 d'4 d'8. d'16 |
    d'8 d'8 fis'8 g'8 a'4 a'8 c''8 |
    bes'8 a'8 g'8 fis'16 a'16 g'4 g'4 |

    d''8 c''16 c''16 bes'8 d''8 c''4. bes'8 |
    d''8. c''16 bes'8 a'8 g'4 g'8 g'16 g'16 |
    c''8 bes'8 a'8 g'8 fis'8. ( ees'16 d'8 ees'8 ) |
    g'8 fis'8 ees'8 fis'8 d'4 d'4 |
}

voiceonesectionb = {
    \repeat volta 2 {
        \time 3/4
        r8 d''8 d''8 d''8 ees''16 ( d''16 c''16 bes'16 ) |
        c''8 c''8 c''8 c''8 d''16 ( c''16 bes'16 a'16 ) |
        \time 4/4
        bes'8 bes'8 a'8 g'8 fis'8. ( ees'16 ) d'8 ( ees'8 ) |
    } \alternative {
        { g'8. fis'16 ees'8 fis'8 d'4 ( d''4 ) | }
        { g'8. fis'16 ees'8 fis'8 d'2 | }
    }
}

melodynotes = {
    \time 4/4
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 4/4
    \preintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwosectiona = {
% currently identical to voiceone
    \key bes \major
    d'8 d'16 d'16 fis'8 g'8 a'2 |
    g'8. fis'16 ees'8 fis'8 d'4 d'8. d'16 |
    d'8 d'8 fis'8 g'8 a'4 a'8 c''8 |
    bes'8 a'8 g'8 fis'16 a'16 g'4 g'4 |

    d''8 c''16 c''16 bes'8 d''8 c''4. bes'8 |
    d''8. c''16 bes'8 a'8 g'4 g'8 g'16 g'16 |
    c''8 bes'8 a'8 g'8 fis'8. ( ees'16 d'8 ees'8 ) |
    g'8 fis'8 ees'8 fis'8 d'4 d'4 |
}

voicetwosectionb = {
% currently identical to voiceone
    \repeat volta 2 {
        \time 3/4
        r8 d''8 d''8 d''8 ees''16 ( d''16 c''16 bes'16 ) |
        c''8 c''8 c''8 c''8 d''16 ( c''16 bes'16 a'16 ) |
        \time 4/4
        bes'8 bes'8 a'8 g'8 fis'8. ( ees'16 ) d'8 ( ees'8 ) |
    } \alternative {
        { g'8. fis'16 ees'8 fis'8 d'4 ( d''4 ) | }
        { g'8. fis'16 ees'8 fis'8 d'2 | }
    }
}

tenorharmony = {
    \time 4/4
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 4/4
    \preintro
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectiona
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreesectiona = {
% currently identical to voiceone
    \key bes \major
    d'8 d'16 d'16 fis'8 g'8 a'2 |
    g'8. fis'16 ees'8 fis'8 d'4 d'8. d'16 |
    d'8 d'8 fis'8 g'8 a'4 a'8 c''8 |
    bes'8 a'8 g'8 fis'16 a'16 g'4 g'4 |

    d''8 c''16 c''16 bes'8 d''8 c''4. bes'8 |
    d''8. c''16 bes'8 a'8 g'4 g'8 g'16 g'16 |
    c''8 bes'8 a'8 g'8 fis'8. ( ees'16 d'8 ees'8 ) |
    g'8 fis'8 ees'8 fis'8 d'4 d'4 |
}

voicethreesectionb = {
% currently identical to voiceone
    \repeat volta 2 {
        \time 3/4
        r8 d''8 d''8 d''8 ees''16 ( d''16 c''16 bes'16 ) |
        c''8 c''8 c''8 c''8 d''16 ( c''16 bes'16 a'16 ) |
        \time 4/4
        bes'8 bes'8 a'8 g'8 fis'8. ( ees'16 ) d'8 ( ees'8 ) |
    } \alternative {
        { g'8. fis'16 ees'8 fis'8 d'4 ( d''4 ) | }
        { g'8. fis'16 ees'8 fis'8 d'2 | }
    }
}

counter = {
    \time 4/4
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 4/4
    \preintro
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectiona
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \key bes \major
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

basslinesectionb = {
    \repeat volta 2 {
        \time 3/4
        s2. |
        s2. |
        \time 4/4
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

bassline = {
    \time 4/4
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
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
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    d1 |
    c2:min d2 |
    d1 |
    c2:min7 g2:min |

    g2:min c2:min |
    g1:min |
    c2:min d2:7 |
    c2:min d2 |
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \time 3/4
        bes2 c4:min |
        c2:min g4:min |
        \time 4/4
        g2:min d2 |
    } \alternative {
        { c2:min d2 | }
        { c2:min d2 | }
    }
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 4/4
    \preintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiona
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
    \key bes \major
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarnotessectionb = {
    \repeat volta 2 {
        \time 3/4
        s2. |
        s2. |
        \time 4/4
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarnotes = {
    \time 4/4
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
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
    \key bes \major
    d'8 d'16 d'16 fis'8 g'8 a'2 |
    g'8. fis'16 ees'8 fis'8 d'4 d'8. d'16 |
    d'8 d'8 fis'8 g'8 a'4 a'8 c''8 |
    bes'8 a'8 g'8 fis'16 a'16 g'4 g'4 |

    d''8 c''16 c''16 bes'8 d''8 c''4. bes'8 |
    d''8. c''16 bes'8 a'8 g'4 g'8 g'16 g'16 |
    c''8 bes'8 a'8 g'8 fis'8. ( ees'16 d'8 ees'8 ) |
    g'8 fis'8 ees'8 fis'8 d'4 d'4 |
}

pianorightnotessectionb = {
% currently identical to voiceone
    \repeat volta 2 {
        \time 3/4
        r8 d''8 d''8 d''8 ees''16 ( d''16 c''16 bes'16 ) |
        c''8 c''8 c''8 c''8 d''16 ( c''16 bes'16 a'16 ) |
        \time 4/4
        bes'8 bes'8 a'8 g'8 fis'8. ( ees'16 ) d'8 ( ees'8 ) |
    } \alternative {
        { g'8. fis'16 ees'8 fis'8 d'4 ( d''4 ) | }
        { g'8. fis'16 ees'8 fis'8 d'2 | }
    }
}

pianorightnotes = {
    \time 4/4
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 4/4
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotessectiona = {
    \key bes \major
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

pianoleftnotessectionb = {
    \repeat volta 2 {
        \time 3/4
        s2. |
        s2. |
        \time 4/4
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoleftnotes = {
    \time 4/4
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 4/4
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        \time 3/4
        s2. |
        s2. |
        \time 4/4
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
}

drumslowsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \time 3/4
        s2. |
        s2. |
        \time 4/4
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
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
    Cuan- do el rey Nim- rod
    al cam- po sa- li- a mi-
    ra- va- en el cie- lo y
    en la es- tre- ye- ri- a
    vi- do u- na luz san- ta
    en la giu- de- ri a que ha-
    vi a de na- cer __
    Av- ra- ham a- vi- nu
    Av- ram a- vi-
    nu pa- dre que- ri-
    do pa- dre ben- di- cho __
    luz de Is- ra- el __
    luz de Is- ra- el
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 4/4
    d1 |
    c2:min d2 |
    d1 |
    c2:min7 g2:min |
}

previewnotes = {
    \time 4/4
    \key bes \major
    \tempo \tempostring
    d'8 d'16 d'16 fis'8 g'8 a'2 |
    g'8. fis'16 ees'8 fis'8 d'4 d'8. d'16 |
    d'8 d'8 fis'8 g'8 a'4 a'8 c''8 |
    bes'8 a'8 g'8 fis'16 a'16 g'4 g'4 |
}

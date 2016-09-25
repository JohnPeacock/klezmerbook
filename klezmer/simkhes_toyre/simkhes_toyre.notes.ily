\version "2.18.2"

bandmintro = {
    s2 | \breakINone s2 | \breakINtwo s2 | \breakINtre s2 | \breakINfor
    s2 | \breakINfiv s2 | \breakINsix s2 | \breakINsev s2 | \breakIN
}

bandmverse = {
    \markS \positionS
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakA
}

bandmchorusone = {
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakB
}

bandmchorustwo = {
    \markCH \positionCH
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
    } \alternative {
        { s2 | \breakCeit }
        { \markDSsimple \positionDS s2 | \breakC }
    }
}

bandm = {
    \time 2/4
    \repeat volta 2 { \bandmintro }
    \bar ".|:-||"
    \bandmverse
    \bandmchorustwo
    \bar "||"
    \markBridge \positionBridge
    \bandmintro
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
    \tempo 4 = 120
    \repeat volta 2 { \bandmintro }
    \bandmverse
    \bandmchorusone
    \bandmverse
    \bandmchorusone
    \bandmverse
    \bandmverse
    \bandmintro % as chorus
    \bandmverse
    \bandmverse
    \bandmchorusone
    \bandmverse
    \bandmchorustwo
}

voiceoneintro = {
    f''4 ees''4 |
    d''4 c''4 |
    bes'8 c''8 bes'8 c''8 |
    d''8 d''8 d''8 r8 |

    f''4 ees''4 |
    d''4 c''4 |
    bes'8 c''8 bes'8 a'8 |
    g'4. r8 |
}

voiceoneverse = {
    g'8 g'8 c''8 bes'8 |
    c''8 bes'8 c''8 bes'8 |
    g'8 g'8 c''8 bes'8 |
    g'8 a'8 bes'8 r8 |

    g'8 g'8 c''8 bes'8 |
    c''8 bes'8 c''8 bes'8 |
    g'8 g'8 c''8 bes'8 |
    bes'8 a'8 g'4 |
}

voiceonechorusone = {
    d''4 d''4 |
    d''8 d''8 d''4 |
    d''8 c''8 bes'8 c''8 |
    d''8 d''8 d''4 |

    d''8 c''8 bes'8 c''8 |
    bes'8 a'8 g'4 |
    a'8 c''8 bes'8 a'8 |
    g'4. r8 |
}

voiceonechorustwo = {
    \repeat volta 2 {
        d''4 d''4 |
        d''8 d''8 d''4 |
        d''8 c''8 bes'8 c''8 |
        d''8 d''8 d''4 |

        d''8 c''8 bes'8 c''8 |
        bes'8 a'8 g'4 |
        a'8 c''8 bes'8 a'8 |
    }
    \alternative {
        { g'8 ( a'8 bes'8 c''8 ) | }
        { g'4. r8 | }
    }
}

melodynotes = \transpose c d {
    \key g \minor
    \time 2/4
    \repeat volta 2 { \voiceoneintro }
    \voiceoneverse
    \voiceonechorustwo
    \voiceoneintro
}

melodynotesmidi = \transpose c d {
    \key g \minor
    \time 2/4
    \preintro
    \repeat volta 2 {
        \voiceoneintro
    }
    \voiceoneverse
    \voiceonechorusone
    \voiceoneverse
    \voiceonechorusone
    \voiceoneverse
    \voiceoneverse
    \voiceoneintro % as chorus
    \voiceoneverse
    \voiceoneverse
    \voiceonechorusone
    \voiceoneverse
    \voiceonechorustwo
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = \transpose c d {
    \time 2/4
    \key g \minor
}

tenorharmonymidi = \transpose c d {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = \transpose c d {
    \time 2/4
    \key g \minor
}

countermidi = \transpose c d {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    f4 ees4 |
    d4 c4 |
    bes,4 bes,4 |
    d8 d8 d8 r8 |

    f4 ees4 |
    d4 c4 |
    bes,4 bes,4 |
    g,4 r4 |
}

basslineverse = {
    g,4 c4 |
    g,4 c4 |
    g,4 c4 |
    g,8 a,8 bes,4 |

    g,4 c4 |
    g,4 c4 |
    g,4 c4 |
    bes,8 a,8 g,4 |
}

basslinechorusone = {
    d4 d4 |
    d8 d8 d4 |
    d4 bes,4 |
    d8 d8 d4 |

    d4 bes,4 |
    bes,4 g,4 |
    a,4 bes,4 |
    g,4 r4 |
}

basslinechorustwo = {
    \repeat volta 2 {
        d4 d4 |
        d8 d8 d4 |
        d4 bes,4 |
        d8 d8 d4 |

        d4 bes,4 |
        bes,4 g,4 |
        a,4 bes,4 |
    } \alternative { { g,8 a,8 bes,8 c8 | } { g,4 r4 | } }
}

bassline = \transpose c d {
    \time 2/4
    \key g \minor
    \repeat volta 2 { \basslineintro }
    \basslineverse
    \basslinechorustwo
    \basslineintro
}

basslinemidi = \transpose c d {
    \preintro
    \repeat volta 2 { \basslineintro }
    \basslineverse
    \basslinechorusone
    \basslineverse
    \basslinechorusone
    \basslineverse
    \basslineverse
    \basslineintro % as chorus
    \basslineverse
    \basslineverse
    \basslinechorusone
    \basslineverse
    \basslinechorustwo
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = { \melodynotes }
flutenotesmidi = { \melodynotesmidi }

clarinetnotes = \transpose bes c' { \melodynotes }
clarinetnotesmidi = \transpose bes c' { \melodynotesmidi }

altosaxnotes = \transpose ees c { \melodynotes }
altosaxnotesmidi = \transpose ees c { \melodynotesmidi }

tenorsaxnotes = \transpose bes c' { \tenorharmony }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorsaxnotesmidi = { \tenorharmonymidi }

trumpetnotes = \transpose bes c { \melodynotes }
trumpetnotesmidi = \transpose bes c { \melodynotesmidi }

trombonenotes = { \counter }
trombonenotesmidi = { \countermidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

violinnotes = { \melodynotes }
violinnotesmidi = { \melodynotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    f4 ees4 |
    d4:min c4:min  |
    bes2 |
    d2:min |

    f4 ees4 |
    d4:min c4:min  |
    bes2 |
    g2:min |
}

chordlettersverse = \chordmode {
    g4:min c4:min |
    c2:min |
    g4:min c4:min |
    g4:min bes4 |

    g4:min c4:min |
    c2:min |
    g4:min c4:min |
    bes4 g4:min |
}

chordletterschorusone = \chordmode {
    d2:min |
    d2:min |
    d4:min bes4 |
    d2:min |

    d4:min bes4 |
    bes4 g4:min |
    a4:dim bes4 |
    g2:min |
}

chordletterschorustwo = \chordmode {
    \repeat volta 2 {
    d2:min |
    d2:min |
    d4:min bes4 |
    d2:min |

    d4:min bes4 |
    bes4 g4:min |
    a4:dim bes4 |
    } \alternative { { g2:min | } { g2:min | } }
}

chordletters = \chordmode { \transpose c d {
    \repeat volta 2 { \chordlettersintro }
    \chordlettersverse
    \chordletterschorustwo
    \chordlettersintro
} }

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

guitarnotes = \transpose c d {
    \time 2/4
    \key g \minor
}

guitarnotesmidi = \transpose c d {
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

pianorightnotes = \transpose c d {
    \time 2/4
    \key g \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = \transpose c d {
    \time 2/4
    \key g \minor
}

pianorightnotesmidi = \transpose c d {
    \preintro
}

pianoleftnotes = \transpose c d {
    \time 2/4
    \key g \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = \transpose c d {
    \time 2/4
    \key g \minor
}

pianoleftnotesmidi = \transpose c d {
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetintro = {
    f''4 ees''4 |
    d''4 c''4 |
    bes'8 c''8 bes'8 c''8 |
    d''8 d''8 d''8 r8 |

    f''4 ees''4 |
    d''4 c''4 |
    bes'8 c''8 bes'8 a'8 |
    g'4. r8 |
}

leadsheetverse = {
    g'8 g'8 c''8 bes'8 |
    c''8 bes'8 c''8 bes'8 |
    g'8 g'8 c''8 bes'8 |
    g'8 a'8 bes'8 r8 |

    g'8 g'8 c''8 bes'8 |
    c''8 bes'8 c''8 bes'8 |
    g'8 g'8 c''8 bes'8 |
    bes'8 a'8 g'4 |
}

leadsheetchorusone = {
    d''4 d''4 |
    d''8 d''8 d''4 |
    d''8 c''8 bes'8 c''8 |
    d''8 d''8 d''4 |

    d''8 c''8 bes'8 c''8 |
    bes'8 a'8 g'4 |
    a'8 c''8 bes'8 a'8 |
    g'4. r8 |
}

leadsheetchorustwo = {
    \repeat volta 2 {
        d''4 d''4 |
        d''8 d''8 d''4 |
        d''8 c''8 bes'8 c''8 |
        d''8 d''8 d''4 |

        d''8 c''8 bes'8 c''8 |
        bes'8 a'8 g'4 |
        a'8 c''8 bes'8 a'8 |
    }
    \alternative {
        { g'8 ( a'8 bes'8 c''8 ) | }
        { g'4. r8 | }
    }
}

leadsheetnotes = \transpose c d {
    \key g \minor
    \time 2/4
    \repeat volta 2 { \leadsheetintro }
    \leadsheetverse
    \leadsheetchorustwo
    \leadsheetintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    Kin- "der, mir" ha- ben Sim- khes Toy- re,
    Sim- khes "Toy- re" "oyf der" gan- tser velt.
    Toy- re iz di best- e skhoy- re
    "A- zoy" "hot der" "re- be" mit unts ge- knelt.

    Oy, oy, oy, oy, oy!
    Frey- lekh, kin- der ot a- zoy!
    Rend- lekh falln fun al- e zek,
    Frey- lekh, on an ek! __ ek!

    Oy, oy, oy, oy!
    Frey- lekh, kin- der ot a- zoy!
    Oy, oy, oy, oy!
    Frey- lekh, on an ek!
}
textlb = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    Kotsh ikh bin an or- em yi- dl,
    Un es dart mir gut der "moy- ekh,"
    Sim- khes Toy- re, zing "ikh a" li- dl
    "Un makh" a gut- e koys- e oykh.
}
textlc = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    Dvoy- re, gib mir "di nay-" e "ka- pot-" e,
    "Ikh vel" zi ont- on "tak- e" at- sind.
    "Ikh vil" dir zog- n,  "Alts- ding" is blot- e,
    "A- bi" m'iz, "bor- ekh" ha- shem ge- zint.
}
textld = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    Dvoy- re, gib zhe nokh a glez- l,
    Fun dem yon- tev- dik- n vayn.
    Vos "host- u" "a- rop-" ge- lozt dos nez- l?
    "A ru- ekh" "in may- ne" son- ims "tat- n" a- rayn.
}
textle = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    Oy vey, Dvoy- re, "vos host-" u moy- re?
    "Kh'bin a" "bis- l" frey- lekh, kh'kon nit shteyn?
    Dvoy- re "leb- n" um Sim- khes Toy- re.
    "Ver iz" nit frey- lekh zog a- leyn!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode { \transpose c d {
    \time 2/4
    g4:min c4:min |
    c2:min |
    g4:min c4:min |
    g4:min bes4 |
} }

previewnotes = \transpose c d {
    \time 2/4
    \key g \minor
    \tempo \tempostring
    g'8 g'8 c''8 bes'8 |
    c''8 bes'8 c''8 bes'8 |
    g'8 g'8 c''8 bes'8 |
    g'8 a'8 bes'8 r8 |
}

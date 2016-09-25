\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = { }

tenorharmonymidi = { }

counter = { }

countermidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = {
    \partial 2 s2 |
    s1 | \breakINone s1 | \breakINtwo s1 | \breakINtre s1 | \breakINfor
    s1 | \breakINfiv s1 | \breakINsix s1 | \breakINsev s1 | \breakINeit
    s1 | \breakINnin s1 | \breakINten s1 | \breakINelv s1 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar "||"
}

violinbandmintro = {
    \partial 2 s2 |
    s1*10 | \breakINten s1 | \breakINelv s1 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar "||"
}

clarinetbandmintro = {
    \partial 2 s2 |
    s1*8 | \breakINeit
    s1 | \breakINnin s1 | \breakINten s1 | \breakINelv s1 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar "||"
}

trombonebandmintro = {
    \partial 2 s2 |
    s1*8 | \breakINeit
    s1 | \breakINnin s1 | \breakINten s1 | \breakINelv s1 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar "||"
}

trumpetbandmintro = {
    \partial 2 s2 |
    s1*12 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar "||"
}

bandmsectiona = {
    \markA \positionA
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakAsxt
    s1 | \breakAsvt s1 | \breakAett s1 | \breakAnnt s1 | \breakAtwy
    s1 | \breakAtwone s1 | \breakAtwtwo s1 | \breakAtwtre s1 | \breakAtwfor
    s1 | \breakAtwfiv s1 | \breakAtwsix s1 | \breakAtwsev s1 | \breakAsweit
    s1 | \breakAtwnin s1 | \breakAthty s1 | \breakAthone s1 | \breakAthtwo
    \bar "||"
}

trombonebandmsectiona = {
    \markA \positionA
    s1*4 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakAsxt
    s1 | \breakAsvt s1 | \breakAett s1 | \breakAnnt s1 | \breakAtwy
    s1 | \breakAtwone s1 | \breakAtwtwo s1 | \breakAtwtre s1 | \breakAtwfor
    s1 | \breakAtwfiv s1 | \breakAtwsix s1 | \breakAtwsev s1 | \breakAsweit
    s1 | \breakAtwnin s1 | \breakAthty s1 | \breakAthone s1 | \breakAthtwo
    \bar "||"
}

melodybandmsectionb = {
    \markB \positionB
    s1*32 |
    \bar "||"
}

bandmsectionb = {
    \markB \positionB
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 | \breakBeit
    s1 | \breakBnin s1 | \breakBten s1 | \breakBelv s1 | \breakBtwl
    s1 | \breakBtht s1 | \breakBfrt s1 | \breakBfft s1 | \breakBsxt
    s1 | \breakBsvt s1 | \breakBett s1 | \breakBnnt s1 | \breakBtwy
    s1 | \breakBtwone s1 | \breakBtwtwo s1 | \breakBtwtre s1 | \breakBtwfor
    s1 | \breakBtwfiv s1 | \breakBtwsix s1 | \breakBtwsev s1 | \breakBsweit
    s1 | \breakBtwnin s1 | \breakBthty s1 | \breakBthone s1 | \breakBthtwo
    \bar "||"
}

bandmsectionc = {
    \markC \positionC
    s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 | \breakCeit
    s1 | \breakCnin s1 | \breakCten s1 | \breakCelv s1 | \breakCtwl
    s1 | \breakCtht s1 | \breakCfrt s1 | \breakCfft s1 | \breakCsxt
    s1 | \breakCsvt s1 | \breakCett s1 | \breakCnnt s1 | \breakCtwy
    s1 | \breakCtwone s1 | \breakCtwtwo s1 | \breakCtwtre s1 | \breakCtwfor
    s1 | \breakCtwfiv s1 | \breakCtwsix s1 | \breakCtwsev s1 | \breakCsweit
    s1 | \breakCtwnin s1 | \breakCthty s1 | \breakCthone s1 | \breakCthtwo
    s1 | \breakCthtre s1 |
}

trombonebandmsectionc = {
    \markC \positionC
    s1*4 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 | \breakCeit
    s1 | \breakCnin s1 | \breakCten s1 | \breakCelv s1 | \breakCtwl
    s1 | \breakCtht s1 | \breakCfrt s1 | \breakCfft s1 | \breakCsxt
    s1 | \breakCsvt s1 | \breakCett s1 | \breakCnnt s1 | \breakCtwy
    s1 | \breakCtwone s1 | \breakCtwtwo s1 | \breakCtwtre s1 | \breakCtwfor
    s1 | \breakCtwfiv s1 | \breakCtwsix s1 | \breakCtwsev s1 | \breakCsweit
    s1 | \breakCtwnin s1 | \breakCthty s1 | \breakCthone s1 | \breakCthtwo
    s1 | \breakCthtre s1 |
}

bandmNV = {
    \tempo \markupTintro
    \time 4/4
    \bandmintro
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

melodybandm = {
    \tempo \markupTintro
    \time 4/4
    \bandmintro
    \tempo \tempostring
    \bandmsectiona
    \melodybandmsectionb
    \bandmsectionc
    \bar "|."
}

violinbandm = {
    \tempo \markupTintro
    \time 4/4
    \violinbandmintro
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

clarinetbandm = {
    \tempo \markupTintro
    \time 4/4
    \clarinetbandmintro
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

trombonebandm = {
    \tempo \markupTintro
    \time 4/4
    \trombonebandmintro
    \tempo \tempostring
    \trombonebandmsectiona
    \bandmsectionb
    \trombonebandmsectionc
    \bar "|."
}

trumpetbandm = {
    \tempo \markupTintro
    \time 4/4
    \trumpetbandmintro
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

leadsheetbandmNV = { \melodybandm }

bandm = { \bandmNV }

%-------------------------------------------------

preintro = { s1 }
metronomeintro = {
    \time 4/4
    s2 s2 |
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |
}

metronome = \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 90
    \metronomeintro
    \tempo 4 = 140
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 2 a2:7 |
    % 1
    d2:min d2:min6 | g2:min a2:7 | d4:min a4:aug f4 d4:min6 | g2:min a2:7 |
    % 5
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
    % 9
    d2:min d2:min6 | g2:min a2:7 | d4:min a4:aug f4 d4:min5 | g2:min a2:7 |
    % 13
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
}

violinchordlettersintro = \chordmode {
    \partial 2 s2 |
    s1*10 | d4:min a4:aug f4 d4:min5 | g2:min a2:7 |
    % 13
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
}

clarinetchordlettersintro = \chordmode {
    \partial 2 s2 |
    s1*8 |
    % 9
    d2:min d2:min6 | g2:min a2:7 | d4:min a4:aug f4 d4:min5 | g2:min a2:7 |
    % 13
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
}

trombonechordlettersintro = \chordmode {
    \partial 2 s2 |
    s1*8 |
    % 9
    d2:min d2:min6 | g2:min a2:7 | d4:min a4:aug f4 d4:min5 | g2:min a2:7 |
    % 13
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
}

trumpetchordlettersintro = \chordmode {
    \partial 2 s2 |
    s1*12 |
    % 13
    d4:min f4 d2:min6 | g4:min g4:min7 g2:min6 | d2:min bes2 | a1:7 |
}

chordletterssectiona = \chordmode {
    % 17
    d1:min6 | d1:min6 | d1:min6.9 | d1:min6.9 |
    % 21
    a1:7 | a1:7 | d1:min6 |
    g4.:min a8:7 \noChordStringOn d2:maj7 \noChordStringOff |
    % 25
    d1:min6 | d1:min6 | d1:min6 | d1:min6 |
    % 29
    a1:7 | a1:7 | d1:min | d2:min a4:7 d4:min |
    % 33
    g1:min | g4:min g4:min7 g4:min6 g4:min | d1:min6 | d2:min a4:7 d4:min |
    % 37
    g1:min | g4:min d4:min a4:7 d4:min | a1:7 | a1:7 |
    % 41
    d2:min a2:7 | d1:min | d2:min6.9 d2:min | d1:min9 |
    % 45
    a1:7 | a1:7 | d1:min | g2:min g8:min d4.:7 |
}

trombonechordletterssectiona = \chordmode {
    % 17
    s1*4 |
    % 21
    \chordChangesOff a1:7 \chordChangesOn | a1:7 | d1:min6 |
    g4.:min a8:7 \noChordStringOn d2:maj7 \noChordStringOff |
    % 25
    d1:min6 | d1:min6 | d1:min6 | d1:min6 |
    % 29
    a1:7 | a1:7 | d1:min | d2:min a4:7 d4:min |
    % 33
    g1:min | g4:min g4:min7 g4:min6 g4:min | d1:min6 | d2:min a4:7 d4:min |
    % 37
    g1:min | g4:min d4:min a4:7 d4:min | a1:7 | a1:7 |
    % 41
    d2:min a2:7 | d1:min | d2:min6.9 d2:min | d1:min9 |
    % 45
    a1:7 | a1:7 | d1:min | g2:min g8:min d4.:7 |
}

melodychordletterssectionb = \chordmode {
    s1*31 |
    a1:7 |
}

chordletterssectionb = \chordmode {
    % 49
    g2:min6 a2:7.9-/g |
    g1:min |
    g1:min |
    g1:min |
    % 53
    d1:7 |
    d1:7 |
    g1:min6 |
    c4.:min6 d8:7+ d2:7+ |
    % 57
    g1:min6 |
    g1:min6 |
    g2.:min6 f8:9 g8:min |
    g1:min |
    % 61
    d1:7 |
    d1:7 |
    g1:min |
    g1:min |
    % 65
    c2:min6 c2:min7 |
    c2:min6 c2:min7 |
    g1:min6 |
    g1:min6 |
    % 69
    c4.:min7 c4.:dim c4:min7 |
    c1:min7 |
    d1:aug7 |
    d1:aug7 |
    % 73
    g1:min6 |
    g1:min6 |
    g1:min6 |
    g1:min6 |
    % 77
    g2:min6 d2:7 |
    d1:7 |
    g2:min6 g8:min6 e4.:7 |
    a1:7 |
}

chordletterssectionc = \chordmode {
    % 81
    d1:min6 | d1:min6 | d1:min6.9 | d1:min6.9 |
    % 85
    a1:7 | a1:7 | d1:min6 |
    g4.:min a8:7 \noChordStringOn d2:maj7 \noChordStringOff |
    % 89
    d1:min6 | d1:min6 | d1:min6 | d1:min6 |
    % 93
    a1:7 | a1:7 | d1:min | d2:min a4:7 d4:min |
    % 97
    g1:min | g4:min g4:min7 g4:min6 g4:min | d1:min6 | d2:min a4:7 d4:min |
    % 101
    g1:min | g4:min d4:min a4:7 d4:min | a1:7 | a1:7 |
    % 105
    d2:min a2:7 | d1:min | d2:min6.9 d2:min | d1:min9 |
    % 109
    a1:7 | a1:7 | d1:min | g2:min e2:7 |
    % 113
    e4:7 \noChordStringOn d2:maj7 ~ d8:maj7 \noChordStringOff d8:min6 |
    \noChordStringOn d4.:maj7 \noChordStringOff d8:min6 d2:min6 |
}

trombonechordletterssectionc = \chordmode {
    % 81
    s1*4 |
    % 85
    \chordChangesOff a1:7 \chordChangesOn | a1:7 | d1:min6 |
    g4.:min a8:7 \noChordStringOn d2:maj7 \noChordStringOff |
    % 89
    d1:min6 | d1:min6 | d1:min6 | d1:min6 |
    % 93
    a1:7 | a1:7 | d1:min | d2:min a4:7 d4:min |
    % 97
    g1:min | g4:min g4:min7 g4:min6 g4:min | d1:min6 | d2:min a4:7 d4:min |
    % 101
    g1:min | g4:min d4:min a4:7 d4:min | a1:7 | a1:7 |
    % 105
    d2:min a2:7 | d1:min | d2:min6.9 d2:min | d1:min9 |
    % 109
    a1:7 | a1:7 | d1:min | g2:min e2:7 |
    % 113
    e8:7 \noChordStringOn d2.:maj7 \noChordStringOff d8:min6 |
    \noChordStringOn d4.:maj7 \noChordStringOff d8:min6 d2:min6 |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}
guitarchordletters = \chordletters
leadsheetchordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \melodychordletterssectionb
    \chordletterssectionc
}
pianochordletters = \chordletters
melodychordletters = \leadsheetchordletters
clarinetchordletters = \transpose bes, c { \chordmode {
    \clarinetchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
} }
trumpetchordletters = \transpose bes, c { \chordmode {
    \trumpetchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
} }
altosaxchordletters = \transpose ees c { \chordmode {
    \trumpetchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
} }
altoclarinetchordletters = \transpose ees c { \chordmode {
    \trumpetchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
} }
violinchordletters = \chordmode {
    \violinchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}
flutechordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
}
trombonechordletters = \chordmode {
    \trombonechordlettersintro
    \trombonechordletterssectiona
    \chordletterssectionb
    \trombonechordletterssectionc
}
tenorsaxchordletters = \transpose bes c { \chordmode {
    \trombonechordlettersintro
    \trombonechordletterssectiona
    \chordletterssectionb
    \trombonechordletterssectionc
} }
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro = {
    \key d \minor
    \partial 2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarmidiintro = {
    \key d \minor
    s2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarsectiona = {
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

guitarsectionb = {
    \key g \minor
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

guitarsectionc = {
    \key d \minor
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

guitarnotes = {
    \time 4/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \guitarmidiintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vocals only

melodyintro = {
    \key d \minor
    \partial 2 r8 a'8\f d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''4 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''4 g''8 g''8 g''4 f''8 g''8 |
    a''4 a''8 a''8 c'''4 bes''4 |
    a''2 ~ a''8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    f''4 f''4 f''4 e''8 d''8 |
    g''4 g''4 g''4 f''8 g''8 |
    a''4 a''4 c'''4 bes''4 |
    a''2 ~ a''8 r8 a'4 |
}

melodymidiintro = {
    \key d \minor
    s2 r8 a'8\f d''8 e''8 |
    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''4 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''4 g''8 g''8 g''4 f''8 g''8 |
    a''4 a''8 a''8 c'''4 bes''4 |
    a''2 ~ a''8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    f''4 f''4 f''4 e''8 d''8 |
    g''4 g''4 g''4 f''8 g''8 |
    a''4 a''4 c'''4 bes''4 |
    a''2 ~ a''8 r8 a'4 |
}

melodysectiona = {
    f''2\ff e''4 d''4 |
    f''2. a'4 |
    f''2 e''4 d''4 |
    f''2. f''4 |

    e''2 cis''4 a'4 |
    e''4 e''4 f''4 e''4 |
    d''1 ~ |
    d''2. a''4 |

    f''2 e''4 d''4 |
    f''2. a'4 |
    f''2 e''4 d''4 |
    f''2. f''4 |

    e''2 cis''4 a'4 |
    e''4 e''4 f''4 e''4 |
    d''1 ~ |
    d''4 d''4 e''4 f''4 |

    g''2 d''4 g''4 ~ |
    g''4 f''4 e''4 d''4 |
    f''2 f''4 d''4 |
    f''4 d''4 e''4 f''4 |

    g''2 d''4 g''4 ~ |
    g''4 f''4 e''4 d''4 |
    r4 a''4 a''4 e''4 |
    a''4 r4 r4 a'4 |

    f''2 e''4 d''4 |
    f''2 r4 a'4 |
    f''2 e''4 d''4 |
    f''2 r4 f''4 |

    e''2 cis''4 a'4 |
    a''4 g''4 e''4 f''4 |
    d''1 ~ |
    d''4 r4 r2 |
}

melodysectionb = {
    \key g \minor
    R1*31 |
    r2 r4 a'4 |
}

melodysectionc = {
    \key d \minor
    f''2\ff e''4 d''4 |
    f''2. a'4 |
    f''2 e''4 d''4 |
    f''2. f''4 |

    e''2 cis''4 a'4 |
    e''4 e''4 f''4 e''4 |
    d''1 ~ |
    d''2. a''4 |

    f''2 e''4 d''4 |
    f''2. a'4 |
    f''2 e''4 d''4 |
    f''2. f''4 |

    e''2 cis''4 a'4 |
    e''4 e''4 f''4 e''4 |
    d''1 ~ |
    d''4 d''4 e''4 f''4 |

    g''2 d''4 g''4 ~ |
    g''4 f''4 e''4 d''4 |
    f''2 f''4 d''4 |
    f''4 d''4 e''4 f''4 |

    g''2 d''4 g''4 ~ |
    g''4 f''4 e''4 d''4 |
    r4 a''4 a''4 e''4 |
    a''4 r4 r4 a'4 |

    f''2 e''4 d''4 |
    f''2 r4 a'4 |
    f''2 e''4 d''4 |
    f''2 r4 f''4 |

    e''2 cis''4 a'4 |
    a''4 g''4 e''4 f''4 |
    d''1 ~ |
    d''2. r4 |

    R1*2 |
}

melody = {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

melodymidi = {
    \preintro
    \melodymidiintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Of all the boys that I've known and I've known some;
    Un- til I first met you I was lone- some,
    and when you came in- to sight, dear my heart grew so light, dear;
    This old world seemed new to me._

    You're real- ly swell and I have to ad- mit you
    de- serve ex- pres- sions that tru- ly will fit you,
    and so I've wracked my brain, ho- ping to ex- plain
    all the things you do to me. __

    Bay mir bis- tu sheyn.
    Bay mir hos- tu kheyn.
    Bist ey- ne bai mir _ oif der velt. __
    Bay mir bis- tu git.
    Bay mir hos- tu "\"it\"."
    Bay mir bis- tu tai- ye- re fun gelt. __
    Fil shey- ne ying- lach ho- ben shoyn ge- volt ne- men
    mich, Un fun zey al- le oys- ge- kli- bn hob ich nor dich.
    Bay mir bis- tu sheyn.
    Bay mir hos- tu kheyn.
    Bist ey- ne bay mir _ oif def velt. __

    Bay mir bis- tu sheyn.  Please let me ex- plain.
    Bay mir bis- tu sheyn, means that you're grand. __
    Bay mir bis- tu sheyn, a- gain I'll ex- plain.
    It means you're the fair- est in the land. __

    I could say "\"be-" la, be- "la\"," e- ven say "\"vun-" der- "bar\"."
    Each lang- uage on- ly helps __ me tell you how grand you are.
    Bay mir bis- tu sheyn.  Please let me ex- plain.
    Bay mir bis- tu sheyn, means that you're grand. __

%    Bay mir bis -- tu shén.
%    Bay mir hos -- tu chén.
%    Bist é -- ne bai mir oif der velt.
%    Bay mir bis -- tu git.
%    Bay mir hos -- tu it.
%    Bay mir bis -- tu tai- ye- re fun gelt. __
%    Fil shé -- ne méd -- lach ho -- ben __ shoin __ ge -- volt __ ne -- men
%    mich __ un fun zé a -- le ois __ ge -- kli -- bn hob ich nor dich. __
%    Bay mir bis -- tu shén.
%    Bay mir hos -- tu chén.
%    Bist é -- ne bai mir oif def velt. __

}

%    Ven di zolst zain shvartz vi a tu- ter,
%    ven di host oi- gen vi bai a ku- ter,
%    un ven di hinks tsu bis- lach host hil- tser- ne fis- lach,
%    zug ich dos art mich __ nit.
%    Un ven di host a nar- ish- shen shmé- chl,
%    un ven di host vai- so- sos sé- chl,
%    ven di bist vild vi In- di- a- ner bist a -- fi -- lu
%    Ga -- litz -- ya -- ner zog ich dos art mich nit.
%    Zog mir vi er -- klers -- tu dos ch'vel dir zo -- gn bald far vus.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    \key d \minor
    \partial 2 < cis' e' g' a' >2\arpeggio\f |
    % 1
    f'2.\mp e'8 d'8 |
    < g bes d' g' >4 r4 < a a' >2 |
    < a d' f' >4 < a cis' f' >4 < a c' f' >4 < a b d' f' >4 |
    < g bes d' g' >2 < cis' e' a' >8-. r8 r4 |
    % 5
    < a d' f' >4 < a c' f' >4 < a b d' f' >2 |
    < g bes d' g' >4 < g bes d' f' >4 < g bes d' e' >2 |
    < a d' f' a' >2 < bes d' f' bes' >2 |
    < g cis' e' a' >2 r2 |
    % 9
    f'2. e'8 d'8 |
    < g bes d' g' >4 r4 < a a' >2 |
    < a d' f' >4 < a cis' f' >4 < a c' f' >4 < a b d' f' >4 |
    < g bes d' g' >2 < cis' e' a' >8-. r8 r4 |
    % 13
    < a d' f' >4 < a c' f' >4 < a b d' f' >2 |
    < g bes d' g' >4 < g bes d' f' >4 < g bes d' e' >2 |
    < a d' f' a' >2 < bes d' f' bes' >2 |
    < g cis' e' a' >2 r2 |
}

pianorightuppermidiintro = {
    \key d \minor
    s2 < cis' e' g' a' >2\arpeggio\f |
    % 1
    f'2.\mp e'8 d'8 |
    < g bes d' g' >4 r4 < a a' >2 |
    < a d' f' >4 < a cis' f' >4 < a c' f' >4 < a b d' f' >4 |
    < g bes d' g' >2 < cis' e' a' >8-. r8 r4 |
    % 5
    < a d' f' >4 < a c' f' >4 < a b d' f' >2 |
    < g bes d' g' >4 < g bes d' f' >4 < g bes d' e' >2 |
    < a d' f' a' >2 < bes d' f' bes' >2 |
    < g cis' e' a' >2 r2 |
    % 9
    f'2. e'8 d'8 |
    < g bes d' g' >4 r4 < a a' >2 |
    < a d' f' >4 < a cis' f' >4 < a c' f' >4 < a b d' f' >4 |
    < g bes d' g' >2 < g cis' e' a' >8-. r8 r4 |
    % 13
    < a d' f' >4 < a c' f' >4 < a b d' f' >2 |
    < g bes d' g' >4 < g bes d' f' >4 < g bes d' e' >2 |
    < a d' f' a' >2 < bes d' f' bes' >2 |
    < g cis' e' a' >2 r2 |
}

pianorightuppersectiona = {
    % 17
    r8\mf < f a b e' >4. r8 < f a b e' >4. |
    r8 a8 d'8 f'8 a'8 f'8 d'8 a8 |
    < f a b e' >4 < f a b e' >4-^ < f b e' >8 < f a b e' >4 < f a b e' >8 |
    r8 a'8 gis'8 a'8 f'8 f'8 e'8 d'8 |
    % 21
    < g cis' e' >2 a4 a4 |
    < a a' >8. < a a' >16 < g g' >4 < f f' >4 < e e' >4 |
    r8 < a b d' f' >4. d'8 < a b d' f' >4 d'8 |
    < bes d' g' >4.  < g cis' e' a' >8 r2 |
    % 25
    r8 < a b d' f' >4. r8 < a b d' f' >4. |
    < a b d' f' >8 a8 bes8 b8 ~ b8 r8 a4 |
    r8 < a b d' f' >4. r8 < f b e'>4. |
    r8 < a b d' f' >4. a'8 f'8 e'8 d'8 |
    % 29
    < g a cis' e' >2 a4 a4 |
    a4 bes4 b4 cis'4 |
    d'8 a8 d'8 e'8 f'8 g'8 e'8 f'8 |
    < f a b d' >4 < f a b d' >4 < g a cis' e' >4 < a b d' f' >4 |
    % 33
    < g bes d' g' >2 < g bes d' >2 |
    r4 < g bes d' f' >4 < g bes d' e' >4 < g bes d' >4 |
    < a b d' f' >2 r4 < a b d' f' >8 < a b d' f' >8-^ |
    r4 < f a d' >4 < g cis' e' >4 < a d' f' >4 |
    % 37
    < g bes d' g' >8 < g bes d' g' >8-^ r4 r4 d'8 < g bes d' g' >8-^ |
    r4 < a d' f' >4 < g cis' e' >4 < f a d' >4 |
    < g cis' e' a' >4 r4 r2 |
    R1 |
    % 41
    r4 < a d' f' >4 < g cis' e' >4 d'4 |
    r4 < a d' f' >4 r4 < a d' f' >4 |
    r8 < f b e' >4. r4 < f a d' >4 |
    r4 < f a e' >8 < f a e' >8 r4 cis'8 < f a e' >8 |
    % 45
    < g a cis' e' >4 r4 < g cis' e' >4 < g cis' e' >4 |
    a'8-^ g'4.-> f'4-- e'4-- |
    < f a b d' >4 r4 f'8 a'8 r8 d'8 |
    bes'8 g'8 bes'8 a'8 r8 < a c' d' fis' >4. |
}

pianorightuppersectionb = {
    \key g \minor
    % 49
    r4\f < bes d' e' g' >4 < bes d' e' a' >8 < bes d' e' g' >8 r4 |
    d'1 |
    < bes g' >8 < bes g' > 4 < bes g' >8 d'4 d'8 < bes g' >8 |
    R1 |
    % 53
    < c' d' fis' a' >2 r4 < c' d' f' >8 < c' d' f' >8 |
    < d' d'' >8-- < c' c'' >4-- < bes bes' >8-- ~ < bes bes' >8 < a a' >4-- < g g' >8-^ |
    r2 < d' e' g' bes' >2 |
    < c' ees' g' c'' >4. < c' fis' bes' d'' >8-^ r8 < d d' >4. |
    % 57
    r4 < d e g bes >4 r2 |
    r4 < d e g bes >4 r4 < e g bes d' >4 |
    r4 < g bes d' e' >4 r4 < a c' ees' g' >8 < g bes d' g' >8 |
    R1 |
    % 61
    r4 < a c' d' fis' > r4 < a c' d' fis' >4 |
    r4 < a c' d' fis' > r4 < a c' d' fis' >4 |
    < bes d' g' >4 r8 cis''8 c''8 bes'8 g'8 f'8 |
    f'4 g'4-> a'4-^ bes'4-> |
    % 65
    r8 < g' a' c'' ees'' >8 r4 r8 < g' a' c'' ees'' >8 r4 |
    r8 < g' a' c'' ees'' >8 r4 r8 < g' a' c'' ees'' >8 r4 |
    < e' g' bes' d'' >2 < e' g' bes' d'' >4-^ < e' g' bes' d'' >8 < e' g' bes' d'' >8-^ |
    r8 g'4. a'4 bes'4 |
    % 69
    < ees' g' bes' c'' >4. < ees' fis' a' c'' >8 ~ < ees' fis' a' c'' >4 < ees' g' bes' c'' >4 ~ |
    < ees' g' bes' c'' >8 < ees' g' bes' c'' >4. < c' ees' g' a' >4-. < c' ees' g' >4-. |
    < c' fis' bes' d'' >2 f''8 bes'8 ees''8 < c' fis' bes' d'' >8-^ |
    r2 r8 < c' fis' bes' d'' >4. |
    % 73
    r8 < e g bes d' >4. < e g bes d' >4 r4 |
    < e g bes d' >4 r4 r2 |
    < e g bes d' >8 < e g bes d' >4. r4 bes8 < e g bes d' >8 |
    r2 r8 bes4. |
    % 77
    a4 r4 < fis a c' d' >4 r4 |
    r8 c'4.-> bes4-. a4-. |
    < d e g bes d' >4-^ r4 r8 < b d' e' aes' >4. |
    r8 < g a cis' f' >4.-> ~ < g a cis' f' >2 |
}

pianorightuppersectionc = {
    \key d \minor
    % 81
    r8\mf < f a b e' >4. r8 < f a b e' >4. |
    r8 a8 d'8 f'8 a'8 f'8 d'8 a8 |
    < f a b e' >4 < f a b e' >4 < f b e' >8 < f a b e' >4-^ < f a b e' >8 |
    r8 a'8 gis'8 a'8 f'8 f'8 e'8 d'8 |
    %  85
    < g cis' e' >2 a4 a4 |
    < a a' >8. < a a' >16 < g g' >4 < f f' >4 < e e' >4 |
    r8 < a b d' f' >4. d'8 < a b d' f' >4 d'8 |
    < bes d' g' >4. < g cis' e' a >8 r2 |
    % 89
    r8 < a b d' f' >4. r8 < a b d' f' >4. |
    < a b d' f' >8 a8 bes8 b8 ~ b8 r8 a4 |
    r8 < a b d' f' >4. r8 < f b e' >4. |
    r8 < a b d' f' >4. a'8 f'8 e'8 d'8 |
    % 93
    < g a cis' e' >2 a4 a4 |
    a4 bes4 b4 cis'4 |
    d'8 a8 d'8 e'8 f'8 g'8 e'8 f'8 |
    < f a b d' >4-> < f a b d' >4 < g a cis' e' >4 < a b d' f' >4 |
    % 97
    < g bes d' g' >2 < g bes d' >2 |
    r4 < g bes d' f' >4 < g bes d' e' >4 < g bes d' >4 |
    < a b d' f' >2 r4 < a b d' f' >8 < a b d' f' >8-^ |
    r4 < f a d' >4 < g cis' e' >4 < a d' f' >4 |

    < g bes d' g' >8 < g bes d' g' >8-^ r4 r4 d'8 < g bes d' g' >8-^ |
    r4 < a d' f' >4 < g cis' e' >4 < f a d' >4 |
    < g cis' e' a' >4-^ r4 r2 |
    R1 |

    r4 < a d' f' >4 < g cis' e' >4 d'4 |
    r4 < a d' f' >4 r4 < a d' f' >4 |
    r8 < f b e' >4. r4 < f a d' >4 |
    r4 < f a e' >8 < f a e' >8 r4 d'8 < f a e' >8 |

    < g a cis' e' >4 r4 < g cis' e' >4 < g cis' e' >4 |
    a'8 g'4.-> f'4-- e'4-- |
    d'4 s4 f'4 s4 |
    g'4 s4 gis'4 s4 |

    a'8 d''4 a'8 gis'8 g'8 f'8 d'8-^ |
    r4 r8 < f b d' >8 ~ < f b d' >2-\fermata |
}

pianorightuppernotes = {
    \time 4/4
    \stemUp
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
}

%-------------------------------------------------

pianorightlowerintro = {
    \key d \minor
    \partial 2 s2 |
    s4 cis'8 c'8 b4 s4 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s4 cis'8 c'8 b4 s4 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightlowermidiintro = {
    \key d \minor
    s2 s2 |
    s4 cis'8 c'8 b4 e'8 d'8 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s4 cis'8 c'8 b4 e'8 d'8 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightlowersectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightlowersectionb = {
    \key g \minor
    s1 | s8 < e g bes >4. ~ < e g bes >2 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightlowersectionc = {
    \key d \minor
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s8 < f a >4. s8 < a d' >4. | s8 < bes d' >4. s8 < b d' ees' >4. |
    s1 | s1 |
}

pianorightlowernotes = {
    \time 4/4
    \stemDown
    \pianorightlowerintro
    \pianorightlowersectiona
    \pianorightlowersectionb
    \pianorightlowersectionc
}

pianorightnotesmidi = <<
    {
        \preintro
        \pianorightuppermidiintro
        \pianorightuppersectiona
        \pianorightuppersectionb
        \pianorightuppersectionc
    }
    {
        \preintro
        \pianorightlowermidiintro
        \pianorightlowersectiona
        \pianorightlowersectionb
        \pianorightlowersectionc
    }
>>

%-------------------------------------------------

pianoleftupperintro = {
    \key d \minor
    \partial 2 < a, g >2\arpeggio |
    % 1
    d,8 d8 cis8 c8 b,4 r4 |
    g,4 r4 a,2 |
    < d, d >4 < cis, c >4 < c, c >4 < b,, b, >4 |
    < g,, g, >2 < a,, a, >8-. r8 r4 |
    % 5
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    < d, d >2 bes,2 |
    < a,, a, >2 r2 |
    % 9
    d,8 d8 cis8 c8 b,4 r4 |
    g,4 r4 a,2 |
    < d, d >4 < cis, cis >4 < c, c >4 < b,, b, >4 |
    < g,, g, >2 < a,, a, >8-. r8 r4 |
    % 13
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    < d, d >2 bes,2 |
    < a,, a, >2 r2 |
}

pianoleftuppermidiintro = {
    \key d \minor
    s2 < a, g >2\arpeggio |
    % 1
    d,8 d8 cis8 c8 b,4 r4 |
    g,4 r4 a,2 |
    < d, d >4 < cis, c >4 < c, c >4 < b,, b, >4 |
    < g,, g, >2 < a,, a, >8-. r8 r4 |
    % 5
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    < d, d >2 bes,2 |
    < a,, a, >2 r2 |
    % 9
    d,8 d8 cis8 c8 b,4 r4 |
    g,4 r4 a,2 |
    < d, d >4 < cis, cis >4 < c, c >4 < b,, b, >4 |
    < g,, g, >2 < a,, a, >8-. r8 r4 |
    % 13
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    < d, d >2 bes,2 |
    < a,, a, >2 r2 |
}

pianoleftuppersectiona = {
    % 17
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    % 21
    a,2 a,4 a,4 |
    a,8. a,16 g,4 f,4 e,4 |
    < d, d >4 r4 < d, d >4 r4 |
    < g, g >4. < a, a >8 r2 |
    % 25
    < d, d >4 r4 a,4 r4 |
    d,8 a,8 bes,8 b,8 ~ b,8 r8 a,4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    % 29
    a,2 a,4 a,4 |
    a, bes, b, cis  |
    < d, d >4 r4 < f, f >4 r4 |
    d4-^ d4 e4 f4 |
    % 33
    g,2 d,2 |
    < g, g >4 r4 < d, d >4 r4 |
    < d, d >2 r4 < d, d >8 < d, d >8-^ |
    r4 < d, d >4 < cis, cis >4 < c, c >4 |
    % 37
    < g, g >4 r4 r4 d8 < g, g >8 |
    r4 < f, f >4 < e, e >4 < d, d >4 |
    < a,, a, >4 r4 r2 |
    r8 a,8 bes,4 b,4 cis4 |
    % 41
    < d, d >4 r4 < a,, a, >4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    % 45
    r8 < a,, a, >4. a,4 a,4 |
    a8-^ g4.-> f4-- e4-- |
    < d, d >4 r4 r2 |
    r2 r8 < d, d >4. |
}

pianoleftuppersectionb = {
    \key g \minor
    % 49
    r4 < g, g >4 < g, g >2 |
    r8 < g,, g, >4. ~ < g,, g, >2 |
    < g, g >4 r4 < d, d >4 r8 < g, g >8 |
    r8 < f, f >4. < ees, ees >4 < d, d >4 |
    % 53
    < d, d >2 r4 < d, d >8 < d, d >8 |
    < d, d >8 < c, c >4 < bes,, bes, >8 ~ < bes,, bes, >8 < a,, a, >4 < g,, g, >8 |
    r2 < g, g >2 |
    < a, a >4. < d d' >8-^ r8 < d,, d, >4. |
    % 57
    g,4 r4 d,4 r4 |
    g,4 r4 d4 r4 |
    g,4 r4 c4 r8 g,8 |
    r8 < d, d >4. ~ < d, d >2 |
    % 61
    < d, d >4 r4 < fis, fis >4 r4 |
    < d, d >4 r4 < fis, fis >4 r4 |
    < g, g >4 r4 < d, d >4 r4 |
    < g, g >4 < g, g >4-> < a, a >4-^ < bes, bes >4-> |
    % 65
    < c c' >4 r4 < bes, bes >4 r4 |
    < a, a >4 r4 < g, g >4 r4 |
    < g, g >2 d4-^ d8 < g, g >8-^ |
    r8 < g, g >4. < a, a >4 < bes, bes >4 |
    % 69
    < c c' >4. < c c' >8 ~ < c c' >4 < c c' >4 ~ |
    < c c' >8 < c c' >4. a4 g4 |
    < d, d >2 < f, f >4. < d, d >8 |
    r2 r8 < d, d >4. |
    % 73
    g,4 r4 g,4 r4 |
    g,8. g,16 f,4 ees,4 d,4 |
    r8 < g, g >4. r4 d8 < g, g >8 |
    r2 r8 < bes,, bes, >4. |
    % 77
    < a,, a, >4 r4 < d, d >4 r4 |
    r8 < c, c >4. < bes,, bes, >4 < a,, a, >4 |
    < g,, g, >4 r4 r2 |
    < a,, a, >8 < a,, a, >8 < g,, g, >4 < f,, f, >4 < e,, e, >4 |
}

pianoleftuppersectionc = {
    \key d \minor
    % 81
    < d, d >4 r4 a, 4 r4 |
    < d, d >4 r4 a, 4 r4 |
    < d, d >4 r4 a, 4 r4 |
    < d, d >4 r4 a, 4 r4 |
    % 85
    a,2 a,4 a,4 |
    a,8. a,16 g,4 f,4 e,4 |
    < d, d >4 r4 < d, d >4 r4 |
    < g, g >4. < a, a >8 r2 |
    % 89
    < d, d >4 r4 a,4 r4 |
    d,8 a,8 bes,8 b,8 ~ b,8 r8 a,4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    % 93
    a,2 a,4 a,4 |
    a,4 bes,4 b,4 cis4 |
    < d, d >4 r4 < f, f >4 r4 |
    d4-^ d4 e4 f4 |
    % 97
    g,2 d,2 |
    < g, g >4 r4 < d, d >4 r4 |
    < d, d >2 r4 < d, d >8 < d, d >8-^ |
    r4 < d, d >4 < cis, cis >4 < c, c >4 |
    % 101
    < g, g >4 r4 r4 d8 < g, g >8 |
    r4 < f, f >4 < e, e >4 < d, d >4 |
    < a,, a, >4-^ r4 r2 |
    r8 a,8 bes,4 b,4 cis4 |
    % 105
    < d, d >4 r4 < a,, a, >4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    < d, d >4 r4 a,4 r4 |
    % 109
    r8 < a,, a, >4. a,4 a,4 |
    a8-^ g4.-> f4-- e4-- |
    r8 < d, d >4. r8 < f, f >4. |
    r8 < g, g >4. r8 < gis, gis >4. |
    % 113
    < a, a >4 r4 r4 r8 < d, d >8-^ |
    r4 r8 < d, d >8 ~ < d, d >2-\fermata |
}

pianoleftuppernotes = {
    \time 4/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
}

%-------------------------------------------------

pianoleftlowerintro = {
    \key d \minor
    \partial 2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoleftlowermidiintro = {
    \key d \minor
    s2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoleftlowersectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoleftlowersectionb = {
    \key g \minor
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoleftlowersectionc = {
    \key d \minor
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 |
}

pianoleftlowernotes = {
%    \time 4/4
%    \pianoleftupperintro
%    \pianoleftuppersectiona
%    \pianoleftuppersectionb
%    \pianoleftuppersectionc
}

pianoleftnotesmidi = <<
    {
        \preintro
        \pianoleftuppermidiintro
        \pianoleftuppersectiona
        \pianoleftuppersectionb
        \pianoleftuppersectionc
    }
    {
%        \preintro
%        \pianoleftlowermidiintro
%        \pianoleftlowersectiona
%        \pianoleftlowersectionb
%        \pianoleftlowersectionc
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \key e \minor
    \partial 2 r2 |
    R1*8 |
    % 9
    e'4\mp dis'8 ( d'8 cis'2 ) |
    a'8 fis'8 r4 r2 |
    g'4 g'8 ( g'8 g'2 ) |
    a'8 fis'8 r4 r2 |
    % 13
    e'4 d'4 cis'2 |
    e'4 e'4 c'2 |
    g'2 g'2 |
    dis'2 r2 |
}

clarinetmidiintro = {
    \key e \minor
    s2 s2 |
    s1*8 |
    % 9
    e'4\mp dis'8 ( d'8 cis'2 ) |
    a'8 fis'8 r4 r2 |
    g'4 g'8 ( g'8 g'2 ) |
    a'8 fis'8 r4 r2 |
    % 13
    e'4 d'4 cis'2 |
    e'4 e'4 c'2 |
    g'2 g'2 |
    dis'2 r2 |
}

clarinetsectiona = {
    % 17
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 ) |
    % 21
    fis'2 r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    a'8 ) c''4-^ b'8-. r2 |
    % 25
    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |
    % 29
    R1 |
    fis'2 g'8 fis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 ) |
    b'4-^ e'4-- fis'4-- g'4-> |
    % 33
    e'4 r4 r4 e'4 |
    r4 e'4 e'4 c'4 |
    e'2 r4 e'8 e'8-^ |
    r4 b4 dis'4 e'4 |
    % 37
    e'1 |
    e'4-^ e'4-^ e'4-^ c'4-^ |
    dis'4-^ r4 r2 |
    dis'4 r4 r2 |
    % 41
    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    cis'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 ) |
    % 45
    dis'2 r2 |
    dis'8-^ dis'4.-> dis'4-- dis'4-- |
    g'4-^ r4 e''8 ( g''8 ) r8 e''8 ( |
    a''8 f''8 a''8 dis''8 ) r8 gis'4-> r8 |
}

clarinetsectionb = {
    \key a \minor
    % 49
    R1 |
    r8 a''8 ( gis''8 a''8 e''8 c''8 b'8 a'8 |
    e''8 ) e''4-^ e''8 ( \tuplet 3/2 { d''8 [ e''8 d''8 ] } c''8 e''8-^ ) |
    r2 r8 e''8 ( a''8 c'''8 |
    % 53
    gis''4 ) r4 r4 gis'8 gis'8 |
    R1 |
    a'8 ( e'8 a'8 b'8 c''8 a'8 ) r8 e''8 |
    d''8-- e''4-- gis'8-^ r4 e'4 |
    % 57
    c''4 fis''4 a''8 ( e''8 c''8 a'8 |
    c''4 ) r4 r8 c''4. |
    c''8 ( a'8 gis'8 c'8 d''8 b'8 d''8 c''8 ) |
    r2 r8 e'8 ( a'8 c''8 |
    % 61
    gis'2 ) ~ gis'8 d'4-^ d'8 |
    gis'8 gis'4-^ f'8 ( e'8 d'8 gis'8 c'8 ) |
    r4 r8 dis''8 ( d''8 c''8 a'8 g'8 |
    a'4 ) e'4-> gis'4-^ a'4-> |
    % 65
    a'2 ~ a'8 r8 r4 |
    a'4 r8 c''8 b'8 a'4. |
    c''2 c''4-^ c''8 c''8-^ |
    r8 e'8 ( a'8 e'8 b'8 e'8 ) c''4 |
    % 69
    a'4.-> b'8-> ~ b'4 c''4-> ~ |
    c''8 a'4.-> f'4-. f'4-. |
    d''4-^ d''4-^ c''8 ( a'8 c''8 gis'8-^ ) |
    r2 r8 e'4. |
    % 73
    e'4 r4 r2 |
    r8 a''4. ~ a''4. e''8 |
    a''8 a''4 a''8 ( \tuplet 3/2 { f''8 [ g''8 f''8 ] } e''4 ) |
    a''8 e'''4. dis'''8 ( e'''8 c'''8 a''8 |
    % 77
    e''4 ) r4 d''8 d''4 e''8-^ |
    r8 d''4.-> e''4-. gis''4-. |
    c'''4-^ a'8 ( gis'8 a'8 bes'4. ) |
    r8 dis''4. ~ dis''2 |
}

clarinetsectionc = {
    \key e \minor
    % 81
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 |
    % 85
    fis'2 ) r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    a'8 c''4-^ ) b'8-. r2 |
    % 89
    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |
    % 93
    R1 |
    fis'2 g'8 fis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    b'4-^ ) e'4-- fis'4-- g'4-> |
    % 97
    e'4 r4 r4 e'4 |
    r4 e'4 e'4 c'4 |
    e'2 r4 e'8 e'8-^ |
    r4 b4 dis'4 e'4 |
    % 101
    e'1 |
    e'4-^ e'4-^ e'4-^ c'4-^ |
    dis'4-^ r4 r2 |
    dis'4 r4 r2 |
    % 105
    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    cis'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 |
    % 109
    dis'2 ) r2 |
    dis'8-^ dis'4.-> dis'4-- dis'4-- |
    r8 cis'4-> r8 r8 e'4-> r8 |
    r8 e'4 r8 r8 e'4 r8 |
    % 113
    b'8 e'4-^ b'8 ( ais'8 a'8 g'8 e'8 ) |
    r4 r8 cis''8 ~ cis''2-\fermata |
}

clarinetnotes = {
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

clarinetnotesmidi = {
    \time 4/4
    \preintro
    \clarinetmidiintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% violin

violinintro = {
    \key d \minor
    \partial 2 r2 |
    R1*10 |
    f'4 f'8 ( f'8 f'2 ) |
    g'8 e'8 r4 r2 |
    % 13
    f'4 f'4 f'2 |
    g'4 f'4 e'2 |
    a'2 c''4 ( bes'4 ) |
    a'2 r2 |
}

violinmidiintro = {
    \key d \minor
    s2 s2 |
    s1*10 |
    f'4\mp f'8 ( f'8 f'2 ) |
    g'8 e'8 r4 r2 |
    % 13
    f'4 f'4 f'2 |
    g'4 f'4 e'2 |
    a'2 c''4 ( bes'4 ) |
    a'2 r2 |
}

violinsectiona = {
    % 17
    R1\mf |
    r8 a'8 ( d''8 f''8 a''8 f''8 d''8 a'8 ) |
    R1 |
    r8 a''8 ( gis''8 a''8 f''8 f''8 e''8 d''8 ) |
    % 21
    e''2 r2 |
    R1 |
    r4 d'''8 ( cis'''8 d'''8 a''8 g''8 f''8 |
    g''8 ) bes''4-^ a''8-. r2 |
    % 25
    R1 |
    r8 a'8 ( bes'8 b'8 ~ b'8 ) r8 r4 |
    R1 |
    r8 a''8-. r8 gis''8 ( a''8 f''8 e''8 d''8 ) |
    % 29
    R1 |
    e''2 f''8 e''4. |
    d''8 ( a'8 d''8 e''8 f''8 g''8 e''8 f''8 ) |
    a''4-^ d''4-- e''4-- f''4-> |
    % 33
    g''4 r4 d''4 g''4 |
    r4 f''4 e''4 d''4 |
    f''2 r4 f''8 f''8-^ |
    r4 d''4 e''4 f''4 |
    % 37
    g''1 |
    g''4-^ f''4-^ e''4-^ d''4-^ |
    a''4-^ r4 r2 |
    a''4 r4 r2 |
    % 41
    R1 |
    r4 cis''8 ( d''8 ) r8 e''8 ( f''4 ) |
    f''4 r4 r2 |
    gis''8 ( a''8 g''8 f''8 e''8 d''8 cis''8 d''8 ) |
    % 45
    cis''2 r2 |
    cis''8-^ cis''4.-> cis''4-- cis''4-- |
    f'4-^ r4 d''8 ( f''8 ) r8 d''8 ( |
    g''8 e''8 g''8 cis''8 ) r8 fis'4 r8 |
}

violinsectionb = {
    \key g \minor
    % 49
    R1\f |
    r8 g''8 ( fis''8 g''8 d''8 bes'8 a'8 g'8 |
    d''8 ) d''4-^ d''8 ( \tuplet 3/2 { c''8 [ d''8 c''8 ] } bes'8 d''8-^ ) |
    r2 r8 d''8 ( g''8 bes''8 |
    % 53
    fis''4 ) r4 r4 fis'8 fis'8 |
    R1 |
    g''8 ( d''8 g''8 a''8 bes''8 g''8 ) r8 d'''8 |
    c'''8-- d'''4-- fis''8-^ r4 d''4 |
    % 57
    bes''4 e'''4 g'''8 ( d'''8 bes''8 g''8 |
    bes''4 ) r4 r8 bes''4. |
    bes''8 ( g''8 fis''8 bes'8 c'''8 a''8 c''' bes''8 ) |
    r2 r8 d''8 ( g''8 bes''8 |
    % 61
    fis''2 ) ~ fis''8 c''4-^ c''8 |
    fis''8 fis''4-^ ees''8 ( d''8 c''8 fis''8 bes'8 ) |
    r4 r8 cis'''8 ( c'''8 bes''8 g''8 f''8 |
    g''4 ) d''4-> fis''4-^ g''4-> |
    % 65
    c''2 ~ c''8 \grace { fis'16 } g'4. |
    c''4 r8 bes'8 a'8 g'4. |
    d''2 d''4-^ d''8 d''8-^ |
    r8 d'8 ( g'8 d'8 a'8 d'8 ) bes'4 |
    % 69
    c''4.-> c''8-> ~ c''4 c''4-> ~ |
    c''8-> bes'4.-> a'4-. g'4-. |
    d''4-^ d''4-^ f''8 ( bes'8 ees''8 d''8-^ ) |
    r2 r8 d'4. |
    % 73
    bes'4 r4 a'8 g'4. |
    bes'4 r4 r8 d''8 ( cis''8 d''8 |
    bes''8 ) bes''4 bes''8 ( \tuplet 3/2 { a''8 [ bes''8 a''8 ] } g''4 ) |
    g''8 d'''4. cis'''8 ( d'''8 bes''8 g''8 |
    % 77
    a'4 ) r4 fis'8 d'4 d''8-^ |
    r8 c''4.-> bes'4-. a'4-. |
    g'4-^ g'8 ( fis'8 g'8 aes'4. ) |
    r8 a'4.-> ~ a'2 |
}

violinsectionc = {
    \key d \minor
    % 81
    R1\mf |
    r8 a'8 ( d''8 f''8 a''8 f''8 d''8 a'8 ) |
    R1 |
    r8 a''8 ( gis''8 a''8 f''8 f''8 e''8 d''8 |
    % 85
    e''2 ) r2 |
    R1 |
    r4 d'''8 ( cis'''8 d'''8 a''8 g''8 f''8 |
    g''8 bes''4 ) a''8-. r2 |
    % 89
    R1 |
    r8 a'8 ( bes'8 b'8 ~ b'8 ) r8 r4 |
    R1 |
    r8 a''8-. r8 gis''8 ( a''8 f''8 e''8 d''8 ) |
    % 93
    R1 |
    e''2 f''8 e''4. |
    d''8 ( a'8 d''8 e''8 f''8 g''8 e''8 f''8 |
    a''4-^ ) d''4-- e''4-- f''4-> |
    % 97
    g''4 r4 d''4 g''4 |
    r4 f''4 e''4 d''4 |
    f''2 r4 f''8 f''8-^ |
    r4 d''4 e''4 f''4 |
    % 101
    g''1 |
    g''4-^ f''4-^ e''4-^ d''4-^ |
    a''4-^ r4 r2 |
    a''4 r4 r2 |
    % 105
    R1 |
    r4 cis''8 ( d''8 ) r8 e''8 ( f''4 ) |
    f''4 r4 r2 |
    gis''8 ( a''8 g''8 f''8 e''8 d''8 cis''8 d''8 |
    % 109
    cis''2 ) r2 |
    cis''8-^ cis''4.-> cis''4-- cis''4-- |
    r8 b'4-> r8 r8 d''4-> r8 |
    r8 d''4-> r8 r8 d''4-> r8 |
    % 113
    a''8 d'''4-^ a''8 ( gis''8 g''8 f''8 d''8 ) |
    r4 r8 b''8 ~ b''2-\fermata |
}

violinnotes = {
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

violinnotesmidi = {
    \time 4/4
    \preintro
    \violinmidiintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% flute very similar to violin.
% made different because of the key change.

fluteintro = {
    \key d \minor
    \partial 2 r8 a'8\mp d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''4 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''4 g''8 g''8 g''4 f''8 g''8 |
    a''4 a''8 a''8 c'''4 bes''4 |
    a''2 ~ a''8 a'8 d''8 e''8 |

    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |

    \transpose c c' {
        f'4 f'8 ( f'8 f'2 ) |
        g'8 e'8 r4 r2 |
        % 13
        f'4 f'4 f'2 |
        g'4 f'4 e'2 |
        a'2 c''4 ( bes'4 ) |
        a'2 r2 |
    }
}

flutemidiintro = \transpose c c' {
    \key d \minor
    s2 s2 |
    s1*10 |
    f'4\mp f'8 ( f'8 f'2 ) |
    g'8 e'8 r4 r2 |
    % 13
    f'4 f'4 f'2 |
    g'4 f'4 e'2 |
    a'2 c''4 ( bes'4 ) |
    a'2 r2 |
}

flutesectiona = {
    % 17
    R1\mf |
    r8 a'8 ( d''8 f''8 a''8 f''8 d''8 a'8 ) |
    R1 |
    r8 a''8 ( gis''8 a''8 f''8 f''8 e''8 d''8 ) |
    % 21
    e''2 r2 |
    R1 |
    r4 d'''8 ( cis'''8 d'''8 a''8 g''8 f''8 |
    g''8 ) bes''4-^ a''8-. r2 |
    % 25
    R1 |
    r8 a'8 ( bes'8 b'8 ~ b'8 ) r8 r4 |
    R1 |
    r8 a''8-. r8 gis''8 ( a''8 f''8 e''8 d''8 ) |
    % 29
    R1 |
    e''2 f''8 e''4. |
    d''8 ( a'8 d''8 e''8 f''8 g''8 e''8 f''8 ) |
    a''4-^ d''4-- e''4-- f''4-> |
    % 33
    g''4 r4 d''4 g''4 |
    r4 f''4 e''4 d''4 |
    f''2 r4 f''8 f''8-^ |
    r4 d''4 e''4 f''4 |
    % 37
    g''1 |
    g''4-^ f''4-^ e''4-^ d''4-^ |
    a''4-^ r4 r2 |
    a''4 r4 r2 |
    % 41
    R1 |
    r4 cis''8 ( d''8 ) r8 e''8 ( f''4 ) |
    f''4 r4 r2 |
    gis''8 ( a''8 g''8 f''8 e''8 d''8 cis''8 d''8 ) |
    % 45
    cis''2 r2 |
    cis''8-^ cis''4.-> cis''4-- cis''4-- |
    f''4-^ r4 d''8 ( f''8 ) r8 d''8 ( |
    g''8 e''8 g''8 cis''8 ) r8 fis''4 r8 |
}

flutesectionb = {
    \key g \minor
    % 49
    R1\f |
    r8 g''8 ( fis''8 g''8 d''8 bes'8 a'8 g'8 |
    d''8 ) d''4-^ d''8 ( \tuplet 3/2 { c''8 [ d''8 c''8 ] } bes'8 d''8-^ ) |
    r2 r8 d''8 ( g''8 bes''8 |
    % 53
    fis''4 ) r4 r4 fis''8 fis''8 |
    R1 |
    g''8 ( d''8 g''8 a''8 bes''8 g''8 ) r8 d'''8 |
    c'''8-- d'''4-- fis''8-^ r4 d''4 |
    % 57
    bes''4 e'''4 g'''8 ( d'''8 bes''8 g''8 |
    bes''4 ) r4 r8 bes''4. |
    bes''8 ( g''8 fis''8 bes''8 c'''8 a''8 c''' bes''8 ) |
    r2 r8 d''8 ( g''8 bes''8 |
    % 61
    fis''2 ) ~ fis''8 c''4-^ c''8 |
    fis''8 fis''4-^ ees''8 ( d''8 c''8 fis''8 bes'8 ) |
    r4 r8 cis'''8 ( c'''8 bes''8 g''8 f''8 |
    g''4 ) d''4-> fis''4-^ g''4-> |
    % 65
    \transpose c c' {
    c''2 ~ c''8 \grace { fis'16 } g'4. |
    c''4 r8 bes'8 a'8 g'4. |
    d''2 d''4-^ d''8 d''8-^ |
    r8 d'8 ( g'8 d'8 a'8 d'8 ) bes'4 |
    % 69
    c''4.-> c''8-> ~ c''4 c''4-> ~ |
    c''8-> bes'4.-> a'4-. g'4-. |
    d''4-^ d''4-^ f''8 ( bes'8 ees''8 d''8-^ ) |
    r2 r8 d'4. |
    % 73
    bes'4 r4 a'8 g'4. |
    bes'4 r4 r8 d''8 ( cis''8 d''8 |
    }
    bes''8 ) bes''4 bes''8 ( \tuplet 3/2 { a''8 [ bes''8 a''8 ] } g''4 ) |
    g''8 d'''4. cis'''8 ( d'''8 bes''8 g''8 |
    % 77
    \transpose c c' {
    a'4 ) r4 fis'8 d'4 d''8-^ |
    r8 c''4.-> bes'4-. a'4-. |
    g'4-^ g'8 ( fis'8 g'8 aes'4. ) |
    r8 a'4.-> ~ a'2 |
    }
}

flutesectionc = {
    \key d \minor
    % 81
    R1\mf |
    r8 a'8 ( d''8 f''8 a''8 f''8 d''8 a'8 ) |
    R1 |
    r8 a''8 ( gis''8 a''8 f''8 f''8 e''8 d''8 |
    % 85
    e''2 ) r2 |
    R1 |
    r4 d'''8 ( cis'''8 d'''8 a''8 g''8 f''8 |
    g''8 bes''4 ) a''8-. r2 |
    % 89
    R1 |
    r8 a'8 ( bes'8 b'8 ~ b'8 ) r8 r4 |
    R1 |
    r8 a''8-. r8 gis''8 ( a''8 f''8 e''8 d''8 ) |
    % 93
    R1 |
    e''2 f''8 e''4. |
    d''8 ( a'8 d''8 e''8 f''8 g''8 e''8 f''8 |
    a''4-^ ) d''4-- e''4-- f''4-> |
    % 97
    g''4 r4 d''4 g''4 |
    r4 f''4 e''4 d''4 |
    f''2 r4 f''8 f''8-^ |
    r4 d''4 e''4 f''4 |
    % 101
    g''1 |
    g''4-^ f''4-^ e''4-^ d''4-^ |
    a''4-^ r4 r2 |
    a''4 r4 r2 |
    % 105
    R1 |
    r4 cis''8 ( d''8 ) r8 e''8 ( f''4 ) |
    f''4 r4 r2 |
    gis''8 ( a''8 g''8 f''8 e''8 d''8 cis''8 d''8 |
    % 109
    cis''2 ) r2 |
    cis''8-^ cis''4.-> cis''4-- cis''4-- |
    r8 b'4-> r8 r8 d''4-> r8 |
    r8 d''4-> r8 r8 d''4-> r8 |
    % 113
    a''8 d'''4-^ a''8 ( gis''8 g''8 f''8 d''8 ) |
    r4 r8 b''8 ~ b''2-\fermata |
}

flutenotes = {
    \time 4/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
}

flutenotesmidi = {
    \time 4/4
    \preintro
    \flutemidiintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% trumpet

trumpetintro = {
    \key e \minor
    \partial 2 r2 |
    R1*12 |
    %13
    g'4\mp g'4 g'2 |
    a'4 g'4 fis'2 |
    b'2 d''4 ( c''4 ) |
    b'2 r2 |
}

trumpetmidiintro = {
    \key e \minor
    s2 r2 |
    R1*12 |
    %13
    g'4\mp g'4 g'2 |
    a'4 g'4 fis'2 |
    b'2 d''4 ( c''4 ) |
    b'2 r2 |
}

trumpetsectiona = {
    % 17
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 ) |
    % 21
    dis'2 r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    fis'8 ) a'4-^ dis'8-. r2 |
    % 25
    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |
    % 29
    R1 |
    dis'2 dis'8 dis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 ) |
    g'4-^ e'4-- fis'4-- g'4-> |
    % 33
    a'4 r4 e'4 a'4 |
    r4 g'4 fis'4 e'4 |
    g'2 r4 g'8 g'8-^ |
    r4 e'4 fis'4 g'4 |
    % 37
    a'1 |
    a'4-^ g'4-^ fis'4-^ e'4-^ |
    b'4-^ r4 r2 |
    b'4 r4 r2 |
    % 41
    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    g'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 ) |
    % 45
    fis'2 r2 |
    b'8-^ a'4.-> g'4-- fis'4-- |
    % transpose down because the global key change took it too high
    \transpose c' c {
    e''4-^ r4 g''8 ( b''8 ) r8 e''8 ( |
    c'''8 a''8 c'''8 b''8 ) r8 } b'4-> r8 |
    % note in previous measure the transpose ends before the last note.
}

trumpetsectionb = {
    \key a \minor
    \set Staff.midiMaximumVolume = #1.0
    % 49
    c''4-^\ff r4 b'8 a'4 c''8-^ |
    r2 r8 e''4. |
    c''8 c''4-^ c''8 ( \tuplet 3/2 { b'8 [ c''8 b'8 ] } a'8 c''8-^ )  |
    r2 r8 e'8 ( a'8 c''8 |
    % 53
    b'4 ) r4 r4 e'8 e'8 |
    e''8-- d''4-- c''8-- ~ c''8 b'4-- a'8-^ |
    r4 r8 c''8 ( ~ c''8 e''4 ) a'8 |
    f''8-- g''4-- e''8-^ r4 e'4 |
    % 57
    % transpose down because the global key change took it too high
    \transpose c' c {
    e''4-^ b''4-> a''8 ( e''8 c''8 a'8 |
    e''4-^ ) } r4 r8 dis''4. |
    % note in previous measuer the transpose ends after the first note
    e''8 ( c''8 b'8 a'8 f''8 d''8 f''8 e''8 ) |
    r2 r8 e'8 ( a'8 c''8 |

    b'2 ) ~ b'8 gis'4-^ e'8 |
    e''8 e''4-^ d''8 ( c''8 gis'8 b'8 a'8 ) |
    r4 r8 dis''8 ( d''8 c''8 a'8 g'8 |
    a'4 ) a'4-> b'4-^ c''4-> |

    d''2 ~ d''8 \grace { gis'16 } a'4. |
    d''4 r8 c''8 b'8 a'4. |
    e''2 e''4-^ e''8 e''8-^ |
    r8 e'8 ( a'8 e'8 b'8 e'8 ) c''4 |
    % 69
    d''4.-> d''8-> ~ d''4 d''4-> ~ |
    d''8-> c''4.-> b'4-. a'4-. |
    e''4-^ e''4-^ g''8 ( c''8 f''8 e''8-^ ) |
    r2 r8 e'4. |

    c''4 r4 b'8 a'4. |
    c''4 r4 r8 e''8 ( dis''8 e''8 |
    c''8 ) c''4 c''8 ( \tuplet 3/2 { b'8 [ c''8 b'8 ] } a'4 )  |
    c''4 r4 r8 c''4. |

    b'4 r4 gis'8 e'4 e''8-^ |
    r8 d''4.-> c''4-. b'4-. |
    a'4-^ a'8 ( gis'8 a'8 bes'4. ) |
    r8 b'4.-> ~ b'2 |
    \set Staff.midiMaximumVolume = #0.8
}

trumpetsectionc = {
    \key e \minor
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 |

    dis'2 ) r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    fis'8 a'4-^ ) dis'8-. r2 |

    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |

    R1 |
    dis'2 dis'8 dis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    g'4-^ ) e'4-- fis'4-- g'4-> |

    a'4 r4 e'4 a'4 |
    r4 g'4 fis'4 e'4 |
    g'2 r4 g'8 g'8-^ |
    r4 e'4 fis'4 g'4 |

    a'1 |
    a'4-^ g'4-^ fis'4-^ e'4-^ |
    b'4-^ r4 r2 |
    b'4 r4 r2 |

    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    g'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 |

    fis'2 ) r2 |
    b'8-^ a'4.-> g'4-- fis'4-- |
    e'4 r4 g'4 r4 |
    a'4 r4 ais'4 r4 |

    b'8 e''4-^ b'8 ( ais'8 a'8 g'8 e'8 ) |
    r4 r8 fis'8 ~ fis'2-\fermata |
}

trumpetnotes = {
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

trumpetnotesmidi = {
    \time 4/4
    \preintro
    \trumpetmidiintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% alto is based on the trumpet with transposition and some range messing

altosaxintro = {
    \key e \minor
    \partial 2 r2 |
    R1*12 |
    %13
    g'4\mp g'4 g'2 |
    a'4 g'4 fis'2 |
    b'2 d''4 ( c''4 ) |
    b'2 r2 |
}

altosaxmidiintro = {
    \key e \minor
    s2 r2 |
    R1*12 |
    %13
    g'4\mp g'4 g'2 |
    a'4 g'4 fis'2 |
    b'2 d''4 ( c''4 ) |
    b'2 r2 |
}

altosaxsectiona = {
    % 17
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 ) |
    % 21
    dis'2 r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    fis'8 ) a'4-^ dis'8-. r2 |
    % 25
    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |
    % 29
    R1 |
    dis'2 dis'8 dis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 ) |
    g'4-^ e'4-- fis'4-- g'4-> |
    % 33
    a'4 r4 e'4 a'4 |
    r4 g'4 fis'4 e'4 |
    g'2 r4 g'8 g'8-^ |
    r4 e'4 fis'4 g'4 |
    % 37
    a'1 |
    a'4-^ g'4-^ fis'4-^ e'4-^ |
    b'4-^ r4 r2 |
    b'4 r4 r2 |
    % 41
    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    g'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 ) |
    % 45
    fis'2 r2 |
    b'8-^ a'4.-> g'4-- fis'4-- |
    e''4-^ r4 g''8 ( b''8 ) r8 e''8 ( |
    c'''8 a''8 c'''8 b''8 ) r8 b'4-> r8 |
}

altosaxsectionb = {
    \key a \minor
    \set Staff.midiMaximumVolume = #1.0
    % 49
    c''4-^\ff r4 b'8 a'4 c''8-^ |
    r2 r8 e''4. |
    c''8 c''4-^ c''8 ( \tuplet 3/2 { b'8 [ c''8 b'8 ] } a'8 c''8-^ )  |
    r2 r8 e'8 ( a'8 c''8 |
    % 53
    b'4 ) r4 r4 e'8 e'8 |
    e''8-- d''4-- c''8-- ~ c''8 b'4-- a'8-^ |
    r4 r8 c''8 ( ~ c''8 e''4 ) a'8 |
    f''8-- g''4-- e''8-^ r4 e'4 |

    e''4-^ b''4-> a''8 ( e''8 c''8 a'8 |
    e''4-^ ) r4 r8 dis''4. |
    e''8 ( c''8 b'8 a'8 f''8 d''8 f''8 e''8 ) |
    r2 r8 e'8 ( a'8 c''8 |

    b'2 ) ~ b'8 gis'4-^ e'8 |
    e''8 e''4-^ d''8 ( c''8 gis'8 b'8 a'8 ) |
    r4 r8 dis''8 ( d''8 c''8 a'8 g'8 |
    a'4 ) a'4-> b'4-^ c''4-> |

    d''2 ~ d''8 \grace { gis'16 } a'4. |
    d''4 r8 c''8 b'8 a'4. |
    e''2 e''4-^ e''8 e''8-^ |
    r8 e'8 ( a'8 e'8 b'8 e'8 ) c''4 |
    % 69
    d''4.-> d''8-> ~ d''4 d''4-> ~ |
    d''8-> c''4.-> b'4-. a'4-. |
    e''4-^ e''4-^ g''8 ( c''8 f''8 e''8-^ ) |
    r2 r8 e'4. |

    c''4 r4 b'8 a'4. |
    c''4 r4 r8 e''8 ( dis''8 e''8 |
    c''8 ) c''4 c''8 ( \tuplet 3/2 { b'8 [ c''8 b'8 ] } a'4 )  |
    c''4 r4 r8 c''4. |

    b'4 r4 gis'8 e'4 e''8-^ |
    r8 d''4.-> c''4-. b'4-. |
    a'4-^ a'8 ( gis'8 a'8 bes'4. ) |
    r8 b'4.-> ~ b'2 |
    \set Staff.midiMaximumVolume = #0.8
}

altosaxsectionc = {
    \key e \minor
    R1\mf |
    r8 b8 ( e'8 g'8 b'8 g'8 e'8 b8 ) |
    R1 |
    r8 b'8 ( ais'8 b'8 g'8 g'8 fis'8 e'8 |

    dis'2 ) r2 |
    R1 |
    r4 e''8 ( dis''8 e''8 b'8 a'8 g'8 |
    fis'8 a'4-^ ) dis'8-. r2 |

    R1 |
    r8 b8 ( c'8 cis'8 ~ cis'8 ) r8 r4 |
    R1 |
    r8 b'8-. r8 ais'8 ( b'8 g'8 fis'8 e'8 ) |

    R1 |
    dis'2 dis'8 dis'4. |
    e'8 ( b8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    g'4-^ ) e'4-- fis'4-- g'4-> |

    a'4 r4 e'4 a'4 |
    r4 g'4 fis'4 e'4 |
    g'2 r4 g'8 g'8-^ |
    r4 e'4 fis'4 g'4 |

    a'1 |
    a'4-^ g'4-^ fis'4-^ e'4-^ |
    b'4-^ r4 r2 |
    b'4 r4 r2 |

    R1 |
    r4 dis'8 ( e'8 ) r8 fis'8 ( g'4 ) |
    g'4 r4 r2 |
    ais'8 ( b'8 a'8 g'8 fis'8 e'8 dis'8 e'8 |

    fis'2 ) r2 |
    b'8-^ a'4.-> g'4-- fis'4-- |
    e'4 r4 g'4 r4 |
    a'4 r4 ais'4 r4 |

    b'8 e''4-^ b'8 ( ais'8 a'8 g'8 e'8 ) |
    r4 r8 fis'8 ~ fis'2-\fermata |
}

altosaxnotes = \transpose ees bes {
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altosaxnotesmidi = \transpose ees bes {
    \time 4/4
    \preintro
    \altosaxmidiintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoclarinetnotes = \transpose ees bes {
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

altoclarinetnotesmidi = \transpose ees bes, {
    \time 4/4
    \preintro
    \altosaxmidiintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% trombone

tromboneintro = {
    \key d \minor
    \partial 2 r2 |
    R1*8 |
    % 9
    d'4\mp cis'8 ( c'8 b2 ) |
    g'8 e'8 r4 r2 |
    d'4 cis'8 ( c'8 b2 ) |
    g8 e8 r4 r2 |
    % 13
    f4 f4 f2 |
    g4 g4 e2 |
    g2 a2 |
    g2 r2 |
    \bar "||"
}

trombonemidiintro = {
    \key d \minor
    s2 s2 |
    s1*8 |
    % 9
    d'4\mp cis'8 ( c'8 b2 ) |
    g'8 e'8 r4 r2 |
    d'4 cis'8 ( c'8 b2 ) |
    g8 e8 r4 r2 |
    % 13
    f4 f4 f2 |
    g4 g4 e2 |
    g2 a2 |
    g2 r2 |
    \bar "||"
}

trombonesectiona = {
    % `17
    R1*4\mf |
    % 21
    g2 r2 |
    a8. a16 g4 f4 e4 |
    d2 r2 |
    e4.\glissando a8 r2 |
    % 25
    R1 |
    r8 a8 ( bes8 b8 ~ b8 ) r8 r4 |
    R1 |
    r8 a,4. ~ a,4.-. cis8 |
    % 29
    R1 |
    g2 g8 g4. |
    d8 r8 r4 a,2\glissando \noBreak |
    d4 r4 r2 |
    % 33
    bes4 r4 r4 bes4 |
    r4 bes4 g4 g4 |
    a2 r4 a8 a8-^ |
    r4 f4 g4 a4 |
    % 37
    bes1 |
    bes4-^ bes4-^ bes4-^ g4-^ |
    g4-^ r4 r2 |
    r4 a,2.\glissando \noBreak |
    % 41
    d4 r4 r2 |
    R1 |
    d4 r4 d2 |
    R1 |
    % 45
    g2 r2 |
    g8-^ g4.-> g4-- g4-- |
    b4-^ r4 a8 ( d'8 ) r8 d'8 ( |
    d'8 bes8 d'8 g8 ) r8 c'4-> r8 |
}

trombonesectionb = {
    \key g \minor
    % 49
    d'4-^\f r4 c'8 bes4 d'8-^ |
    r8 d4.-> ( ~ d2 |
    g8 ) g4-^ g8 d2 |
    r2 r8 d8 ( g8 bes8 |
    % 53
    c'4 ) r4 r4 d'4\glissando \noBreak |
    fis'8-- ees'4-- d'8-- ~ d'8 c'4-- bes8-^ |
    R1 |
    g'8-- g'4-- a'8-^ r4 d4\glissando \noBreak |
    % 57
    g4 bes'4 d'2 |
    g'4 r4 r8 e'4. |
    d'4 r4 g4 r8 g8 |
    r8 d4. ~ d2 |
    % 61
    a2 ~ a8 r8 r4 |
    d2. ~ d8 \glissando g8 |
    R1 |
    r4 bes4-> ees'4-^ d'4-> |
    % 65
    ees'2 ~ ees'8 r8 r4 |
    ees'4 r8 bes8 a8 g4. |
    g'2 fis'4-^ f'8 e'8-^ |
    R1 |
    % 69
    ees'4.-> fis'8-> ~ fis'4 g'4 ~ |
    g'8 ees'4.-> c'4-. c'4-. |
    fis'4-^ fis'4-^ g'8 r4 c'8-^|
    r2 r8 d4. \glissando \noBreak |
    % 73
    g4 r4 d2 |
    g8. g16 f4 ees4 d4 |
    g4 r4 d4 r4 |
    g4 r4 r8 g4. |
    % 77
    fis4 r4 d4 r8 d'8-^ |
    r8 c'4.-> bes4-. a4-. |
    g4-^ g'8 ( fis'8 g'8 aes'4. ) |
    r8 a8 g4 f4 e4 |
}

trombonesectionc = {
    \key d \minor
    % 81
    R1*4\mf |
    % 85
    g2 r2 |
    a8. a16 g4 f4 e4 |
    d2 r2 |
    e4.\glissando a8 r2 |
    % 89
    R1 |
    r8 a8 ( bes8 b8 ~ b8 ) r8 r4 |
    R1 |
    r8 a,8 ~ a,4 a,4. \glissando cis8 |
    % 93
    R1 |
    g2 g8 g4. |
    d8 r8 r4 a,2\glissando \noBreak |
    d4 r4 r2 |
    % 97
    bes4 r4 r4 bes4 |
    r4 bes4 g4 g4 |
    a2 r4 a8 a8-^ |
    r4 f4 g4 a4 |
    % 101
    bes1 |
    bes4-^ bes4-^ bes4-^ g4-^ |
    g4-^ r4 r2 |
    r4 a,2.\glissando \noBreak |
    % 105
    d4 r4 r2 |
    R1 |
    d4 r4 r2 |
    R1 |
    % 109
    g2 r2 |
    g8-^ g4.-> g4-- g4-- |
    r8 f4-> r8 r8 a4-> r8 |
    r8 bes4-> r8 r8 b4-> r8 |
    % 113
    a8 d'4-^ a8 ( gis8 g8 f8 d8 ) |
    r4 r8 fis'8 fis'2-\fermata |
}

trombonenotes = {
    \time 4/4
    \override Glissando.style = #'zigzag
    \override Glissando.thickness = #1.75
    \override Glissando.gap = #0.4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

trombonenotesmidi = {
    \time 4/4
    \preintro
    \trombonemidiintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

tromboneforaltoclarinetnotes = \transpose ees c' {
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% tenorsax

tenorsaxintro = {
    \key d \minor
    \partial 2 r2 |
    R1*8 |
    % 9
    d'4\mp cis'8 ( c'8 b2 ) |
    g'8 e'8 r4 r2 |
    d'4 cis'8 ( c'8 b2 ) |
    g8 e8 r4 r2 |
    % 13
    f4 f4 f2 |
    g4 g4 e2 |
    g2 a2 |
    g2 r2 |
    \bar "||"
}

tenorsaxmidiintro = {
    \key d \minor
    s2 s2 |
    s1*8 |
    % 9
    d'4\mp cis'8 ( c'8 b2 ) |
    g'8 e'8 r4 r2 |
    d'4 cis'8 ( c'8 b2 ) |
    g8 e8 r4 r2 |
    % 13
    f4 f4 f2 |
    g4 g4 e2 |
    g2 a2 |
    g2 r2 |
    \bar "||"
}

tenorsaxsectiona = {
    % `17
    R1*4\mf |
    % 21
    g2 r2 |
    a8. a16 g4 f4 e4 |
    d2 r2 |
    e4. ( a8 ) r2 |
    % 25
    R1 |
    r8 a8 ( bes8 b8 ~ b8 ) r8 r4 |
    R1 |
    r8 a,4. ~ a,4. cis8 |
    % 29
    R1 |
    g2 g8 g4. |
    d8 r8 r4 ( a,2 |
    d4 ) r4 r2 |
    % 33
    bes4 r4 r4 bes4 |
    r4 bes4 g4 g4 |
    a2 r4 a8 a8-^ |
    r4 f4 g4 a4 |
    % 37
    bes1 |
    bes4-^ bes4-^ bes4-^ g4-^ |
    g4-^ r4 r2 |
    r4 ( a,2. |
    % 41
    d4 ) r4 r2 |
    R1 |
    d4 r4 d2 |
    R1 |
    % 45
    g2 r2 |
    g8-^ g4.-> g4-- g4-- |
    b4-^ r4 a8 ( d'8 ) r8 d'8 ( |
    d'8 bes8 d'8 g8 ) r8 c'4-> r8 |
}

tenorsaxsectionb = {
    \key g \minor
    % 49
    d'4-^\f r4 c'8 bes4 d'8-^ |
    r8 d4.-> ( ~ d2 |
    g8 ) g4-^ g8 d2 |
    r2 r8 d8 ( g8 bes8 |
    % 53
    c'4 ) r4 r4 ( d'4 |
    fis'8-- ) ees'4-- d'8-- ~ d'8 c'4-- bes8-^ |
    R1 |
    g'8-- g'4-- a'8-^ r4 d4 ( |
    % 57
    g4 ) bes'4 d'2 |
    g'4 r4 r8 e'4. |
    d'4 r4 g4 r8 g8 |
    r8 d4. ~ d2 |
    % 61
    a2 ~ a8 r8 r4 |
    d2. ~ d8 ( g8 ) |
    R1 |
    r4 bes4-> ees'4-^ d'4-> |
    % 65
    ees'2 ~ ees'8 r8 r4 |
    ees'4 r8 bes8 a8 g4. |
    g'2 fis'4-^ f'8 e'8-^ |
    R1 |
    % 69
    ees'4.-> fis'8-> ~ fis'4 g'4 ~ |
    g'8 ees'4.-> c'4-. c'4-. |
    fis'4-^ fis'4-^ g'8 r4 c'8-^|
    r2 r8 d4. ( |
    % 73
    g4 ) r4 d2 |
    g8. g16 f4 ees4 d4 |
    g4 r4 d4 r4 |
    g4 r4 r8 g4. |
    % 77
    fis4 r4 d4 r8 d'8-^ |
    r8 c'4.-> bes4-. a4-. |
    g4-^ g'8 ( fis'8 g'8 aes'4. ) |
    r8 a8 g4 f4 e4 |
}

tenorsaxsectionc = {
    \key d \minor
    % 81
    R1*4\mf |
    % 85
    g2 r2 |
    a8. a16 g4 f4 e4 |
    d2 r2 |
    e4. ( a8 ) r2 |
    % 89
    R1 |
    r8 a8 ( bes8 b8 ~ b8 ) r8 r4 |
    R1 |
    r8 a,8 ~ a,4 a,4. ( cis8 ) |
    % 93
    R1 |
    g2 g8 g4. |
    d8 r8 r4 a,2 ( |
    d4 ) r4 r2 |
    % 97
    bes4 r4 r4 bes4 |
    r4 bes4 g4 g4 |
    a2 r4 a8 a8-^ |
    r4 f4 g4 a4 |
    % 101
    bes1 |
    bes4-^ bes4-^ bes4-^ g4-^ |
    g4-^ r4 r2 |
    r4 a,2. ( |
    % 105
    d4 ) r4 r2 |
    R1 |
    d4 r4 d2 |
    R1 |
    % 109
    g2 r2 |
    g8-^ g4.-> g4-- g4-- |
    r8 f4-> r8 r8 a4-> r8 |
    r8 bes4-> r8 r8 b4-> r8 |
    % 113
    a8 d'4-^ a8 ( gis8 g8 f8 d8 ) |
    r4 r8 fis'8 fis'2-\fermata |
}

tenorsaxnotes = \transpose bes c'' {
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

tenorsaxnotesmidi = \transpose bes c' {
    \time 4/4
    \preintro
    \tenorsaxmidiintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key d \minor
    \partial 2 a2\mp |
    % 1
    d'2 b2 |
    g4 r4 a2 |
    d'4 cis'4 c'4 b4 |
    g2 a4 r4 |
    % 5
    d'4 c'4 b2 |
    bes4 a4 g2 |
    d2 bes2 |
    a2 r2 |
    % 9
    d4 r4 b,4 r4 |
    g,4 r4 a,2 |
    d4 cis4 c4 b,4 |
    g,2 a,4 r4 |
    % 13
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    d2 bes,2 |
    a,2 a,2 |
}

basslinemidiintro = {
    \key d \minor
    s2 a2\mp |
    % 1
    d'2 b2 |
    g4 r4 a2 |
    d'4 cis'4 c'4 b4 |
    g2 a4 r4 |
    % 5
    d'4 c'4 b2 |
    bes4 a4 g2 |
    d2 bes2 |
    a2 r2 |
    % 9
    d4 r4 b,4 r4 |
    g,4 r4 a,2 |
    d4 cis4 c4 b,4 |
    g,2 a,4 r4 |
    % 13
    d4 c4 b,2 |
    bes,4 a,4 g,2 |
    d2 bes,2 |
    a,2 a,2 |
}

basslinesectiona = {
    % 17
    d4\mf r4 a,4 r4 |
    d4 r4 a,4 r4 |
    d4 r4 a,4 r4 |
    d4 r4 a,4 r4 |
    % 21
    a,4 r4 a,4 a,4 |
    a,8. a,16 g,4 f,4 e,4 |
    d4 r4 a,4 a,4 |
    g,4. a,8 r2 |
    % 25
    d'4 r4 a4 r4 |
    d8 a8 bes8 b8 ~ b8 r8 a4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    % 29
    a2 a4 a4 |
    a4 bes4 b4 cis'4 |
    d4 r4 f4 r4 |
    d'4-^ d'4 e'4 f'4 |

    g2 d2 |
    g4 r4 d4 r4 |
    d2 r4 d8 d8-^ |
    r4 d4 cis4 c4 |
    % 37
    g4 r4 r4 d'8 g8 |
    r4 f4 e4 d4 |
    a,4-^ r4 r2 |
    r8 a8 bes4 b4 cis'4 |
    % 41
    d4 r4 a,4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    % 45
    r8 a,4. a4 a4 |
    a8-^ g4.-> f4-- e4-- |
    d4 r4 r2 |
    r2 r8 d4. |
}

basslinesectionb = {
    \key g \minor
    g,4\f f,4 e,4 g,4 |
    g4 g4 d4 d4 |
    g4 f4 e4 d4 |
    r8 f4. ees4 d4 |

    d4 d4 e4 e4 |
    d4 c4 bes,4 a,4 |
    g,4 a,4 bes,4 d4 |
    c4 ees4 d4 d4 |
    % 57
    g4 f4 e4 d4 |
    g4 a4 bes4 a4 |
    g4 g4 c'4 c'4 |
    g8 d4. g4 bes4 |
    % 61
    a4 d4 e4 f4 |
    fis4 g4 a4 bes4 |
    g4 d4 c4 bes,4 |
    g,4 g,4 a,4 bes,4 |
    % 65
    c'4 r4 bes4 r4 |
    a4 r4 g4 g4 |
    g4 r4 g4 d8 g8 |
    r8 g4. a4 bes4 |

    c4. c8 ~ c4 c4 ~ |
    c8 c4. a4 g4 |
    d2 f4. d8 |
    r4 d4 e4 fis4 |
    % 73
    g4 r4 d4 r4 |
    g8. g16 f4 ees4 d4 |
    r8 g4. r4 d'8 g8 |
    r2 r8 bes,4. |
    % 77
    a,4 r4 d4 r4 |
    r8 c4. bes,4 a,4 |
    g,4 r4 r8 e4. |
    a,8 a,8 g,4 f,4 e,4 |
}

basslinesectionc = {
    \key d \minor
    d4\mf r4 a4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    % 85    
    a2 a4 a4 |
    a8. a16 g4 f4 e4 |
    d4 r4 d4 r4 |
    g4. a8 r2 |

    d4 r4 a4 r4 |
    d8 a8 bes8 b8 ~ b8 r8 a4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    % 93
    a2 a4 a4 |
    a4 bes4 b4 cis'4 |
    d4 r4 f4 r4 |
    d4-^ d4 e4 f4 |

    g2 d2 |
    g4 r4 d4 r4 |
    d2 r4 d8 d8-^ |
    r4 d4 cis4 c4 |
    % 101
    g,4 r4 r4 d8 g,8 |
    r4 f4 e4 d4 |
    a,4-^ r4 r2 |
    r8 a,8 bes,4 b,4 cis4 |

    d4 r4 a,4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    d4 r4 a4 r4 |
    % 109
    r8 a,4. a,4 a,4 |
    a8-^ g4.-> f4-- e4-- |
    r8 d4.  r8 f,4. |
    r8 g,4. r8 gis,4. |

    a,4 r4 r4 r8 d8-^ |
    r4 r8 d8 ~ d2-\fermata |
}

bassline = {
    \time 4/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslinemidiintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    \time 4/4
    \partial 2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumshighmidiintro = \drummode {
    \time 4/4
    s2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumshighsectiona = \drummode {
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

drumshighsectionb = \drummode {
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

drumshighsectionc = \drummode {
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

%drumshighsectiona = \drummode {
%    \repeat percent 19 { s8 hhc8 s8 hhc8 | }
%    sna4 r8 cymc8 |
%}
%
%drumshighsectionba = \drummode {
%    
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc8 sna8 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 < hhc sna >8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >4 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%
%    hhc4 < hhc sna >8 hhc8 < hhc sna >8 sna8 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >4 |
%
%    hhc4 < hhc sna >8 hhc8 < hhc sna >4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >4 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >8 sna8 |
%
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >4 |
%    hhc4 < hhc sna >4 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 sna8 |
%
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%}
%
%drumshighsectionbb = \drummode {
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 r4 hhc8 hhc8 |
%}
%drumshighsectionbc = \drummode {
%    hhc4 < hhc sna >8 hhc8 hhc4 \grace { sna8 } < hhc sna >8 hhc8 |
%    hhc4 < hhc sna >8 hhc8 r4 cymc4 |
%}
%drumshighsectionb = \drummode {
%    \repeat volta 2 { \drumshighsectionba }
%    \alternative { { \drumshighsectionbb } { \drumshighsectionbc } }
%}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \preintro
    \drumshighmidiintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

%-------------------------------------------------

drumslowintro = \drummode {
    \time 4/4
    \partial 2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumslowmidiintro = \drummode {
    \time 4/4
    s2 s2 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
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

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectionb = \drummode {
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

drumslowsectionc = \drummode {
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

%drumslowsectiona = \drummode {
%    \repeat percent 19 { bda8 s8 bda8 s8 }
%    s2 |
%}
%
%drumslowsectionba = \drummode {
%    
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%    bda2 s2 |
%
%    bda2 s2 |
%    bda2 s2 |
%}
%
%drumslowsectionbb = \drummode {
%    bda2 s2 |
%    bda2 s2 |
%}
%drumslowsectionbc = \drummode {
%    bda2 s2 |
%    bda2 s2 |
%}
%drumslowsectionb = \drummode {
%    \repeat volta 2 { \drumslowsectionba }
%    \alternative { { \drumslowsectionbb } { \drumslowsectionbc } }
%}

drumslow = \drummode {
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \preintro
    \drumslowmidiintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

% key change down above

leadsheetnotes = { \melody }
leadsheetnotesmidi = { \melodymidi }

% bass transpose up
% will want to find the highest notes and adjust
bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

% these derive from already transposed part.
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = \transpose c c, { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% put the instrument Voices into staves for printing and for
% midi

vocalsstaff = \context Staff = "vocalss" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = ""
    instr = ""
}  <<
    \override MultiMeasureRest.expand-limit = #1
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%combinestaff = \context Staff = "combinestaff" <<
%    \override MultiMeasureRest.expand-limit = #1
%    \clef violin
%    \bandm
%    \new Voice { \combinenotes }
%>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chords for piano and guitar staves, plus a padding version
% that is invisible and just bumps the very to system.

melodychordnames = \context ChordNames = "melodychordnames" {
    \time 4/4
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 4/4
    \partial 2 a2:7 |
    % 1
    d2:min d2:min6 | g2:min a2:7 | d4:min a4:aug f4 d4:min6 | g2:min a2:7 |
}

previewnotes = {
    \key d \minor
    \time 4/4
    \tempo \markupTintro
    \key d \minor
    \partial 2 r8 a'8\f d''8 e''8 |
    f''4 f''8 f''8 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
    f''4 f''4 f''4 e''8 d''8 |
    g''8 e''8 r4 r8 a'8 d''8 e''8 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

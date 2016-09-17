\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = { }

tenorharmonymidi = { }

counter = { }

countermidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = {
    \tempo \markupTintro
    \time 4/4
    s1 | \breakINone s1 | \breakINtwo s1 | \breakINtre s1 | \breakINfor
    s1 | \breakINfiv s1 | \breakINsix s1 | \breakINsev s1 | \breakINeit
    s1 | \breakINnin s1 | \breakINten s1 | \breakINelv s1 | \breakINtwl
    s1 | \breakINtht s1 | \breakINfrt s1 | \breakINfft s1 | \breakIN
    \bar ".|:-||"
}

bandmintroNoBreaks = {
    \tempo \markupTintro
    \time 4/4
    s1*15 | s1 | \breakIN \bar ".|:-||"
}

bandmsectiona = {
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix
    }
    \alternative {
        { s1 | \breakAsev s1 | \breakAeit }
        { s1 | \breakAnin s1 | }
    }
    \breakA \bar "||"
}

bandmsectionb = {
    \markB \positionB
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 | \breakB
    \bar "||"
}

bandmsectionbNoBreaks = {
    \markB \positionB
    s1*8 |
    \bar "||"
}

bandmsectionc = {
    \markC \positionC
    s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 | \breakC
    \bar "||"
}

bandmsectiond = {
    \markD \positionD
    s1*6 | \markStraightEight \positionStraightEight \breakDsix
    s1*2 | \markSwingEight \positionSwingEight \breakDeit
    s1*8 |
    \bar "||"
    \breakD
}

leadsheetbandmsectiond = {
    \markD \positionD
    s1*15 s1 |
    \bar "||"
}

bandmsectione = {
    \markE \positionE
    s1 | \breakEone s1 | \breakEtwo s1 | \breakEtre s1 | \breakEfor
    s1 | \breakEfiv s1 | \breakEsix s1 | \breakEsev s1 | \breakE
    \bar "||"
}

bandmsectioneNoBreaks = {
    \markE \positionE
    s1*8 |
    \bar "||"
}

bandmsectionf = {
    \markF \positionF
    s1 | \breakFone s1 | \breakFtwo s1 | \breakFtre s1 | \breakFfor
    s1 | \breakFfiv s1 | \breakFsix s1 | \breakFsev s1 | \breakFeit
    s1*3 |
    \bar "|."
}

bandm = {
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

bandmNV = { \bandm }

melodybandm = {
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \leadsheetbandmsectiond
    \bandmsectione
    \bandmsectionf
}

violinbandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

clarinetbandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

altosaxbandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

trombonebandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionbNoBreaks
    \bandmsectionc
    \bandmsectiond
    \bandmsectioneNoBreaks
    \bandmsectionf
}

tenorsaxbandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionbNoBreaks
    \bandmsectionc
    \bandmsectiond
    \bandmsectioneNoBreaks
    \bandmsectionf
}

trumpetbandm = {
    \time 4/4
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

leadsheetbandmNV =  {
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \leadsheetbandmsectiond
    \bandmsectione
    \bandmsectionf
}

preintro = { \time 4/4 s1 | }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 90
    \bandmintro
    \tempo 4 = 140
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
    \bandmsectionf
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \time 4/4
    g1:min | c1:min6 | d1:7/c | g1:min |
    c1:min6 | g1:min | a1:7 | d1:7 |
    g1:min | c1:min6 | d1:7/c | g1:min |
    d2:7 g2:7 | c2:min a2:7 | d2:7 a2:7 | d1:7 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordChangesOff g1:min | \chordChangesOn c1:min6 | g1:min | c1:min9 |
        g1:min | d1:7+/c |
    }
    \alternative {
        { g1:min | g1:min | }
        { \chordChangesOff g1:min | \chordChangesOn g1:min | }
    }
}

chordletterssectionb = \chordmode {
    \chordChangesOff c1:min | \chordChangesOn c1:min | g1:min | g1:min |
    c1:min | c1:min | d1:7 | d1:7 |
}

chordletterssectionc = \chordmode {
    \chordChangesOff g1:min | \chordChangesOn c1:min6 | g1:min | c1:min9 |
    g1:min | d1:7+/c | g2:min d2:7 | g1:min |
}

chordletterssectiond = \chordmode {
    \chordChangesOff g4:min \chordChangesOn fis8:5+ g8:min7 g2:min7 |
    ees2:9 c2:min9 | g1:min6 | g4.:min6 c2:min6 ~ c8:min6 |
    g2.:min7 g8:min7 g8:dim | g2:dim d2:7 |
    \noChordStringOn d1 | d1 \noChordStringOff |
    g2:min g2:min7 | c1:6 | g1:min | c1:min |
    g2.:min g4:min6 | d2:7+ d2:7 | g2:min f4 d8:7 g8:min | g1:min |
}

chordletterssectione = \chordmode {
    \chordChangesOff c1:min | \chordChangesOn c1:min | g1:min | g1:min |
    c1:min | c1:min | d1:7 | d1:7 |
}

chordletterssectionf = \chordmode {
    \chordChangesOff g1:min | \chordChangesOn c1:min6 | g1:min | c1:min9 |
    g1:min | d1:7+/c | d1:7+/c |
    \noChordStringOn d1*4 | \noChordStringOff |
}

chordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

clarinetchordletters = \transpose ees bes { \transpose bes, c {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

tenorsaxchordletters = \transpose ees bes { \transpose bes, c {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \bandmsectionbNoBreaks
    \chordletterssectionc
    \chordletterssectiond
    \bandmsectioneNoBreaks
    \chordletterssectionf
} }

trumpetchordletters = \transpose ees bes { \transpose bes, c {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

altosaxchordletters = \transpose ees bes { \transpose ees c {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

altoclarinetchordletters = \transpose ees bes { \transpose ees c {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

guitarchordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

basschordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

flutechordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

violinchordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

trombonechordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \bandmintroNoBreaks
    \chordletterssectiona
    \bandmsectionbNoBreaks
    \chordletterssectionc
    \chordletterssectiond
    \bandmsectioneNoBreaks
    \chordletterssectionf
} }

leadsheetchordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \leadsheetbandmsectiond
    \chordletterssectione
    \chordletterssectionf
} }

pianochordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

melodychordletters = \transpose ees bes { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
    \chordletterssectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro = {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
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

guitarsectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

guitarsectionb = {
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
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectiond = {
    s1*16 |
}

guitarsectione = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectionf = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1*4 |
}

guitarnotes = \transpose ees bes { {
    \time 4/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
    \guitarsectione
    \guitarsectionf
} }

guitarnotesmidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
    \guitarsectione
    \guitarsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vocals only

melodyintro = {
    \time 4/4
    g''8 g''8 g''8 g''8 d''4 f''8. f''16 |
    ees''8 ees''8 ees''8 ees''8 a'4 ees''4 |
    d''8 ees''8 d''8 c''8 a'4 bes'4 |
    g'2. r4 |

    a'4 bes'4 c''4 a'4 |
    bes'4 c''4 d''2 |
    cis''4 d''4 e''4. a'8 |
    d''1 |

    g''8 g''8 g''8 g''8 d''4 f''4 |
    ees''8 ees''8 ees''8 ees''8 a'4 ees''4 |
    d''4 c''4 a'4 bes'4 |
    g'2. g'4 |

    a'4 a'4 b'4 b'4 |
    c''4 c''4 cis''4 cis''8 c''8 |
    d''4 d''4 e''4 f''4 |
    fis''2. ~ fis''8 d''8 |
}

melodysectiona = {
    \repeat volta 2 {
        g'4 bes'4 d''4. d''8 |
        f''4 ees''4 d''4 c''8. c''16 |
        g'4 a'4 bes'4. bes'8 |
        d''4 c''4 bes'4 a'8. a'16 |

        d'4 g'4 bes'2 |
        bes'4 a'4 g'8 fis'4. |
    }
    \alternative {
        { g'1 | r2 r4 r8 d''8 | }
        { g'1 | r4 g'4 a'4 bes'4 | }
    }
}

melodysectionb = {
    c''1 ~ |
    c''4 bes'4 a'4 g'4 |
    cis''8 ( d''8 ~ d''2. ~ |
    d''4 ) g'4 a'4 bes'4 |

    c''4 c''4 c''4 c''4 |
    c''4. d''8 f''8 ees''8 d''8 c''8 |
    d''1 |
    r2 r4 r8 d''8 |
}

melodysectionc = {
    g'4 bes'4 d''4. d''8 |
    f''4 ees''4 d''4 c''8. c''16 |
    g'4 a'4 bes'4. bes'8 |
    d''4 c''4 bes'4 a'8. a'16 |

    d'4 g'4 bes'2 |
    bes'4 a'4 g'4 fis'4 |
    g'1 |
    r1 |
}

melodysectiond = {
    R1*15 |
    r4 g'4 a'4 bes'4 |
}

melodysectione = {
    c''1 ~ |
    c''4 bes'4 a'4 g'4 |
    cis''8 ( d''8 ~ d''2. ~ |
    d''4 ) g'4 a'4 bes'4 |

    c''4 c''4 c''4 c''4 |
    c''4. d''8 f''8 ees''8 d''8 c''8 |
    d''1 |
    r2 r4 r8 d''8 |
}

melodysectionf = {
    g'4 bes'4 d''4. d''8 |
    f''4 ees''4 d''4 c''8. c''16 |
    g'4 a'4 bes'4. bes'8 |
    d''4 c''4 bes'4 a'8. a'16 |

    d'4 g'4 bes'2 |
    bes'2 a'2 |
    g'4 fis'2. |
    g''1->-\fermata |

    R1*3 |
}

melody = \transpose ees bes, { {
    \time 4/4
    \key g \minor
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
    \melodysectionf
} }

melodymidi = \transpose ees bes, { {
    \time 4/4
    \preintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
    \melodysectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ayn- er zicht g'- vir- es, a tsvay- ter zicht a- shir- es,
    vil ayn- em- en oif di velt. __
    Nor me- maynt dos gan- tse glick, shteyt nor eyn bai gelt.
    Zol- en a- le zich- en, zol- en a- le krich- en, nor ikh tract bay mir;
    Ich darf es a- les oif ka- por- es, dos glick ligt bay mayn tir. __ A

    bis- l zun, a bis- l re- gn, a ru- ik ort dem kop tsu ley- gn,
    a- bi ge- zunt, ken men glik- lekh

    zayn.  A

    zayn.  Di luft iz

    fray far ye- dn glaykh.
    Di zun zi shaynt far ye- dn ey- nem or- em od- er raykh.

    A bi- sl freyd, a bi- sl la- khn a mol mit fraynt a shnep- sl makh- n,
    a- bi ge- zint, ken men glik- lekh zayn.

    Di luft iz

    fray far a- le glaykh. __
    Di zun zi shaynt far mir, far dir, far or- em un far raykh.

    A bi- sl freyd, a bi- sl la- khn a mol mit fraynt a shnep- sl makh- n,
    a- bi ge- zint, ken men glik- lekh zayn.
}

textlb = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

    shukh, a zok, a kleyd on la- tes, in ke- she- ne a dray, fir zlot- es,
    a- bi ge- zint, ken men glik- lekh
}

textlc = \lyricmode {
}

textld = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    \time 4/4
    % 1
    < g bes d' g' >2\arpeggio\p^\markup { \normalsize "ad-lib soft chords behind vocalist" } < g bes d' >4 < g bes d' f' >4 |
    < g a c' ees' >2\arpeggio a4 < g a c' ees' >4 |
    < c fis a d' >1\arpeggio  |
    < d g bes >2.\arpeggio g4 |
    % 5
    < c ees g a >2 < ees g a c' >2 |
    < d g bes >2 < g bes d' >2 |
    < ees g a cis' >2 < g a cis' e' >2 |
    < a c' d' fis' >1 |
    % 9
    < g bes d' g' >2\arpeggio < g bes d' >4 < g bes d' f' >4 |
    < g a c' ees' >2\arpeggio a4 < g a c' ees' >4 |
    < fis a d' >1\arpeggio  |
    < d g bes >2.\arpeggio g4 |
    % 13
    < c d fis a >2 < d f g b >2 |
    < ees g c' >2 < ees g a cis' >2 |
    < fis a c' d' >2 < g a cis' e' >2 |
    < a c' d' fis' >1 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        r4\p < bes d' e' g' >4 r4 < g bes d' f' >4
        < g a c' ees' >4 r4 < g a c' >4 < g a c' ees' >4 |
        r4 < d g bes >4 r4 < g bes d' >4 |
        < g c' ees' >4 r4 < g c' ees' >4 r4 |

        r4 < g bes d' >4 r4 < g bes d' >4 |
        < c' fis' bes' >4 < c' fis' a' >4 < bes ees' g' >8 < a c' d' fis' >4. |
    }
    \alternative {
        { < bes d' e' g' >4-. r4 r2 | r2 r4 d'4 | }
        { < bes d' e' g' >4-. r4 r2 | g'4 g'4 a'4 bes'4 | }
    }
}

pianorightuppersectionb = {
    r4 < ees' g' a' c'' >4 r4 < ees' g' a' c'' >4 |
    < ees' g' a' c'' >4 bes'4 a'4 g'4 |
    r4 < d' g' bes' d'' >4 r4 < d' g' bes' d'' >4 |
    < d' g' bes' d'' >4 g'4 a'4 bes'4 |

    r4 < ees' g' a' c'' >4 r4 < c' ees' g' >4 |
    < ees' g' c'' >4 r4 f'8 ees'8 d'8 c'8 |
    < fis a c' d' >4-. r4 r2 |
    r4 d'4 ees'4 fis'4 |
}

pianorightuppersectionc = {
    r4\p < bes d' g' >4 r4 < g bes d' f' >4 |
    < g a c' ees' >4 r4 < g a c' >4 < g a c' ees' >4 |
    < g bes d' >4 r4 < g bes d' g' >4 r4 |
    < ees' g' a' d'' >4 < ees' g' a' c'' >4 < d' g' bes' >4 < c' d' fis' a' >4 |

    d'4 g'4 < d' e' g' bes' >2 |
    < c' fis' bes' >4 r4 < c' d' f' a' >4 r4 |
    < g bes d' g' >4 r4 r2 |
    r2 r8 < d d' >4. |
}

pianorightuppersectiond = {
    % 43
    < bes d' e' g' >4\f < bes d' fis' >8 < g bes d' f' >8 r2 |
    < g bes c' f' >4 r8 < g bes c' ees' >8 < g a d' >8 < g a c' >4 r8 |
    < d' e' g' bes' >4 r4 < d' e' g' bes' >8 r4 < ees' g' a' d'' >8 |
    r8 < ees' g' a' d'' >4 < c' ees' g' a' >8 ~ < c' ees' g' a' >2 |

    < d' e' g' bes' >4 r4 < d' e' g' bes' >4 r8 < cis' ees' g' bes' >8 |
    r8 < cis' e' g' bes' >4 r8 < c' d' fis' a' >2 |
    r1 |
    r1 |

    r8 < g' bes' d'' g'' >4 d''8 < g' bes' d'' f'' >4 < g' bes' d'' f'' >4 |
    < g' a' c'' ees'' >4 r8 c''8 ~ c''8 d''8 < g' a' c'' ees'' >4 |
    < d' g' bes' d'' >8 < d' g' bes' d'' >8 r4 r8 bes'8 a'8 bes'8 |
    < ees' g' a' d'' >8 < ees' g' a' d'' >4 < ees' g' bes' >8 < c' ees' g' a' >4 < ees' g' a' c'' >4 |

    < d' g' bes' >4 r4 r4 < d' e' g' bes' >4 |
    < c' fis' bes' >8 < c' fis' bes' >4 r8 < c' fis' bes' >4 < c' fis' a' >4 |
    < bes d' ees' g' >4. d'8 < a c' f' >4 < a c' d' fis' >8 < g bes d'  g' >8 |
    < g g' >4 < g g' >4 < a a' >4 < bes bes' >4 |
}

pianorightuppersectione = {
    r4 < ees' g' a' c'' >4 r4 < ees' g' a' c'' >4 |
    < ees' g' a' c'' >4 bes'4 a'4 g'4 |
    r4 < d' g' bes' d'' >4 r4 < d' g' bes' d'' >4 |
    < d' g' bes' d'' >4 g'4 a'4 bes'4 |

    r4 < ees' g' a' c'' >4 r4 < c' ees' g' >4 |
    < ees' g' c'' >4 r4 f'8 ees'8 d'8 c'8 |
    d'8 r8 r4 r2 |
    r1 |
}

pianorightuppersectionf = {
    r4\f < bes d' g' >4 r4 < g bes d' f' >4 |
    < g a c' ees' >4 r4 < g a c' >4 < g a c' ees' >4 |
    < g bes d' >4 r4 < g bes d' g' >4 r4 |
    < ees' g' a' d'' >4 < ees' g' a' c'' >4 < d' g' bes' >4 < c' d' fis' a' >4 |

    d'4 g'4 < d' e' g' bes' >2 |
    < c' fis' bes' >4 < c' fis' bes' >4 < c' d' fis' a' >4 < c' d' fis' a' >4 |
    < a c' d' g' >4 < a c' d' fis' >2. |
    < bes d' g' >4 d'8 < bes d' g' >8 r8 d'8 < bes g' >8 d'8 |

    < fis g cis' e' >4 < g bes c' >8 < g bes c' >8 r8 < g bes d' >8 < g bes c' ees' >8 < g bes c'' >8 |
    a8 bes8 c'8 d'8 ~ d'8 ees'8 < a c' d' fis' >4 |
    < g bes d' g' >4-^ d'4-^ < g bes d' g' >4-^ r4 |
}

pianorightuppernotes = \transpose ees bes { {
    \time 4/4
    \key g \minor
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
    \pianorightuppersectionf
} }

pianorightnotesmidi = \transpose ees bes { {
    \preintro
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
    \pianorightuppersectionf
} }

%-------------------------------------------------

pianoleftupperintro = {
    \time 4/4
    < g,, g, >1\arpeggio |
    < a,, a, >1\arpeggio |
    < d, d >2\arpeggio < c, c >2 |
    < g,, g, >1\arpeggio |

    < a,, a, >2 < c, c >2 |
    < bes,, bes, >2 < d, d >2 |
    < cis, cis >2 < e, e >2 |
    < d, d >1 |

    < g,, g, >1\arpeggio |
    < a,, a, >1\arpeggio |
    < d, d >2\arpeggio < c, c >2 |
    < g,, g, >1\arpeggio |

    < a,, a, >2 < b,, b, >2 |
    < c, c >2 < cis, cis >2 |
    < d, d >2 < e, e >2 |
    < d, d >1 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        g,4 r4 d,4 r4 |
        c,4 r4 ees,4 r4 |
        g,4 r4 bes,4 r4 |
        c4 r4 a,4 r4 |

        g,4 r4 bes,4 r4 |
        < d, d >2 < fis, fis >2 |
    }
    \alternative {
        { < g, g >4-. r4 r2 | r2 r4 < d, d >4 | }
        { < g, g >4-. r4 r2 | < g, g >4 < g, g >4 < a, a >4 < bes, bes >4 | }
    }
}

pianoleftuppersectionb = {
    c4 r4 g,4 r4 |
    c4 bes,4 a,4 g,4 |
    g,4 r4 d,4 r4 |
    g,4 g,4 a,4 bes,4 |

    c4 r4 g,4 r4 |
    c4 r4 ees,4 r4 |
    < d, d >4-. r4 r2 |
    r4 < d, d >4 < ees, ees >4 < fis, fis >4 |
}

pianoleftuppersectionc = {
    g,4 r4 d,4 r4 |
    c,4 r4 ees,4 r4 |
    g,4 r4 bes,4 r4 |
    c4 r4 a,4 r4 |

    g,4 r4 g,4 r4 |
    d,4 r4 fis,4 r4 |
    g,4 r4 r2 |
    r2 r8 d,4. |
}

pianoleftuppersectiond = {
    % 43
    < g,, g, >4 < fis,, fis, >8 < f,, f, >8 r2 |
    < ees, ees >4 r8 < ees, ees >8 ~ < ees, ees >8 < c, c >4 r8 |
    < bes,, bes, >4 r4 < d, d >4 r4 |
    r8 < c, c >4. < c, c >2 |
    % 47
    < g, g >4 r4 < g, g >4 r8 < cis, cis >8 |
    r8 < cis, cis >4 r8 < d, d >2 |
    r1 |
    r1 |
    % 51
    < g, g >4 r4 < bes, bes >4 < bes, bes >4
    < a, a >4 r4 < a, a >4 r4
    < g, g >8 < g, g >8 r4 r8 < g, g >4.
    < c, c >4. < c, c >4. < c, c >4
    % 55
    < g, g >4 r4 < g, g >4 r4
    < d, d >4. r8 < d, d >4 < fis, fis >4
    < g, g >4. d8 < f, f >4 < fis, fis >8 < g, g >8
    g,4 g,4 a,4 bes,4
}

pianoleftuppersectione = {
    c4 r4 g,4 r4 |
    c4 bes,4 a,4 g,4 |
    g,4 r4 d,4 r4 |
    g,4 g,4 a,4 bes,4 |

    c4 r4 g,4 r4 |
    c4 r4 ees,4 r4 |
    < d, d >8 r8 r4 r2 |
    r1 |
}

pianoleftuppersectionf = {
    g,4 r4 d,4 r4 |
    c,4 r4 ees,4 r4 |
    g,4 r4 bes,4 r4 |
    c4 r4 a,4 r4 |

    g,4 r4 g,4 r4 |
    < d, d >4 r4 < d, d >4 r4 |
    < d, d >4 < d, d >2. |
    g,4 d,8 g,8 r8 d,8 g,8 d,8 |

    e4 cis8 e8 r8 cis8 e8 cis8 |
    a,8 bes,8 c8 d8 ~ d8 e8 fis4 |
    < g, g >4-^ < d, d >4-^ < g, g >4-^ r4 |
}

pianoleftuppernotes = \transpose ees bes { {
    \time 4/4
    \key g \minor
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
    \pianoleftuppersectionf
} }

pianoleftnotesmidi = \transpose ees bes { {
    \preintro
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
    \pianoleftuppersectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \time 4/4
    R1*16 |
}

clarinetsectiona = {
    \repeat volta 2 {
        c''2\pp ( cis''2 |
        d''4-^ ) c''8 b'8 ~ b'8 a'8 r4 |
        a'2 ( c''2 |
        b'4 ) r4 r2 |

        e''1 |
        gis''4-^ \< gis''4-^ f''8 ( d''4. ) \! |
    }
    \alternative {
        {
            << {
            c'1
            } \\ {
            \set fontSize = #-4
            f''8\rest^\markup { \normalsize "Play if no violin!" } a''8 ( a''8 a''8 a''8 e''8 e''8 g''8 |
            f''8 e''8 d''8 c''8 b'8 e''4. ) |
            \normalsize
            } >>
        }
        {
            << {
            c'1
            } \\ {
            \set fontSize = #-4
            f''8\rest e''8 ( dis''8 e''8 \tuplet 3/2 { d''16 e''16 d''16 } c''8 b'8 c''8 |
            a'4-. ) f''4\rest f''2\rest |
            \normalsize
            } >>
        }
    }
}

clarinetsectionb = {
    \normalsize
    r4 a'8 a'8 f'8 g'4 a'8-^ |
    R1 |
    r4 a'8 ( e'8 a'8 e'8 g'8-\prall fis'8 |
    dis'8 c'8 c'4 ) r2 |

    f'2\mf ( e'2 |
    e'4. ) r8 r2 |
    r8 e'8 ( \< gis'8 b'8 e''8 f''8 fis''8 a''8 |
    gis''4-. ) gis''8 ( d''8 f''8 e''8 d''8 ) \! r8 |
}

clarinetsectionc = {
    c''2\mf ( cis''2 |
    d''4-^ ) c''8 b'8 ~ b'8 a'8 r4 |
    a'2 ( c''2 |
    b'4 ) r4 r2 |

    e'1 |
    gis''4-^ gis''4-^ f''8 ( d''4. ) |
    a'8-^ ( e''8 dis''8 e''8 e''8 dis''8 b'8 c''8 |
    a'8 ) r8 r4 r8 c'4 r8 |
}

clarinetsectiond = {
    e'4\f gis'8 c''8-^ r4 r8 c''8 |
    d''8-- d''8-. r8 d''8 b'8 a'4-> r8 |
    r8 c''8 ( e'8 f'8 a'8 a'8 a'8 b'8 ) |
    r8 b'4-^ a'8 a'8-- f'4-^ r8 |

    a'4 gis'4 g'4-> r8 fis'8-^ |
    r8 fis'4-^ r8 f'8 ( e'4.-> ) |
    \transpose c c, {
    \set fontSize = #-4
    e''8^\markup { \normalsize "Play if no violin!" } \( a''8 c'''8-. e'''8-. dis'''8 ( e'''8) \) c'''8-. e'''8-. |
    dis'''8 \( ( e'''8 ) c'''8-. e'''8-. \) \tuplet 3/2 { dis'''16 ( [ e'''16 dis'''16 } c'''8 ] ) b''8-. a''8-. |
    \normalsize
    }

    a''2 ( g''8 e''8 c''8 a'8 |
    d''8 f'8 a'8 d''8 f''8 e''8 d''8 f''8 ) |
    e''4 d''4 c''8 ( a'8 gis'8 g'8 |
    f'8 a'8 d''8 f''8 ) r8 f''4. |

    e''2 e''8 ( a'8 f'8 e'8 |
    e''2 ) c''8 gis'8 gis'4 |
    c''4-^ r8 e'8 b4 b8 c'8-^ |
    a'4-. r4 r2 |
}

clarinetsectione = {
    r4 a'8 a'8 f'8 g'4 a'8-^ |
    R1 |
    r4 a'8 ( e'8 a'8 e'8 g'8-\prall fis'8 |
    dis'8 c'8 c'4 ) r2 |

    f'2 ( e'2 |
    e'4. ) r8 r2 |
    r8 e'8 ( gis'8 b'8 e''8 f''8 fis''8 a''8 |
    gis''4-. ) gis''8 ( d''8 f''8 e''8 d''8 ) r8 |
}

clarinetsectionf = {
    c''2\pp ( cis''2 |
    d''4-^ ) c''8 b'8 ~ b'8 a'8 r4 |
    a'2 ( c''2 |
    b'4 ) r4 r2 |

    e''1 |
    gis''2 \< gis''2 |
    f''4 d''2. \! |
    a''4\ff-> e''8 a''8-> r8 g''8 fis''8 e''8 |

    dis''4 c''8 dis''8 r8 c''8 b'8 a'8 |
    e''8 dis''8 d''8 c''8 ~ c''8 gis'8 b'4 |
    a'4-^ e''4-^ a''4-^ r4 |
}

clarinetnotes = \transpose ees bes { {
    \time 4/4
    \key a \minor
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectionf
} }

clarinetnotesmidi =  \transpose ees bes { {
    \time 4/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    \time 4/4
    R1*16 |
}

violinsectiona = \transpose c' c {
    \repeat volta 2 {
        g''2\pp^\markup { \normalsize "2nd time only" } ( f''2 |
        ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
        bes'2 ( d''2 |
        ees''4 ) r4 r2 |

        bes'1 |
        bes'4-^ \< a'4-^ g'8 ( fis'4. ) \! |
    }
    \alternative {
        {
            r8\f g''8 ( g''8 g''8 g''8 d''8 d''8 f''8 |
            ees''8 d''8 c''8 bes'8 a'8 d''4. ) |
        }
        {
            r8\f d''8 cis''8 d''8 \tuplet 3/2 { cis''16 [ d''16 cis''16 } bes'8 ] a'8 bes'8 |
            g'4-. r4 r2 |
        }
    }
}

violinsectionb = {
    \set fontSize = #-4
    r4^\markup { \normalsize "Play if no clarinet! " } g'8 g'8 ees'8 f'4 g'8-^ |
    R1 |
    r4 g'8 ( d'8 g'8 d'8 f'8 e'8 |
    a8 bes8 bes4 ) r2 |

    ees'2 ( d'2  |
    ees'4. ) r8 r2 |
    r8 d'8 fis'8 a'8 d''8 ees''8 e''8 g''8 |
    fis''4-. fis''8 ( c''8 ees''8 d''8 a'8 ) r8 |
}

violinsectionc = \transpose c' c {
    \normalsize
    g''2\pp^\markup { \normalsize "Play!" } ( f''2 |
    ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
    bes'2 ( d''2 |
    ees''4 ) r4 r2 |

    bes'1 |
    bes''4-^ \< a''4-^ g''8 ( fis''4. ) \! |
    g'8-^ d''8 ( cis''8 d''8 d'''8 c'''8 a''8 bes''8 |
    g''8-^ ) r8 r4 r2 |
}

violinsectiond = { \transpose c' c {
    d''4\f-. fis''8 bes''8-^ r4 r8 bes''8 |
    c'''8-- c'''8-. r8 c'''8 a''8 g''4-> r8 |
    r8 bes''8 ( d''8 ees''8 g''8 g''8 g''8 a''8 ) |
    r8 a''4-^ g''8 g''8-- ees''4-^ r8 |

    g''4 fis''4 f''4-> r8 e''8-^ |
    r8 e''4-^ r8 ees''8 ( d''4.-> ) |
    d''8 ( g''8 ) bes''8-. d'''8-. cis'''8 ( d'''8 ) bes''8-. d'''8-. |
    cis'''8 ( d'''8 ) bes''8-. d'''8-. \tuplet 3/2 { cis'''16 [ (d'''16 cis'''16 } bes''8 ) ] a''8-. g''8-. |
    }
    \set fontSize = #-4
    g''2^\markup { \normalsize "Play if no clarinet" } ( f''8 d''8 bes'8 g'8 |
    c''8 ees'8 g'8 c''8 ees''8 d''8 c''8 ees''8 ) |
    d''4 c''4 bes'8 ( g'8 fis'8 f'8 |
    ees'8 g'8 c''8 ees''8 ) r8 ees''4. |

    d''2 d''8 ( g'8 ees'8 d'8 |
    d''2 ) bes'8 fis'8 fis'4 |
    bes'4-^ r8 d'8 a4 a8 bes8-^ |
    g'4-. r4 r2 |
}

violinsectione = {
    r4 g'8 g'8 ees'8 f'4 g'8-^ |
    R1 |
    r4 g'8 ( d'8 g'8 d'8 f'8-\prall e'8 |
    a8 bes8 bes4 ) r2 |

    ees'2 ( d'2 |
    ees'4. ) r8 r2 |
    r8 d'8 fis'8 a'8 d''8 ees''8 e''8 g''8 |
    fis''4-. fis''8 ( c''8 ees''8 d''8 a'8 ) r8 |
}

violinsectionf = \transpose c' c {
    \normalsize
    g''2\pp^\markup { \normalsize "Play!" } ( f''2 |
    ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
    bes'2 ( d''2 |
    ees''4 ) r4 r2 |

    bes''1 |
    bes''2 \< a''2 |
    g''4 fis''2. \! |
    g''4\ff-> d''8 g''8-> r8 f''8 e''8 d''8 |

    cis''4 bes'8 cis''8 r8 bes'8 a'8 g'8 |
    d''8 cis''8 c''8 bes'8 ~ bes'8 fis'8 a'4 |
    g'4-^ d''4-^ g''4-^ r4 |
}

violinnotes = \transpose ees bes { {
    \time 4/4
    \key g \minor
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
    \violinsectionf
} }

violinnotesmidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
    \violinsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteintro = {
    \transpose c c, {
    \time 4/4
    % 1
    g''8 g''8 g''8 g''8 d''4 f''8. f''16 |
    ees''8 ees''8 ees''8 ees''8 a'4 ees''4 |
    d''8 ees''8 d''8 c''8 a'4 bes'4 |
    g'2. r4 |
    % 5
    a'4 bes'4 c''4 a'4 |
    bes'4 c''4 d''2 |
    cis''4 d''4 e''4. a'8 |
    d''1 |
    % 9
    g''8 g''8 g''8 g''8 d''4 f''4 |
    ees''8 ees''8 ees''8 ees''8 a'4 ees''4 |
    d''4 c''4 a'4 bes'4 |
    g'2. g'4 |
    % 13
    a'4 a'4 b'4 b'4 |
    c''4 c''4 cis''4 cis''8 c''8 |
    d''4 d''4 e''4 f''4 |
    fis''2. ~ fis''8 d''8 |
    }
}

flutesectiona = {
    \repeat volta 2 {
        \transpose c' c {
            % 17
            g''2\pp^\markup { \normalsize "2nd time only" } ( f''2 |
            ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
            bes'2 ( d''2 |
            ees''4 ) r4 r2 |
            % 21
            bes'1 |
            bes'4-^ \< a'4-^ g'8 ( fis'4. ) \! |
        }
    }
    \alternative {
        {
            r8\f g''8 ( g''8 g''8 g''8 d''8 d''8 f''8 |
            ees''8 d''8 c''8 bes'8 a'8 d''4. ) |
        }
        {
            r8\f d''8 cis''8 d''8 \tuplet 3/2 { cis''16 [ d''16 cis''16 } bes'8 ] a'8 bes'8 |
            g'4-. r4 r2 |
        }
    }
}

flutesectionb = {
    % 27
    \set fontSize = #-4
    r4^\markup { \normalsize "Play if no clarinet!" } g'8 g'8 ees'8 f'4 g'8-^ |
    R1 |
    r4 g'8 ( d'8 g'8 d'8 f'8 e'8 |
    a8 bes8 bes4 ) r2 |
    % 31
    ees'2 ( d'2  |
    ees'4. ) r8 r2 |
    r8 d'8 fis'8 a'8 d''8 ees''8 e''8 g''8 |
    fis''4-. fis''8 ( c''8 ees''8 d''8 a'8 ) r8 |
}

flutesectionc = \transpose c' c {
    % 35
    \normalsize
    g''2\pp^\markup { \normalsize "Play!" } ( f''2 |
    ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
    bes'2 ( d''2 |
    ees''4 ) r4 r2 |
    % 39
    bes'1 |
    bes''4-^ \< a''4-^ g''8 ( fis''4. ) \! |
    g''8-^ d'''8 ( cis'''8 d'''8 d'''8 c'''8 a''8 bes''8 |
    g''8-^ ) r8 r4 r2 |
}

flutesectiond = {
    \transpose c' c {
        % 43
        d''4\f-. fis''8 bes''8-^ r4 r8 bes''8 |
        c'''8-- c'''8-. r8 c'''8 a''8 g''4-> r8 |
        r8 bes''8 ( d''8 ees''8 g''8 g''8 g''8 a''8 ) |
        r8 a''4-^ g''8 g''8-- ees''4-^ r8 |
        % 47
        g''4 fis''4 f''4-> r8 e''8-^ |
        r8 e''4-^ r8 ees''8 ( d''4.-> ) |
        d''8 ( g''8 ) bes''8-. d'''8-. cis'''8 ( d'''8 ) bes''8-. d'''8-. |
        cis'''8 ( d'''8 ) bes''8-. d'''8-. \tuplet 3/2 { cis'''16 [ (d'''16 cis'''16 } bes''8 ) ] a''8-. g''8-. |
    }
    % 51
    \set fontSize = #-4
    g''2^\markup { \normalsize "Play if no clarinet" } ( f''8 d''8 bes'8 g'8 |
    c''8 ees'8 g'8 c''8 ees''8 d''8 c''8 ees''8 ) |
    d''4 c''4 bes'8 ( g'8 fis'8 f'8 |
    ees'8 g'8 c''8 ees''8 ) r8 ees''4. |
    % 55
    d''2 d''8 ( g'8 ees'8 d'8 |
    d''2 ) bes'8 fis'8 fis'4 |
    bes'4-^ r8 d'8 a4 a8 bes8-^ |
    g'4-. r4 r2 |
}

flutesectione = {
    % 59
    r4 g'8 g'8 ees'8 f'4 g'8-^ |
    R1 |
    r4 g'8 ( d'8 g'8 d'8 f'8-\prall e'8 |
    a8 bes8 bes4 ) r2 |
    % 63
    ees'2 ( d'2 |
    ees'4. ) r8 r2 |
    r8 d'8 fis'8 a'8 d''8 ees''8 e''8 g''8 |
    fis''4-. fis''8 ( c''8 ees''8 d''8 a'8 ) r8 |
}

flutesectionf = \transpose c' c {
    % 67
    \normalsize
    g''2\pp^\markup { \normalsize "Play!" } ( f''2 |
    ees''4-^ ) d''8 c''8 ~ c''8 ees''8 r4 |
    bes'2 ( d''2 |
    ees''4 ) r4 r2 |
    % 71
    bes''1 |
    bes''2 \< a''2 |
    g''4 fis''2. \! |
    \transpose c c' {
        g''4\ff-> d''8 g''8-> r8 f''8 e''8 d''8 |
        % 75
        cis''4 bes'8 cis''8 r8 bes'8 a'8 g'8 |
        d''8 cis''8 c''8 bes'8 ~ bes'8 fis'8 a'4 |
        g'4-^ d''4-^ g''4-^ r4 |
    }
}

flutenotes = \transpose ees bes { {
    \time 4/4
    \key g \minor
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \flutesectione
    \flutesectionf
} }

flutenotesmidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \flutesectione
    \flutesectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \time 4/4
    R1*16 |
}

trumpetsectiona = {
    \repeat volta 2 {
        % 17
        a'2\pp^\markup { \normalsize "Cup" } ( g'2 |
        f'4-^ ) e'8 d'8 ~ d'8 f'8 r4 |
        c'2 ( e'2 |
        f'4 ) r4 r2 |
	% 21
        c''1 |
        c''4-^ \< b'4-^ a'8 gis'4. \! |
    }
    \alternative {
        { a'1 | R1 | }
        { a1 | R1 | }
    }
}

trumpetsectionb = {
    \set Staff.midiInstrument = "trumpet"
    % 27
    % transpose down because the global key change took it too high
    \transpose c' c {
    r4 a'8^\markup { \normalsize "Open" } a'8 d''8 e''4 f''8-^ |
    }
    R1 |
    r4 a'8 ( e'8 a'8 e'8 g'8-\prall fis'8 |
    dis'8 e'8 e'4 ) r2 |
    % 31
    d'2\mf ( c'2 |
    b4. ) r8 r2 |
    % transpose down because the global key change took it too high
    \transpose c' c {
    r8 e'8 \< ( gis'8 b'8 e''8 f''8 dis''8 f''8 |
    e''4-. ) e''8 ( b'8 d''8 c''8 b'8 ) r8 \! |
    }
}

trumpetsectionc = {
    % 35
    a'2\pp g'2 |
    f'4-^ e'8 d'8 ~ d'8 f'8 r4 |
    c'2 e'2 |
    f'4 r4 r2 |
    % 39
    c'1 |
    c''4-^ \< b'4-^ a'8 gis'4. |
    a'8-^ \! r8 r4 r2 |
    r2 r8 e'4 e'8 |
}

trumpetsectiond = {
    % 43
    % transpose down because the global key change took it too high
    \transpose c' c {
    a'4-.\f c''8 e''8-^ r4 r8 e''8 |
    g''8-- g''8-. r8 f''8 e''8 d''4-> r8 |
    r8 e''8 ( a'8 b'8 c''8 b'8 c''8 e''8 ) |
    r8 e''4-^ d''8 c''8-- b'4-^ r8 |
    }
    % 47
    c''4 c''4 c''4-> r8 c''8-^ |
    r8 c''4-^ b'8 a'8 ( gis'4.-> ) |
    R1 |
    % transpose down because the global key change took it too high
    \transpose c' c {
    r2 r4 r8 e'8 |
    % 51
    a'4-^ b'4-^ c''8 ( b'8 c''8 e''8 ) |
    r8 e''4-^ d''8 ( \tuplet 3/2 { c''8 [ d''8 c''8 ] } b'4 ) |
    c''8 c''4-^ b'8 a'8 g'4 r8 |
    f'8 ( g'8 f'8 e'8 d'8 f'4 ) r8 |
    % 55
    e'8 e''4-^ c''8 ( a'8 e'8 dis'8 d'8-. ) |
    r8 f'8 ( b'8 a'8 gis'8 e'8 ) c''4-^ |
    a'4-^ r8 e'8 g'4 gis'8 a'8-^ |
    R1 |
    }
}

trumpetsectione = {
    % 59
    % transpose down because the global key change took it too high
    \transpose c' c {
    r4 a'8 a'8 d''8 e''4 f''8-^ |
    }
    R1 |
    r4 a'8 ( e'8 a'8 e'8 g'8-\prall fis'8 |
    dis'8 e'8 e'4 ) r2 |
    % 63
    d'2 ( c'2 |
    b4. ) r8 r2 |
    % transpose down because the global key change took it too high
    \transpose c' c {
    r8 e'8 ( gis'8 b'8 e''8 f''8 dis''8 f''8 |
    e''4-. ) e''8 ( b'8 d''8 c''8 gis'8 ) r8 |
    }
}

trumpetsectionf = {
    % 67
    a'2\pp g'2 |
    f'4-^ e'8 d'8 ~ d'8 f'8 r4 |
    c'2 e'2 |
    f'4 r4 r2 |
    % 71
    c''1 |
    c''2 \< b'2 |
    a'4 gis'2. \! |
    % transpose down because the global key change took it too high
    \transpose c' c {
    a''4\ff-> e''8 a''8-> r8 g''8 fis''8 e''8 |
    % 75
    fis''4-> dis''8 fis''8-> r8 e''8 dis''8 c''8 |
    b'8 c''8 d''8 e''8 ~ e''8 fis''8 gis''4 |
    a''4-^ e''4-^ a'4-^ r4 |
    }
}

trumpetnotes = \transpose ees bes { {
    \time 4/4
    \key a \minor
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
    \trumpetsectionf
} }

trumpetnotesmidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
    \trumpetsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    \time 4/4
    R1*16 |
}

altosaxsectiona = {
    \repeat volta 2 {
        a'2\pp ( g'2 |
        f'4-^ ) e'8 d'8 ~ d'8 f'8 r4 |
        c'2 ( e'2 |
        f'4 ) r4 r2 |

        c''1 |
        c''4-^ \< b'4-^ a'8 gis'4. \! |
    }
    \alternative {
        { a'1 | R1 | }
        { a'1 | R1 | }
    }
}

altosaxsectionb = {
    \set fontSize = #-4
    r4^\markup { \normalsize "Play if no trumpet!" } a'8  a'8 d''8 e''4 f''8-^ |
    R1 |
    r4 a''8 ( e''8 a''8 e''8 g''8-\prall fis''8 |
    dis''8 e''8 e''4 ) r2 |

    d''2\mf ( c''2 |
    b'4. ) r8 r2 |
    r8 e'8 \< ( gis'8 b'8 e''8 f''8 dis''8 f''8 |
    e''4-. ) e''8 ( b'8 d''8 c''8 b'8 ) r8 \! |
}

altosaxsectionc = {
    \normalsize
    a'2\pp^\markup { \normalsize "Play!" } g'2 |
    f'4-^ e'8 d'8 ~ d'8 f'8 r4 |
    c'2 e'2 |
    f'4 r4 r2 |

    c'1 |
    c''4-^ \< b'4-^ a'8 gis'4. |
    a'8-^ \! r8 r4 r2 |
    r2 r8 e'4 e'8 |
}

altosaxsectiond = {
    a'4-.\f c''8 e''8-^ r4 r8 e''8 |
    g''8-- g''8-. r8 f''8 e''8 d''4-> r8 |
    r8 e''8 ( a'8 b'8 c''8 b'8 c''8 e''8 ) |
    r8 e''4-^ d''8 c''8-- b'4-^ r8 |

    c''4 c''4 c''4-> r8 c''8-^ |
    r8 c''4-^ b'8 a'8 ( gis'4.-> ) |
    R1 |
    r2 r4 r8 e'8 |

    \set fontSize = #-4
    a'4-^^\markup { \normalsize "Play if no trumpet" } b'4-^ c''8 ( b'8 c''8 e''8 ) |
    r8 e''4-^ d''8 ( \tuplet 3/2 { c''8 [ d''8 c''8 ] } b'4 ) |
    c''8 c''4-^ b'8 a'8 g'4 r8 |
    f'8 ( g'8 f'8 e'8 d'8 f'4 ) r8 |

    e'8 e''4-^ c''8 ( a'8 e'8 dis'8 d'8-. ) |
    r8 f'8 ( b'8 a'8 gis'8 e'8 ) c''4-^ |
    a'4-^ r8 e'8 g'4 gis'8 a'8-^ |
    R1 |
}

altosaxsectione = {
    r4 a'8 a'8 d''8 e''4 f''8-^ |
    R1 |
    r4 a''8 ( e''8 a''8 e''8 g''8-\prall fis''8 |
    dis''8 e''8 e''4 ) r2 |

    d''2 ( c''2 |
    b'4. ) r8 r2 |
    r8 e'8 ( gis'8 b'8 e''8 f''8 dis''8 f''8 |
    e''4-. ) e''8 ( b'8 d''8 c''8 gis'8 ) r8 |
}

altosaxsectionf = {
    \normalsize
    a'2\pp^\markup { \normalsize "Play!" } g'2 |
    f'4-^ e'8 d'8 ~ d'8 f'8 r4 |
    c'2 e'2 |
    f'4 r4 r2 |

    c''1 |
    c''2 \< b'2 |
    a'4 gis'2. \! |
    a''4\ff-> e''8 a''8-> r8 g''8 fis''8 e''8 |

    fis''4-> dis''8 fis''8-> r8 e''8 dis''8 c''8 |
    b'8 c''8 d''8 e''8 ~ e''8 fis''8 gis''4 |
    a''4-^ e''4-^ a'4-^ r4 |
}

altosaxnotes = \transpose ees bes, { \transpose ees bes {
    \time 4/4
    \key a \minor
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
    \altosaxsectionf
} }

altosaxnotesmidi = \transpose ees bes, { \transpose ees bes {
    \time 4/4
    \preintro
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
    \altosaxsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoclarinetnotes = \transpose ees bes, { \transpose ees bes {
    \time 4/4
    \key a \minor
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectionf
} }

altoclarinetnotesmidi = \transpose ees bes, { \transpose ees bes {
    \time 4/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
    \clarinetsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    \time 4/4
    R1*16
}

trombonesectiona = {
    \set Staff.midiInstrument = "muted trumpet"
    \repeat volta 2 {
        d'2\pp^\markup { \normalsize "Cup" } ( d'2 |
        g2 ~ g8 ) a8 r4 |
        d2 ( g2 |
        c'4 ) r4 r2 |

        g1 |
        d4-^ \< d4-^ d8 ( c4. ) \! |
    }
    \alternative {
        { d1 | R1 | }
        { d1 | R1 | }
    }
}

trombonesectionb = {
    R1*8 |
}

trombonesectionc = {
    d'2\pp ( d'2 |
    g2 ~ g8 ) a8 r4 |
    d2 ( g2 |
    c'4 ) r4 r2 |

    g1 |
    d4-^ \< d4-^ d8 ( c4. ) \! |
    R1 |
    r2 r8 dis4 r8 |
}

trombonesectiond = {
    \set Staff.midiInstrument = "trombone"
    bes,4-.\f^\markup { \normalsize "Open" } d8 f8-^ r4 r8 f8 |
    g8-- g8-. r8 g8 fis8 ees4-> r8 |
    r8 g8 ( bes,8 c8 e8 ees8 d8 ees8 ) |
    r8 ees4-^ ees8 d8-- c4-^ r8 |

    d4 d4 d4-> r8 cis8-^ |
    r8 cis'4-^ r8 a8 ( c'4.-> ) |
    R1*2 |

    g4 r4 d4 r8 d8 |
    f8 f8 ees4 d4 c4 |
    d4 r4 bes,2 \glissando \noBreak |
    ees4 d4 c8 a,4. |

    g,8 g,8 a,4 bes,4 b,4 |
    c8 c8 ees4 d4 c4 |
    g,4-^ r8 d8 c4 c8 bes,8-^ |
    R1 |
}

trombonesectione = {
    R1*8 |
}

trombonesectionf = {
    d'2\pp ( d'2 |
    g2 ~ g8 ) a8 r4 |
    d2 ( g2 |
    c'4 ) r4 r2 |

    g1 |
    d2-^ \< d2-^ |
    d4 ( c2. ) \! |
    g4\ff d4 g,2 |

    cis4 bes,4 e,2 |
    a,8 bes,8 c8 d8 ~ d8 e8 d4 |
    g,4-^ d,4-^ g,4-^ r4 |
}

trombonenotes = \transpose ees bes { {
    \override Glissando.style = #'zigzag
    \override Glissando.thickness = #1.75
    \override Glissando.gap = #0.4
    \time 4/4
    \key g \minor
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
    \trombonesectionf
} }

trombonenotesmidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
    \trombonesectionf
} }

tromboneforaltoclarinetnotes = \transpose ees bes { \transpose ees c' {
    \override Glissando.style = #'zigzag
    \override Glissando.thickness = #1.75
    \override Glissando.gap = #0.4
    \time 4/4
    \key g \minor
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
    \trombonesectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    \time 4/4
    R1*16
}

tenorsaxsectiona = {
    \repeat volta 2 {
        d'2\pp ( d'2 |
        g2 ~ g8 ) a8 r4 |
        d2 ( g2 |
        c'4 ) r4 r2 |

        g1 |
        d4-^ \< d4-^ d8 ( c4. ) \! |
    }
    \alternative {
        { d1 | R1 | }
        { d1 | R1 | }
    }
}

tenorsaxsectionb = {
    R1*8 |
}

tenorsaxsectionc = {
    d'2\pp ( d'2 |
    g2 ~ g8 ) a8 r4 |
    d2 ( g2 |
    c'4 ) r4 r2 |

    g1 |
    d4-^ \< d4-^ d8 ( c4. ) \! |
    R1 |
    r2 r8 dis4 r8 |
}

tenorsaxsectiond = {
    bes,4-.\f d8 f8-^ r4 r8 f8 |
    g8-- g8-. r8 g8 fis8 ees4-> r8 |
    r8 g8 ( bes,8 c8 e8 ees8 d8 ees8 ) |
    r8 ees4-^ ees8 d8-- c4-^ r8 |

    d4 d4 d4-> r8 cis8-^ |
    r8 cis'4-^ r8 a8 ( c'4.-> ) |
    R1*2 |

    g4 r4 d4 r8 d8 |
    f8 f8 ees4 d4 c4 |
    d4 r4 bes,2 ( |
    ees4 ) d4 c8 a,4. |

    g,8 g,8 a,4 bes,4 b,4 |
    c8 c8 ees4 d4 c4 |
    g,4-^ r8 d8 c4 c8 bes,8-^ |
    R1 |
}

tenorsaxsectione = {
    R1*8 |
}

tenorsaxsectionf = {
    d'2\pp ( d'2 |
    g2 ~ g8 ) a8 r4 |
    d2 ( g2 |
    c'4 ) r4 r2 |

    g'1 |
    d'2-^ \< d'2-^ |
    d'4 ( c'2. ) \! |
    g'4\ff d'4 g2 |

    cis'4 bes4 e2 |
    a8 bes8 c'8 d'8 ~ d'8 e'8 d'4 |
    g4-^ d'4-^ g'4-^ r4 |
}

tenorsaxnotes = \transpose ees bes { \transpose bes c'' {
    \time 4/4
    \key a \minor
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxsectionf
} }

tenorsaxnotesmidi = \transpose ees bes { \transpose bes c'' {
    \time 4/4
    \preintro
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
    \tenorsaxsectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \time 4/4
    g,1 |
    a,1 |
    d2 c2 |
    g,1 |

    a,2 c2 |
    bes,2 d2 |
    cis2 e2 |
    d1 |

    g,1 |
    a,1 |
    d2 c2 |
    g,1 |

    a,2 b,2 |
    c2 cis2 |
    d2 e2 |
    d1 |
}

basslinesectiona = {
    \repeat volta 2 {
        g4\pp r4 d4 r4 |
        c4 r4 ees4 r4 |
        g4 r4 bes,4 r4 |
        c4 r4 a,4 r4 |

        g,4 r4 bes,4 r4 |
        a,4 r4 d4 r4 |
    }
    \alternative {
        { g,4 r4 r2 | r2 r4 d4 | }
        { g4 r4 d4 r4 | g4 r4 r2 | }
    }
}

basslinesectionb = {
    c4 r4 g,4 r4 |
    c4 r4 ees4 r4 |
    d4 r4 g,4 r4 |
    bes,4 r4 d4 r4 |

    c4 r4 g,4 r4 |
    c4 r4 ees4 r4 |
    d4 r4 r2 |
    R1 |
}

basslinesectionc = {
    g4 r4 d4 r4 |
    c4 r4 ees4 r4 |
    g4 r4 bes,4 r4 |
    c4 r4 a,4 r4 |

    g,4 r4 bes,4 r4 |
    a,4 r4 d4 r4 |
    g4 r4 d4 r4 |
    g4 d4 e4 fis4 |
}

basslinesectiond = {
    g4 fis4 f4 e4 |
    ees4 g4 c'4 ees'4 |
    d'4 c'4 bes4 g4 |
    ees4 ees4 g4 c'4 |

    bes4 bes4 g4 cis4 |
    cis4 d4 d4 fis4 |
    R1*2 |

    g4 r4 f4 r4 |
    ees8. ees16 d4 c4 r4 |
    g,4 r4 bes,4 r4 |
    ees4 r4 c4 r4 |

    g,4 r4 bes,4 r4 |
    e4 r4 fis4 r4 |
    g4 d4 bes,4 a,4 |
    g4 r4 r2 |
}

basslinesectione = {
    c4 r4 g,4 r4 |
    c4 r4 ees4 r4 |
    d4 r4 g,4 r4 |
    bes,4 r4 d4 r4 |

    c4 r4 g,4 r4 |
    c4 r4 ees4 r4 |
    d4 r4 r2 |
    r1 |
}

basslinesectionf = {
    g4\pp r4 d4 r4 |
    c4 r4 ees4 r4 |
    g4 r4 bes,4 r4 |
    c4 r4 a,4 r4 |

    g,4 r4 bes,4 r4 |
    a,4 r4 a,4 r4 |
    d4 r4 d4 r4 |
    g4\ff g4 d4 d4 |

    e4 e4 cis4 cis4 |
    a,4 c4 d4 fis4 |
    g4 d4 g,4 r4 |
}

bassline = \transpose ees bes { {
    \time 4/4
    \key g \minor
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
    \basslinesectionf
} }

basslinemidi = \transpose ees bes { {
    \time 4/4
    \preintro
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
    \basslinesectionf
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
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

drumshighsectiona = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
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
}

drumshighsectiond = \drummode {
    s1*16 |
}

drumshighsectione = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectionf = \drummode {
    s1 |
    s1 |
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

drumshigh = \drummode {
    \time 4/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
    \drumshighsectionf
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
    \drumshighsectionf
}

%-------------------------------------------------

drumslowintro = \drummode {
    \time 4/4
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
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

drumslowsectiona = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
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
}

drumslowsectiond = \drummode {
    s1*16 |
}

drumslowsectione = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectionf = \drummode {
    s1 |
    s1 |
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

drumslow = \drummode {
    \time 4/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
    \drumslowsectionf
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
    \drumslowsectionf
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
tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { \trombonenotes }
countermidi = { \trombonenotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose ees bes { \chordmode {
  \time 4/4
    g1:min | c1:min6 | d1:7/c | g1:min |
} }

previewnotes = \transpose bes ees' { {
    \time 4/4
    \key g \minor
    \tempo \markupTintro
    \time 4/4
    g''8 g''8 g''8 g''8 d''4 f''8. f''16 |
    ees''8 ees''8 ees''8 ees''8 a'4 ees''4 |
    d''8 ees''8 d''8 c''8 a'4 bes'4 |
    g'2. r4 |
} }

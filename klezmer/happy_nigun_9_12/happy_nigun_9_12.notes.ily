\version "2.18.0"

bandmsectionaa =  {
    \markA \positionA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    \grace { s8 } s2 | \breakAfiv s2 | \breakAsix
    s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    \grace { s8 } s2 | \breakAtht s2 | \breakAfrt
    \markTC \positionTC
}

bandmsectionab =  { s2 | \breakAfft s2 | \breakAsxt }

bandmsectiona =  {
    \repeat volta 2 { \bandmsectionaa }
    \alternative {
        { \bandmsectionab } { \grace { s16 } s2 | \breakAsvt s2 | }
    }
    \bar ".|:-||"
    \breakA
}

bandmsectionb =  {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        \grace { s8 } s2 | \breakBtht s2 | \breakBfrt
        s2 | \breakBfft s2 |
    }
    \breakB
}

bandmsectionca =  {
    \markC \positionC
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt
}

bandmsectioncb =  { s2 | \breakCfft s2 | \breakCsxt }

bandmsectioncc =  { s2 | \breakCsvt s2 | }

bandmsectionc =  {
    \repeat volta 2 { \bandmsectionca }
    \alternative { { \bandmsectioncb } { \bandmsectioncc } }
    \markDCAL \positionDCAL
    \bar "||"
    \breakC
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda =  {
    \markCCRT \positionCCRT
    \grace { s8. } s2 | \breakCCone s2 |
}

bandmNV =  {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests) as place holders for tempo changes in
% the midi output.

preintro =  {
    s2 |
}

metronomesectionaa =  {
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 |
}

metronomesectionab =  {
    s2 | s2 |
}

metronomesectiona =  {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \grace { s16 } s2 | s2 | } }
}

metronomesectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
    }
}

metronomesectionca =  {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

metronomesectioncb =  {
    s2 | s2 |
}

metronomesectioncc =  {
    s2 | s2 |
}

metronomesectionc =  {
    \repeat volta 2 { \metronomesectionca }
    \alternative { { \metronomesectioncb } { \metronomesectioncc } }
}

metronomecoda =  {
    \grace { s8. } s8 s8 s4 | s2 |
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \tempo 4 = 120
    \metronomesectionaa
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectionaa =  {
    d'4-. \< f'4-. |
    a'4-. d''4-. \! |
    f''2\sfz-^ ~ |
    f''2 |

    \grace { s8 } e''8 [ f''8 ] g''8 [ f''8 ] |
    e''8 [ d''8 ] cis''8 [ d''8 ] |
    e''2 ~ |
    e''8 [ a'8 ] \( \acciaccatura { cis''16 } bes'8 [ a'8 ] \) |

    a'4. cis''8 |
    e''4. d''8 |
    \tuplet 3/2 { cis''8 ( [ d''8 e''8 ) ] } \tuplet 3/2 { d''8 ( [ cis''8 bes'8 ) ] } |
    a'2 |

    \grace { s8 } e''8 [ d''8 ] cis''8 [ bes'8 ] |
    a'8 [ g'8 f'8 e'8 ] |
}

melodysectionab =  {
    d'2 |
    \tuplet 3/2 { a'8 ( [ gis'8 f'8 ) ] } \tuplet 3/2 { f'8 ( [ e'8 d'8 ) ] } |
}

melodysectiona =  {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \grace { s16 } d'2 ~ | d'2 | } }
}

melodysectionb =  {
    \repeat volta 2 {
        a'8 [ d''8 ] f''8 [ e''8 ] |
        d''8 [ c''8 ] bes'8 [ a'8 ] |
        a'8 [ \acciaccatura { cis''16 } bes'8 ] bes'8 [ bes'8 ] |
        bes'2 |

        g'8 [ bes'8 ] e''8 [ d''8 ] |
        cis''8 [ bes'8 ] a'8 [ g'8 ] |
        gis'8 [ \acciaccatura { bes'16 } a'8 ] a'8 [ a'8 ] |
        a'2 |

        a'8 [ bes'8 ] cis''8 [ d''8 ] |
        e''8 [ f''8 ] \tuplet 3/2 { f''8 ( [ e''8 d''8 ) ] } |
        cis''2 ~ |
        cis''2 |

        \acciaccatura { cis''8 } e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'8 [ g'8 f'8 e'8 ] |
        d'2 ~ |
        d'4 r4 |
    }
}

melodysectionca =  {
    a''4-> gis''4-> |
    a''4-> bes''4-> |
    a''4.-> f''8-> |
    d''2 |

    bes''4. a''8 |
    g''8 ( [ a''8 bes''8 g''8 ) ] |
    a''2 ~ |
    a''2 |

    bes''8 [ \< a''8 ] g''4-> \! |
    g''8 [ \< f''8 ] e''4-> \! |
    g''8 [ \< f''8 ] e''4-> \! |
    e''8 [ d''8 ] cis''4-> |

    a'8 ( [ bes'8 cis''8 d''8 ) ] |
    e''8 ( [ f''8 cis''8 e''8 ) ] |
}

melodysectioncb =  {
    d''2 |
    \tuplet 3/2 { a''8 ( [ gis''8 f''8 ) ] } \tuplet 3/2 { f''8 ( [ e''8 d''8 ) ] } |
}

melodysectioncc =  {
    d''2 ~ |
    d''4 r4 |
}

melodysectionc =  {
    \repeat volta 2 { \melodysectionca }
    \alternative { { \melodysectioncb } { \melodysectioncc } }
}

melodycoda =  {
    \acciaccatura { a'16\ff [ b'16 cis''16 ] } d''8-^ r8 a'8 r8 |
    d''2-^-\fermata |
}

melody =  {
    \key f \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \blankmeasure
    \melodycoda
}

melodymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectionaa =  {
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 |
}

tenorharmonysectionab =  {
    s2 | s2 |
}

tenorharmonysectiona =  {
    \repeat volta 2 { \tenorharmonysectionaa }
    \alternative { { \tenorharmonysectionab } { \grace { s16 } s2 | s2 | } }
}

tenorharmonysectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
    }
}

tenorharmonysectionca =  {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

tenorharmonysectioncb =  {
    s2 | s2 |
}

tenorharmonysectioncc =  {
    s2 | s2 |
}

tenorharmonysectionc =  {
    \repeat volta 2 { \tenorharmonysectionca }
    \alternative { { \tenorharmonysectioncb } { \tenorharmonysectioncc } }
}

tenorharmonycoda =  {
    \grace { s8. } s8 s8 s4 | s2 |
}

tenorharmony =  {
    \key f \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectionaa
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectionaa =  {
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 |
}

altoharmonysectionab =  {
    s2 | s2 |
}

altoharmonysectiona =  {
    \repeat volta 2 { \altoharmonysectionaa }
    \alternative { { \altoharmonysectionab } { \grace { s16 } s2 | s2 | } }
}

altoharmonysectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
    }
}

altoharmonysectionca =  {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

altoharmonysectioncb =  {
    s2 | s2 |
}

altoharmonysectioncc =  {
    s2 | s2 |
}

altoharmonysectionc =  {
    \repeat volta 2 { \altoharmonysectionca }
    \alternative { { \altoharmonysectioncb } { \altoharmonysectioncc } }
}

altoharmonycoda =  {
    \grace { s8. } s8 s8 s4 | s2 |
}

altoharmony =  {
    \key f \major
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \blankmeasure
    \altoharmonycoda
}

altoharmonymidi =  {
    \key f \major
    \time 2/4
    \preintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \altoharmonysectionaa
    \altoharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectionaa =  {
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 |
}

countersectionab =  {
    s2 | s2 |
}

countersectiona =  {
    \repeat volta 2 { \countersectionaa }
    \alternative { { \countersectionab } { \grace { s16 } s2 | s2 | } }
}

countersectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
    }
}

countersectionca =  {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

countersectioncb =  {
    s2 | s2 |
}

countersectioncc =  {
    s2 | s2 |
}

countersectionc =  {
    \repeat volta 2 { \countersectionca }
    \alternative { { \countersectioncb } { \countersectioncc } }
}

countercoda =  {
    \grace { s8. } s8 s8 s4 | s2 |
}

counter =  {
    \key f \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \blankmeasure
    \countercoda
}

countermidi =  {
    \key f \major
    \time 2/4
    \preintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectionaa
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectionaa =  {
    \repeat unfold 4 {
        d4 a,4 |
    }

    \grace { s8 } d4 a,4 |
    d4 a,4 |
    \repeat unfold 2 {
        a,4 e4 |
    }

    \repeat unfold 4 {
        a,4 e4 |
    }

    \grace { s8 } a,4 e4 |
    a,4 e4 |
}

basslinesectionab =  {
    \repeat unfold 2 {
        d4 a,4 |
    }
}

basslinesectiona =  {
    \repeat volta 2 { \basslinesectionaa }
    \alternative {
        { \basslinesectionab }
        { \grace { s16 } d4 a,4 | d4 a,4 | }
    }
}

basslinesectionb =  {
    \repeat volta 2 {
        \repeat unfold 2 {
            d4 a,4 |
        }
        \repeat unfold 2 {
            g,4 d4 |
        }

        \repeat unfold 2 {
            g,4 d4 |
        }
        \repeat unfold 2 {
            d4 a,4 |
        }

        \repeat unfold 4 {
            a,4 e4 |
        }

        \grace { s8 } a,4 e4 |
        a,4 e4 |
        \repeat unfold 2 {
            d4 a,4 |
        }
    }
}

basslinesectionca =  {
    \repeat unfold 4 {
        d4 a,4 |
    }

    \repeat unfold 2 {
        g,4 d4 |
    }
    \repeat unfold 2 {
        d4 a,4 |
    }

    cis8 [ d8 ] e4-> |
    e8 [ f8 ] g4-> |
    e8 [ f8 ] g4-> |
    g8 [ a8 ] bes4-> |

    \repeat unfold 2 {
        a,4 e4 |
    }
}

basslinesectioncb =  {
    \repeat unfold 2 {
        d4 a,4 |
    }
}

basslinesectioncc =  {
    \repeat unfold 2 {
        d4 a,4 |
    }
}

basslinesectionc =  {
    \repeat volta 2 { \basslinesectionca }
    \alternative { { \basslinesectioncb } { \basslinesectioncc } }
}

basslinecoda =  {
    \grace { s8. } d8-^ r8 a,8-^ r8 |
    d2-^-\fermata |
}

bassline =  {
    \key f \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \blankmeasure
    \basslinecoda
}

basslinemidi =  {
    \key f \major
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectionaa
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotessectionaa =  {
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \grace { s8 } s2 | s2 |
}

guitarnotessectionab =  {
    s2 | s2 |
}

guitarnotessectiona =  {
    \repeat volta 2 { \guitarnotessectionaa }
    \alternative { { \guitarnotessectionab } { \grace { s16 } s2 | s2 | } }
}

guitarnotessectionb =  {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        \grace { s8 } s2 | s2 | s2 | s2 |
    }
}

guitarnotessectionca =  {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

guitarnotessectioncb =  {
    s2 | s2 |
}

guitarnotessectioncc =  {
    s2 | s2 |
}

guitarnotessectionc =  {
    \repeat volta 2 { \guitarnotessectionca }
    \alternative { { \guitarnotessectioncb } { \guitarnotessectioncc } }
}

guitarnotescoda =  {
    \grace { s8. } s8 s8 s4 | s2 |
}

guitarnotes =  {
    \key f \major
    \time 2/4
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \blankmeasure
    \guitarnotescoda
}

guitarnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectionaa
    \guitarnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectionaa = \chordmode {
    d2:min | d2:min | d2:min | d2:min |
    \grace { d8:min } d2:min | d2:min | d2:min | d2:min |
    a2 | a2 | a2 | a2 |
    \grace { a8:7 } a2:7 | a2:7 |
}

chordletterssectionab = \chordmode {
    d2:min | d2:min |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa }
    \alternative {
        { \chordletterssectionab }
        {
            \chordChangesOff \grace { s16 } d2:min |
            \chordChangesOn d2:min |
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d2:min |
        \chordChangesOn
        d2:min | g2:min | g2:min |
        g2:min | g2:min | d2:min | d2:min |
        a2:7 | a2:7 | a2:7 | a2:7 |
        \grace { a8:7 } a2:7 | a2:7 | d2:min | d2:min |
    }
}

chordletterssectionca = \chordmode {
    \chordChangesOff
    d2:min |
    \chordChangesOn
    d2:min | d2:min | d2:min |
    g2:min | g2:min | d2:min | d2:min |
    g2:min | g2:min | g2:min | g2:min |
    a2:7 | a2:7 |
}

chordletterssectioncb = \chordmode {
    d2:min | d2:min |
}

chordletterssectioncc = \chordmode {
    \chordChangesOff d2:min |
    \chordChangesOn d2:min |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 { \chordletterssectionca }
    \alternative { { \chordletterssectioncb } { \chordletterssectioncc } }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    \grace { d8.:min }
    \chordChangesOn
    d4:min a4:7 | d2:min |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \blankmeasure
    \chordChangesOff
    \grace { d8.:min }
    \chordChangesOn
    d4:min a4:7 | d2:min |
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

leadsheetnotes =  {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \melody
}

flutenotesmidi = {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectionaa =  {
    d'4-.\ff \< f'4-. |
    a'4-. d''4-. |
    f''2-^ \! ~ |
    f''2 |

    \acciaccatura { f''16 [ g''16 ] } e''8 [ f''8 ] g''8 [ f''8 ] |
    e''8 [ d''8 ] cis''8 [ d''8 ] |
    e''2 ~ |
    e''8 r8 \acciaccatura { cis''16 } bes'8 [ a'8 ] |

    a'4. cis''8 |
    e''4. d''8 |
    \tuplet 3/2 { cis''8 ( [ d''8 e''8 ) ] } \tuplet 3/2 { d''8 ( [ cis''8 bes'8 ) ] } |
    a'2 |

    \acciaccatura { a'16 [ cis''16 ] } e''8-^ [ d''8 ] cis''8 [ bes'8 ] |
    a'8 [ g'8 f'8 e'8 ] |
}

clarinetsectionab =  {
    d'2 |
    \tuplet 3/2 { a'8 ( [ gis'8 f'8 ) ] } \tuplet 3/2 { f'8 ( [ e'8 d'8 ) ] } |
}

clarinetsectiona =  {
    \repeat volta 2 { \clarinetsectionaa }
    \alternative {
        { \clarinetsectionab }
        { \acciaccatura { e'16 } d''2 ~ | d''4. r8 | }
    }
}

clarinetsectionb =  {
    \repeat volta 2 {
        a'8 [ d''8 ] f''8 [ e''8 ] |
        d''8 [ c''8 ] bes'8 [ a'8 ] |
        a'8 [ \acciaccatura { cis''16 } bes'8 ] bes'8 [ bes'8 ] |
        bes'2 |

        g'8 [ bes'8 ] e''8 [ d''8 ] |
        cis''8 [ bes'8 ] a'8 [ g'8 ] |
        gis'8 [ \acciaccatura { bes'16 } a'8 ] a'8 [ a'8 ] |
        a'2 |

        a'8 [ \< bes'8 cis''8 d''8 \! ] |
        e''8 [ f''8 ] \tuplet 3/2 { f''8 ( [ e''8 d''8 ) ] } |
        cis''2 ~ |
        cis''4. r8 |

        \acciaccatura { cis''8 } e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'8 [ g''8 f''8 e''8 ] |
        d''2 |
        \acciaccatura { e''16 [ f''16 ] } d''4. r8 |
    }
}

clarinetsectionca =  {
    a''4-.-^ gis''4-.-^ |
    a''4-.-^ bes''4-.-^ |
    a''4.-^ f''8-^ |
    d''2-^ |

    bes''4. a''8 |
    g''8 [ a''8 bes''8 g''8 ] |
    a''2 ~ |
    a''2 |

    bes''8 [ a''8 ] g''4-^ |
    g''8 [ f''8 ] e''4-^ |
    g''8 [ f''8 ] e''4-^ |
    e''8 [ d''8 ] cis''4-^ |

    a'8 [ bes'8 cis''8 d''8 ] |
    e''8 ( [ f''8 ) cis''8 ( e''8 ) ] |
}

clarinetsectioncb =  {
    d''2 |
    \tuplet 3/2 { a''8 ( [ gis''8 f''8 ) ] } \tuplet 3/2 { f''8 ( [ e''8 d''8 ) ] } |
}

clarinetsectioncc =  {
    d''4. \< a''8 |
    f''8 \! ( [ d''8 a'8 f'8 ) ] |
}

clarinetsectionc =  {
    \repeat volta 2 { \clarinetsectionca }
    \alternative { { \clarinetsectioncb } { \clarinetsectioncc } }
}

clarinetcoda =  {
    \acciaccatura { a'16\ff [ b'16 cis''16 ] } d''8-^ r8 a'8 r8 |
    d''2-^-\fermata |
}

clarinetnotes =  \transpose c d {
    \key f \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi =  \transpose c d {
    \key f \major
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectionaa =  {
    e'4-.\ff \< g'4-. |
    b'4-. e''4-. |
    e''2-^ ~ \! |
    e''8 [ b'8 ( e''8 g''8 ) ] |

    \acciaccatura { g''16 [ a''16 ] } fis''8 [ g''8 a''8 g''8 ] |
    fis''8 [ e''8 dis''8 e''8 ] |
    dis''2 ~ |
    dis''8 [ b'8 ] \acciaccatura { dis''16 } c''8 [ b'8 ] |

    b'4. dis''8 |
    fis''4. e''8 |
    \tuplet 3/2 { dis''8 ( [ e''8 fis''8 ] ) } \tuplet 3/2 { e''8 ( [ dis''8 c''8 ] ) } |
    b'2 |

    \acciaccatura { b'16 [ dis''16 ] } fis''8-^ [ e''8 dis''8 c''8 ] |
    b'8 [ a'8 g'8 fis'8 ] |
}

tenorsaxsectionab =  {
    e'2 |
    \tuplet 3/2 { b'8 ( [ ais'8 g'8 ] ) } \tuplet 3/2 { g'8 ( [ fis'8 e'8 ] ) } |
}

tenorsaxsectiona =  {
    \repeat volta 2 { \tenorsaxsectionaa }
    \alternative {
        { \tenorsaxsectionab }
        { \grace { s16 } e'8 ( [ g'8 ] ) g'8 ( [ b'8 ] ) | e''4. r8 | }
    }
}

tenorsaxsectionb =  {
    \repeat volta 2 {
        b'8 [ e''8 g''8 fis''8 ] |
        e''8 [ d''8 c''8 b'8 ] |
        b'8 [ \acciaccatura { d''16 } c''8 c''8 c''8 ] |
        c''8 [ e'8 ( a'8 c''8 ) ] |

        a'8 [ c''8 fis''8 e''8 ] |
        dis''8 [ c''8 b'8 a'8 ] |
        ais'8 [ \acciaccatura { c''8 } b'8 b'8 b'8 ] |
        b'8 [ g'8 ( fis'8 e'8 ) ] |

        b'8 [ \< c''8 dis''8 e''8 \! ] |
        fis''8 [ g''8 ] \tuplet 3/2 { g''8 [ ( fis''8 e''8 ) ] } |
        b'2 ~ |
        b'8 [ fis'8 ( b'8 dis''8 ) ] |

        \acciaccatura { dis''16 } fis''8 [ e''8 dis''8 c''8 ] |
        b'8 [ a'8 g'8 fis'8 ] |
        e'2 |
        \acciaccatura { fis'16 [ g'16 ] } e'4. r8 |
    }
}

tenorsaxsectionca =  {
    g''4-.-^ g''4-.-^ |
    g''4-.-^ g''4-.-^ |
    g''4.-^ e''8-^ |
    b'8 [ e''8 ( g''8 b''8 ) ] |

    a''4. e''8 |
    c''8 [ e''8 a''8 fis''8 ] |
    g''8 [ b'8 \( e''8 fis''8 ] |
    g''8 fis''8 ( e''8 g''8 ) \)|

    a''8 [ g''8 ] fis''4-^ |
    fis''8 [ e''8 ] dis''4-^ |
    c''8 [ b'8 ] a'4-^ |
    a'8 [ g'8 ] fis'8 ( [ c''8 ] ) |

    b'8 [ c''8 dis''8 e''8 ] |
    fis''8 [ ( g''8 ) ] dis''8 [ ( fis''8 ) ] |
}

tenorsaxsectioncb =  {
    e''2 |
    \tuplet 3/2 { b''8 ( [ ais''8 g''8 ] ) } \tuplet 3/2 { g''8 ( [ fis''8 e''8 ] ) } |
}

tenorsaxsectioncc =  {
    e''4. \< b''8 |
    g''8 \! ( [ e''8 b'8 g'8 ] ) |
}

tenorsaxsectionc =  {
    \repeat volta 2 { \tenorsaxsectionca }
    \alternative { { \tenorsaxsectioncb } { \tenorsaxsectioncc } }
}

tenorsaxcoda =  {
    \grace { s8. } g'8\ff r8 a'8 r8 |
    g'2-^-\fermata |
}

tenorsaxnotes =  {
    \key g \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi =  {
    \key g \major
    \time 2/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = {
  \dynamicUp \hideDynamics \tenorsaxnotes
}
tenorforclarinetnotes = {
  \dynamicUp \hideDynamics \tenorsaxnotes
}
tenorfortrumpetnotes = {
  \dynamicUp \hideDynamics \tenorsaxnotes
}
tenorforaltonotes = \transpose ees bes, {
  \dynamicUp \hideDynamics \tenorsaxnotes
}
tenorforviolinnotes = \transpose c bes, {
  \dynamicUp \hideDynamics \tenorsaxnotes
}
tenorforflutenotes = \transpose c bes, {
  \dynamicUp \hideDynamics \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes =  \transpose ees c' {
    \key f \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

altosaxnotesmidi =  \transpose ees c' {
    \key f \major
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotessectionaa = {
    e'4-.\ff \< g'4-. |
    b'4-. e''4-. \! |
    g''2-^-\sfz ~ |
    g''2 |

    \grace { s8 } fis''8 g''8 a''8 g''8 |
    fis''8 e''8 dis''8 e''8 |
    fis''2 ~ |
    fis''8 b'8 \acciaccatura { dis''16 } c''8 b'8 |

    b'4. dis''8 |
    fis''4. e''8 |
    \tuplet 3/2 { dis''8 ( e''8 fis''8 ) } \tuplet 3/2 { e''8 ( dis''8 c''8 ) } |
    b'2 |
    \grace { s8 } fis''8 e''8 dis''8 c''8 |
    b'8 a'8 g'8 fis'8 |
}

trumpetnotessectionab =  {
    e'2 |
    \tuplet 3/2 { b'8 ( ais'8 g'8 ) } \tuplet 3/2 { g'8 ( fis'8 e'8 ) } |
}

trumpetnotessectiona =  {
    \repeat volta 2 { \trumpetnotessectionaa }
    \alternative {
        { \trumpetnotessectionab }
        { \grace { s16 } e'2 ~ | e'4. r8 | }
    }
}

trumpetnotessectionb =  {
    \repeat volta 2 {
        b'8 e''8 g''8 fis''8 |
        e''8 d''8 c''8 b'8 |
        b'8 \acciaccatura { d''8 } c''8 c''8 c''8 |
        c''2 |
        a'8 c''8 fis''8 e''8 |
        dis''8 c''8 b'8 a'8 |
        gis'8 \acciaccatura { c''8 } b'8 b'8 b'8 |
        b'2 |
        b'8 c''8 dis''8 e''8 |
        fis''8 g''8 \tuplet 3/2 { g''8 [ ( fis''8 e''8 ) ] } |
        dis''2 ~ |
        dis''4. r8 |
        \acciaccatura { dis''8 } fis''8 e''8 dis''8 c''8 |
        b'8 a'8 g'8 fis'8 |
        e'2 ~ |
        e'4. r8 |
    }
}

trumpetnotessectionca =  {
    b'4^^^. ais'4^^ |
    b'4^^ c''4^^ |
    b'4.^^ g'8^^ |
    e'2^^ |
    c''4. b'8 |
    a'8 ( b'8 c''8 a'8 ) |
    b'2 ~ |
    b'2 |
    c''8 b'8 a'4^^ |
    a'8 g'8 fis'4^^ |
    << { a''8 g''8 fis''4^^ } \\ { a'8 g'8 fis'4_^ } >>  |
    << { fis''8 e''8 dis''4^^ } \\ { fis'8 e'8 dis'4_^ } >> |
    b'8 c'' dis''8 e''8 |
    fis''8 g''8 dis''8 fis''8 |
}

trumpetnotessectioncb =  {
    e''2 |
    \tuplet 3/2 { b'8 [ ( ais'8 g'8 ) ] } \tuplet 3/2 { g'8 [ ( fis'8 e'8 ) ] }  |
}

trumpetnotessectioncc =  {
    e''2 ~ |
    e''4 r4 |
}

trumpetnotessectionc =  {
    \repeat volta 2 { \trumpetnotessectionca }
    \alternative { { \trumpetnotessectioncb } { \trumpetnotessectioncc } }
}

trumpetnotescoda =  {
    \acciaccatura { b'16\ff [ cis''16 dis''16 ] } e''8^^ r8 b'8^^ r8 |
    e'2^^^\fermata |
}

trumpetnotes =  {
    \key g \major
    \time 2/4
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc
    \blankmeasure
    \trumpetnotescoda
}

trumpetnotesmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc
    \trumpetnotessectiona
    \trumpetnotessectionb
    \trumpetnotessectionc
    \trumpetnotessectionaa
    \trumpetnotescoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes =  {
    \counter
}

trombonenotesmidi =  {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \bassline
}

euphoniumnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes =  {
    \melody
}

violinnotesmidi =  {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
    \guitarnotes
}

guitarnotesmidi =  {
    \guitarnotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotessectionaa =  {
    d'4-. \< f'4-. |
    a'4-. d''4-. \! |
    < a' d'' f'' >2\sfz-^ ~ |
    < a' d'' f'' >2 |

    \grace { s8 } e''8 [ f''8 ] g''8 [ f''8 ] |
    e''8 [ d''8 ] cis''8 [ d''8 ] |
    < a' cis'' e'' >2 ~ |
    < a' cis'' e'' >8 [ a'8 ] \( \acciaccatura { cis''16 } bes'8 [ a'8 ] \) |

    a'4. cis''8 |
    e''4. d''8 |
    \tuplet 3/2 { cis''8 ( [ d''8 e''8 ) ] } \tuplet 3/2 { d''8 ( [ cis''8 bes'8 ) ] } |
    a'2 |

    \grace { s8 } e''8 [ d''8 ] cis''8 [ bes'8 ] |
    a'8 [ g'8 f'8 e'8 ] |
}

pianorightnotessectionab =  {
    d'2 |
    \tuplet 3/2 { a'8 ( [ gis'8 f'8 ) ] } \tuplet 3/2 { f'8 ( [ e'8 d'8 ) ] } |
}

pianorightnotessectiona =  {
    \repeat volta 2 { \pianorightnotessectionaa }
    \alternative {
        { \pianorightnotessectionab }
        { \grace { s16 } d'2 ~ | d'2 | }
    }
}

pianorightnotessectionb =  {
    \repeat volta 2 {
        a'8 [ d''8 ] f''8 [ e''8 ] |
        d''8 [ c''8 ] bes'8 [ a'8 ] |
        a'8 [ \acciaccatura { cis''16 } bes'8 ] < g' bes' >8 [ < g' bes' >8 ] |
        < g' bes' >2 |

        g'8 [ bes'8 ] e''8 [ d''8 ] |
        cis''8 [ bes'8 ] a'8 [ g'8 ] |
        gis'8 [ \acciaccatura { bes'16 } a'8 ] < a' f' >8 [ < a' f' >8 ] |
        < a' f' >2 |

        a'8 [ bes'8 ] cis''8 [ d''8 ] |
        e''8 [ f''8 ] \tuplet 3/2 { f''8 ( [ e''8 d''8 ) ] } |
        cis''2 ~ |
        cis''2 |

        \acciaccatura { cis''8 } e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'8 [ g'8 f'8 e'8 ] |
        d'2 ~ |
        d'4 r4 |
    }
}

pianorightnotessectionca =  {
    < a' a'' >4-> < gis' gis'' >4-> |
    < a' a'' >4-> < bes' bes'' >4-> |
    < a' a'' >4.-> < f' f'' >8-> |
    < d' d'' >2 |

    < bes' bes'' >4. < a' a'' >8 |
    < g' g'' >8 ( [ < a' a'' >8 < bes' bes'' >8 < g' g'' >8 ) ] |
    < a' f'' a'' >2 ~ |
    < a' f'' a'' >2 |

    < bes' bes'' >8 [ \< < a' a'' >8 ] < g' g'' >4-> \! |
    < g' g'' >8 [ \< < f' f'' >8 ] < e' e'' >4-> \! |
    < g' g'' >8 [ \< < f' f'' >8 ] < e' e'' >4-> \! |
    < e' e'' >8 [ < d' d'' >8 ] < cis' cis'' >4-> |

    a'8 ( [ bes'8 cis''8 d''8 ) ] |
    e''8 ( [ f''8 cis''8 e''8 ) ] |
}

pianorightnotessectioncb =  {
    d''2 |
    \tuplet 3/2 { a''8 ( [ gis''8 f''8 ) ] } \tuplet 3/2 { g''8 ( [ e''8 d''8 ) ] } |
}

pianorightnotessectioncc =  {
    < f' a' d'' >2 ~ |
    < f' a' d'' >4 r4 |
}

pianorightnotessectionc =  {
    \repeat volta 2 { \pianorightnotessectionca }
    \alternative { { \pianorightnotessectioncb } { \pianorightnotessectioncc } }
}

pianorightnotescoda =  {
    \acciaccatura { a'16\ff [ b'16 cis''16 ] } < f' a' d''>8-^ r8 < cis' g' a' >8 r8 |
    < f' a' d'' >2-^-\fermata |
}

pianorightuppernotes =  {
    \key f \major
    \time 2/4
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \blankmeasure
    \pianorightnotescoda
}

pianorightlowernotes =  {
    \key f \major
    \time 2/4
}

pianorightmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectionaa
    \pianorightnotescoda
}

pianoleftnotessectionaa =  {
    \repeat unfold 4 {
        d,8 [ d8 a,8 d8 ] |
    }

    \grace { s8 } d,8 [ d8 a,8 d8 ] |
    d,8 [ d8 a,8 d8 ] |
    \repeat unfold 2 {
        a,8 [ a8 e8 a8 ] |
    }

    \repeat unfold 4 {
        a,8 [ a8 e8 a8 ] |
    }

    \grace { s8 } a,8 [ a8 e8 a8 ] |
    a,8 [ a8 e8 a8 ] |
}

pianoleftnotessectionab =  {
    \repeat unfold 2 {
        d,8 [ d8 a,8 d8 ] |
    }
}

pianoleftnotessectiona =  {
    \repeat volta 2 { \pianoleftnotessectionaa }
    \alternative {
        { \pianoleftnotessectionab }
        { \grace { s16 } d,8 [ d8 a,8 d8 ] | d,8 [ d8 a,8 d8 ] | }
    }
}

pianoleftnotessectionb =  {
    \repeat volta 2 {
        \repeat unfold 2 {
            d,8 [ d8 a,8 d8 ] |
        }
        \repeat unfold 2 {
            g,8 [ g8 d8 g8 ]
        }

        \repeat unfold 2 {
            g,8 [ g8 d8 g8 ]
        }
        \repeat unfold 2 {
            d,8 [ d8 a,8 d8 ] |
        }

        \repeat unfold 4 {
            a,8 [ a8 e8 a8 ] |
        }

        \grace { s8 } a,8 [ a8 e8 a8 ] |
        a,8 [ a8 e8 a8 ] |
        \repeat unfold 2 {
            d,8 [ d8 a,8 d8 ] |
        }
    }
}

pianoleftnotessectionca =  {
    \repeat unfold 4 {
        d,8 [ d8 a,8 d8 ] |
    }

    \repeat unfold 2 {
        g,8 [ g8 d8 g8 ]
    }
    \repeat unfold 2 {
        d,8 [ d8 a,8 d8 ] |
    }

    < cis, cis >8 [ < d, d >8 ] < e, e >4-> |
    < e, e >8 [ < f, f >8 ] < g, g >4-> |
    < e, e >8 [ < f, f >8 ] < g, g >4-> |
    < g, g >8 [ < a, a >8 ] < bes, bes >4-> |

    \repeat unfold 2 {
        a,8 [ a8 e8 a8 ] |
    }
}

pianoleftnotessectioncb =  {
    \repeat unfold 2 {
        d,8 [ d8 a,8 d8 ] |
    }
}

pianoleftnotessectioncc =  {
    \repeat unfold 2 {
        d,8 [ d8 a,8 d8 ] |
    }
}

pianoleftnotessectionc =  {
    \repeat volta 2 { \pianoleftnotessectionca }
    \alternative { { \pianoleftnotessectioncb } { \pianoleftnotessectioncc } }
}

pianoleftnotescoda =  {
    \grace { s8. } < d d' >8-^ r8 < a, a >8-^ r8 |
    < d, d >2-^-\fermata |
}

pianoleftuppernotes =  {
    \key f \major
    \time 2/4
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \blankmeasure
    \pianoleftnotescoda
}

pianoleftlowernotes =  {
    \key f \major
    \time 2/4
}

pianoleftmidi =  {
    \key f \major
    \time 2/4
    \preintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectionaa
    \pianoleftnotescoda
}

pianorightnotesmidi =  {
    \key f \major
    \time 2/4
    \pianorightmidi
}

pianoleftnotesmidi =  {
    \key f \major
    \time 2/4
    \pianoleftmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
}

drumslow = \drummode {
    \time 2/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
}

tenorharmony =  \transpose c' bes { \tenorsaxnotes }
counter =  \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min | s2 | s2 | s2 |
    d2:min | s2 | a2 | s2 |
}

previewnotes = {
    \key f \major
    \time 2/4
    d'4-. \< f'4-. |
    a'4-. d''4-. \! |
    f''2\sfz-^ ~ |
    f''2 |
    \grace { s8 } e''8 [ f''8 ] g''8 [ f''8 ] |
    e''8 [ d''8 ] cis''8 [ d''8 ] |
    e''2 ~ |
    e''8 [ a'8 ] \( \acciaccatura { cis''16 } bes'8 [ a'8 ] \) |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

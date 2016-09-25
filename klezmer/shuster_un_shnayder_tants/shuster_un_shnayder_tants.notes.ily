\version "2.18.2"

bandmsectiona = {
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev
    }
    \alternative { { s2 | \breakAeit } { s2 | } }
    \breakA \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        \grace { s16 s16 } s2 | \breakBtht s2 | \breakBfrt
    }
    \alternative {
        { s2 | \breakBfft s2 | \breakBsxt } { s2 | \breakBsvt s2 | }
    }
    \breakB \bar ".|:-||"
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev
    }
    \alternative { { s2 | \breakCeit } { s2 | } }
    \markDC \positionDC
    \breakC \bar "||"
}

bandmNV = {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \grace { s16 s16 s16 } s2 | \breakCCone \markFC \positionFC
    s2 | \breakCCtwo
    s2 | \breakCCtre s2 | \breakCCfor \bar "||"
    \grace { s16 s16 s16 } s2 | \breakCCfiv s2 | \breakCCsix
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = \context Voice = "bandmv" { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = { s2 | }

metronomeextraintro = { s2 | s2 | s2 | }

metronomesectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronomesectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \metronomeextraintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 130
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc

    \tempo 4 = 110
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = { s2 | s2 | s2 | }

melodysectiona = {
    \repeat volta 2 {
        e''4.\ff g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
        g''8 r8 g''8 r8 |
        e''4. g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
    }
    \alternative { { c''8 r8 g'4-> | } { c''4 r8 g'8 | } }
}

melodysectionb = {
    \repeat volta 2 {
        c''4. d''8 |
        ees''8 r8 ees''8 r8 |
        ees''8 r8 ees''8 r8 |
        g''4. g''8 |
        a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        d''2 ( |
        g''8 ) r8 g'4-> |
        b'4. c''8 |
        d''8 r8 d''8 r8 |
        d''8 r8 d''8 r8 |
        g''2 |
        \grace { s16 s16 } a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

melodysectionc = {
    \repeat volta 2 {
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
        e''2 |
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
    }
    \alternative { { c''4. g''8 | } { c''4. r8 | } }
}

melody = {
    \key c \major
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \grace { s16 s16 s16 } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

melodymidi = {
    \key c \major
    \time 2/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectionb
    \melodysectionc

    \melodysectiona
    \melodysectionb
    \melodysectionc
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \grace { s16 s16 s16 } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyextraintro = { s2 | s2 | s2 | }

tenorharmonysectiona = {
    \repeat volta 2 {
        d''8 a'8 d''8 fis''8 |
        fis''8 ( e''8 ) e''8 ( d''8 ) |
        a'8 ( g'8 ) g'8 ( fis'8 ) |
        fis''8 r8 fis''8-^ r8 |
        d''8 a'8 d''8 cis''8 |
        cis''8 ( b'8 ) b'8 ( a'8 ) |
        a'8 ( g'8 ) g'8 ( fis'8 ) |
    }
    \alternative { { fis'8 r8 a'4-^ | } { fis'8 a'8 fis'8 g'8 | } }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        f'8 a'8 f'8 a'8 |
        d''8 a'8 f'8 a'8 |
        d''8 ( a'8 ) a'8 ( d''8 ) |
        f''8 ( d''8 ) d''8 ( f''8 ) |

        f''2 |
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''4.-^ a'8 |
        cis''4-^ \tuplet 3/2 { d''8 [ cis''8 b'8 ] } |
        cis''8 r8 a'4-^ |
        a'8 e'8 a'8 bes'8 |
        cis''8 ( a'8 ) cis''8 ( a'8 ) |
        cis''8 ( a'8 ) a'8 ( cis''8 ) |
        e''8 ( cis''8 ) cis''8 ( e''8 ) |
        \acciaccatura { cis''16 [ d''16 ] } e''2 |
        a'2 |
    }
    \alternative {
        { f'8 ( a'8 d''8 ) r8 | cis''8 r8 a'8 g'8 | }
        { f'8 a'8 a'8 g'8 | f'8 a'8 d''8 r8 | }
    }
}

tenorharmonysectionc = {
    \repeat volta 2 {
        fis''4 fis''8 e''8 |
        d''8 ( a'8 ) a'8 ( d''8 ) |
        cis''8 d''8 e''16 ( d''16 cis''8 ) |
        d''8 fis'8 a'8 d''8 |
        fis''4 fis''8 e''8 |
        d''8 ( a'8 ) a'8 ( fis'8 ) |
        g'8 a'8 b'16 a'16 g'8 |
    }
    \alternative { { fis'8 a'8 d'8 r8 | } { fis'8 ( a'8 d''8 ) r8 | } }
}

tenorharmony = \transpose c bes, {
    \key d \major
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \grace { s16 s16 s16 } fis''8\ff a''8 fis''8 g''8 |
    fis''8 a''8 fis''8 e''8 |
    fis''8 g''8 fis''8 e''8 |
    fis''8 e''8 fis''8 g''8 |
    \grace { s16 s16 s16 } fis''8\ff r8 g'8. g'16 |
    fis'2-\fermata |
}

tenorharmonymidi = \transpose c bes, {
    \key d \major
    \time 2/4
    \preintro
    \tenorharmonyextraintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc

    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \grace { s16 s16 s16 } fis''8\ff a''8 fis''8 g''8 |
    fis''8 a''8 fis''8 e''8 |
    fis''8 g''8 fis''8 e''8 |
    fis''8 e''8 fis''8 g''8 |
    \grace { s16 s16 s16 } fis''8\ff r8 g'8. g'16 |
    fis'2-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyextraintro = { s2 | s2 | s2 | }

altoharmonysectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

altoharmonysectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

altoharmonysectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

altoharmony = {
    \key c \major
    \time 2/4
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
}

altoharmonymidi = {
    \key c \major
    \time 2/4
    \preintro
    \altoharmonyextraintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc

    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 | \grace { s16 s16 s16 } s2 | s2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterextraintro = { s2 | s2 | s2 | }

countersectiona = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 { c8\ff r8 g,8 r8 | } |
        c8 r8 c8 r8 |
        \repeat percent 2 { c8 r8 g,8 r8 | } |
        g,8 r8 g,8 r8 |
    }
    \alternative { { c8 r8 g4-> | } { c8 g,8 c8 g8 | } }
}

countersectionb = {
    \repeat volta 2 {
        c'4. b8 |
        \repeat percent 2 { c'8 r8 c'8 r8 | }
        ees'4. g8 |
        a8 g8 fis8 ees8 |
        fis8 ees8 d8 ees8 |
        g,2 ~ |
        g,8 r8 g4-> |
        b4. c'8 |
        \repeat percent 2 { b8 r8 b8 r8 | }
        b2 |
        \grace { s16 s16 } a8 g8 fis8 ees8 |
        fis8 ees8 d8 ees8 |
    }
    \alternative {
        { c4. g8 | g8 fis8 ees8 d8 | } { c8 c8 g,8 c8 | c8 g,8 c8 r8 | }
    }
}

countersectionc = {
    \repeat volta 2 {
        \repeat percent 2 { c8 r8 g,8 r8 } |
        b,8 r8 g,8 r8 |
        c8 g8 e8 g8 |
        \repeat percent 2 { c8 r8 g,8 r8 } |
        b,8 r8 g,8 r8 |
    }
    \alternative { { c8 c8 g8 e8 | } { c8 g,8 c8 r8 | } }
}

counter = \transpose c c' {
    \key c \major
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
    \grace { s16 s16 s16 } \repeat percent 2 { c4.\ff g,8 | }
    c8 g,8 c8 g,8 |
    c8 g,8 c8 g,8 |
    \grace { s16 s16 s16 } c8 r8 g,8.-> g,16-> |
    c2->-\fermata |
}

countermidi = \transpose c c' {
    \key c \major
    \time 2/4
    \preintro
    \counterextraintro
    \countersectiona
    \countersectionb
    \countersectionc

    \countersectiona
    \countersectionb
    \countersectionc
    \grace { s16 s16 s16 } \repeat percent 2 { c4.\ff g,8 | }
    c8 g,8 c8 g,8 |
    c8 g,8 c8 g,8 |
    \grace { s16 s16 s16 } c8 r8 g,8.-> g,16-> |
    c2->-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro = {
    s2 | s2 | s2 |
}

%    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
%    << sna4 cymr4 >> r8 cymc8 |

%    bda4 bda8 bda8 | s8 bda8 bda4 |

basslinesectiona = {
    \repeat volta 2 {
        \repeat unfold 3 { e4 c4 | g4 c4 | }
        d4 g,4 |
    }
    \alternative { { c4 g,4 | } { c4 r8 c'8 | } }
}

basslinesectionb = {
    \repeat volta 2 {
        \repeat unfold 3 {
            c4 g,8 c8 ~ |
            c8 g,8 c4 |
        }
        \repeat unfold 3 {
            d4 g,8 d8 ~ |
            d8 g,8 d4 |
        }
        \grace { s16 s16 } g,4 a,4 |
        bes,4 b,4 |
    }
    \alternative { { c4. g8 | g8 fis8 ees8 d8 | } { c4. r8 | c8 g8 c'8 r8 | } }
}

basslinesectionc = {
    \repeat volta 2 {
        g,4 c8 c8 |
        c8 r8 c8 r8 |
        g,4 d8 d8 |
        c8 r8 c8 r8 |
        g,4 c8 c8 |
        c8 r8 c8 r8 |
        g,4 d8 d8 |
    }
    \alternative { { c4. g8 | } { c8 g8 c'8 r8 | } }
}

bassline = {
    \key c \major
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \grace { s16 s16 s16 } c4. g8 |
    c4. g8 |
    c8 g8 c8 g8 |
    c8 g8 c8 g8 |
    \grace { s16 s16 s16 } c8 r8 g,8.-> g,16-> |
    c2->-\fermata |
}

basslinemidi = {
    \key c \major
    \time 2/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc

    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \grace { s16 s16 s16 } c4. g8 |
    c4. g8 |
    c8 g8 c8 g8 |
    c8 g8 c8 g8 |
    \grace { s16 s16 s16 } c8 r8 g,8.-> g,16-> |
    c2->-\fermata |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = { s2 | s2 | s2 | }

guitarsectiona = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

guitarsectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

guitarsectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

guitarnotes = {
    \key c \major
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 |
}

guitarnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc

    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode { s2 | s2 | s2 | }

chordletterssectiona = \chordmode {
    \repeat volta 2 { c2 | c2 | c2 | c2 | c2 | c2 | g2:7 | }
    \alternative { { c2 | } { \chordChangesOff c2 \chordChangesOn | } }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        c2:min | c2:min | c2:min | c2:min |
        c2:min | c2:min | g2:7 | g2:7 |
        g2:7 | g2:7 | g2:7 | g2:7 |
        \grace { g8:7 } g2:7 | g2:7 |
    }
    \alternative { { c2 | g2:7 | } { c2 | c2 | } }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff c2 \chordChangesOn | c2 | g2:7 | c2 | c2 | c2 | g2:7 |
    }
    \alternative { { c2 | } { \chordChangesOff c2 \chordChangesOn | } }
}

chordletterscoda = \chordmode {
    \chordChangesOff \grace { c8. } c4. \chordChangesOn g8:7 |
    c4. g8:7 |
    c8 g8:7 c8 g8:7 |
    c8 g8:7 c8 g8:7 |
    \grace { c8. } c4 g4:7 |
    c2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordChangesOff \grace { c8. } \chordChangesOn c4. g8:7 |
    c4. g8:7 |
    c8 g8:7 c8 g8:7 |
    c8 g8:7 c8 g8:7 |
    \grace { c8. } c4 g4:7 |
    c2 |
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

melodystaff = \context Staff = "melodystaff"  \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = { \melody }

flutenotesmidi = { \melodymidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro = { s2 | s2 | s2 | }

clarinetsectiona = \transpose bes c' {
    \repeat volta 2 {
        e''4.\ff g''8 |
        g''8 ( f''8 ) f''8 ( e''8 ) |
        e''8 ( d''8 ) d''8 ( c''8 ) |
        g''8 r8 g''8-^ r8 |
        e''4. g''8 |
        g''8 ( f''8 ) f''8 ( e''8 ) |
        e''8 ( d''8 ) d''8 ( c''8 ) |
    }
    \alternative { { c''8 r8 g''4-^ | } { c''4 r8 g'8 | } }
}

clarinetsectionb = \transpose bes c' {
    \repeat volta 2 {
        c''4. d''8 |
        ees''8 r8 ees''8 r8 |
        ees''8 r8 ees''8 r8 |
        g''4. g''8 |
        a''8 ( g''8 fis''8 ees''8 ) |
        fis''8 ( ees''8 d''8 c''8 ) |
        d''2 ( |
        g''8 ) r8 g'4-^ |
        b'4. c''8 |
        d''8 r8 d''8 r8 |
        d''8 r8 d''8 r8 |
        g''2 |
        \grace { s16 s16 } a''8 ( g''8 fis''8 ees''8 ) |
        fis''8 ( ees''8 d''8 ees''8 ) |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

clarinetsectionc = \transpose bes c' {
    \repeat volta 2 {
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
        e''2 |
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
    }
    \alternative { { c''4. g''8 | } { c''4. r8 | } }
}

clarinetcoda = \transpose bes c' {
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \acciaccatura { g''16 [ a''16 g''16 ] } c'''8-^ r8 g''8. g''16 |
    c''2-\fermata |
}

clarinetnotes = {
    \key d \major
    \time 2/4
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \acciaccatura { g''16 [ a''16 g''16 ] } c'''8-^ r8 g''8. g''16 |
    c''2-\fermata |
}

clarinetnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \clarinetextraintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc

    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro = { s2 | s2 | s2 | }

tenorsaxsectiona = {
    \repeat volta 2 {
        d''8 a'8 d''8 fis''8 |
        fis''8 ( e''8 ) e''8 ( d''8 ) |
        a'8 ( g'8 ) g'8 ( fis'8 ) |
        fis''8 r8 fis''8-^ r8 |
        d''8 a'8 d''8 cis''8 |
        cis''8 ( b'8 ) b'8 ( a'8 ) |
        a'8 ( g'8 ) g'8 ( fis'8 ) |
    }
    \alternative { { fis'8 r8 a'4-^ | } { fis'8 a'8 fis'8 g'8 | } }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        f'8 a'8 f'8 a'8 |
        d''8 a'8 f'8 a'8 |
        d''8 ( a'8 ) a'8 ( d''8 ) |
        f''8 ( d''8 ) d''8 ( f''8 ) |

        f''2 |
        \acciaccatura { a'16 [ b'16 cis''16 ] } d''4.-^ a'8 |
        cis''4-^ \tuplet 3/2 { d''8 [ cis''8 b'8 ] } |
        cis''8 r8 a'4-^ |
        a'8 e'8 a'8 bes'8 |
        cis''8 ( a'8 ) cis''8 ( a'8 ) |
        cis''8 ( a'8 ) a'8 ( cis''8 ) |
        e''8 ( cis''8 ) cis''8 ( e''8 ) |
        \acciaccatura { cis''16 [ d''16 ] } e''2 |
        a'2 |
    }
    \alternative {
        { f'8 ( a'8 d''8 ) r8 | cis''8 r8 a'8 g'8 | }
        { f'8 a'8 a'8 g'8 | f'8 a'8 d''8 r8 | }
    }
}

tenorsaxsectionc = {
    \repeat volta 2 {
        fis''4 fis''8 e''8 |
        d''8 ( a'8 ) a'8 ( d''8 ) |
        cis''8 d''8 e''16 ( d''16 cis''8 ) |
        d''8 fis'8 a'8 d''8 |
        fis''4 fis''8 e''8 |
        d''8 ( a'8 ) a'8 ( fis'8 ) |
        g'8 a'8 b'16 a'16 g'8 |
    }
    \alternative { { fis'8 a'8 d'8 r8 | } { fis'8 ( a'8 d''8 ) r8 | } }
}

tenorsaxcoda = {
    \grace { s16 s16 s16 } fis''8\ff a''8 fis''8 g''8 |
    fis''8 a''8 fis''8 e''8 |
    fis''8 g''8 fis''8 e''8 |
    fis''8 e''8 fis''8 g''8 |
    \grace { s16 s16 s16 } fis''8\ff r8 g'8. g'16 |
    fis'2-\fermata |
}

tenorsaxnotes = {
    \key d \major
    \time 2/4
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \tenorsaxextraintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc

    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro = { s2 | s2 | s2 | }

altosaxsectiona = \transpose ees c {
    \repeat volta 2 {
        e''4.\ff g''8 |
        g''8 ( f''8 ) f''8 ( e''8 ) |
        e''8 ( d''8 ) d''8 ( c''8 ) |
        g''8 r8 g''8 r8 |
        e''4. g''8 |
        g''8 ( f''8 ) f''8 ( e''8 ) |
        e''8 ( d''8 ) d''8 ( c''8 ) |
    }
    \alternative { { c'''8 r8 g''4-> | } { c''4 r8 g'8 | } }
}

altosaxsectionb = \transpose ees c {
    \repeat volta 2 {
        c''4. d''8 |
        ees''8 r8 ees''8 r8 |
        ees''8 r8 ees''8 r8 |
        g''4. g''8 |
        a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        d''2 ( |
        g''8 ) r8 g'4-> |
        b'4. c''8 |
        d''8 r8 d''8 r8 |
        d''8 r8 d''8 r8 |
        g''2 |
        \grace { s16 s16 } a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

altosaxsectionc = \transpose ees c {
    \repeat volta 2 {
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 e''16 d''8 |
        e''8 g'8 c''8 e''8 |
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 e''16 d''8 |
    }
    \alternative { { c''8 g''8 g''8 g''8 | } { c''4. r8 | } }
}

altosaxcoda = \transpose ees c {
    \grace { s16 s16 s16 } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \grace { s16 s16 s16 } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

altosaxnotes = {
    \key a \major
    \time 2/4
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxcoda
}

altosaxnotesmidi = {
    \key a \major
    \time 2/4
    \preintro
    \altosaxextraintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc

    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro = { s2 | s2 | s2 | }

trumpetsectiona = \transpose bes c {
    \repeat volta 2 {
        e''4.\ff g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
        g''8 r8 g''8 r8 |
        e''4. g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
    }
    \alternative { { c''8 r8 g''4-> | } { c''4 r8 g''8 | } }
}

trumpetsectionb = \transpose bes c' {
    \repeat volta 2 {
        c''4. d''8 |
        ees''8 r8 ees''8 r8 |
        ees''8 r8 ees''8 r8 |
        < ees'' g'' >4. g''8 |
        fis''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        d''2 |
        < g' g'' >8 r8 g'4-> |
        b'4. c''8 |
        d''8 r8 d''8 r8 |
        d''8 r8 d''8 r8 |
        < d'' g'' >2 |
        \grace { s16 s16 } fis''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g'8 | }
    }
}

trumpetsectionc = \transpose bes c' {
    \repeat volta 2 {
        g'8 c''8 g'8 f'8 |
        e'8 r8 e''8 r8 |
        d''8 e''8 f''16 e''16 d''8 |
        e''2 |
        g'8 c''8 g'8 f'8 |
        e'8 r8 e''8 r8 |
        d''8 e''8 f''16 e''16 d''8 |
    }
    \alternative { { c''4. g'8 | } { c''4. r8 | } }
}

trumpetcoda = \transpose bes c {
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \acciaccatura { g''16 [ a''16 g''16 ] } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

trumpetnotes = {
    \key d \major
    \time 2/4
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \acciaccatura { g''16 [ a''16 g''16 ] } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

trumpetnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \trumpetextraintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc

    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro = { s2 | s2 | s2 | }

trombonesectiona = {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 3 { c8\ff r8 g,8 r8 | } |
        c8 r8 c8 r8 |
        \repeat percent 2 { c8 r8 g,8 r8 | } |
        g,8 r8 g,8 r8 |
    }
    \alternative { { c8 r8 g4-> | } { c8 g,8 c8 g8 | } }
}

trombonesectionb = {
    \repeat volta 2 {
        c'4. b8 |
        \repeat percent 2 { c'8 r8 c'8 r8 | }
        ees'4. g8 |
        a8 g8 fis8 ees8 |
        fis8 ees8 d8 ees8 |
        g,2 ~ |
        g,8 r8 g4-> |
        b4. c'8 |
        \repeat percent 2 { b8 r8 b8 r8 | }
        b2 |
        \grace { s16 s16 } a8 g8 fis8 ees8 |
        fis8 ees8 d8 ees8 |
    }
    \alternative {
        { c4. g8 | g8 fis8 ees8 d8 | }
        { c8 c8 g,8 c8 | c8 g,8 c8 r8 | }
    }
}

trombonesectionc = {
    \repeat volta 2 {
        \repeat percent 2 { c8 r8 g,8 r8 } |
        b,8 r8 g,8 r8 |
        c8 g8 e8 g8 |
        \repeat percent 2 { c8 r8 g,8 r8 } |
        b,8 r8 g,8 r8 |
    }
    \alternative { { c8 c8 g8 e8 | } { c8 g,8 c8 r8 | } }
}

trombonecoda = {
    \grace { s16 s16 s16 } \repeat percent 2 { c4.\ff g,8 | }
    c8 g,8 c8 g,8 |
    c8 g,8 c8 g,8 |
    \grace { s16 s16 s16 } c8 r8 g,8.-> g,16-> |
    c2->-\fermata |
}

trombonenotes = {
    \key c \major
    \time 2/4
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonecoda
}

trombonenotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \tromboneextraintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc

    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro = { s2 | s2 | s2 | }

violinsectiona = {
    \repeat volta 2 {
        e''4.\ff g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
        g''8 r8 g''8 r8 |
        e''4. g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
    }
    \alternative { { c''8 r8 g'4-> | } { c''4 r8 g'8 | } }
}

violinsectionb = {
    \repeat volta 2 {
        c''4. d''8 |
        ees''8 r8 ees''8 r8 |
        ees''8 r8 ees''8 r8 |
        g''4. g''8 |
        a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        d''2 ( |
        g''8 ) r8 g'4-> |
        b'4. c''8 |
        d''8 r8 d''8 r8 |
        d''8 r8 d''8 r8 |
        g''2 |
        \grace { s16 s16 } a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

violinsectionc = {
    \repeat volta 2 {
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
        e''2 |
        g''8 c'''8 g''8 f''8 |
        e''8 r8 e''8 r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
    }
    \alternative { { c''4. g''8 | } { c''4. r8 | } }
}

violincoda = {
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \grace { s16 s16 s16 } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

violinnotes = {
    \key c \major
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \acciaccatura { g''16 [ a''16 b''16 ] } c'''4. g''8 |
    c'''4. g''8 |
    c'''8 g''8 c'''8 g''8 |
    c'''8 g''8 c'''8 g''8 |
    \grace { s16 s16 s16 } c'''8 r8 g''8. g''16 |
    c''2-\fermata |
}

violinnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectionb
    \violinsectionc

    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro = {
%    g''8 f''8 f''8 e''8 |
%    e''8 d''8 d''8 c''8 |
%    c''8 r8 g'4-> |
     s2 | s2 | s2 |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        e''4.\f-3 g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
        < e''-3 g''-5 >8 r8 < e'' g'' >8 r8 |
        e''4.-3 g''8 |
        g''8 f''8 f''8 e''8 |
        e''8 d''8 d''8 c''8 |
    }
    \alternative { { c''8 r8 g'4-> | } { c''4 r8 g'8 | } }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        c''4. < b' d'' >8 |
        < c''-1 ees''-3 >8 r8 < c'' ees'' >8-. r8 |
        < c'' ees'' >8-. r8 < c'' ees'' >8-. r8 |
        < ees'' g'' >4. g''8-4 |
        a''8-5 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        \tieDown < d'' b' >2 ( ~ |
        < b' g'' >8 ) r8 g'4-> |
        b'4. c''8 |
        < b' d'' >8-. r8 < b' d'' >8-. r8 |
        < b' d'' >8-. r8 < b' d'' >8-. r8 |
        < b' g'' >2 |
        \grace { s16 s16 } a''8-5 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

pianorightuppersectionc = {
    \repeat volta 2 {
        g''8 c'''8 g''8 f''8 |
        < c'' e'' >8-. r8 < c'' e'' >8-. r8 |
        d''8-2 e''8 f''16 ( e''16 d''8 ) |
        < c''-1 e''-3 >2 |
        g''8 c'''8 g''8 f''8 |
        < c'' e'' >8-. r8 < c'' e'' >8-. r8 |
        d''8-2 e''8 f''16 ( e''16 d''8 ) |
    }
    \alternative { { c''4. g''8 | } { c''4. r8 | } }
}

pianorightuppercoda = {
    \acciaccatura { g''16-2 [ a''16-3 b''16 ] } < e''-1 c'''-5 >4.\ff < f''-2 g''-3 >8 |
    < e'' c''' >4. < f'' g'' >8 |
    < e''-1 c'''-5 >8 < f''-2 g''-3 >8 < e'' c'''>8 < f'' g'' >8 |
    < e'' c'''>8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    \grace { s16 s16 s16 } < e'' c'''>8 r8 < e' e'' >8.-> < e' e'' >16->|
    < a a' >2->-\fermata |
}

pianorightuppernotes = {
    \key c \major
    \time 2/4
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \acciaccatura { g''16-2 [ a''16-3 b''16 ] } < e''-1 c'''-5 >4.\ff < f''-2 g''-3 >8 |
    < e'' c''' >4. < f'' g'' >8 |
    < e''-1 c'''-5 >8 < f''-2 g''-3 >8 < e'' c'''>8 < f'' g'' >8 |
    < e'' c'''>8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    \grace { s16 s16 s16 } < e'' c'''>8 r8 < e' e'' >8.-> < e' e'' >16->|
    < a a' >2->-\fermata |
}

%-------------------------------------------------

pianorightlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianoleftupperextraintro = {
%    c8 c'8 g8 c'8 |
%    g,8 g8 d8 g8 |
%    c8 c'8 g8 c'8 |
     s2 | s2 | s2 |
}

pianoleftuppersectiona = {
    \repeat volta 2 {
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
    }
    \alternative { { c8 c'8 g8 c'8 | } { c8 c'8 g8 c'8 | } }
}

pianoleftuppersectionb = {
    \repeat volta 2 {
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |

        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |

        \grace { s16 s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
    }
    \alternative {
        { c8 c'8 g8 c'8 | g8 fis8 ees8 d8 | }
        { c8 c'8 g8 c'8 | c8 ( g8 c'8 ) r8 | }
    }
}

pianoleftuppersectionc = {
    \repeat volta 2 {
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        c8 c'8 g8 c'8 |
        g,8 g8 d8 g8 |
        }
    \alternative { { c8 c'8 g8 c'8 | } { c8 ( g8 c'8 ) r8 | } }
}

pianoleftuppercoda = {
    \grace { s16 s16 s16 } < c c' >4. g8 |
    < c c' >4. g8 |
    < c c' >8 g8 < c c' >8 g8 |
    < c c' >8 g8 < c c' >8 g8 |
    \grace { s16 s16 s16 } < c c' >8 r8 < g, g >8.-> < g, g >16-> |
    < c, c >2->-\fermata |
}

pianoleftuppernotes = {
    \key c \major
    \time 2/4
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppercoda
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \pianorightupperextraintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc

    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppercoda
}

pianoleftnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \pianoleftupperextraintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc

    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = {
    < b' g'' >8 ( < a' f'' >8 ) < a' f'' >8 ( < g' e'' >8 ) |
    < g' e'' >8 ( < f' d'' >8 ) < f' d'' >8 ( < e' c'' >8 ) |
    < e' c'' >8 r8 g'4->
}

accordionrightuppersectiona = {
    \repeat volta 2 {
        e''4.\f g''8 |
        g''8 ( f''8 ) f''8 ( e''8 ) |
        e''8 ( d''8 ) d''8 ( c''8 ) |
        < e'' g'' >8 r8 < e'' g'' >8 r8 |
        < c'' e'' >4. < b' g'' >8 |
        < b' g'' >8 ( < a' f'' >8 ) < a' f'' >8 ( < g' e'' >8 ) |
        < g' e'' >8 ( < f' d'' >8 ) < f' d'' >8 ( < e' c'' >8 ) |
    }
    \alternative { { < e' c'' >8 r8 g'4-> | } { < e' c'' >4 r8 g'8 | } }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        c''4. < b' d'' >8 |
        < c'' ees'' >8-. r8 < c'' ees'' >8-. r8 |
        < c'' ees'' >8-. r8 < c'' ees'' >8-. r8 |
        < ees'' g'' >4. g''8 |
        a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 c''8 |
        \tieDown < d'' b' >2 ( ~ |
        < b' g'' >8 ) r8 g'4-> |
        b'4. c''8 |
        < b' d'' >8-. r8 < b' d'' >8-. r8 |
        < b' d'' >8-. r8 < b' d'' >8-. r8 |
        < b' g'' >2 |
        \acciaccatura { b'16 } a''8 g''8 fis''8 ees''8 |
        fis''8 ees''8 d''8 ees''8 |
    }
    \alternative {
        { c''4. g''8 | g''8 fis''8 ees''8 d''8 | }
        { c''4. d''16 ees''16 | c''4 r8 g''8 | }
    }
}

accordionrightuppersectionc = {
    \repeat volta 2 {
        << { g''8 ( c'''8 ) } \\ { e''4 } >> < e'' g'' >8 < d'' f'' >8 |
        < c'' e'' >8-. r8 < c'' e'' >8-. r8 |
        d''8 e''8 f''16 ( e''16 d''8 ) |
        < c'' e'' >2 |
        < e'' g'' >8 ( c'''8 ) < e'' g'' >8 < d'' f'' >8 |
        < c'' e'' >8-. r8 < c'' e'' >8-. r8 |
        d''8 e''8 f''16 e''16 d''8 |
    }
    \alternative { { c''4. g''8 | } { c''4. r8 | } }
}

accordionrightuppercoda = {
    \acciaccatura { g''16-2 [ a''16 b''16 ] } < e''-1 c'''-5 >4.\ff < f''-2 g''-3 >8 |
    < e'' c''' >4. < f'' g'' >8 |
    < e'' c''' >8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    < e'' c'''>8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    \grace { s16 s16 s16 } < e'' c'''>8 r8 g''8.-3-> g''16-> |
    < c'' e'' c''' >2->-\fermata |
}

accordionrightuppernotes = {
    \key c \major
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \acciaccatura { g''16-2 [ a''16 b''16 ] } < e''-1 c'''-5 >4.\ff < f''-2 g''-3 >8 |
    < e'' c''' >4. < f'' g'' >8 |
    < e'' c''' >8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    < e'' c'''>8 < f'' g'' >8 < e'' c'''>8 < f'' g'' >8 |
    \grace { s16 s16 s16 } < e'' c'''>8 r8 g''8.-3-> g''16-> |
    < c'' e'' c''' >2->-\fermata |
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

accordionleftupperextraintro = {
    d,8_3 g8^"7" g,8 g8 |
    b,8_- g8^"7" g,8 r8 |
    c8 c'8^"M" g,8 g8^"7" |
}

accordionleftuppersectiona = {
    \repeat volta 2 {
        c8 c'8^"M" g,8 c'8 |
        b,8_- g8^"7" g,8 c'8^"M" |
        b,8_- g8^"7" g,8 c'8^"M" |
        c8 c'8 g,8 c'8 |

        c8^"B.S."_4 b,8_3_- a,8_2 g,8_4 |
        d,8_3 g8^"7" g,8 g8 |
        b,8_- g8^"7" g,8 r8 |
    }
    \alternative { { c8 c'8^"M" g,8 g8^"7" | } { c8 c'8^"M" g,8 g8^"7" | } }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        c8 c'8^"m" g,8 g8^"7" |
        c8 c'8^"m" g,8 c'8 |
        c8 c'8 g,8 c'8 |
        c8 c'8 g,8 c'8 |

        c8 c'8 g,8 c'8 |
        c8 c'8 g,8 c'8 |
        d,8 g8^"7" g,8 g8 |
        d,8 g8 g,8 g8 |

        d,8 g8 g,8^"B.S" d,8 |
        g,8 g8^"7" d,8 g8 |
        g,8 g8 d,8 g8 |
        g,8^"B.S."_3 d,8_2 b,8_4_- g,8_3 |

        \grace { s16 s16 } d,8_3 g8^"7" g,8 g8 |
        d,8 g8 g,8 g8 |
    }
    \alternative {
        { c8 c'8^"m" g,8 c'8 | d,8 g8^"m" g,8 g8 | }
        { c8 c'8^"m" c'8^"B.S." g,8 | c8 g,8 c8 r8 | }
    }
}

accordionleftuppersectionc = {
    \repeat volta 2 {
        c8 c'8^"M" g,8 g8^"7" |
        c8 c'8^"M" g,8 c'8 |
        d,8^"B.S."_4_- g,8_2 b,8_3_- g,8_2 |
        c8_3 c'8^"M" g,8 c'8 |

        c8 c'8^"M" g,8 g8^"7" |
        c8 c'8^"M" g,8 c'8 |
        b,8_- g8^"7" g,8 g8 |
    }
    \alternative { { c8 c'8^"M" g,8 c'8 | } { < c c' >8^"M" g,8^>^"B.S." c8^> r8 | } }
}

accordionleftuppercoda = {
    \grace { s16 s16 s16 } < c c' >4.^"M" < g, g >8^"7" |
    < c c' >4.^"M" < g, g >8^"7" |
    < c c' >8^"m" < g, g >8^"7" < c c' >8^"m" < g, g >8^"7" |
    < c c' >8^"m" < g, g >8^"7" < c c' >8^"m" < g, g >8^"7" |
    \grace { s16 s16 s16 } < c c' >8^"M" r8 < g, g >4^"7"_> |
    < c, c >2_>^\fermata^"M" |
}

accordionleftuppernotes = {
    \key c \major
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key c \major
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \accordionrightupperextraintro
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc

    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppercoda
}

accordionleftnotesmidi = {
    \key c \major
    \time 2/4
    \preintro
    \accordionleftupperextraintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc

    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 2/4
    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
    << sna4 cymr4 >> r8 cymc8 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

drumshighsectionc = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumshighcoda = \drummode {
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 |
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighcoda
}

drumshighmidi = \drummode {
    \time 2/4
    s2 |
    \drumshighextraintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc

    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighcoda
}

drumslowextraintro = \drummode {
    \time 2/4
    bda4 bda8 bda8 | s8 bda8 bda4 |
}


drumslowsectiona = \drummode {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        \grace { s16 s16 } s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

drumslowsectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | } { s2 | } }
}

drumslowcoda = {
    \grace { s16 s16 s16 } s2 | s2 | s2 | s2 |
    \grace { s16 s16 s16 } s2 | s2 |
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 2/4
    s2 |
    \drumslowextraintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc

    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    c2 | s2 | s2 | s2 | s2 | s2 |
}

previewnotes = {
    \key c \major
    \time 2/4
    e''4. g''8 |
    g''8 f''8 f''8 e''8 |
    e''8 d''8 d''8 c''8 |
    g''8 r8 g''8 r8 |
    e''4. g''8 |
    g''8 f''8 f''8 e''8 |
}

tromboneforbassclarinetnotes = { \transpose c c' { \trombonenotes } }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

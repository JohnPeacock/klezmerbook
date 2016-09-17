\version "2.18.0"

bandmintro = {
    \cadenzaOn
    s16*34 \bar "|" \breakDoina % line 1
    s16*66 \bar "|" \breakDoina % line 2
    s16*22 \bar "|" \breakDoina % line 3
    s32*87 \bar "|" \breakDoina % line 4
    s16*45 \bar "|" \breakDoina % line 5
    s16*36 \bar "|" \breakDoina \breakSix % line 6
    s16*37 \bar "|" \breakDoina % line 7
    s16*34 \bar "|" s16*14 s32 \bar "|" \breakDoina % line 8
    s16*38 \bar "|" \breakDoina % line 9
    s16*50 \bar "|" \breakDoina % line 10
    s16*44 \bar "|" \breakDoina % line 11
    s16*44 \bar "|" s16*23 \bar "|" \breakDoina % line 12
    s16*31 s16*18 \bar "|" \breakDoina % line 13
    \cadenzaOff
 \bar "||"
 \breakIntro
}

bandmsectiona = {
    s4 s16 s8.
    \markA \positionA
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | \breakAsix s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | \breakBten s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | s2 | \breakCrep }
        { s2 | s2 | s2 | s2 | }
    }
}

bandmNV = {
    \bandmintro
    \time 2/4
    \bar "||"
    \tempo \tempostring
    \bandmsectiona
    \bar ".|:-||"
    \breakA

    \bandmsectionb
    \bar ".|:-||"
    \breakB

    \bandmsectionc
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \preintro
    \tempo 4 = 80
    \bandmintro
    \time 2/4
    \tempo 4 = 120
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = {
    \cadenzaOn
% line 1
    a''4 f''8 [ e''8 d''8 ] cis''8^"accel." [ e''8 d''8 bes'8 ] a'8 [ gis'8 a'8 d'8 ]
    gis'16 [ f'16 e'16 d'16 ] \tuplet 3/2 { cis'8 [ d'8 dis'8 ] }
    \accidentalStyle forget 
% line 2
    \tuplet 3/2 { dis'8 [ e'8 e'8 ] } e'2\fermata \breathe gis8 [ a8 cis'8
    \accidentalStyle default
    e'8 ] gis'8 [ a'8
    \accidentalStyle forget 
    cis''8
    \accidentalStyle default
    e''8 g''8 ] bes''8 [ a''8 gis''8 ] a''8 [ d''8
    a''8 ] gis''4\trill f''8 [ f''8 ] f''4 \glissando e''4 \glissando
    f''4 \glissando e''8 [ \glissando f''8 ] (
    \accidentalStyle forget 
% line 3
    \tuplet 6/4 { e''8.\prall ) [
    \accidentalStyle default 
    d''16 a'16 d''16 ] } \tuplet 6/4 { e''8.\prall
    [ d''16 a'16 d''16 ] } \tuplet 6/4 { e''8.\prall [ d''16 a'16 d''16 ] } d''8
    d''2 \breathe
    \accidentalStyle forget 
% line 4
    d8 [ f8 ] a32 [
    \accidentalStyle default 
    dis'32 f'32 a'32 d''32 f''32 a''32 ]
    \accidentalStyle forget 
    \tuplet 6/4 { gis''8.\trill [ f''16 e''16 f''16 ] }
    \accidentalStyle default 
    \afterGrace gis''8 ( [ { b''16 ) } a''8 ] a''8 [ a''8 ]
    a''8 [ \glissando gis''8 ] \glissando a''4 (
    \tuplet 6/4 { gis''8.\trill ) [ f''16 e''16 f''16 ] }
    \tuplet 3/2 { \afterGrace gis''8 ( [ { b''16 ) } a''8 a''8 ] }
    a''2-\fermata \breathe
% line 5
    a'16 \tuplet 5/4 { d''16 [ f''16 a''16 d'''16 a''16 ] } gis''!4\trill ~
    gis''16 [ f''16 e''16 f''16 ] \afterGrace gis''8 ( [ { b''!16 ) } a''8 ]
    a''8 a''4 \glissando gis''8 \glissando
    \tuplet 6/4 { b''8.\trill [ a''16 a''16 gis''16 ] }
    \tuplet 6/4 { b''8.\trill [ a''16^"accel." a''16 gis''16 ] }
    \tuplet 6/4 { b''8.\trill [ a''16 a''16 gis''16 ] }
    \tuplet 6/4 { b''8.\trill [ a''16 a''16 gis''16 ] }
    \tuplet 6/4 { b''8.\trill [ a''16 a''16 gis''16 ~ ] }
% line 6
    gis''!16 [ f''16 e''16 f''16 ] gis''8 [ a''8 ] a''8\glissando [
    gis''8\glissando a''8 ( ] \tuplet 6/4 { gis''8.\trill ) [ f''16 e''16
    f''16 ] }
    \afterGrace gis''8 ( [ { b''!16 ) } a''8 a''8 ] a''2 \breathe
    \tuplet 9/8 { f''32 [ ees''32 d''32 cis''!32 d''32 ees''32 e''32 f''32
    fis''32 ] }
    \accidentalStyle forget 
% line 7
    fis''16
    g''8 [
    \accidentalStyle default 
    g''8 ] g''4.\glissando fis''8\glissando g''8. [ f''16 ]
    a''16 [ g''8\trill f''16 ] g''8.\trill [ f''16 ] g''8.\trill [ f''16 ]
    g''8.\trill [ f''16 ] f''8 [ f''8 ~ ]
% line 8
    \accidentalStyle forget
    f''4.. \breathe c''16 f''16 [ g''16 a''16 bes''16 ]
    c'''16 [ d'''16 c'''16 bes''16 ] a''16 [ g''16 a''16 f''16 g''16 d''16 ]
    f''4\glissando e''4 f''4 \bar "|"
    ees''16.\trill [
    \accidentalStyle default
    d''32 ees''16.\trill d''32 ]
    ees''16.\trill [ d''32 ees''16.\trill d''32 ]
    a''16 g''16\trill [ f''16 ] f''32 ees''16.\trill [ d''32 ] d''16
% line 9
    \accidentalStyle forget
    d''2 \breathe a'8 \tuplet 5/4 { d''8 [ f''8 a''8 gis''8 f''8 ] }
    \tuplet 3/2 { f''8 [ e''8
    \accidentalStyle default
    d''8 ] } e''16 [ f''16 \afterGrace gis''8 ( ] { b''16 ) } a''8 [ a''8 ]
    a''2\fermata \breathe
% line 10
    \accidentalStyle forget
    \tuplet 3/2 { d''8 [ f''8 a''8 ] } cis'''16 [ d'''8. d'''8 d'''8 ]
    \accidentalStyle default
    d'''8 [ \glissando cis'''8 ] \glissando
    \tuplet 6/4 { d'''16 [ a''16 d'''16 c'''16\prall
    \accidentalStyle forget
    b''16 a''16 ] }
    \accidentalStyle default
    \tuplet 6/4 { d'''16^"accel." [ a''16 d'''16 c'''16\prall b''16 a''16 ] }
    gis''8.\trill [ f''16 ] \afterGrace gis''8 ( { b''16 ) } a''8 [ a''8 ]
    a''2 \breathe d''8 [ d''8 ] \tuplet 3/2 { g''8 [ a''8 bes''8 ] }
% line 11
    b''8 [ b''8 ] b''4--\glissando ais''4--\glissando
    \tuplet 6/4 { b''8. [ a''16 a''16 g''16 ] }
    \tuplet 6/4 { b''8. [ a''16 a''16 g''16 ] }
    \tuplet 6/4 { b''8. [ a''16 a''16 g''16 ] }
    \tuplet 6/4 { b''8. [ a''16 a''16 g''16 ] }
    \afterGrace fis''8 ( [ { a''16 ) } g''8 ] g''8 g''2 \breathe gis''8
% line 12
    \accidentalStyle forget
    \afterGrace gis''8 ( [ { bes''16 ) } a''8 a''8 ]
    \accidentalStyle default
    a''2 ( gis''8.\trill ) [ f''16 ] gis''8.\trill [ f''16 ]
    gis''8.\trill [ f''16 ] gis''8.\trill [ f''16 ] gis''8.\trill [ f''16 ]
    f''8 f''2 \breathe \bar "|" d''8 [ d''8 ]
    b''8 [ a''8 gis''!8 a''8 d''8 ]
    a''16 [ gis''16 f''16 e''16 d''16 ] \tuplet 3/2 { cis''8 [ d''8 dis''8 ] }
% line 13
    \afterGrace dis''!8 ( [ { f''16 ) } e''8 e''8 ] e''2 \breathe
    \autoBeamOff
    a'16 a''8 (
    \autoBeamOn
    gis''!4\trill ) f''8 [ f''8 ] f''8 [ \glissando e''8 \glissando
    f''8 ] % change chord to Dm here
    e''8.\trill [ d''16 ] e''8.\trill [ d''16 ] d''8 d''2
}

voiceonesectiona = {
    s4 s16 a'16 [ d''16 f''16 ]
    \repeat volta 2 {
        a''16 [ f''16 e''16\prall d''16 ] a''16 [ f''16 e''16\prall d''16 ] |
        a''16 [ f''16 e''16\prall d''16 ] a''16 [ f''16 e''16\prall d''16 ] |
        e''16 [ f''16 gis''16 a''16 ] gis''16\trill [ f''16 e''16 f''16 ] |
        \afterGrace gis''8 ( { bes''16 ) } a''4.\glissando |

        a''16 [ f''16 e''16\prall d''16 ] a''16 [ f''16 e''16\prall d''16 ] |
        a''16 [ f''16 e''16\prall d''16 ] a''16 [ f''16 e''16\prall d''16 ] |
        cis''16 [ d''16 e''16 f''16 ] e''16\prall [ d''16 cis''16 e''16 ] |
    }
    \alternative {
        { d''8 r8 r16 a'16 [ d''16 f''16 ] | }
        { d''8 r8 r16 d''16 [ f''16 a''16 ] | }
    }
}

voiceonesectionb = {
    \repeat volta 2 {
        \afterGrace b''8 ( [ { d'''16 ) } c'''8 ~ ] c'''16 [ b''16 d'''16 c'''16 ] |
        b''8 [ b''8 ] ~ b''16 [ a''16 d'''16 c'''16 ] |
        a''8 [ a''8 ] ~ a''16 [ gis''16 b''16 a''16 ] |
        gis''8.\trill [ f''16 ] gis''16 [ f''16\prall e''16 d''16 ] |

        e''16 [ f''16 gis''16 a''16 ] gis''16\prall [ f''16 e''16 f''16 ] |
        \afterGrace gis''8 ( { bes''16 ) } a''4 r8 |
        \afterGrace b''8 ( [ { d'''16 ) } c'''8 ~ ] c'''16 [ b''16 d'''16 c'''16 ] |
        b''8 [ b''8 ] ~ b''16 [ a''16 d'''16 c'''16 ] |

        a''8 [ a''8 ] ~ a''16 [ gis''16 b''16 a''16 ] |
        gis''8.\trill [ f''16 ] gis''16 [ f''16\prall e''16 d''16 ] |
        e''16 [ f''16 gis''16 a''16 ] gis''16\prall [ f''16 e''16 d''16 ] |
    }
    \alternative {
        { e''16 [ f''16 d''8 ] r16 d''16 [ f''16 a''16 ] | }
        { e''16 [ f''16 d''8 ] r8 a'8 | }
    }
}

voiceonesectionc = {
    \repeat volta 2 {
        a'16 ( [ d''16 ) f''16 ( a''16 ) ] a'16 ( [ d''16 ) f''16 ( a''16 ) ] |
        a'16 ( [ d''16 ) f''16 ( a''16 ) ] gis''16\prall [ f''16 e''16 d''16 ] |
        a'16 ( [ d''16 ) f''16 ( a''16 ) ] gis''16\prall [ f''16 e''16 f''16 ] |
        \afterGrace gis''8 ( { bes''16 ) } a''8 ] ~ a''4 \glissando |

        c'''16 [ b''16 d'''16 c'''16 ] b''16 [ a''16 c'''16 b''16 ] |
    }
    \alternative {
        {
            a''16 [ gis''16 b''16 a''16 ] gis''16\prall [ f''16 e''16 d''16 ] |
            e''16 [ f''16 gis''16 a''16 ] gis''16\trill [ f''16 e''16 d''16 ] |
            e''16 [ f''16 d''8 ] r8 a''8 |
        }
        {
            \tuplet 9/8 {
                a''32 [ a'32 bes'32 b'32 c''32 cis''32 d''32 dis''32 e''32 ]
            }
            \tuplet 9/8 {
                f''32 [ fis''32 g''32 gis''32 a''32 bes''32 b''32 c'''32 cis'''32 ]
            } |
            d'''8 r8 r4 |
            a''8 r8 r4 |
            d''8 r8 r4 |
        }
    }
}

voiceone = {
    \key d \minor
    \voiceoneintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \preintro
    \voiceoneintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \cadenzaOn
    s16*34 % line 1
    s16*66 % line 2
    s16*22 % line 3
    s32*87 % line 4
    s16*45 % line 5
    s16*36 % line 6
    s16*37 % line 7
    s16*34 s16*14 s32 % line 8
    s16*38 % line 9
    s16*50 % line 10
    s16*44 % line 11
    s16*44 s16*23 % line 12
    s16*31 s16*18 % line 13
    \cadenzaOff
}

voicetwosectiona = {
    s4 s16 s8.
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

voicetwosectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

voicetwosectionc = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

voicetwo = {
    \key d \minor
    \voicetwointro
    \time 2/4
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = \transpose e d {
    \cadenzaOn
    e''1*34/16\fermata % line 1
    \tuplet 3/2 { e''8 e''8 dis''8 ~ } dis''1*62/16\fermata % line 2
    e''1*22/16\fermata % line 3
    e''1*87/32\fermata % line 5
    e''1*45/16\fermata % line 5
    e''1*36/16\fermata % line 6
    e''16 e''1*36/16\fermata % line 7
    \accidentalStyle forget 
    d''1*34/16\fermata e''8 d''1*25/32\fermata % line 8
    \accidentalStyle default 
    e''1*38/16\fermata % line 9
    e''1*50/16\fermata % line 10
    e''1*44/16\fermata % line 11
    e''8 e''1*42/16\fermata e''1*23/16\fermata % line 12
    e''8 dis''1*29/16\fermata e''1*18/16\fermata % line 13
    \cadenzaOff
}

tenorharmonysectiona = \transpose e d {
    s4 s16 r16 r8
    \repeat volta 2 {
        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |

        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |
    }
    \alternative {
        { r8 b'8 e''8 r8 | }
        { r8 b'8 e''8 r8 | }
    }
}

tenorharmonysectionb = \transpose e d {
    \repeat volta 2 {
        d''2 |
        cis''2 |
        b'2 |
        ais'2 |

        r8 e''8 r8 e''8 |
        r4 r16 e''16 g''16 b''16 |
        d''2 |
        cis''2 |

        b'2 |
        ais'2 |
        r8 e''8 r8 e''8 |
    }
    \alternative {
        { r8 g''8 e''8 r8 | }
        { r8 g''8 e''8 r8 | }
    }
}

tenorharmonysectionc = \transpose e d {
    \repeat volta 2 {
        r8 e''8 r8 e''8 |
        r8 e''8 r8 g''8 |
        r8 e''8 b'8 g''8 |
        r8 e''8 b'8 g''8 |

        r8 e''8 b'8 g''8 |
    }
    \alternative {
        {
            r8 e''8 b'8 g''8 |
            r8 e''8 b'8 g''8 |
            r8 b'8 e''8 r8 |
        }
        {
            r8 e''8 b'8 g''8 |
            e''8 r8 r4 |
            b'8 r8 r4 |
            e'4 r4 |
        }
    }
}

tenorharmony = {
    \key d \minor
    \tenorharmonyintro
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

tenorharmonymidi = {
    \preintro
    \tenorharmonyintro
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    \cadenzaOn
    a1*34/16\fermata % line 1
    \tuplet 3/2 { a8 a8 a8 ~ } a1*62/16\fermata % line 2
    a1*22/16\fermata % line 3
    a1*87/32\fermata % line 5
    a1*45/16\fermata % line 5
    a1*36/16\fermata % line 6
    a16 bes1*36/16\fermata % line 7
    a1*34/16\fermata a16 a16 c1*25/32\fermata % line 8
    a1*38/16\fermata % line 9
    a1*50/16\fermata % line 10
    g1*44/16\fermata % line 11
    g16 g16 a1*42/16\fermata a1*23/16\fermata % line 12
    a16 a16 a1*29/16\fermata a1*18/16\fermata % line 13
    \cadenzaOff
}

countersectiona = {
    s4 s16 r16 r8
    \repeat volta 2 {
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |

        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
    }
    \alternative {
        { a8 a8 a8 r8 | }
        { a8 a8 a8 r8 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        a8. a16 a8 a8 |
        a8. a16 a8 a8 |
        a8. a16 a8 a8 |
        gis8. gis16 gis8 gis8 |

        a8. a16 a8 a8 |
        a8 a8 a8 a8 |
        a8. a16 a8 a8 |
        a8. a16 a8 a8 |

        a8. a16 a8 a8 |
        gis8. gis16 gis8 gis8 |
        a8. a16 a8 a8 |
    }
    \alternative {
        { a8 a8 a8 r8 | }
        { a8 a8 a8 r8 | }
    }
}

countersectionc = {
    \repeat volta 2 {
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |
        a8 a8 r8 a8 |

        a8 a8 r8 a8 |
    }
    \alternative {
        {
            a8 a8 r8 a8 |
            a8 a8 r8 a8 |
            a8 a8 a8 r8 |
        }
        {
            a8 a8 r8 a8 |
            a8 r8 r4 |
            a8 r8 r4 |
            a4 r4 |
        }
    }
}

counter = {
    \key d \minor
    \counterintro
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
}

countermidi = {
    \preintro
    \counterintro
    \time 2/4
    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \cadenzaOn
    d1*34/16\fermata % line 1
    \tuplet 3/2 { d8 f8 a8 ~ } a1*62/16\fermata % line 2
    d1*22/16\fermata % line 3
    d1*87/32\fermata % line 5
    d1*45/16\fermata % line 5
    d1*36/16\fermata % line 6
    d16 g,1*36/16\fermata % line 7
    f,1*34/16\fermata d8 c1*25/32\fermata % line 8
    d1*38/16\fermata % line 9
    d1*50/16\fermata % line 10
    g1*44/16\fermata % line 11
    g8 d1*42/16\fermata d1*23/16\fermata % line 12
    d8 a1*29/16\fermata d1*18/16\fermata % line 13
    \cadenzaOff
}

basslinesectiona = {
    s4 s16 r16 r8
    \repeat volta 2 {
        d4 a4 |
        d4 a4 |
        d4 a4 |
        d8 f8 a8 f8 |

        d4 a4 |
        d4 a4 |
        d4 a4 |
    }
    \alternative {
        { d8 a8 d8 r8 | }
        { d8 a8 d8 r8 | }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        < c c' >2 |
        < b, b >2 |
        < a, a >2 |
        < gis, gis >2 |

        d4 f,8 a,8 |
        d8 d8 f8 a8 |
        < c c' >2 |
        < b, b >2 |

        < a, a >2 |
        < gis, gis >2 |
        d4 a4 |
    }
    \alternative {
        { d8 a8 d8 r8 | }
        { d8 a8 d8 r8 | }
    }
}

basslinesectionc = {
    \repeat volta 2 {
        d4 a,4 |
        d4 a,4 |
        d8 d8 f8 a8 |
        < d d' >4 < a, a >4 |

        < d d' >4 < a, a >4 |
    }
    \alternative {
        {
            < d d' >4 < a, a >4 |
            < d d' >4 < a, a >4 |
            < d d' >8 < a, a >8 < d d' >8 r8 |
        }
        {
            d4 a8 f8 |
            d8 r8 r4 |
            a8 r8 r4 |
            d4 r4 |
        }
    }
}

bassline = {
    \key d \minor
    \basslineintro
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

basslinemidi = {
    \preintro
    \basslineintro
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = {
    \key d \minor
    \voiceoneintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

flutenotesmidi = {
    \preintro
    \voiceoneintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes, c {
    \melodynotes
}

clarinetnotesmidi = \transpose bes, c {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \key d \minor
    \tenorharmonyintro
    \time 2/4
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

altosaxnotesmidi = \transpose ees c {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes, c {
    \tenorharmony
}

tenorsaxnotesmidi = \transpose bes, c {
    \tenorharmonymidi
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes,, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = \transpose c c' {
    \cadenzaOn
    a'1*34/16\fermata % line 1
    \tuplet 3/2 { a'8 a'8 a'8 ~ } a'1*62/16\fermata % line 2
    a'1*22/16\fermata % line 3
    a'1*87/32\fermata % line 4
    a'1*45/16\fermata % line 5
    a'1*36/16\fermata % line 6
    a'16 bes'1*36/16\fermata % line 7
    a'1*34/16\fermata g'8 g'1*25/32\fermata % line 8
    a'1*38/16\fermata % line 9
    a'1*50/16\fermata % line 10
    b'1*44/16\fermata % line 11
    b'8 a'1*42/16\fermata a'1*23/16\fermata % line 12
    a'8 a'1*29/16\fermata a'1*18/16\fermata % line 13
    \cadenzaOff
}

trumpetnotes = \transpose bes c {
    \key d \minor
    \trumpetintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

trumpetnotesmidi = \transpose bes c {
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
    \counter
}

violinnotesmidi = {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \cadenzaOn
    d16*34:min % line 1
    \tuplet 3/2 { d8*2:min a8 } a16*62 % line 2
    d16*22:min % line 3
    d32*87:min % line 4
    d16*45:min % line 5
    d16*36:min % line 6
    d16:min g16*36:min % line 7
    f16*34 d16*2:min c16*12:min c32:min % line 8
    d16*38:min % line 9
    d16*50:min % line 10
    g16*44 % line 11
    g16*2 d16*42:min d16*23:min % line 12
    d16*2:min a16*29 d16*18:min % line 13
    \cadenzaOff
}

chordletterssectiona = \chordmode {
    s4 s16 s8.
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min |
    }
    \alternative {
        { d2:min | }
        { d2:min | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        d2:min | d2:min | d2:min |
    }
    \alternative {
        { d2:min | }
        { d2:min | }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | d2:min | d2:min |
        d2:min |
    }
    \alternative {
        { d2:min | d2:min | d2:min | }
        { d2:min | d2:min | d2:min | d2:min | }
    }
}

chordletters = \chordmode {
    \chordlettersintro
    \time 2/4
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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

guitarintro = {
    \cadenzaOn
    s16*34 % line 1
    s16*66 % line 2
    s16*22 % line 3
    s32*87 % line 4
    s16*45 % line 5
    s16*36 % line 6
    s16*37 % line 7
    s16*34 s16*14 s32 % line 8
    s16*38 % line 9
    s16*50 % line 10
    s16*44 % line 11
    s16*44 s16*23 % line 12
    s16*31 s16*18 % line 13
    \cadenzaOff
}

guitarsectiona = {
    s4 s16 s8.
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 |
    }
    \alternative {
        { s2 | }
        { s2 | }
    }
}

guitarsectionc = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 |
    }
    \alternative {
        { s2 | s2 | s2 | }
        { s2 | s2 | s2 | s2 | }
    }
}

guitarnotes = {
    \key d \minor
    \guitarintro
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarnotesmidi = {
    \preintro
    \guitarintro
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightintro = \chordmode {
}

pianorightnotes = {
    \key d \minor
    \bandmintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

pianorightuppernotes = {
    \key d \minor
    \bandmintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
    \bandmintro
    \time 2/4
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

pianoleftnotesintro = \transpose c c,, \chordmode {
    \cadenzaOn
    d1*34/16:min\fermata % line 1
    \tuplet 3/2 { d8:min d8:min a8 } a1*62/16\fermata % line 2
    d1*22/16:min\fermata % line 3
    d1*87/32:min\fermata % line 4
    d1*45/16:min\fermata % line 5
    d1*36/16:min\fermata % line 6
    d16:min g1*36/16:min\fermata % line 7
    f1*34/16\fermata d8:min c1*25/32:min\fermata % line 8
    d1*38/16:min\fermata % line 9
    d1*50/16:min\fermata % line 10
    g1*44/16\fermata % line 11
    g8 d1*42/16:min\fermata d1*23/16:min\fermata % line 12
    d8:min a1*29/16\fermata d1*18/16:min\fermata % line 13
    \cadenzaOff
}

pianoleftnotes = {
    \key d \minor
    \pianoleftnotesintro
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

pianoleftuppernotes = {
    \key d \minor
    \pianoleftnotesintro
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotesintro
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
}

drumslow = \drummode {
    \time 2/4
    \stemDown

}

drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d1:min
}

previewnotes = {
  \key d \minor
    \cadenzaOn
% line 1
    a''4 f''8 [ e''8 d''8 ] cis''8^"accel." [ e''8 d''8 bes'8 ] a'8 [ gis'8 a'8 d'8 ]
    gis'16 [ f'16 e'16 d'16 ] \tuplet 3/2 { cis'8 [ d'8 dis'8 ] }
    \cadenzaOff
}

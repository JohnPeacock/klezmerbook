\version "2.18.2"

bandmintro = {
    \partial 8 s8 |
}

bandmsectiona = {
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
        s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev
    } \alternative {
        { s1 | \breakAeit }
        { s1 | }
    }
    \breakA
}

bandmsectionb = {
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev
    } \alternative {
        { s1 | \breakBeit }
        { s1 | }
    }
}

bandm = {
    \time 4/4
    \bandmintro
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

metronomeintro = { s1 }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 110
    \metronomeintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

% ----------------------------------------

voiceoneintro = {
    \partial 8 c'8 |
}

voiceonemidiintro = {
    s2 s4 s8 c'8 |
}

voiceonesectiona = {
    \repeat volta 2 {
        c'8 ees'8 ees'8 g'8 g'8 c''8 c''8 ees''8 |
        ees''8 d''8 d''8 c''8 g'4. r8 |
        ees''8 d''8 d''8 c''8 c''8 bes'8 bes'8 aes'8 |
        aes'8 g'8 g'8 f'8 f'4 r8 f'8 |

        f'8 g'8 g'8 d''8 d''8 c''8 c''8 b'8 |
        b'8 aes'8 aes'8 g'8 g'8 f'8 f'8 ees'8 |
        ees'8 f'8 f'8 ees'8 g'8 f'8 ees'8 d'8 |
    } \alternative {
        { ees'2 r4 r8 c'8 | }
        { c'2 r8 g'8 c''8 d''8 | }
    }
}

voiceonesectionb = {
    \repeat volta 2 {
        ees''4. d''8 ees''8 d''8 c''8 b'8 |
        c''4 g'2 r8 g'8 |
        c''8 b'8 c''8 b'8 c''8 bes'8 aes'8 g'8 |
        g'8 ( aes'8 ) f'2. |

        f'8 g'8 g'8 d''8 d''8 c''8 c''8 b'8 |
        b'8 aes'8 aes'8 g'8 g'8 f'8 f'8 ees'8 |
        ees'8 f'8 f'8 ees'8 g'8 f'8 ees'8 d'8 |
    } \alternative {
        { c'2 r8 g'8 c''8 d''8 | }
        { c'2 r4 r8 c'8 | }
    }
}

melodynotes = \transpose c d {
    \time 4/4
    \key c \minor
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = \transpose c d {
    \time 4/4
    \preintro
    \voiceonemidiintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \partial 8 s8 |
}

voicetwomidiintro = {
    s2 s4 s8 s8 |
}

voicetwosectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

voicetwosectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

voicetwonotes = {
    \time 4/4
    \key e \minor
    \voicetwointro
    \voicetwosectiona
    \voicetwosectionb
}

voicetwonotesmidi = {
    \time 4/4
    \preintro
    \voicetwomidiintro
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectiona
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
    \partial 8 s8 |
}

voicethreemidiintro = {
    s2 s4 s8 s8 |
}

voicethreesectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

voicethreesectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

counter = \transpose c'' d {
    \time 4/4
    \key c \minor
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionb
}

countermidi = \transpose c'' d {
    \time 4/4
    \preintro
    \voiceonemidiintro
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \partial 8 r8 |
}

basslinemidiintro = {
    s1 |
}

basslinesectiona = {
    \repeat volta 2 {
        d4 r4 a,4 r4 |
        d4 r4 a,4 r4 |
        d4 e4 f4 fis4 |
        g4 a4 bes4 d4 |

        a,4 cis4 a,4 e4 |
        a,4 cis4 a,4 a4 |
        d4 f,4 g,4 a,4 |
    } \alternative {
        { d8 r8 a8 r8 d'8 r8 f'8 r8 | }
        { d4 a,4 d4 r4 | }
    }
}

basslinesectionb = {
    \repeat volta 2 {
        d4 r4 a,4 cis'4 |
        d4 r4 d'4-> a4-> |
        d4 r4 d4 fis4 |
        g,4 g4 cis8\< d8 g4\! |

        a,4 cis4 a,4 e4 |
        a,4 cis4 a,4 a4 |
        d4 f4 a,4 a4 |
    } \alternative {
        { d4 a,4 f,4 a,4 | }
        { d'4 a,4-> d8-> r8 r4 | }
    }
}

bassline = {
    \time 4/4
    \key d \minor
    \basslineintro
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslinemidiintro
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

clarinetintro = {
    \partial 8 e'8 |
}

clarinetmidiintro = {
    s2 s4 s8 e'8 |
}

clarinetsectiona = {
    \repeat volta 2 {
        e'8 ( g'8 ) g'8 ( b'8 ) b'8 ( e''8 ) e''8 ( g''8 ) |
        g''8 ( fis''8 ) fis''8 ( e''8 ) b'2 |
        g''8 ( fis''8 ) fis''8 ( e''8 ) e''8 ( d''8 ) d''8 ( c''8 ) |
        c''8 ( b'8 ) b'8 ( a'8 ) a'4 r8 a'8 |

        a'8 ( b'8 ) b'8 ( fis''8 ) fis''8 ( e''8 ) e''8 ( dis''8 ) |
        dis''8 ( c''8 ) c''8 ( b'8 ) b'8 ( a'8 ) a'8 ( g'8 ) |
        g'8^"8va. 2nd time" ( a'8 ) a'8 ( g'8 ) b'8 ( a'8 g'8 fis'8 ) |
    } \alternative {
        { g'8-. r8 b'8-. r8 e''8-. r8 g''8-. e'8\noBeam | }
        { e''2 ( e''8 ) b'8 e''8 fis''8 | }
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        g''4. fis''8\noBeam g''8 fis''8 e''8 dis''8 |
        e''4 b'4 e''4-^ b'4-^ |
        e''8 dis''8 e''8 dis''8 e''8 d''8 c''8 b'8 |
        b'8 c''8 a'4 e''4-^ a''4-^ |

        a'8 ( b'8 ) b'8 ( fis''8 ) fis''8 ( e''8 ) e''8 ( dis''8 ) |
        dis''8^"8va. 2nd time" ( c''8 ) c''8 ( b'8 ) b'8 ( a'8 ) a'8 ( g'8 ) |
        g'8 ( a'8 ) a'8 ( g'8 ) b'8 a'8 g'8 fis'8 |
    } \alternative {
        { g'2 ( g'8 ) b'8 e''8 fis''8 | }
        { e''8 r8 b''8-^ r8 e''8-^ b'8 e''8 fis''8 | }
    }
}

clarinetnotes = {
    \time 4/4
    \key e \minor
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = {
    \time 4/4
    \preintro
    \clarinetmidiintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    \partial 8 e'8 |
}

tenorsaxmidiintro = {
    s2 s4 s8 e'8 |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        e'8 ( g'8 ) g'8 ( b'8 ) b'8 ( e''8 ) e''8 ( b'8 ) |
        b'8 ( a'8 ) a'8 ( g'8 ) g'16 ( [ fis'16 e'16 fis'16 ] g'8 [ b'8 ] ) |
        b'8 ( a'8 ) a'8 ( g'8 ) g'8 ( gis'8 ) gis'8 ( a'8 ) |
        a'8 ( e'8 ) e'8 ( c'8 ) c'16 ( e'16 e'16 c'16 c'8 ) a'8 |

        a'8 ( b'8 ) << { b'8^"Upper voice 2nd time" ( dis''8 ) dis''8 ( c''8 ) c''8 ( b'8 ) } \\
                       { b'8 ( a'8 ) a'8 ( g'8 ) g'8 ( fis'8 ) } >> |
        << { b'8 ( a'8 ) } \\
           { fis'8 ( a'8 ) } >> a'8 ( g'8 ) g'8 ( fis'8 ) fis'8 ( e'8 ) |
        << { b'8^"Upper voice 2nd time" ( c''8 ) c''8 ( b'8 ) dis'8 ( c''8 b'8 a'8 )  } \\
           { e'2 dis'8 ( fis'8 e'8 dis'8 ) } >> |
    } \alternative {
        { e'8-. r8 g'8-. r8 b'8-. r8 e''8-. e'8 | }
        { g'8 b'8 \acciaccatura { d''8 } c''8 b'8 g'8 b'8 g'8 a'8 | }
    }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        b'8 ( e''8 b'4 ) a'8 ( dis''8 b'8 a'8 )
        g'4 g'4 g''4-^ g''4-^
        g'2 gis'4 e'4 |
        e'4 a'4 c''4-^ c''4-^ |

        a'8 ( b'8 ) b'8 ( a'8 ) a'8 ( g'8 ) g'8 ( fis'8 ) |
        fis'8^"8va 2nd time" ( a'8 ) a'8 ( g'8 ) g'8 ( fis'8 ) fis'8 ( e'8 ) |
        << { e''2^"Upper voice 2nd time" dis''8 c''8 b'8 a'8 } \\
           { e'2 dis'8 fis'8 e'8 dis'8 } >> |
    } \alternative {
        { e'4 b'4 g'8 b'8 g'8 a'8 | }
        { g'8 r8 a'8-^ r8 g'8-^ b'8 b'8 b'8 | }
    }
}

tenorsaxnotes = {
    \time 4/4
    \key e \minor
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
    \time 4/4
    \preintro
    \tenorsaxmidiintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorharmony = \transpose c bes, {
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
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
    \partial 8 s8 |
}

chordlettersmidiintro = \chordmode {
    s1 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        c1:min | c1:min |
        c1:min | f1:min |

        g1:7 | g2.:7 c4:min | c2:min g2:7 |
    } \alternative {
        { c1:min | }
        { c1:min | }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        c2:min g2:7 | c1:min | c2:min c2:7 | f1:min |
        g1:7 | g2.:7 c4:min | c2:min g2:7 |
    } \alternative {
        { c1:min | }
        { c1:min | }
    }
}

chordletters = \transpose c d { \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
} }

chordlettersmidi = \transpose c d { \chordmode {
    \time 4/4
    \preintro
    \chordlettersmidiintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiona
    \chordletterssectionb
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

guitarnotesintro = {
    \key ees \major
    \partial 8 s8 |
}

guitarnotesmidiintro = {
    s1 |
}

guitarnotessectiona = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarnotessectionb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarnotes = {
    \time 4/4
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \guitarnotesmidiintro
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

pianorightnotesintro = {
    \partial 8 d'8 |
}

pianorightnotesmidiintro = {
    s2 s4 s8 d'8 |
}

pianorightnotessectiona = {
    \repeat volta 2 {
        d'8\mf ( f'8 ) f'8 ( a'8 ) a'8 ( d''8 ) d''8 ( f''8 ) |
        <a' f''>8 ( <g' e''>8 ) <g' e''>8 ( <f' d''>8 ) <f' a'>2 |
        << { f''8 [e''] } \\ { a'4*1/2 (\hideNotes e''8 )\unHideNotes } >>
          << { e''8 [d''] } \\ { g'4*1/2 (\hideNotes d''8 )\unHideNotes } >>
          << { d''8 [c''] } \\ { f'4*1/2 (\hideNotes c''8 )\unHideNotes } >>
          << { c''8 [bes'] } \\ { d'4*1/2 (\hideNotes bes'8 )\unHideNotes } >> |
        << { bes'8 a'8 a'8 g'8 g'4 r8 g'8 } \\ { d'2 s2 } >> |

        g'8 (a') a' (<g' e''>) <g' e''> (<f' d''>) <f' d''> (<e' cis''>) |
        <e' cis''>8 (<g' bes'>) <g' bes'> (<f' a'>) <f' a'> (<e' g'>) <e' g'> (<d' f'>) |
        << { f'8 g' g' f' a' g' f' e' } \\ { d'2 cis'2 } >> |
    } \alternative {
        {
            < d' f' >8\< r < d' f' a' >\arpeggio r < f' a' d'' >\arpeggio \! r8 < a' d'' f'' >\arpeggio d'8->\noBeam |
        }
        {
            < f a d' >2 ~ < f a d' >8 a'8 ( d'' e'' ) |
        }
    }
}

pianorightnotessectionb = {
    \repeat volta 2 {
        << { f''4. e''8 f'' e'' d'' cis'' } \\ { a'2 g'2 } >> |
        < f' d'' >4 < f' a' >2. |
        << { d''8 cis'' d'' cis'' d'' cis'' bes' a' } \\ { <f' a'>2 <fis' a'>2 } >> |
        a'8 bes'8 g'2 r8 g'8 |

        g'8 a' a' < g' e' > < g' e' > < f' d'' > < f' d'' > < e' cis' > |
        < e' cis' >8 < g' bes' > < g' bes' > < f' a' > < f' a' > < e' g' > < e' g' > < d' f' > |
        << { f'8 g' g' f' a' g' f' e' } \\ { d'2 cis'2 } >> |
    } \alternative {
        {
            < d' f' >2 ~ < d' f' >8 a' ( d'' e'' ) |
        }
        {
% could use a coda.
% could use last 2 measures in alternative for piano right hand
            <d' f' a'>4 <f' a' d''>4 <a' d'' f''>8 r8 r4 |
        }
    }
}

pianorightnotes = {
    \time 4/4
    \key d \minor
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 4/4
    \preintro
    \pianorightnotesmidiintro
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

pianoleftnotesintro = {
    \partial 8 r8 |
}

pianoleftnotesmidiintro = {
    s1 |
}

pianoleftnotessectiona = {
    \repeat volta 2 {
        d4 < f a d' >4 a,4 < f a d' >4 |
        d4 < f a d' >4 a,4 < f a d' >4 |
        < d, d >4 < e, e >4 < f, f >4 < fis, fis >4 |
        < g, g >4 < a, a >4 < bes, bes >4 < g bes d >4 |

        a,4 < a, g a cis >4 a,4 a4 |
        a,4 a4 cis4 a4 |
        < d, d >4 < f a >4 < a,, a, >4 < e g a >4 |
    } \alternative {
        { < d f a >8 r8 a8 r8 d'8 r8 f'8 r8 | }
        { < d, d >4 a,4 d,4 r4 | }
    }
}

pianoleftnotessectionb = {
    \repeat volta 2 {
        < d, d >4 < f a d' >4 a,4 < g a cis' >4 |
        < d, d >4 < f a d' >4 < d d' >4-> < a, a >4-> |
        < d, d >4 < f a d' >4 < d, d >4 < fis c' d' >4 |
        g,4 < g bes d' >4 < cis, cis >8\< < d, d >8 < g, g >4\! |

        a,4 < g a cis' >4 a,4 a4 |
        a,4 a4 cis4 a4 |
        < d, d >4 < f a >4 a,4 < e g a >4 |
    } \alternative {
        { < d, d >4 < a, a >4 < f, f >4 < a, a >4 | }
        { < d, d >4 < a, a >4-> < d, d >8-> r8 r4 | }
    }
}

pianoleftnotes = {
    \time 4/4
    \key d \minor
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 4/4
    \preintro
    \pianoleftnotesmidiintro
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

drumshighintro = \drummode {
    \partial 8 s8 |
}

drumshighmidiintro = \drummode {
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
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

drumshighsectionb = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
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
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighmidiintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
}

drumslowintro = \drummode {
    \partial 8 s8 |
}

drumslowmidiintro = \drummode {
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
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |

        s1 |
        s1 |
        s1 |
    } \alternative {
        { s1 | }
        { s1 | }
    }
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowmidiintro
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
    A kal- te nakht a ne- pl- di- ke fin- ster um- e- tum,
    shteyt a ying- e- le far- troy- ert un kukt zikh a- rum.
    Fun re- gn shitst im nor a vant,
    a ko- shi- kl halt er in hant,
    un zayn- e oy- gn be- tn yed- n sthum.  Ikh _
    Ku- pit- ye koyft she, koyft she pa- pi- ro- sn, _
    tru- ke- ne fun re- gn nisht far- go- zn.
    Koyft she bi- lik be- ne- mo- nes,
    koyft un hot oyf mir rakh- mo- nes,
    ra- te- vet fun hung- er mikh a- tsind. Ku- pit- ye

}
textlb = \lyricmode {
    "(Ikh)" hob shoyn nit keyn koy- ekh mer a- rum- tsu geyn in gaz,
    hun- ger- ig un op- ge- ri- zn fun dem re- gn naz.
    Ikh shlep a- rum zikh fun ba- gi- nen,
    key- ner git nisht tsu far- di- nen,
    al- e lakn- n, makh- n fun mir _ _ shpaz. _ _ _
    koyft, she shve- be- lakh an- tik- n,
    der mit verd ir a yo- si- ml der- kvi- kn.
    Umzizt mayn shray- en un mayn loy- fn,
    keyn- er vill bay mir nit koy- fn,
    oys- geyn vel ikh mu- zn vi a _ _ _ _ hunt.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters =  \transpose c d { \chordmode {
    \time 4/4
    \partial 8 s8 |
    c1:min | c1:min |
    c1:min | f1:min |
} }

previewnotes = \transpose c d {
    \time 4/4
    \key ees \major
    \tempo \tempostring
    \partial 8 c'8 |
    \bar ".|:"
    c'8 ees'8 ees'8 g'8 g'8 c''8 c''8 ees''8 |
    ees''8 d''8 d''8 c''8 g'4. r8 |
    ees''8 d''8 d''8 c''8 c''8 bes'8 bes'8 aes'8 |
    aes'8 g'8 g'8 f'8 f'4 r8 f'8 |
}

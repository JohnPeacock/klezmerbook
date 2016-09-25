\version "2.18.2"

bandmintro = {
    s2
}

bandmsectiona = {
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt
    }
    \alternative {
        {  s2 | \breakAfft s2 | \breakAsxt } { s2 | \breakAsvt s2 | }
    }
}

bandmsectionb = {
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt
    }
    \alternative { { s2 | \breakBfft s2 \breakBsxt } { s2 | \breakBsvt s2 | } }
}

bandmsectionca = {
    s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
    s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakCeit
    s2 | \breakCnin s2 | \breakCten s2 | \breakCelv s2 | \breakCtwl
    s2 | \breakCtht s2 | \breakCfrt s2 | \breakCfft
    \markTC \positionTC
    \bar "||"
}

bandmsectioncb = {
    s2 | \breakC
}

bandmsectionc = {
    \repeat volta 2 {
        \bandmsectionca
        \bandmsectioncb
    }
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC
    s2 | s2 |
}

bandmmain = {
    \markSA \positionSA
    \bandmsectiona
    \breakA
    \bar ".|:-||"
    \markB \positionB
    \bandmsectionb
    \breakB
    \bar ".|:-||"
    \markC \positionC
    \bandmsectionc
    \markDS \positionDS
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmmain
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandmintro
    \bandmmain
    \bandmsectiona
    \bandmsectionb
    \bandmsectionca
    \bandmsectioncb
    \bandmsectionca
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = {
    s4 s8 e'8
}

voiceonesectiona = {
    \repeat volta 2 {
        e'8 b8 e'8 fis'8 g'8 g'8 fis'8 e'8 |
        a'8 a'4 a'8 g'8 g'8 fis'8 e'8 |
        a'8 a'4 a'8 g'8 fis'8 e'8 fis'8 |
        g'4 b'4 b'16 a'16 g'8 g'16 fis'16 e'8 |
        e'8 b8 e'8 fis'8 g'8 g'8 fis'8 e'8 |
        a'8 a'4 a'8 g'8 g'8 fis'8 e'8 |
        a'8 a'4 a'8 g'8 d'8 e'8 f'8 |
    }
    \alternative { { e'4 r4 | r4 r8 e'8 } { e'4 r4 | r8 d'8 g'8 a'8 } }
}

voiceonesectionb = {
    \repeat volta 2 {
        ais'8 b'8 b'8 b'8 b'8 a'8 c''16 b'16 a'8 |
        g'4 r4 r8 d'8 g'8 b'8 |
        d''8. e''16 f''16 e''16 d''8 f''16 e''16 d''8 c''8 r8 |
        cis''16 e''16 d''8 r4 r8 d'8 g'8 a'8 |
        bes'4. bes'8 cis''16 d''16 e''8 d''16 cis''16 bes'8 |
        a'4 r4 r8 b'8 c''8 cis''8 |
        d''8 b'8 c''16 b'16 a'8 b'8 g'8 a'8 fis'8 |
    }
    \alternative { { g'4 r4 r8 d'8 g'8 a'8  } { g'4 dis''4 e''2 } }
}

voiceonesectionca = {
    ais'8 b'8 b'8 b'8 | ais'8 b'8 ais'8 g'8 |
    fis'8 g'8 g'8 g'8 | fis'8 g'8 fis'8 e'8 |
    fis'8 b8 dis'8 fis'8 | a'8 a'8 g'8 fis'8 |
    e'16 dis'16 e'16 fis'16 g'16 fis'16 g'16 a'16 | b'4 r8 dis''8 |
    e''8 b'4 b'8 | ais'8 b'8 ais'8 g'8 |
    fis'8 g'8 g'8 g'8 | fis'8 g'8 fis'8 e'8 |
    fis'8 b8 dis'8 fis'8 | ais'8 b'8 cis''8 b'8 |
    b'16 a'16 g'8 g'16 fis'16 e'8 |
}

voiceonesectioncb = {
    e'4 r8 e'8 |
}

voiceonesectionc = {
    \repeat volta 2 {
        \voiceonesectionca
        \voiceonesectioncb
    }
}

voiceonemain = {
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionc
}

voiceonecoda = {
    e'4-> b'4-> | e''4-> r4 |
}

voiceone = {
    \time 2/4
    \key e \minor
    \voiceoneintro
    \voiceonemain
    \blankmeasure
    \voiceonecoda
}

melodynotes = \transpose c bes, {
    \voiceone
}

melodynotesmidi = \transpose c bes, {
    \preintro
    \voiceoneintro
    \voiceonemain
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectionca
    \voiceonesectioncb
    \voiceonesectionca
    \voiceonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    s4 s8 e'8
}

voicetwosectiona = {
    \repeat volta 2 {
        e'8 b8 e'8 fis'8 |
        g'16 a'16 g'8 fis'8 e'8 |
        gis'16 b'16 a'8 a'8 a'8 |
        g'8 f'16 g'16 fis'8 e'8 |

        gis'16 b'16 a'8 a'8 a'8 |
        g'8 fis'8 e'8 fis'8 |
        g'4 b'4 |
        b'16 a'16 g'8 g'16 fis'16 e'8 |

        e'8 b8 e'8 fis'8 |
        g'16 a'16 g'8 fis'8 e'8 |
        gis'16 b'16 a'8 a'8 a'8 |
        g'8 f'16 g'16 fis'8 e'8 |

        gis'16 b'16 a'8 a'8 a'8 |
        g'8 d'8 e'8 f'8 |
    }
    \alternative { { e'2-\prall | r4 r8 e'8 } { e'2-\prall | r8 d'8 g'8 a'8 } }
}

voicetwosectionb = {
    \repeat volta 2 {
        ais'16 c''16 b'8 b'8 b'8 |
        b'8 a'8 b'8. a'16 |
        g'2-\prall |
        r8 d'8 g'8 b'8 |

        d''8. e''16 f''16 e''16 d''8 |
        f''16 e''16 d''8 c''8 b'8 |
        cis''16 e''16 d''8 r4 |
        r8 d'8 g'8 a'8 |

        a'16 c''16 bes'4 d''8 |
        cis''16 d''16 e''8 d''16 cis''16 bes'8 |
        a'2-\prall |
        r8 b'8 c''8 cis''8 |

        d''8 b'8 c''8 a'8 |
        b'8 g'8 a'8 fis'8 |
    }
    \alternative {
        { g'2-\prall | r8 d'8 g'8 a'8  } { g'2-\prall | e''4.-> b'8 }
    }
}

voicetwosectionca = {
    ais'16 cis''16 b'8 b'8 b'8 |
    ais'16 cis''16 b'8 b'8 b'8 |
    fis'16 a'16 g'8 g'8 g'8 |
    fis'16 a'16 g'8 fis'8 e'8 |

    fis'8 b8 dis'8 fis'8 |
    a'8 a'8 g'8 fis'8 |
    e'16 dis'16 e'16 fis'16 g'16 fis'16 g'16 a'16 |
    b'4.-\prall b'8 |

    ais'16 cis''16 b'8 b'8 b'8 |
    ais'16 cis''16 b'8 b'8 b'8 |
    fis'16 a'16 g'8 g'8 g'8 |
    fis'16 a'16 g'8 fis'8 e'8 |

    fis'8 b8 dis'8 fis'8 |
    ais'8 b'8 d''16 cis''16 b'8 |
    % the ais' in the next measure is done as an a' in voiceone.
    % need to reconcile those.
    b'16 ais'16 g'8 g'16 fis'16 e'8 |
}

voicetwosectioncb = {
    % klezmer plus has alternative endings here!!!
    %   e'4. b'8
    %   e'4. e'8
    e'4 r8 e'8 |
}

voicetwosectionc = {
    \repeat volta 2 {
        \voicetwosectionca
        \voicetwosectioncb
    }
}

voicetwomain = {
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectionc
}

voicetwocoda = {
    e'4-> b'4-> | e''4-> r4 |
}

voicetwo = {
    \time 2/4
    \key e \minor
    \voicetwointro
    \voicetwomain
    \blankmeasure
    \voicetwocoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    s4 s8 r8 |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        a'8 e'8 a'8 bes'8 |
        d''8 d''8 bes'8 a'8 |
        d''8 d''4 d''8 |
        d''8 d''8 c''8 a'8 |

        d''8 d''4 d''8 |
        d''8 cis''8 a'8 cis''8 |
        d''4 f''4 |
        f''16 e''16 d''8 d''16 cis''16 a'8 |

        a'8 e'8 a'8 bes'8 |
        d''8 d''8 bes'8 a'8 |
        d''8 d''4 d''8 |
        d''8 d''8 cis''8 a'8 |

        d''8 d''4 d''8 |
        c''8 a'8 bes'8 c''8 |
    }
    \alternative {
        { a'4 r4 | r4 r8 a'8 | } { a'4 r4 | r8 g'8 d''8 e''8 | }
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        f''4. f''8 |
        f''8 e''8 g''16 f''16 e''8 |
        c''4 r4 |
        r8 a'8 c''8 f''8 |

        a''8. bes''16 c'''16 bes''16 a''8 |
        c'''16 bes''16 a''8 g''8 r8 |
        g''16 b''16 a''8 r4 |
        r8 g'8 d''8 e''8 |

        f''4. f''8 |
        g''16 aes''16 bes''8 aes''16 g''16 f''8 |
        d''4 r4 |
        r8 f''8 g''8 gis''8 |

        a''8 f''8 g''16 f''16 e''8 |
        f''8 c''8 e''8 c''8 |
    }
    \alternative {
        { c''4 r4 | r8 g'8 d''8 e''8 } { c''4 gis''4 | a''2 | }
    }
}

tenorharmonysectionca = {
    e''8 f''8 f''8 f''8 |
    e''8 f''8 e''8 d''8 |
    cis''8 d''8 d''8 d''8  |
    cis''8 d''8 cis''8 a'8 |

    cis''8 e'8 a'8 cis''8 |
    e''8 e''8 d''8 cis''8 |
    a'8 a'8 d''8 d''8 |
    f''4 r8 a''8 |

    a''8 f''4 f''8 |
    e''8 f''8 e''8 d''8 |
    cis''8 d''8 d''8 d''8  |
    cis''8 d''8 cis''8 a'8 |

    cis''8 e'8 a'8 cis''8 |
    e''8 f''8 g''8 f''8 |
    f''16 e''16 d''8 d''16 cis''16 a'8 |
}

tenorharmonysectioncb = {
    a'4 r8 a'8 |
}

tenorharmonysectionc = {
    \repeat volta 2 {
        \tenorharmonysectionca
        \tenorharmonysectioncb
    }
}

tenorharmonymain = {
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
}

tenorharmonycoda = {
    a'4-> e''4-> | a''4-> r4 |
}

tenorharmony = {
    \time 2/4
    \key d \minor
    \tenorharmonyintro
    \tenorharmonymain
    \blankmeasure
    \tenorharmonycoda
}

tenorharmonymidi = {
    \preintro
    \tenorharmonyintro
    \tenorharmonymain
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionca
    \tenorharmonysectioncb
    \tenorharmonysectionca
    \tenorharmonycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    s2 |
}

countersectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative {
        {  s2 | s2 | } { s2 | s2 | }
    }
}

countersectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 } { s2 | s2 | } }
}

countersectionca = {
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 |
}

countersectioncb = {
    s2 |
}

countersectionc = {
    \repeat volta 2 {
        \countersectionca
        \countersectioncb
    }
}

countermain = {
    \countersectiona
    \countersectionb
    \countersectionc
}

countercoda = {
    s2 | s2 |
}

counter = {
    \time 2/4
    \key d \minor
    \counterintro
    \countermain
    \blankmeasure
    \countercoda
}

countermidi = {
    \preintro
    \counterintro
    \countermain
    \countersectiona
    \countersectionb
    \countersectionca
    \countersectioncb
    \countersectionca
    \countercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    s4 s8 r8
}

basslinesectiona = {
    \repeat volta 2 {
        d4 a,4 | d4 a,4 | d4 g4 | d4 a4 |
        g4 d4 | a4 e4 | d4 a,4 | d8 d'8 a8 f8 |
        d4 a,4 | d4 a,4 | d4 g4 | d4 a4 |
        g4 d4 | f4 c4 |
    }
    \alternative { { d4 a,4 | d8 d'8 a8 f8 | } { d4 r4 | r2^"Fill" | } }
}

basslinesectionb = {
    \repeat volta 2 {
        f4 c4 | f8 c8 d8 e8 | f4 c4 | f4 c4 |
        f4 c4 | f8 c8 a,8 c8 | f4 c4 | g4 c4 |
        f4 c4 | f8 c8 aes,8 c8 | g4 d4 | g4 c4 |
        f4 c4 | f8 c8 d8 e8 |
    }
    \alternative { { f4 r4 | r2^"Fill" | } { f4 c4 | d2-. | } }
}

basslinesectionca = {
    f4 d4 | a4 d4 | f4 d4 | a4 d4 |
    a4 e4 | a4 e4 | a4 d4 | f4 d4 |
    f4 d4 | a4 d4 | f4 d4 | a4 d4 |
    a4 e4 | a4 e4 | a4 e4 |
}

basslinesectioncb = {
    d2-. |
}

basslinesectionc = {
    \repeat volta 2 {
        \basslinesectionca
        \basslinesectioncb
    }
}

basslinecoda = {
    d4 a4 | d4 r4 |
}

basslinemain = {
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
}

bassline = {
    \time 2/4
    \key d \minor
    \basslineintro
    \basslinemain
    \blankmeasure
    \basslinecoda
}

basslinemidi = {
    \preintro
    \basslineintro
    \basslinemain
    \basslinesectiona
    \basslinesectionb
    \basslinesectionca
    \basslinesectioncb
    \basslinesectionca
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose c c' {
    \voicetwo
}

clarinetnotesmidi = \transpose bes, c' {
%    \preintro
%    \voicetwointro
%    \voicetwomain
%    \voicetwosectiona
%    \voicetwosectionb
%    \voicetwosectionca
%    \voicetwosectioncb
%    \voicetwosectionca
%    \voicetwocoda
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

tenorsaxnotesmidi = {
    \tenorharmonymidi
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

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
    s2 |
}

chordlettersmain = \chordmode {
    \repeat volta 2 {
        d2:min | d2:min | g2:min | d2:min |
        g2:min | a2:7 | d2:min | d2:min |
        d2:min | d2:min | g2:min | d2:min |
        g2:min | f4 c4:min |
    }
    \alternative {
        { d2:min | d2:min | }
        { \chordChangesOff d2:min \chordChangesOn | c2:7 | }
    }
    \repeat volta 2 {
        f2 | f4 c4:7 | f2 | f2 |
        f2 | f2 | f2 | c2:7 |
        f2:min | f2:min | g2 | c2:7 |
        f4 c4:7 | f4 c4:7 |
    }
    \alternative {
        { f2 | c2:7 }
        { \chordChangesOff f2 \chordChangesOn d2:min }
    }
    \repeat volta 2 {
        \chordChangesOff d2:min | \chordChangesOn d2:min | d2:min | d2:min |
        a2:7 | a2:7 | d2:min | d2:min |
        d2:min | d2:min | d2:min | d2:min |
        a2:7 | a2:7 | a2:7 | d2:min |
    }
}

chordletterscoda = \chordmode {
    \chordChangesOff d4:min \chordChangesOn a4:7 | d4:min s4
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordlettersmain
    \blankmeasure
    \chordletterscoda
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
}

guitarsectiona = {
}

guitarsectionb = {
}

guitarsectionca = {
}

guitarsectioncb = {
}

guitarsectionc = {
%    \repeat volta 2 {
%        \guitarsectiona
%        \guitarsectionb
%    }
}

guitarmain = {
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
}

guitarcoda = {
}

guitarnotes = {
    \time 2/4
    \key d \minor
    \guitarintro
    \guitarmain
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi = {
    \preintro
    \guitarintro
    \guitarmain
    \guitarsectiona
    \guitarsectionb
    \guitarsectionca
    \guitarsectioncb
    \guitarsectionca
    \guitarsectioncb  % replace with coda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 2/4
    \key d \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 2/4
    \key d \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown

}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | \bar ".|:" d2:min | d2:min | g2:min d2:min | g2:min a2:7 | d2:min | d2:min |
}

previewnotes = {
  \time 2/4
  \key d \minor

  \transpose c bes, {
    s4 s8 e'8
    \bar ".|:"
    e'8 b8 e'8 fis'8 g'8 g'8 fis'8 e'8 |
    a'8 a'4 a'8 g'8 g'8 fis'8 e'8 |
    a'8 a'4 a'8 g'8 fis'8 e'8 fis'8 |
    g'4 b'4 b'16 a'16 g'8 g'16 fis'16 e'8 |
  }
}

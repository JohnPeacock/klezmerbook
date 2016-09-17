\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmDAVIDMELECHa = {
    \set Score.currentBarNumber = #1
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 | \breakDAVIDMELECHA
}

bandmHALLELUsectiona = {
    \set Score.currentBarNumber = #1
    s2. s4 |
    \positionSA \markSA
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 }
        { s2 \bar "|." \positionFN \markFN \noBreak s2 }
    }
    \bar "||"
    \breakHALLELUA
}

bandmHALLELUsectionb = {
    \positionB \markB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 |
    \positionHALLELUDS \markDS
    s1 |
    \bar "||"
    \breakHALLELUB
}

bandmLOYISAsectiona = {
    \set Score.currentBarNumber = #1
    s2 s8 s4. |
    \positionSA \markSA
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s2. \bar "" \LOYISApositionFN \LOYISAmarkFN s4 |
    \bar "||"
}

bandmLOYISAsectionb = {
    \positionB \markB
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 |
    \LOYISApositionDS \LOYISAmarkDS
    s1 |
    \bar "||"
}

bandmAMYISROCKa = {
    \set Score.currentBarNumber = #1
    \repeat volta 2 {
        s1 | \breakAone
    \markA \positionA
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 | \breakAfor
        s1 | \breakAfiv
        s1 | \breakAsix
    }
    \alternative {
        { s1 | \breakAsev s1 | \breakAeit }
        { s1 | \breakAnin s1 | }
    }
    \breakAMYISROCKA
    \bar ".|:-||"
}

bandmAMYISROCKb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
        s1 | \breakBfor
        s1 | \breakBfiv
        s1 | \breakBsix
        s1 | \breakBsev
        s1 |
    }
    \breakAMYISROCKB
}

bandmMAYIMa = {
    \set Score.currentBarNumber = #1
    \grace { s8 }
    s2 | \breakMAYIMAone
    s2 | \breakMAYIMAtwo
    s2 | \breakMAYIMAtre
    s2 | \breakMAYIMAfor

    \grace { s8 }
    s2 | \breakMAYIMAfiv
    s2 | \breakMAYIMAsix
    s2 | \breakMAYIMAsev
    s2 | \breakMAYIMAeit
    \bar "||"
    s2 | \breakMAYIMAnin
    s2 | \breakMAYIMAten
    s2 | \breakMAYIMAelv
    s2 | \breakMAYIMAtwl

    s2 | \breakMAYIMAtht
    s2 | \breakMAYIMAfrt
    s2 | \breakMAYIMAfft
    s2 | \breakMAYIMAsxt
    \bar "||"
    s2 | \breakMAYIMAsvt
    s2 | \breakMAYIMAett

    s2 | \breakMAYIMAnnt
    s2 | \breakMAYIMAtwy
    s2 | \breakMAYIMAtwnone
    s2 | \breakMAYIMAtwntwo

    s2 | \breakMAYIMAtwntre
    s2 | \breakMAYIMAtwnfor
    s2 | \breakMAYIMAtwnfiv
    s2 | \breakMAYIMA
}

bandmYISMECHUa = {
    \set Score.currentBarNumber = #1
    \repeat volta 2 {
%        \markA \YISMECHUpositionA
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 | \breakAfor
        s1 | \breakAfiv
        s1 | \breakAsix
        s1 | \breakAsev
    }
    \alternative {
        { s1 | \breakAeit \markFN \YISMECHUpositionFN }
        { s1 | \breakYISMECHUA }
    }
    \bar ".|:-||"
}

bandmYISMECHUb = {
    \repeat volta 2 {
        \markB \YISMECHUpositionB
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
    }
    \alternative {
        { s1 | \breakBfor \markDCAF \YISMECHUpositionDCAF }
        { s1 | \breakYISMECHUB }
    }
}

bandmORZARUAa = {
    \set Score.currentBarNumber = #1
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 | \breakAeit
    s1 | \breakAnin
    s1 | \breakAten
    s1 | \breakAelv
    s1 | \breakAtwl
    s1 | \breakAtht
    s1 | \breakAfrt
    s1 | \breakAfft
    s1 | \breakAsxt
    s1 | \breakAsvt
    s1 | \breakAett
    s1 | \breakAnnt
    s1 | \breakAtwy
    s1 | \breakORZARUAAtwnone
    s1 | \breakORZARUAAtwntwo
    s1 | \breakORZARUAAtwntre
    s1 | \breakORZARUAAtwnfor
    s1 | \breakORZARUAA
}

bandmEILEHa = {
%    \EILEHmarkI \EILEHpositionI
    s1 | \breakAone
    \EILEHmarkII \EILEHpositionII
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor
    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 | \breakAeit
    s1 | \breakAnin
    s1 | \breakAten
    s1 | \breakAelv
    s1 | \EILEHbreakA
    \bar "||"
}

bandmEILEHb = {
    s1 | \breakBone
    s1 | \breakBtwo
    s1 | \breakBtre
    s1 | \breakBfor
    s1 | \breakBfiv
    s1 | \breakBsix
    s1 | \breakBsev
    s1 | \breakBeit
    s1 | \breakBnin
    s1 | \breakBten
    s1 | \breakBelv
    s1 | \EILEHbreakB
}

bandmNV = {
%    \time  4/4
%    \tempo \tempoDAVIDMELECHstring
%    \mark \oddTitleHeaderDAVIDMELECHMarkup \positionA
%    \bandmDAVIDMELECHa
%    \bar "|."

    \time 4/4
    \tempo \tempoHALLELUstring
    \mark \oddTitleHeaderHALLELUMarkup \positionA
    \bandmHALLELUsectiona
    \bandmHALLELUsectionb

% lo yisa goy

    \time 2/4
    \tempo \tempoMAYIMstring
    \mark \oddTitleHeaderMAYIMMarkup \positionA
    \bandmMAYIMa
    \bar "|."

    \time  4/4
    \tempo \tempoAMYISROCKstring
    \mark \oddTitleHeaderAMYISROCKMarkup \positionA
    \bandmAMYISROCKa
    \bandmAMYISROCKb
    \bar "|."

    \time  4/4
    \tempo \tempoORZARUAstring
    \mark \oddTitleHeaderORZARUAMarkup \positionA
    \bandmORZARUAa
    \bar "|."

    \time  4/4
    \tempo \tempoYISMECHUstring
    \mark \oddTitleHeaderYISMECHUMarkup \positionA
    \bandmYISMECHUa
    \bandmYISMECHUb
    \bar "|."

%    \time  4/4
%    \tempo \tempoEILEHstring
%    \mark \oddTitleHeaderEILEHMarkup \positionA
%    \bandmEILEHa
%    \bandmEILEHb
%    \bar "|."

% v'haeir eineinu
% od yishama
% hava nagilah
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronome = \context Voice = "metronome" {
    \time  4/4
    \preintro
%    \tempo 4 = 120
%    \bandmDAVIDMELECHa
%    \bandmDAVIDMELECHa

%    \time 4/4
    \tempo 4 = 104
    \bandmHALLELUsectiona
    \bandmHALLELUsectionb

% lo yisa goy

    \time 2/4
    \tempo 4 = 120
    \bandmMAYIMa
    \bandmMAYIMa

    \time  4/4
    \tempo 4 = 120
    \bandmAMYISROCKa
    \bandmAMYISROCKb
    \bandmAMYISROCKa
    \bandmAMYISROCKb

    \time  4/4
    \tempo 4 = 120
    \bandmORZARUAa

    \time  4/4
    \tempo 4 = 120
    \bandmYISMECHUa
    \bandmYISMECHUb
    \bandmYISMECHUa
    \bandmYISMECHUb

%    \time  4/4
%    \tempo 4 = 120
%    \bandmEILEHa
%    \bandmEILEHb
%    \bandmEILEHa
%    \bandmEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textlDAVIDMELECH = \lyricmode {
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam. __
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam.
    Da- vid me- lech Yis- ra- el chai chai v'- ka- yam.
}
textlDAVIDMELECHb = \lyricmode {
}

textlHALLELU = \lyricmode {
    Ha- le- lu, ha- le- lu, ha- le- lu, __
    Ha- le- lu, ha- le- lu, ha- le- lu. __ Ha- le- lu. __
    Kol ha- n'sha- mah t'- ha- leil Yah. __
    Ha- le- lu, ha- le- lu- yah.
    Kol ha- n'sha- mah t'- ha- leil Yah. __
    Ha- le- lu, ha- le- lu- yah.  Ha- le-
}
textlHALLELUb = \lyricmode {
}
textlHALLELUc = \lyricmode {
}

textlAMYISROCK = \lyricmode {
    Am Yis- ra- el chai, am Yis- ra- el chai, am Yis- ra- el __ chai!
    Am Yis- ra- el chai, am Yis- ra- el chai, am Yis- ra- el __ chai! am Yis- ra- el __ chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu, od a- vi- nu, od a- vi- nu chai!
    Od a- vi- nu chai!
}
textlAMYISROCKb = \lyricmode {
}

textlMAYIM = \lyricmode {
    U'shav- tem ma- yim b'- sa- son __ mi- may'- nei ha- y'- shu- ah.
    U'shav- tem ma- yim b'- sa- son __ mi- may'- nei ha- y'- shu- ah.
    Ma- yim, ma- yim, ma- yim, ma- yim, hoi, ma- yim b'- sa- son!
    Ma- yim, ma- yim, ma- yim, ma- yim, hoi, ma- yim b'- sa- son!
    Hey! Hey! Hey! Hey!
    Ma- yim, ma- yim, ma- yim, ma- yim, ma- yim, ma- yim b'- sa- son!
    Ma- yim, ma- yim, ma- yim, ma- yim, ma- yim, ma- yim b'- sa- son!
}
textlMAYIMb = \lyricmode {
}

textlYISMECHU = \lyricmode {
    Yis- me- chu ha- sha- ma- yim,
    yis- me- chu ha- sha- ma- yim,
    yis- me- chu ha- sha- ma- yim, __
    ve ta- geil __ ha- a- retz. "(a-)" retz.

    Yir- am ha- yam,
    yir- am ha- yam,
    yir- am ha- yam __ u- me- lo- o.  lo- o.
}
textlYISMECHUb = \lyricmode {
}

textlORZARUA = \lyricmode {
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__ ul'- yish- re lev sim- cha.__
    Or za- ru- a la- tsa- dik__ ul'- yish- re lev sim- cha,__ ul'- yish- re lev sim- cha.__
    La la la la la la la la la, la la la la la la la la la.
}
textlORZARUAb = \lyricmode {
}

textlEILEH = \lyricmode {
    Ei- leh cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.

    Ei- leh cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
    Ei- leh cham- dah, cham- dah li- bi chu- sah na v'- al na tit- a- leim.
}
textlEILEHb = \lyricmode {
}

textl = {
%    \textlDAVIDMELECH
    \textlHALLELU

% lo yisa goy

    \textlMAYIM
    \textlAMYISROCK
    \textlORZARUA
    \textlYISMECHU

%    \textlEILEH

% v'haeir eineinu
% od yishama
% hava nagilah
}
textlb = {
%    \textlDAVIDMELECHb
    \textlHALLELU

% lo yisa goy

    \textlMAYIMb
    \textlAMYISROCKb
    \textlORZARUAb
    \textlYISMECHUb

%    \textlEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyDAVIDMELECHa = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |

    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

melodyHALLELUsectiona = {
    s2. c'8 bes8 |
    \repeat volta 2 {
        c'4 c'8 bes8 c'4 c'8 bes8 |
        d'2 ~ d'8 r8 c'8 bes8 |
        c'4 g'8 f'8 ees'8 ( d'8 ) c'8 bes8 |
    }
    \alternative {
        { c'2 ~ c'8 r8 c'8 bes8 }
        { c'2 r8 g'8 g'8 g'8 }
    }
}

melodyHALLELUsectionb = {
    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 f'8 f'8 |
    f'4. f'8 f'4 f'8 ( g'8 ) |
    g'2 r8 g'8 g'8 g'8 |

    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 ees'8 d'8 |
    ees'4. f'8 d'4 bes4 |
    c'2 ~ c'8 r8 c'8 bes8 |
}

melodyAMYISROCKa = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

melodyAMYISROCKb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

melodyMAYIMa = {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

melodyYISMECHUa = {
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

melodyYISMECHUb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
}

melodyORZARUAa = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

melodyEILEHa = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

melodyEILEHb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

melody = {
%    \time 4/4
%    \key c \major
%    \melodyDAVIDMELECHa

    \time 4/4
    \key ees \major
    \melodyHALLELUsectiona
    \melodyHALLELUsectionb

% lo yisa goy

    \time 2/4
    \key f \major
    \melodyMAYIMa

    \time 4/4
    \key c \major
    \melodyAMYISROCKa
    \melodyAMYISROCKb

    \time 4/4
    \key g \major
    \melodyORZARUAa

    \time 4/4
    \key f \major
    \melodyYISMECHUa
    \melodyYISMECHUb

%    \time 4/4
%    \key f \major
%    \melodyEILEHa
%    \melodyEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

melodymidi = {
    \time 4/4
    \preintro
%    \melodyDAVIDMELECHa
%    \melodyDAVIDMELECHa

%    \time 4/4
    \key ees \major
    \melodyHALLELUsectiona
    \melodyHALLELUsectionb

% lo yisa goy

    \time 2/4
    \melodyMAYIMa
    \melodyMAYIMa

    \time 4/4
    \melodyAMYISROCKa
    \melodyAMYISROCKb
    \melodyAMYISROCKa
    \melodyAMYISROCKb

    \time 4/4
    \melodyORZARUAa

    \time 4/4
    \melodyYISMECHUa
    \melodyYISMECHUb
    \melodyYISMECHUa
    \melodyYISMECHUb

%    \time 4/4
%    \melodyEILEHa
%    \melodyEILEHb
%    \melodyEILEHa
%    \melodyEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%--------------------------------------------------

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyDAVIDMELECHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

harmonyHALLELUsectiona = {
    s2. s4 |
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 }
        { s2 s2 }
    }
}

harmonyHALLELUsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

harmonyAMYISROCKa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

harmonyAMYISROCKb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

harmonyMAYIMa = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

harmonyYISMECHUa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

harmonyYISMECHUb = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

harmonyORZARUAa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

harmonyEILEHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

harmonyEILEHb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

harmony = {
%    \time  4/4
%    \harmonyDAVIDMELECHa

    \time 4/4
    \key ees \major
    \harmonyHALLELUsectiona
    \harmonyHALLELUsectionb

% lo yisa goy

    \time 2/4
    \harmonyMAYIMa

    \time  4/4
    \harmonyAMYISROCKa
    \harmonyAMYISROCKb

    \time  4/4
    \harmonyORZARUAa

    \time  4/4
    \harmonyYISMECHUa
    \harmonyYISMECHUb

%    \time  4/4
%    \harmonyEILEHa
%    \harmonyEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

harmonymidi = {
    \time 4/4
    \preintro
%    \harmonyDAVIDMELECHa
%    \harmonyDAVIDMELECHa

%    \time 4/4
    \key ees \major
    \harmonyHALLELUsectiona
    \harmonyHALLELUsectionb

% lo yisa goy

    \time 2/4
    \harmonyMAYIMa
    \harmonyMAYIMa

    \time  4/4
    \harmonyAMYISROCKa
    \harmonyAMYISROCKb
    \harmonyAMYISROCKa
    \harmonyAMYISROCKb

    \time 4/4
    \harmonyORZARUAa

    \time 4/4
    \harmonyYISMECHUa
    \harmonyYISMECHUb
    \harmonyYISMECHUa
    \harmonyYISMECHUb

%    \time 4/4
%    \harmonyEILEHa
%    \harmonyEILEHb
%    \harmonyEILEHa
%    \harmonyEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterDAVIDMELECHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

counterHALLELUsectiona = {
    s2. s4 |
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 }
        { s2 s2 }
    }
}

counterHALLELUsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

counterAMYISROCKa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

counterAMYISROCKb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

counterMAYIMa = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

counterYISMECHUa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

counterYISMECHUb = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

counterORZARUAa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

counterEILEHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

counterEILEHb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

counter = {
%    \time  4/4
%    \counterDAVIDMELECHa

    \time 4/4
    \key ees \major
    \counterHALLELUsectiona
    \counterHALLELUsectionb

% lo yisa goy

    \time 2/4
    \counterMAYIMa

    \time  4/4
    \counterAMYISROCKa
    \counterAMYISROCKb

    \time  4/4
    \counterORZARUAa

    \time  4/4
    \counterYISMECHUa
    \counterYISMECHUb

%    \time  4/4
%    \counterEILEHa
%    \counterEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

countermidi = {
    \time 4/4
    \preintro
%    \counterDAVIDMELECHa
%    \counterDAVIDMELECHa

%    \time 4/4
    \counterHALLELUsectiona
    \counterHALLELUsectionb

% lo yisa goy

    \time 2/4
    \counterMAYIMa
    \counterMAYIMa

    \time  4/4
    \counterAMYISROCKa
    \counterAMYISROCKb
    \counterAMYISROCKa
    \counterAMYISROCKb

    \time 4/4
    \counterORZARUAa

    \time 4/4
    \counterYISMECHUa
    \counterYISMECHUb
    \counterYISMECHUa
    \counterYISMECHUb

%    \time 4/4
%    \counterEILEHa
%    \counterEILEHb
%    \counterEILEHa
%    \counterEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
%    \key c \major
%    \time 4/4
%    \melodyDAVIDMELECHa

    \time 4/4
    \key ees \major
    \melodyHALLELUsectiona
    \melodyHALLELUsectionb

% lo yisa goy

    \key f \major
    \time 2/4
    \melodyMAYIMa

    \key c \major
    \time 4/4
    \melodyAMYISROCKa
    \melodyAMYISROCKb

    \key g \major
    \time 4/4
    \melodyORZARUAa

    \key f \major
    \time 4/4
    \melodyYISMECHUa
    \melodyYISMECHUb

%    \key f \major
%    \time 4/4
%    \melodyEILEHa
%    \melodyEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetDAVIDMELECHa = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |

    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

clarinetHALLELUsectiona = {
    s2. c'8 bes8 |
    \repeat volta 2 {
        c'4 c'8 bes8 c'4 c'8 bes8 |
        d'2 ~ d'8 r8 c'8 bes8 |
        c'4 g'8 f'8 ees'8 ( d'8 ) c'8 bes8 |
    }
    \alternative {
        { c'2 ~ c'8 r8 c'8 bes8 }
        { c'2 r8 g'8 g'8 g'8 }
    }
}

clarinetHALLELUsectionb = {
    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 f'8 f'8 |
    f'4. f'8 f'4 f'8 ( g'8 ) |
    g'2 r8 g'8 g'8 g'8 |

    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 ees'8 d'8 |
    ees'4. f'8 d'4 bes4 |
    c'2 ~ c'8 r8 c'8 bes8 |
}

clarinetAMYISROCKa = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

clarinetAMYISROCKb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

clarinetMAYIMa = \transpose c c, {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

clarinetYISMECHUa = {
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

clarinetYISMECHUb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
}

clarinetORZARUAa = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

clarinetEILEHa = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

clarinetEILEHb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
%    \key c \major
%    \time 4/4
%    \clarinetDAVIDMELECHa

    \time 4/4
    \key ees \major
    \clarinetHALLELUsectiona
    \clarinetHALLELUsectionb

% lo yisa goy

    \key f \major
    \time 2/4
    \clarinetMAYIMa

    \key c \major
    \time 4/4
    \clarinetAMYISROCKa
    \clarinetAMYISROCKb

    \key g \major
    \time 4/4
    \clarinetORZARUAa

    \key f \major
    \time 4/4
    \clarinetYISMECHUa
    \clarinetYISMECHUb

%    \key f \major
%    \time 4/4
%    \clarinetEILEHa
%    \clarinetEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

clarinetnotesmidi = \transpose c d' {
    \time 4/4
    \preintro
%    \clarinetDAVIDMELECHa
%    \clarinetDAVIDMELECHa

%    \time 4/4
    \clarinetHALLELUsectiona
    \clarinetHALLELUsectionb

% lo yisa goy

    \time 2/4
    \clarinetMAYIMa
    \clarinetMAYIMa

    \time 4/4
    \clarinetAMYISROCKa
    \clarinetAMYISROCKb
    \clarinetAMYISROCKa
    \clarinetAMYISROCKb

    \time 4/4
    \clarinetORZARUAa

    \time 4/4
    \clarinetYISMECHUa
    \clarinetYISMECHUb
    \clarinetYISMECHUa
    \clarinetYISMECHUb

%    \time 4/4
%    \clarinetEILEHa
%    \clarinetEILEHb
%    \clarinetEILEHa
%    \clarinetEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetDAVIDMELECHa = {
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |

    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 e'4 |
    c'8 c'8 d'8 d'8 c'8 c'8 d'4 |
    c'4 f'4 e'8 d'8 c'4 |
}

trumpetHALLELUsectiona = {
    s2. c'8 bes8 |
    \repeat volta 2 {
        c'4 c'8 bes8 c'4 c'8 bes8 |
        d'2 ~ d'8 r8 c'8 bes8 |
        c'4 g'8 f'8 ees'8 ( d'8 ) c'8 bes8 |
    }
    \alternative {
        { c'2 ~ c'8 r8 c'8 bes8 }
        { c'2 r8 g'8 g'8 g'8 }
    }
}

trumpetHALLELUsectionb = {
    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 f'8 f'8 |
    f'4. f'8 f'4 f'8 ( g'8 ) |
    g'2 r8 g'8 g'8 g'8 |

    g'2 r8 g'8 g'8 g'8 |
    g'8 ( f'4. ~ f'8 ) r8 ees'8 d'8 |
    ees'4. f'8 d'4 bes4 |
    c'2 ~ c'8 r8 c'8 bes8 |
}

trumpetAMYISROCKa = {
    \repeat volta 2 {
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 g'4 |
        c'8 c'4 d'8 e'4 ( f'4 ) |
        d'2. r4 |

        d'8 d'4 e'8 f'4 a'4 |
        d'8 d'4 e'8 f'4 a'4 |
    }
    \alternative {
        { d'8 d'4 e'8 f'4 ( g'4 ) | e'2. r4 | }
        { g'8 g'4 g'8 a'4 ( b'4 ) | c''2. r4 | }
    }
}

trumpetAMYISROCKb = {
    \repeat volta 2 {
        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        b'8 b'8 b'8 b'8 b'8 b'8 b'8 b'8 |
        b'8 a'8 a'8 g'8 g'2 |

        c''8 c''8 c''8 c''8 c''8 c''8 c''8 c''8 |
        c''8 b'8 b'8 a'8 a'2 |
        r8 a'4 a'8 b'4 g'4 |
        c''1 |
    }
}

trumpetMAYIMa = {
    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    f'8 a'8 c''8 bes'8 |
    a'8 g'8 a'4 |

    \grace { \once \override Flag.stroke-style = #"grace" d'8 }
        d'8 e'8 f'16 ( e'16 ) d'8 |
    f'8 g'8 a'8 ( g'8 ) |
    d''8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 c''8 d''4 |

    d''8 d''8 d''8 d''8 |
    d''8 d''8 d''8 d''8 |
    r8 d''8 c''8 c''8 |
    a'8 g'8 a'4 |

    c''4-> c''4-> |
    c''4-> c''4-> |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    f'8 g'8 a'16 ( bes'16 ) a'8 |
    g'8 f'8 c''4 |

    c''8 c''8 bes'16 ( a'16 ) g'8 |
    c''8 c''8 bes'16 ( a'16 ) g'8 |
    a'8 a'8 f'16 ( e'16 ) d'8 |
    f'8 e'8 d'4 |
}

trumpetYISMECHUa = {
    \repeat volta 2 {
        d'8 [ d'8 ] a8 [ d'8 ] f'4 e'4 |
        d'2. r4 |
        f'8 [ f'8 ] d'8 [ f'8 ] a'4 g'4 |
        f'2. r4 |

        a'8 [ a'8 ] f'8 [ a'8 ] c''4 bes'8 ( a'8 ) |
        g'2 ( d''4. ) a'8 |
        a'8 [ ( g'8 ) ] g'8 [ ( f'8 ) ] f'8 [ ( e'8 ) ] e'8 [ ( d'8 ) ] |
    }
    \alternative {
        { a'2. r4 | }
        { e'8 ( f'8 ) d'2 r4 | }
    }
}

trumpetYISMECHUb = {
    \repeat volta 2 {
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'4 r4 |
        f'8 [ ( g'8 ) ] g'8 [ f'8 ] f'8 [ ( e'8 ) ] e'8 [ d'8 ] |
    }
    \alternative {
        { e'8 ( g'8 ) f'2. | }
        { e'8 ( f'8 ) d'2. | }
    }
}

trumpetORZARUAa = {
    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'2 ) |

    r8 e'4 e'8 g'8. a'16 ~ a'4 |
    r8 e'4 e'8 g'8. ( a'16 ~ a'4 ) |
    r8 e'8 e'8 e'8 g'4 a'4 |
    g'16 ( fis'16 e'8 ~ e'4 ~ e'8 ) r8 g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    b'2. g'8 a'8 |

    b'8 b'8 b'8 b'8 a'8 a'8 a'8 a'8 |
    g'4 g'4 fis'2 |
    r8 g'8 g'8 g'8 fis'4 g'8 ( a'8 ) |
    g'16 ( fis'16 e'8 ~ e'2 ) g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 a'2 |
    b'2. g'8 a'8 |

    b'2 a'2 |
    g'2 fis'2 |
    g'2 < fis' a' >2 |
    < e' g' >1 |
    R1 |
}

trumpetEILEHa = {
    d'4 d'4 d'8 d'8 a8 ( d'8 ) |
    f'2. r4 |
    f'8 f'8 f'8 f'8 f'8 f'8 d'8 f'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4 g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

trumpetEILEHb = {
    d''4 d''4 d''8 d''8 c''8 ( bes'8 ) |
    a'2. r4 |
    d''8 d''8 d''8 d''8 d''8 d''8 c''8 bes'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 g'8 |
    a'2. r4 |

    a'4 f'4 g'4 d'4 |
    r8 a'4-> g'8 f'8 ( e'8 ) d'4 |
    f'8 f'8 f'8 f'8 g'8 g'8 f'8 e'8 |
    d'2. r4 |
}

trumpetnotes = \transpose c d {
%    \key c \major
%    \time 4/4
%    \trumpetDAVIDMELECHa

    \time 4/4
    \key ees \major
    \trumpetHALLELUsectiona
    \trumpetHALLELUsectionb

% lo yisa goy

    \key f \major
    \time 2/4
    \trumpetMAYIMa

    \key c \major
    \time 4/4
    \trumpetAMYISROCKa
    \trumpetAMYISROCKb

    \key g \major
    \time 4/4
    \trumpetORZARUAa

    \key f \major
    \time 4/4
    \trumpetYISMECHUa
    \trumpetYISMECHUb

%    \key f \major
%    \time 4/4
%    \trumpetEILEHa
%    \trumpetEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

trumpetnotesmidi = \transpose c d {
    \time 4/4
    \preintro
%    \trumpetDAVIDMELECHa
%    \trumpetDAVIDMELECHa

%    \time 4/4
    \trumpetHALLELUsectiona
    \trumpetHALLELUsectionb

% lo yisa goy

    \time 2/4
    \trumpetMAYIMa
    \trumpetMAYIMa

    \time 4/4
    \trumpetAMYISROCKa
    \trumpetAMYISROCKb
    \trumpetAMYISROCKa
    \trumpetAMYISROCKb

    \time 4/4
    \trumpetORZARUAa

    \time 4/4
    \trumpetYISMECHUa
    \trumpetYISMECHUb
    \trumpetYISMECHUa
    \trumpetYISMECHUb

%    \time 4/4
%    \trumpetEILEHa
%    \trumpetEILEHb
%    \trumpetEILEHa
%    \trumpetEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneDAVIDMELECHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

tromboneHALLELUsectiona = {
    s2. s4 |
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 }
        { s2 s2 }
    }
}

tromboneHALLELUsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

tromboneAMYISROCKa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

tromboneAMYISROCKb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

tromboneMAYIMa = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

tromboneYISMECHUa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

tromboneYISMECHUb = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

tromboneORZARUAa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

tromboneEILEHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

tromboneEILEHb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

trombonenotes = \transpose c c, {
%    \key c \major
%    \time 4/4
%    \tromboneDAVIDMELECHa

    \time 4/4
    \key ees \major
    \tromboneHALLELUsectiona
    \tromboneHALLELUsectionb

% lo yisa goy

    \key f \major
    \time 2/4
    \tromboneMAYIMa

    \key c \major
    \time 4/4
    \tromboneAMYISROCKa
    \tromboneAMYISROCKb

    \key g \major
    \time 4/4
    \tromboneORZARUAa

    \key f \major
    \time 4/4
    \tromboneYISMECHUa
    \tromboneYISMECHUb

%    \key f \major
%    \time 4/4
%    \tromboneEILEHa
%    \tromboneEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

trombonenotesmidi = \transpose c c, {
    \time 4/4
    \preintro
%    \tromboneDAVIDMELECHa
%    \tromboneDAVIDMELECHa

%    \time 4/4
    \tromboneHALLELUsectiona
    \tromboneHALLELUsectionb

% lo yisa goy

    \time 2/4
    \tromboneMAYIMa
    \tromboneMAYIMa

    \time 4/4
    \tromboneAMYISROCKa
    \tromboneAMYISROCKb
    \tromboneAMYISROCKa
    \tromboneAMYISROCKb

    \time 4/4
    \tromboneORZARUAa

    \time 4/4
    \tromboneYISMECHUa
    \tromboneYISMECHUb
    \tromboneYISMECHUa
    \tromboneYISMECHUb

%    \time 4/4
%    \tromboneEILEHa
%    \tromboneEILEHb
%    \tromboneEILEHa
%    \tromboneEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarDAVIDMELECHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarHALLELUsectiona = {
    s2. s4 |
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 }
        { s2 s2 }
    }
}

guitarHALLELUsectionb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarAMYISROCKa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }
}

guitarAMYISROCKb = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

guitarMAYIMa = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

guitarYISMECHUa = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarYISMECHUb = {
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

guitarORZARUAa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

guitarEILEHa = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarEILEHb = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarnotes = {
%    \time  4/4
%    \key c \major
%    \guitarDAVIDMELECHa

    \time 4/4
    \key ees \major
    \guitarHALLELUsectiona
    \guitarHALLELUsectionb

% lo yisa goy

    \time 2/4
    \key f \major
    \guitarMAYIMa

    \time  4/4
    \key c \major
    \guitarAMYISROCKa
    \guitarAMYISROCKb

    \time  4/4
    \key g \major
    \guitarORZARUAa

    \time  4/4
    \key f \major
    \guitarYISMECHUa
    \guitarYISMECHUb

%    \time  4/4
%    \key f \major
%    \guitarEILEHa
%    \guitarEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

guitarnotesmidi = {
    \time  4/4
    \preintro
%    \guitarDAVIDMELECHa
%    \guitarDAVIDMELECHa

%    \time 4/4
    \guitarHALLELUsectiona
    \guitarHALLELUsectionb

% lo yisa goy

    \time 2/4
    \guitarMAYIMa
    \guitarMAYIMa

    \time  4/4
    \guitarAMYISROCKa
    \guitarAMYISROCKb
    \guitarAMYISROCKa
    \guitarAMYISROCKb

    \time  4/4
    \guitarORZARUAa

    \time  4/4
    \guitarYISMECHUa
    \guitarYISMECHUb
    \guitarYISMECHUa
    \guitarYISMECHUb

%    \time  4/4
%    \guitarEILEHa
%    \guitarEILEHb
%    \guitarEILEHa
%    \guitarEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassDAVIDMELECHa = {
    c4 g,4 c4 g,4 |
    c4 g,4 c4 g,4 |
    c4 g,4 c4 f,4 |
    d4 g,4 d4 g,4 |

    c4 b,4 c4 b,4 |
    c4 f,4 g,4 c4 |
    c4 b,4 c4 b,4 |
    c4 f,4 g,4 b,4 |
}

bassHALLELUsectiona = {
    s2. s4 |
    \repeat volta 2 {
        c4 g,4 c4 g,4 |
        bes,4 f,4 bes,4 f,4 |
        c4 g,4 d4 g,4 |
    }
    \alternative {
        { c4 g,4 c4 g,4 }
        { c4 g,4 c4 r4 }
    }
}

bassHALLELUsectionb = {
    c4 g4 c4 g,4 |
    bes,4 f4 bes,4 f,4 |
    bes,4 f4 bes,4 b4 |
    c4 g4 c4 g,4 |

    c4 g4 c4 g,4 |
    bes,4 f4 bes,4 f,4 |
    aes,4 ees4 g,4 d4 |
    c4 g,4 c4 r4 |
}

bassAMYISROCKa = {
    \repeat volta 2 {
        c4 d4 e4 g4 | % c
        c4 d4 e4 g4 | % c
        c4 d4 e4 f4 | % c
        d2. r4 | % g

        d4 e4 f4 a4 | % g
        d4 e4 f4 a4 | % g
    }
    \alternative {
        {
            d4 e4 f4 g4 | % g
            e2. r4 | % c
        }
        {
            g4 g4 a4 b4 | % g
            c'2. r4 | % c
        }
    }
}

bassAMYISROCKb = {
    \repeat volta 2 {
        c4 c4 c4 c4 | %c2 c2:aug
        c4 a,4 f,2 | % f1
        b,4 b,4 b,4 b,4 | % g1:7
        b,4 a,4 g,2 | % g2:7 c2

        c4 c4 c4 c4 | %c2 c2:aug
        c4 a,4 f,2 | % f1
        a,4 b,4 c4 g,4 | % f2 g2:7
        c1 | % c1
    }
}
bassMAYIMa = {
    \grace { s8 } % \grace { s8 }
    d4 a,4 | % d2:min |
    d4 a,4 | % d2:min |
    c4 f,4 | % f2 |
    a,4 cis4 | % a2 |

    \grace { s8 } % \grace { s8 }
    d4 a,4 | % d2:min |
    d4 a,4 | % d2:min |
    d4 g,4 | % g2:min |
    a,4 d4 | % a4:min d4:min |

    bes,4 bes,4 | % bes2 |
    bes,4 bes,4 | % bes2 |
    bes,4 f,4 | % bes4 f4 |
    f,4 bes,4 | % f4 bes4 |

    bes,4 bes,4 | % bes2 |
    bes,4 bes,4 | % bes2 |
    bes,4 f,4 | % bes4 f4 |
    a,4 e4 | % a2:min |

    c4 c4 | % c2 |
    c4 c4 | % c2 |

    c4 g,4 | % c2 |
    c4 g,4 | % c2 |
    d4 a,4 | % d2:min |
    d4 cis4 | % d4:min c4 |

    c4 g,4 | % c2 |
    c4 g,4 | % c2 |
    d4 a,4 | % d2:min |
    a,4 d4 | % a4:7 d4:min |
}

bassYISMECHUa = {
    \repeat volta 2 {
        a,4 d4 a,4 cis4 | % d2:min a2:7
        a,4 d4 a,4 d4 | % d1:min
        a,4 d4 g,4 c4 | % d2:min c2:7
        f,4 c4 f,4 r4 | % f2 s2

        f,4 c4 d4 a,4 | % f2 d2:7
        g,4 bes,4 b,4 c4 | % g1:min
        cis4 a,4 e4 a,4 | % a1:7
    }
    \alternative {
        { cis4 a,4 a,4 r4 | } % a1:7
        { d4 a,4 d4 r4 | } % d1:min
    }
}

bassYISMECHUb = {
    \repeat volta 2 {
        bes,4 c4 d4 r4 | % bes4 c4 d4:min s4
        bes,4 c4 d4 r4 | % bes4 c4 d4:min s4
        bes,4 c4 d4 g,4 | % g1:min7
    }
    \alternative {
        {
            a,4 cis4 d4 a,4 | % a2:7 d2:min |
        }
        {
            a,4 cis4 d4 r4 | % a2:7 d2:min |
        }
    }
}

bassORZARUAa = {
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 d4 | % e2:min c4 d4 |
    e2 c4 a,4 | % e2:min c4 a4 |

    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e,2 g,4 a,4 | % e2:min c4 a4 |
    e2 r2 | % e1:min |

    g,4 g,4 d4 d4 | % g2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    e,2 r2 | % e1:min |

    g,4 g,4 d4 d4 | % g2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    c4 c4 d4 d4 | % c2 d2 |
    e2 r2 | % e1:min |

    g2 fis2 | % g2 d2 |
    e2 d2  | % c2 d2 |
    e2 fis2 | % c2 d2 |
    e4 b,4 e4 r4 | % e1:min |

    g2 fis2 | % g2 d2 |
    e2 d2  | % c2 d2 |
    e2 fis2 | % c2 d2 |
    e4 b,4 e4 r4 | % e2:min c4 a4 |
    e,2 r2 | % e1:min |
}

bassEILEHa = {
    d4 a,4 d4 a4 | % d1:min
    d2. r4 | % d1:min
    d4 a,4 d4 a4 | % d1:min
    d2. r4 | % d1:min

    d4 a,4 g,4 d4 | % d2:min g2:min
    cis4 a,4 d4 a,4 | % a2:7 d2:min
    bes,4 f,4 bes,4 g,4 | % bes2 g2:min
    d2. r4 | % a2:sus4 a2:7

    d4 a,4 g,4 d4 | % d2:min g2:min
    a,4 cis4 d4 a,4 | % a2:7 d2:min
    bes,4 d4 cis4 a,4 | % bes2 a2:7
    d4 a,4 d4 r4 | % d1:min
}

bassEILEHb = {
    d4 a,4 d4 a4 | % d1:min
    d2. r4 | % d1:min
    d4 a,4 d4 a4 | % d1:min
    d2. r4 | % d1:min

    d4 a,4 g,4 d4 | % d2:min g2:min
    cis4 a,4 d4 a,4 | % a2:7 d2:min
    bes,4 f,4 bes,4 g,4 | % bes2 g2:min
    d2. r4 | % a2:sus4 a2:7

    d4 a,4 g,4 d4 | % d2:min g2:min
    a,4 cis4 d4 a,4 | % a2:7 d2:min
    bes,4 d4 cis4 a,4 | % bes2 a2:7
    d4 a,4 d4 r4 | % d1:min
}

bassline = {
%    \time  4/4
%    \key c \major
%    \bassDAVIDMELECHa

    \time 4/4
    \key ees \major
    \bassHALLELUsectiona
    \bassHALLELUsectionb

% lo yisa goy

    \time 2/4
    \key f \major
    \bassMAYIMa

    \time  4/4
    \key c \major
    \bassAMYISROCKa
    \bassAMYISROCKb

    \time  4/4
    \key g \major
    \bassORZARUAa

    \time  4/4
    \key f \major
    \bassYISMECHUa
    \bassYISMECHUb

%    \time  4/4
%    \key f \major
%    \bassEILEHa
%    \bassEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

basslinemidi = {
    \time  4/4
    \preintro
%    \bassDAVIDMELECHa
%    \bassDAVIDMELECHa

%    \time 4/4
    \key ees \major
    \bassHALLELUsectiona
    \bassHALLELUsectionb

% lo yisa goy

    \time 2/4
    \bassMAYIMa
    \bassMAYIMa

    \time  4/4
    \bassAMYISROCKa
    \bassAMYISROCKb
    \bassAMYISROCKa
    \bassAMYISROCKb

    \time  4/4
    \bassORZARUAa

    \time  4/4
    \bassYISMECHUa
    \bassYISMECHUb
    \bassYISMECHUa
    \bassYISMECHUb

%    \time  4/4
%    \bassEILEHa
%    \bassEILEHb
%    \bassEILEHa
%    \bassEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersDAVIDMELECHa = \chordmode {
    c1 | c1 | c2 f2 | g1 |
    c4 g4 c4 g4 | c4 f4 g4:7 c4 | c4 g4 c4 g4 c4 f4 g2:7 |
}

chordlettersHALLELUsectiona = \chordmode {
    s2. s4 |
    \repeat volta 2 { c1:min | bes1 | c2:min g2:min | }
    \alternative { { c1:min } { c1:min } }
}

chordlettersHALLELUsectionb = \chordmode {
    c1:min | bes1 | bes1 | c1:min |
    c1:min | bes1 | aes2 g2:min | c1:min |
}

chordlettersAMYISROCKa = \chordmode {
    \repeat volta 2 {
        c1 |
        c1 |
        c1 |
        g1 |
        g1 |
        g1 |
    }
    \alternative {
        { g1 | c1 | }
        { g1 | c1 | }
    }
}

chordlettersAMYISROCKb = \chordmode {
    \repeat volta 2 {
        c2 c2:aug |
        f1 |
        g1:7 |
        g2:7 c2 |

        c2 c2:aug |
        f1 |
        f2 g2:7 |
        c1 |
    }
}

chordlettersMAYIMa = \chordmode {
    \grace { s8 }
    d2:min |
    d2:min |
    f2 |
    a2 |

    \grace { s8 }
    d2:min |
    d2:min |
    g2:min |
    a4:min d4:min |

    bes2 |
    bes2 |
    bes4 f4 |
    f4 bes4 |

    bes2 |
    bes2 |
    bes4 f4 |
    a2:min |

    c2 |
    c2 |

    c2 |
    c2 |
    d2:min |
    d4:min c4 |

    c2 |
    c2 |
    d2:min |
    a4:7 d4:min |
}

chordlettersYISMECHUa = \chordmode {
    \repeat volta 2 {
        d2:min a2:7 |
        d1:min |
        d2:min c2:7 |
        f2 s2 |

        f2 d2:7 |
        g1:min |
        a1:7 |
    }
    \alternative {
        { a1:7 | }
        { d1:min | }
    }
}

chordlettersYISMECHUb = \chordmode {
    \repeat volta 2 {
        bes4 c4 d4:min s4 |
        bes4 c4 d4:min s4 |
        g1:min7 |
    }
    \alternative {
        { a2:7 d2:min | }
        { a2:7 d2:min | }
    }
}

chordlettersORZARUAa = \chordmode {
    e2:min c4 a4 |
    e2:min c4 a4 |
    e2:min c4 d4 |
    e2:min c4 a4 |

    e2:min c4 a4 |
    e2:min c4 a4 |
    e2:min c4 a4 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e1:min |

    g2 d2 |
    c2 d2 |
    c2 d2 |
    e2:min c4 a4 |
    e1:min |
}

chordlettersEILEHa = \chordmode {
    d1:min |
    d1:min |
    d1:min |
    d1:min |

    d2:min g2:min |
    a2:7 d2:min |
    bes2 g2:min |
    a2:sus4 a2:7 |

    d2:min g2:min |
    a2:7 d2:min |
    bes2 a2:7 |
    d1:min |
}

chordlettersEILEHb = \chordmode {
    d1:min |
    d1:min |
    d1:min |
    d1:min |

    d2:min g2:min |
    a2:7 d2:min |
    bes2 g2:min |
    a2:sus4 a2:7 |

    d2:min g2:min |
    a2:7 d2:min |
    bes2 a2:7 |
    d2:min s2 |
}

chordletters = \chordmode {
%    \time 4/4
%    \chordlettersDAVIDMELECHa

    \time 4/4
    \chordlettersHALLELUsectiona
    \chordlettersHALLELUsectionb

% lo yisa goy

    \time 2/4
    \chordlettersMAYIMa

    \time 4/4
    \chordlettersAMYISROCKa
    \chordlettersAMYISROCKb

    \time 4/4
    \chordlettersORZARUAa

    \time 4/4
    \chordlettersYISMECHUa
    \chordlettersYISMECHUb

%    \time 4/4
%    \chordlettersEILEHa
%    \chordlettersEILEHb

% v'haeir eineinu
% od yishama
% hava nagilah
}

scorechordletters = \chordmode {
    \chordletters
}

guitarchordletters = {
    \chordletters
}
clarinetchordletters = \transpose bes, c \scorechordletters
tenorsaxchordletters = \transpose bes, c \scorechordletters
trumpetchordletters = \transpose bes, c \scorechordletters
altosaxchordletters = \transpose ees c \scorechordletters
%guitarchordletters = \chordletters
flutechordletters = \scorechordletters
violinchordletters = \scorechordletters
trombonechordletters = \scorechordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoDAVIDMELECHrightuppernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoDAVIDMELECHrightlowernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoDAVIDMELECHleftuppernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoAMYISROCKrightuppernotes = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

pianoAMYISROCKrightlowernotes = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

pianoAMYISROCKleftuppernotes = {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

pianoMAYIMrightuppernotes = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianoMAYIMrightlowernotes = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianoMAYIMleftuppernotes = {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
}

pianoYISMECHUrightuppernotes = {
    \key f \major
    \time 4/4
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoYISMECHUrightlowernotes = {
    \key f \major
    \time 4/4
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoYISMECHUleftuppernotes = {
    \key f \major
    \time 4/4
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

pianoORZARUArightuppernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianoORZARUArightlowernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianoORZARUAleftuppernotes = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianoEILEHrightuppernotes = {
    \key f \major
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoEILEHrightlowernotes = {
    \key f \major
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianoEILEHleftuppernotes = {
    \key f \major
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

pianorightuppernotes = {
}

pianorightlowernotes = {
}

pianoleftuppernotes = {
}

pianorightnotesmidi = {
    \preintro
%    <<
%        { \pianorightuppernotes \pianorightuppernotes }
%        { \pianorightlowernotes \pianorightlowernotes }
%    >>
}

pianoleftnotesmidi = {
    \preintro
%    \pianoleftuppernotes
%    \pianoleftuppernotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


drumsDAVIDMELECHhigh = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumsDAVIDMELECHlow = \drummode {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumsAMYISROCKhigh = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

drumsAMYISROCKlow = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 |
    }
    \alternative {
        { s1 | s1 | }
        { s1 | s1 | }
    }

    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 | s1 |
    }
}

drumsMAYIMhigh = \drummode {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

drumsMAYIMlow = \drummode {
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    \grace { s8 }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 |
}

drumsYISMECHUhigh = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumsYISMECHUhighmidi = \drummode {
    \drumsYISMECHUhigh
    \drumsYISMECHUhigh
}

drumsYISMECHUlow = \drummode {
    \repeat volta 2 {
        s1 | s1 | s1 | s1 |
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
    \repeat volta 2 {
        s1 | s1 | s1 |
    }
    \alternative {
        { s1 | }
        { s1 | }
    }
}

drumsYISMECHUlowmidi = \drummode {
    \drumsYISMECHUlow
    \drumsYISMECHUlow
}

drumsORZARUAhigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumsORZARUAhighmidi = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumsORZARUAlow = \drummode {
    \time 4/4
    \stemDown
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumsEILEHhigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumsEILEHhighmidi = \drummode {
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumsEILEHlow = \drummode {
    \time 4/4
    \stemDown
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumsEILEHlowmidi = \drummode {
    \time 4/4
    \preintro
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \preintro
}

drumslow = \drummode {
    \stemDown
}

drumslowmidi = \drummode {
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
%    \key c \major
    \time 4/4
    \melody
}
flutenotesmidi = \transpose c c' { \melodymidi }

altosaxnotes = \transpose c a {
%    \key c \major
    \time 4/4
    \melody
}
altosaxnotesmidi = \transpose c a { \harmonymidi }

tenorsaxnotes = \transpose c d' {
%    \key c \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d' { \harmonymidi }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
%    \key c \major
    \time 4/4
    \melody
}
violinnotesmidi = { \melodymidi }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key c \major
    \time 4/4
    \clef bass
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

combinenotes = <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

altocombinenotes = \transpose c' a <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

tenorcombinenotes = \transpose c d <<
    { \melody } \\ { \transpose c' c { \harmony } }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% put the instrument Voices into staves for printing and for
% midi

combinestaff = \context Staff = "combinestaff" <<
    \clef violin
    \bandm
    \new Voice << \combinenotes >>
>>

altocombinestaff = \context Staff = "altocombinestaff" <<
    \clef violin
    \bandm
    \new Voice <<  \altocombinenotes >>
>>

tenorcombinestaff = \context Staff = "tenorcombinestaff" <<
    \clef violin
    \bandm
    \new Voice << \tenorcombinenotes >>
>>

tenorharmony = \transpose c' bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    c1 | c1 | c2 f2 | g1 |
}

previewnotes = {
    \key c \major
    \time 4/4
    \tempo \tempostring
    g'2 e'2 |
    g'8 g'8 g'8 g'8 e'2 |
    g'2 a'2 |
    g'4 f'4 e'4 ( d'4 ) |
}

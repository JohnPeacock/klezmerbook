\version "2.18.0"

bandmNVbody = {
    \time 2/4
    \markA \positionA
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 |
    \breakA \bar ".|:-||"

    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 |
    }
    \breakB

    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre
    }
    \alternative { { s2 | \breakCfor } { s2 | } }
    \breakC \bar "||"

    \markD \positionD
    s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 |
    \breakD \bar "||"

    \markE \positionE
    s2 | \breakEone s2 | \breakEtwo s2 | \breakEtre s2 | \breakEfor
    s2 | \breakEfiv s2 | \breakEsix s2 | \breakEsev s2 |
    \breakE \bar ".|:-||"

    \markF \positionF
    \repeat volta 2 {
        s2 | \breakFone s2 | \breakFtwo s2 | \breakFtre
    }
    \alternative { { s2 | \breakFfor } { s2 | } }
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 100
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 2/4
    \key c \major
    d'8 a16 d'16 ~ d'16 a16 d'16 a16 |
    c'16 a16 c'8 ~ c'16 a16 c'16 a16 |
    c'16 b16 a16 c'16 b16 a16 c'16 b16 |
    a16 f'8 f'16 ~ f'16 d'16 f'16 a'16 |

    d'16 a16 d'16 a16 e'16 a16 d'16 a16 |
    c'16 a8 c'16 ~ c'16 a16 c'16 a16 |
    c'16 b16 a16 c'16 b16 a16 c'16 b16 |
    a16 f'8 f'16 ~ f'16 d'16 f'16 a'16 |

    \repeat volta 2 {
        gis'16 a'16 b'16 a'16 ~ a'16 gis'16 f'16 gis'16 |
        f'16 e'16 d'16 a'16 ~ a'16 d'16 a'8 |
        gis'8 a'16 b'16 a'16 gis'16 f'16 gis'16 |
        f'16 e'16 d'16 d''16 ~ d''16 a'16 f'8 |
    }

    \repeat volta 2 {
        a8 d'16 cis'16 ~ cis'16 d'16 cis'16 d'16 |
        e'16 f'8 gis'16 ~ gis'16 a'16 gis'16 a'16 |
        b'8 a'16 b'16 a'16 gis'16 f'16 gis'16 |
    }
    \alternative {
        { f'16 e'16 d'16 a'16 ~ a'16 d'16 a8 | }
        { f'16 e'16 d'16 d''16 ~ d''16 a'16 d''8 | }
    }

    d''8 a'16 d''16 ~ d''16 f''16 d''16 f''16 |
    d''16 a'8 d''16 ~ d''4 |
    d''16 a'16 f''16 e''16 d''16 a'16 f''16 e''16 |
    d''16 a'16 f''16 e''16 d''8 a'16 d''16 |

    d''16 a'16 d''16 a'16 c''16 a'16 c''16 a'16 |
    b'16 gis'16 b'16 gis'16 a'16 d'16 f'16 a'16 |
    d''16 a'16 d''16 a'16 c''16 a'16 c''16 a'16 |
    b'16 gis'16 b'16 gis'16 a'16 d'16 f'16 a'16 |

    d''16 a'8 c''16 ~ c''16 a'16 c''16 a'16 |
    b'16 gis'8 a'16 ~ a'16 f'16 a'16 f'16 |
    gis'16 e'8 f'16 ~ f'16 d'16 f'16 d'16 |
    e'16 a16 e'16 a'16 d'16 f'16 a'16 d''16 |

    \repeat volta 2 {
        a8 d'16 cis'16 ~ cis'16 d'16 cis'16 d'16 |
        e'16 f'8 gis'16 ~ gis'16 a'16 gis'16 a'16 |
        b'8 a'16 b'16 a'16 gis'16 f'16 gis'16 |
    }
    \alternative {
        { f'16 e'16 d'16 a'16 ~ a'16 d'16 a8 | }
        { f'16 e'16 d'16 d''16 ~ d''16 a'16 d''8 | }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
%    \time 2/4
%    \key c \major
%    s2 | s2 | s2 | s2 |
%    s2 | s2 | s2 | s2 |
%
%    \repeat volta 2 {
%        s2 | s2 | s2 | s2 |
%    }
%
%    \repeat volta 2 {
%        s2 | s2 | s2 |
%    }
%    \alternative { { s2 | } { s2 | } }
%
%    r16 b''16 a''16 ges''16 f''16 e''16 d''16 e''16 |
%    f''16 ges''16 f''16 e''16 d''16 c''16 b'16 c''16 |
%    d''16 e''16 d''16 c''16 b'16 c''16 b'16 a'16 |
%    g'16 a''16 g''16 f''16 e''16 d''16 c''16 f''16 |
%
%    s2 | s2 | s2 | s2 |
%    s2 | s2 | s2 | s2 |
%
%    \repeat volta 2 {
%        s2 | s2 | s2 |
%    }
%    \alternative { { s2 | } { s2 | } }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key c \major
    d'2-.\mf |
    c'2-. |
    b2-. |
    a2-. |

    d'4-. e'4-. |
    c'2-. |
    b2-. |
    a4 r4 |

    \repeat volta 2 {
        a'4 f'16 f'16 e'16 e'16 |
        d'4 a'4 |
        a'4 f'16 f'16 e'16 d'16 | d'4 r4 |
    }

    \repeat volta 2 {
        a2\mf\< |
        d'4\ff-> r4 |
        d'4\mf d'4 |
    }
    \alternative { { a4 d'4 | } { d'8 a'8 d'8 r8 | } }

    \transpose c c' {
    r16 d'16 c'16 bes16 a16 g16 f16 g16 |
    a16 bes16 a16 g16 f16 e16 d16 e16 |
    f16 g16 f16 e16 d16 e16 d16 c16 |
    bes,16 c'16 bes16 a16 g16 f16 e16 a16 |
    }

    d'4 c'4 |
    b4 a4 |
    d'4 c'4 |
    b4 a4 |

    d'4 c'4 |
    b4 a4 |
    a8 a8 d'8 r8 |
    d'8 a8 d'8 r8 |

    \repeat volta 2 {
        a2\mf\< |
        d'4\ff-> r4 |
        d'4\mf d'4 |
    }
    \alternative { { a4 d'4 | } { d'8 a'8 d'8 r8 | } }
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key c \major
    d4 a,4 |
    f4 a,4 |
    d4 a,4 |
    d4 a,4 |

    d4 a,4 |
    f4 a,4 |
    d4 a,4 |
    d4 a,4 |
    \repeat volta 2 {
        d4 a,4 |
        d4 a,4 |
        d4 a,4 |
        d4 a,4 |
    }
    \repeat volta 2 {
        a,4 cis4 |
        d4 a,4 |
        d4 a,4 |
    }
    \alternative {
        { d4 a,4 | } { d8 a,8 d8 r8 | }
    }

    r16 d'16 c'16 bes16 a16 g16 f16 g16 |
    a16 bes16 a16 g16 f16 e16 d16 e16 |
    f16 g16 f16 e16 d16 e16 d16 c16 |
    bes,16 c'16 bes16 a16 g16 f16 e16 a16 |

    d4 a,4 |
    b,4 a,4 |
    d4 a,4 |
    b,4 a,4 |

    d4 a,4 |
    b,4 a,4 |
    a,8 a,8 d4 |
    d8 a,8 d8 r8 |

    \repeat volta 2 {
        a,4 cis4 |
        d4 a,4 |
        d4 a,4 |
    }
    \alternative {
        { d4 a,4 | } { d4 a,4 | }
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = {
    \preintro
    \altosaxnotes
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = {
    \preintro
    \tenorsaxnotes
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
    \counter
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \preintro
    \euphoniumnotes
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 2/4
    d2:min | d2:min/f | d2:min | d2:min |
    d2:min | d2:min/f | d2:min | d2:min |
    \repeat volta 2 { d2:min | d2:min | d2:min | d2:min | }
    \repeat volta 2 { a2:7 | d2:min | d2:min | }
    \alternative { { d2:min | } { d2:min | } }
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min | d2:min | d2:min |
    d2:min | d2:min | d2:min | d2:min |
   \repeat volta 2 { a2:7 | d2:min | d2:min | }
   \alternative { { d2:min | } { d2:min | } }
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

guitarnotes = {
    \time 2/4
    \key c \major
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 2/4
    \key c \major
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
    \key c \major
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
    d2:min | d2:min/f | d2:min | d2:min |
}

previewnotes = {
    \time 2/4
    \key c \major
    d'8 a16 d'16 ~ d'16 a16 d'16 a16 |
    c'16 a16 c'8 ~ c'16 a16 c'16 a16 |
    c'16 b16 a16 c'16 b16 a16 c'16 b16 |
    a16 f'8 f'16 ~ f'16 d'16 f'16 a'16 |
}

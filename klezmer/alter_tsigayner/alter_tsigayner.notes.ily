\version "2.18.0"

bandmNV =  {
    \tempo \tempostring
    \time 2/4
    s4 s4 |
    \markA \positionA
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative {
        { s2 | s2 | }
        { s2 | s2 | }
    }

    \bar ".|:-||"

    \markB \positionB

    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |

        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |

        s2 | s2 | s2 | s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }

    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm =  \context Voice = "bandmv" {
    \bandmNV
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    s4
    \tempo 4 = 135
    s4
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
    \repeat volta 2 {
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 |
        s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes =  {
    \key d \minor
    \time 2/4

    s4 c'4 (

    \repeat volta 2 {
        f'2 ~ |
        f'2 ) |
        r8 f'8 g'8 [ f'8 ] |
        g'8 [ f'8 ] g'8 [ f'8 ] |
        g'8 [ f'8 ] a'4 ~ |
        a'2 | \break

        r8 a'8 bes'8 [ a'8 ] |
        bes'8 [ a'8 ] bes'8 [ a'8 ] |
	bes'8 [ a'8 ] c''4 ~ |
        c''2 | \break

        r8 c''8 d''8 [ c''8 ] |
        d''8 [ c''8 ] d''8 [ c''8 ] |
        d''8 [ c''8 ] ees''4 ~ |
        ees''2 | \break

	r2 |
        r8 f'8 bes'8 [ c''8 ] |
        des''4. bes'8 ~ |
        bes'2 |
% measure 17
        r8 des''8   c''8[ bes'8 ] |
          des''8[ des''8 ]   c''8[ bes'8 ] |
        c''4. a'8 ~ |
        a'2 |
% measure 21
        r8 c''8   bes'8[ a'8 ] |
          c''8[ c''8 ]   bes'8[ a'8 ] |
        bes'4. g'8 ~ |
        g'2 |
% measure 25
        r8 d''8   c''8[ bes'8 ] | 
          a'8[ f'8 ]   g'8[ e'8 ] |
    }
    \alternative {
        {
            f'2 ~ |
            f'4 c'4 |
        }
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
    }

    \key f \minor

    \repeat volta 2 {
% measure 31
        c'2 ~ |
          c'8[ des'8 ]   e'8[ f'8 ] |
        g'8 aes'4. ~ |
	aes'2 |
% measure 35
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
        g'2 |
        r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
% measure 39
        c'4 des'4 |
        e'4 f'4 |
          fis'8[ g'8 ]   g'8[ g'8 ] |
        g'2 |
% measure 43
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          e'16[ f'16 g'16 aes'16 ]   g'16[ f'16 e'8 ] |
        f'4. c''8 |
        \tuplet 3/2 {   c''8[ b'8 aes'8 ] } \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
% measure 47
        c'2 ~ |
          c'8[ des'8 ]   e'8[ f'8 ] |
	g'8 aes'4. ~ |
	aes'2 |
% measure 51
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
        bes'2 |
        r8 bes8   des'8[ f'8 ] |
% measure 55
        bes'4   f'8[ bes'8 ~ ] |
          bes'8[ g'16 bes'16 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
	aes'4   f'8[ aes'8 ~ ] |
 	 aes'8[ aes'8 ]   g'8[ f'8 ] |
% measure 59
        g'4   c'8[ g'8 ~ ] |
          g'8[ g'8 ]   f'8[ e'8 ] |
    }
    \alternative {
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
        {
            f'2 |
            r8 c'8 d'8 e'8 |
        }
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony =  {
}

tenorharmonymidi =  {
}

counter =  {
}

countermidi =  {
}

bassline =  {
}

basslinemidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes =  \transpose c c' {
    \melodynotes
}

flutenotesmidi =  {
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes =  \transpose c d' {
    \melodynotes
}

clarinetnotesmidi =  {
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi =  {
    \altosaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes =  {
    \key d \minor
    \time 2/4
}

tenorsaxnotesmidi =  {
    \tenorsaxnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes =  \transpose c d {
    \melodynotes
}

trumpetnotesmidi =  {
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes =  {
    \key d \minor
    \time 2/4
}

trombonenotesmidi =  {
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
    \key d \minor
    \time 2/4
    s4 r4 |
    \repeat volta 2 {
        f4 c4 |
        f4 a4 |
        f2 ~ |
        f2 |

        a4 f4 |
        a4 c'4 |
        a2 ~ |
        a2 |

        c'4 a4 |
        c'4 f'4 |
        c'2 ~ |
        c'2 |

        f4 c4 |
        f4 c4 |
        bes,4 f4 |
        bes,4 f4 |

        bes,4 c4 |
        des4 e4 |
        f4 c4 |
        f4 c4 |

        c'4 a4 |
        g4 f4 |
        c4 g,4 |
        c4 g,4 |

        c4 bes,4 |
        aes,4 g,4 |
    }
    \alternative {
        {
            f,4 c4 |
            f,4 r4 |
        }
        {
            f,4 g,4 |
            a,4 c4 |
        }
    }

    \key f \minor

    \repeat volta 2 {
        f,4 aes,4 |
        f,4 c4 |
        f,4 aes,4 |
        f,4 c4 |

        f,4 aes,4 |
        f,4 c4 |
        c4 g,4 |
        c4 g4 |

        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |

        c4 bes,4 |
        aes,4 g4 |
        f,4 c4 |
        f,4 aes,4 |

        f,4 c4 |
        f,4 aes,4 |
        f,4 c4 |
        f,4 aes,4 |

        f,4 g,4 |
        aes,4 a,4 |
        bes,4 f,4 |
        bes,4 f,4 |

        bes,4 bes,4 |
        bes,4 g,4 |
        f,4 c4 |
        f,4 g,8 [ bes,8 ] |

        c4 g,4 |
        c4 g,4 |
    }
    \alternative {
        {
            f,4 c4 |
            f,4 c4 |
        }
        {
            f,4 g,4 |
            c2 |
        }
    }
}

euphoniumnotesmidi =  {
    \euphoniumnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes =  {
    \melodynotes
}

violinnotesmidi =  {
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    s4 s4
    \repeat volta 2 {
        f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 | f2 |
        f2:7 | f2:7 | f2:7 | f2:7 |
        bes2:min | bes2:min | bes2:min | bes2:min |
        f2 | f2 | f2 | f2 |
        c2:7 | c2:7 | c2:7 | c2:7 |
    }
    \alternative {
        {
            \chordChangesOff
            f2
            \chordChangesOn
	    f2 |
        }
        {
            \chordChangesOff
            f2
            \chordChangesOn
	    f2 |
        }
    }
    \repeat volta 2 {
        f2:min f2:min f2:min f2:min f2:min f2:min
        c2:7 c2:7 c2:7 c2:7 c2:7 c2:7 c2:7 c2:7
        f2:min f2:min f2:min f2:min f2:min f2:min f2:min f2:min
        bes2:min bes2:min bes2:min bes2:min
        f2:min f2:min
        c2:7 c2:7
    }
    \alternative {
        {
            \chordChangesOff
            f2:min
            \chordChangesOn
            f2:min
        }
        {
            \chordChangesOff
            f2:min
            \chordChangesOn
            c2:7
        }
    }
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
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes =  {
    \key d \minor
    \time 2/4
}

guitarnotesmidi =  {
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \key d \minor
    \time 2/4
    s4 r4 |
    \repeat volta 2 {
        f4 c4 |
        f4 a4 |
        f2 ~ |
        f2 |

        a4 f4 |
        a4 c'4 |
        a2 ~ |
        a2 |

        c'4 a4 |
        c'4 f'4 |
        c'2 ~ |
        c'2 |

	s2 |

        f4 c4 |
        f4 c4 |
        bes,4 f4 |
        bes,4 f4 |

	% fixme
	s2 |

        bes,4 c4 |
        des4 e4 |
        f4 c4 |
        f4 c4 |

        c'4 a4 |
        g4 f4 |
        c4 g,4 |
        c4 g,4 |

        c4 bes,4 |
        aes,4 g,4 |
    }
    \alternative {
        {
            f,4 c4 |
            f,4 r4 |
        }
        {
            f,4 g,4 |
            a,4 c4 |
        }
    }

    \key f \minor

    \repeat volta 2 {
        f,4 aes,4 |
        f,4 c4 |
        f,4 aes,4 |
        f,4 c4 |

        f,4 aes,4 |
        f,4 c4 |
        c4 g,4 |
        c4 g4 |

        c4 g,4 |
        c4 g4 |
        c4 g,4 |
        c4 g4 |

        c4 bes,4 |
        aes,4 g,4 |
        f,4 c4 |
        f,4 aes,4 |

        f,4 c4 |
        f,4 aes,4 |
        f,4 c4 |
        f,4 aes,4 |

        f,4 g,4 |
        aes,4 a,4 |
        bes,4 f,4 |
        bes,4 f,4 |

        bes,4 bes,4 |
        bes,4 g,4 |
        f,4 c4 |
        f,4 g,8 [ bes,8 ] |

        c4 g,4 |
        c4 g,4 |
    }
    \alternative {
        {
            f,4 c4 |
            f,4 c4 |
        }
        {
            f,4 g,4 |
            c2 |
        }
    }
}

bassnotesmidi =  {
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes =  {
    \key d \minor
    \time 2/4

    s4 c'4

    \repeat volta 2 {
% measure 1
        < f' a' c''>2 ~ |


        < f' a' c''>2 |
        r8 f'8   g'8[ f'8 ] |
          g'8[ f'8 ]   g'8[ f'8 ] |
% measure 5
        < a' c'' f'' >2 ~ |
        < a' c'' f'' >2 |
        r8 a'8   bes'8[ a'8 ] |
          bes'8[ a'8 ]   bes'8[ a'8 ] |
% measure 9
        < c'' f'' a'' >2 ~ |
        < c'' f'' a'' >2 |
        r8 c''8   d''8[ c''8 ] |
          d''8[ c''8 ]   d''8[ c''8 ] |
% measure 13
        ees''2 |
        r8 f'8   bes'8[ c''8 ] |
        des''4. bes'8 ~ |
        bes'2 |
% measure 17
        r8 des''8   c''8[ bes'8 ] |
          des''8[ des''8 ]   c''8[ bes'8 ] |
        c''4. a'8 ~ |
        a'2 |
% measure 21
        r8 c''8   bes'8[ a'8 ] |
          c''8[ c''8 ]   bes'8[ a'8 ] |
        bes'4. g'8 ~ |
        g'2 |
% measure 25
        r8 d''8   c''8[ bes'8 ] | 
          a'8[ f'8 ]   g'8[ e'8 ] |
    }
    \alternative {
        {
            f'2 ~ |
            f'4 c'4 |
        }
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
    }

    \key f \minor

    \repeat volta 2 {
% measure 31
        c'2 ~ |
          c'8[ des'8 ]   e'8[ f'8 ] |
        g'8 aes'4. ~ |
	aes'2 |
% measure 35
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
        g'2 |
        r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
% measure 39
        c'4 des'4 |
        e'4 f'4 |
          fis'8[ g'8 ]   g'8[ g'8 ] |
        g'2 |
% measure 43
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          e'16[ f'16 g'16 aes'16 ]   g'16[ f'16 e'8 ] |
        f'4. c''8 |
        \tuplet 3/2 {   c''8[ b'8 aes'8 ] } \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
% measure 47
        c'2 ~ |
          c'8[ des'8 ]   e'8[ f'8 ] |
	g'8 aes'4. ~ |
	aes'2 |
% measure 51
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
          g'8[ aes'8 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
        bes'2 |
        r8 bes8   des'8[ f'8 ] |
% measure 55
        bes'4   f'8[ bes'8 ~ ] |
          bes'8[ g'16 bes'16 ] \tuplet 3/2 {   aes'8[ g'8 f'8 ] } |
	aes'4   f'8[ aes'8 ~ ] |
 	 aes'8[ aes'8 ]   g'8[ f'8 ] |
% measure 59
        g'4   c'8[ g'8 ~ ] |
          g'8[ g'8 ]   f'8[ e'8 ] |
    }
    \alternative {
        {
            f'2 |
            r8   e'16[ g'16 ]   f'16[ e'16 des'8 ] |
        }
        {
            f'2 |
            r8 c'8 d'8 e'8 |
        }
    }
}

pianorightuppernotes =  {
    \pianorightnotes
}

pianorightlowernotes =  {
}

pianorightnotesmidi =  {
    \pianorightnotes
}

pianoleftnotes =  {
}

pianoleftuppernotes =  {
    \pianoleftnotes
}

pianoleftlowernotes =  {
}

pianoleftnotesmidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
}

drumslow = \drummode {
    \stemDown
}

drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% can't work until I get the music for the intro.

%    Dort oyf a berg- e- le un- ter dem fray- en him- l,
%    Vayt fun dem rash- ik- n shtots ge- tum- l
%    Shteyt zikh a khat- ke- le a- leyn oyf dem ort,
%    An al- ter tsi- gay- ner voynt dort.

%dort hern zikh tener zeyer zise,
%vos veynen in minor,
%ven af zayn fidl fargeyt zikh
%der alter tsigayner,
%mit zayn gantsn fayer un bren,
%nor vi a tsigayner ken.

textl = \lyricmode {
a tsi- gay- ner mel- o- die iz a- zoy sheyn.
_ hert ir zikh, far- gest ir zikh nit, neyn,
vayl zi iz var- em, harts- ik, ful mit kheyn,
_ _ a modne kraft.
zi git aykh lib- e un oykh laydn- shaft.
hert ir es nor eyn mol, git es keyn ru.
s’farkisheft aykh di melodie.

}
textlb = \lyricmode {
ven ir hert es, dakht zikh aykh,
s’iz prost naiv,
 un ir hot dan gornit keyn bagrif,
vi es rirt on di neshome tif.
fun yeder zayt zi filt aykh on
mit lust un freylekhkayt.
onhaltn vilt ir eybik ot a di
di klangen fun di melodie.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s4 s4

    f2 |
    s2*7 |
}

previewnotes = \transpose c c' {
    \key d \minor
    \time 2/4
    s4 c'4 |
    \bar ".|:"
    f'2 ~ |
    f'2 |
    r8 f'8 g'8 f'8 |
    g'8 f'8 g'8 f'8 |
    a'2 ~ |
    a'2 |
    r8 a'8 bes'8 a'8 |
    bes'8 a'8 bes'8 a'8 |
}

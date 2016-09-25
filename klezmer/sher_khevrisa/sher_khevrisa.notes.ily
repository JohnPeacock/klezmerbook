\version "2.18.2"

bandmNVbody = {
    \time 4/4
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo
        s1 | \breakAtre
    }
    % figure out how to repeat four times alternate endings 1,3 & 2,4
    \alternative{ { s1 | \breakAfor } { s1 } }
    \bar ".|:-||"
    \breakA

    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 |
    } 
    \breakB

    \markC \positionC
    \repeat volta 2 {
        s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
        s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 |
    }
    \breakC

    \markD \positionD
    \repeat volta 2 {
        s1 | \breakDone s1 | \breakDtwo s1 | \breakDtre
    }
    \alternative{ { s1 | \breakDfor } { s1 } }
    \bar "|."
}

bandmNV = {
    \markA \positionA
    \tempo \tempostring
    \bandmNVbody
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s1 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandmNVbody
    \bandmNVbody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = {
    \time 4/4
    \key a \minor

    \repeat volta 2 {
        e''8 ( g''8 -) g''8 ( f''8 -) f''8 ( e''8 -) e''8 d''8 |
        d''8 e''8 c''4 ~ c''4 d''4 |
        e''8 f''8 e''8 ( d''8 -) c''8 d''8 c''8 ( b'8 -) 
    }
    % figure out how to repeat four times alternate endings 1,3 & 2,4
    \alternative{ { a'4 c''4 e''4 a''4 } { a'4 a'2 a'4 } }

    \repeat volta 2 {
        d''2 d''2 |
        d''8 ( c''8 -) c''8 ( b'8 -) b'2 |
        b'4 b'4 g''4. f''8 |
        f''8 ( e''8 -) e''8 d''8 e''4 c''4 |
        d''2 d''2 |
        d''8 ( c''8 -) c''8 ( b'8 -) b'4. a'8 |
        g'8 ( fis'8 -) g'8 a'8 b'8 ( d''8 -) c''8 b'8 |
        a'4 a'2 a'4 
    } 

    \repeat volta 2 {
        a''2. e''4 |
        a''2. e''4 |
        e''8 ( c'''8 -) b''8 a''8 g''8 ( a''8 -) g''8 f''8 |
        e''8 g''8 d''2 d''4 |
        g''2. d''4 |
        g''2. d''4 |
        g''8 ( a''8 -) g''8 f''8 e''8 ( f''8 -) e''8 d''8 |
        d''8 e''8 c''2 e''4 
    }

    \repeat volta 2 {
        f''8 f''8 f''8 ( a''8 -) e''8 e''8 e''8 ( a''8 -) |
        d''8 d''8 d''8 ( a''8 -) c''4. d''8 |
        e''8 ( f''8 -) e''8 d''8 c''8 ( d''8 -) c''8 b'8 |
    }
    \alternative { { a'4 c''4 e''4 a''4 } { a'4 a'2 e''4 } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 4/4
    \key a \minor
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 4/4
    \key a \minor
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 4/4
    \key a \minor

    \repeat volta 2 {
        c4 g,4 b,4 g,4 |
        a,4 e4 a,4 c4 |
        e4 b,4 e4 b,4 |
    }
    % figure out how to repeat four times alternate endings 1,3 & 2,4
    \alternative{ { a,4 e4 a,4 r4 } { a,4 b,4 c4 cis4 } }
   
    \repeat volta 2 {
        d4 a,8 d8 ~ d8 a,8 d4 |
        d4 g,8 d8 ~ d8 g,8 d4 |
        d4 g,8 d8 ~ d8 g,8 d4 |
        c4 g,8 c8 ~ c8 r8 g,4 |
        d4 a,4 d4 a,4 |
        d4 g,4 d4 g,4 |
        e4 b,4 e4 b,4
        a,4 e4 a,4 r4 |
    } 
   
    \repeat volta 2 {
        e4 a,8 e8 ~ e8 a,8 e4 |
        e4 a,8 e8 ~ e8 a,8 e4 |
        e4 a,8 e8 ~ e8 a,8 e4 |
        d4 a,4 d4 r4 |

        d4 g,8 d8 ~ d8 g,8 d4 |
        d4 g,8 d8 ~ d8 g,8 d4 |
        d4 g,8 d8 ~ d8 g,8 d4 |
        a,4 e4 c4 a,4 |
    }
    
    \repeat volta 2 {
        d4 a,4 e4 a,4 |
        d4 a,4 e4 a,4 |
        e4 b,4 e4 b4 |
    }
    \alternative { { a4 e4 a4 r4 | } { a4 e4 a4 r4 | } }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c {
    \melodynotes
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
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

trombonenotes = {
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
    \time 4/4

    \repeat volta 2 {
        c2 g2/b
        a1:min |
        e1:7 |
    }
    % figure out how to repeat four times alternate endings 1,3 & 2,4
    \alternative{ { a1:min } { \chordChangesOff a1:min \chordChangesOn } }
   
    \repeat volta 2 {
        d1:min | g1 | g1 | c1 |
        d1:min | g1 | e1:min | % figure out how to put parens around
        a1:min |
    } 
   
    \repeat volta 2 {
        \chordChangesOff a1:min \chordChangesOn | a1:min | a1:min | d1:min |
        g1 | g1 | g1 | a1:min |
    }
    
    \repeat volta 2 {
        d2:min a2:min |
        d2:min a2:min |
        e1:7 |
    }
    \alternative { { a1:min | } { \chordChangesOff a1:min \chordChangesOn | } }
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
    \time 4/4
    \key a \minor
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
    \time 4/4
    \key a \minor
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
    \time 4/4
    \key a \minor
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
    \time 4/4
    \stemUp
    \dynamicUp

}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 4/4
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
    \time 4/4
    \repeat volta 2 {
        c2 g2/b
        a1:min |
        e1:7 |
    }
    % figure out how to repeat four times alternate endings 1,3 & 2,4
    \alternative{ { a1:min } { a1:min } }
}

previewnotes = {
    \time 4/4
    \key a \minor
    \repeat volta 2 {
        e''8 ( g''8 -) g''8 ( f''8 -) f''8 ( e''8 -) e''8 d''8 |
        d''8 e''8 c''4 ~ c''4 d''4 |
        e''8 f''8 e''8 ( d''8 -) c''8 d''8 c''8 ( b'8 -) 
    }
    \alternative{ { a'4 c''4 e''4 a''4 } { a'4 a'2 a'4 } }
}

\version "2.18.0"

bandmNV = {
    \tempo \tempostring
    \time 3/4

    \repeat volta 2 {
        \markA \positionA
        s2. | \breakAone
        s2. | \breakAtwo
        s2. | \breakAtre
        s2. | \breakAfor
        s2. | \breakAfiv
        s2. | \breakAsix
        s2. | \breakAsev
        s2. | \breakAeit
        s2. | \breakAnin
        s2. | \breakAten
        s2. | \breakAelv
        s2. | \breakAtwl
        s2. | \breakAtht
        s2. | \breakAfrt
        s2. | \breakAfft
        s2. |
        \breakA
    }
    \repeat volta 2 {
        \markB \positionB
        s2. | \breakBone
        s2. | \breakBtwo
        s2. | \breakBtre
        s2. | \breakBfor
        s2. | \breakBfiv
        s2. | \breakBsix
        s2. | \breakBsev
        s2. | \breakB
    }
    \repeat volta 2 {
        \markC \positionC
        s2. | \breakCone
        s2. | \breakCtwo
        s2. | \breakCtre
        s2. | \breakCfor
        s2. | \breakCfiv
        s2. | \breakCsix
        s2. | \breakCsev
        s2. |
    }
    \markDC \positionDC
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s2. }

metronome = {
    \time 3/4
    \preintro
    \tempo 4 = 120
    \bandmNV
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceone = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        d'4 bes'4 a'8 g'8 |
        fis'4 g'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'2. |
        d'4 d''4 c''8 bes'8 |
        a'4 bes'4 c''8 bes'8 |
        a'4 d''4 a'8 d''8 |
        a'2 \tuplet 3/2 { a'8 bes'8 b'8 } |
        c''4. bes'8 a'8 [ g'8 ] |
        fis'4 g'4 a'8 bes'8 |
        a'4. g'8 fis'8 [ ees'8 ] |
        d'4 ees'2 |
        c'4 bes'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'4. ees'8 fis'8 [ g'8 ] |
        a'2. |
    }
    \repeat volta 2 {
        d''4 cis''4 d''4 |
        bes'2. |
        d''8 [ cis''8 ] e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'2. |
        d''8 [ g'8 ] a'8 [ bes'8 ] cis''8 [ d''8 ] |
        cis''2 bes'4 |
        a'8 [ d'8 ] d''8 [ cis''8 ] bes'8 [ a'8 ] |
        g'2. |
    }
    \repeat volta 2 {
        bes'8 [ a'8 ] g'8 [ fis'8 ] g'8 [ bes'8 ] |
        a'8 [ g'8 ] fis'8 [ d'8 ] fis'8 [ a'8 ] |
        g'8 [ fis'8 ] g'8 [ fis'8 ] ees'8 [ d'8 ] |
        g'4 c'2 |
        c'8 d'8 ees'4 fis'8 g'8 |
        c''8 [ bes'8 ] a'8 [ g'8 ] fis'8 [ ees'8 ] |
        d'8 [ ees'8 ] d'8 [ ees'8 ] fis'8 [ g'8 ] |
        a'2. |
    }
}

melodynotes = {
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone except that a few notes of the harmony near the end have
% been altered to keep this from falling off of the bottom of the alto sax
% range.

voicetwo = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        d'4 bes'4 a'8 g'8 |
        fis'4 g'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'2. |
        d'4 d''4 c''8 bes'8 |
        a'4 bes'4 c''8 bes'8 |
        a'4 d''4 a'8 d''8 |
        a'2 \tuplet 3/2 { a'8 bes'8 b'8 } |
        c''4. bes'8 a'8 [ g'8 ] |
        fis'4 g'4 a'8 bes'8 |
        a'4. g'8 fis'8 [ ees'8 ] |
        d'4 ees'2 |
        c'4 bes'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'4. ees'8 fis'8 [ g'8 ] |
        a'2. |
    }
    \repeat volta 2 {
        d''4 cis''4 d''4 |
        bes'2. |
        d''8 [ cis''8 ] e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'2. |
        d''8 [ g'8 ] a'8 [ bes'8 ] cis''8 [ d''8 ] |
        cis''2 bes'4 |
        a'8 [ d'8 ] d''8 [ cis''8 ] bes'8 [ a'8 ] |
        g'2. |
    }
    \repeat volta 2 {
        bes'8 [ a'8 ] g'8 [ fis'8 ] g'8 [ bes'8 ] |
        a'8 [ g'8 ] fis'8 [ d'8 ] fis'8 [ a'8 ] |
        g'8 [ fis'8 ] g'8 [ fis'8 ] ees'8 [ d'8 ] |
        g'4 c'2 |
        c'8 d'8 ees'4 fis'8 g'8 |
        c''8 [ bes'8 ] a'8 [ g'8 ] fis'8 [ ees'8 ] |
        d'8 [ ees'8 ] d'8 [ ees'8 ] fis'8 [ g'8 ] |
        a'2. |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voice one without the harmony voice

voicethree = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        d'4 bes'4 a'8 g'8 |
        fis'4 g'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'2. |
        d'4 d''4 c''8 bes'8 |
        a'4 bes'4 c''8 bes'8 |
        a'4 d''4 a'8 d''8 |
        a'2 \tuplet 3/2 { a'8 bes'8 b'8 } |
        c''4. bes'8 a'8 [ g'8 ] |
        fis'4 g'4 a'8 bes'8 |
        a'4. g'8 fis'8 [ ees'8 ] |
        d'4 ees'2 |
        c'4 bes'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'4. ees'8 fis'8 [ g'8 ] |
        a'2. |
    }
    \repeat volta 2 {
        d''4 cis''4 d''4 |
        bes'2. |
        d''8 [ cis''8 ] e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'2. |
        d''8 [ g'8 ] a'8 [ bes'8 ] cis''8 [ d''8 ] |
        cis''2 bes'4 |
        a'8 [ d'8 ] d''8 [ cis''8 ] bes'8 [ a'8 ] |
        g'2. |
    }
    \repeat volta 2 {
        bes'8 [ a'8 ] g'8 [ fis'8 ] g'8 [ bes'8 ] |
        a'8 [ g'8 ] fis'8 [ d'8 ] fis'8 [ a'8 ] |
        g'8 [ fis'8 ] g'8 [ fis'8 ] ees'8 [ d'8 ] |
        g'4 c'2 |
        c'8 d'8 ees'4 fis'8 g'8 |
        c''8 [ bes'8 ] a'8 [ g'8 ] fis'8 [ ees'8 ] |
        d'8 [ ees'8 ] d'8 [ ees'8 ] fis'8 [ g'8 ] |
        a'2. |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

firsttime = \markup { \column { "First time through start at measure 8" " " } }
tenorharmony = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        d'4 bes'4 a'8 g'8 |
        fis'4 g'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'2. |
        d'4 d''4 c''8 bes'8 |
        a'4 bes'4 c''8 bes'8 |
        a'4 d''4 a'8 d''8 |
        a'2 \tuplet 3/2 { a'8 bes'8 b'8 } |
        c''4. bes'8 a'8 [ g'8 ] |
        fis'4 g'4 a'8 bes'8 |
        a'4. g'8 fis'8 [ ees'8 ] |
        d'4 ees'2 |
        c'4 bes'4 a'8 g'8 |
        fis'4. d'8 ees'8 [ c'8 ] |
        d'4. ees'8 fis'8 [ g'8 ] |
        a'2. |
    }
    \repeat volta 2 {
        d''4 cis''4 d''4 |
        bes'2. |
        d''8 [ cis''8 ] e''8 [ d''8 ] cis''8 [ bes'8 ] |
        a'2. |
        d''8 [ g'8 ] a'8 [ bes'8 ] cis''8 [ d''8 ] |
        cis''2 bes'4 |
        a'8 [ d'8 ] d''8 [ cis''8 ] bes'8 [ a'8 ] |
        g'2. |
    }
    \repeat volta 2 {
        bes'8 [ a'8 ] g'8 [ fis'8 ] g'8 [ bes'8 ] |
        a'8 [ g'8 ] fis'8 [ d'8 ] fis'8 [ a'8 ] |
        g'8 [ fis'8 ] g'8 [ fis'8 ] ees'8 [ d'8 ] |
        g'4 c'2 |
        c'8 d'8 ees'4 fis'8 g'8 |
        c''8 [ bes'8 ] a'8 [ g'8 ] fis'8 [ ees'8 ] |
        d'8 [ ees'8 ] d'8 [ ees'8 ] fis'8 [ g'8 ] |
        a'2. |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
}

countermidi = {
    \preintro
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \voiceone
}

flutenotesmidi = {
    \preintro
    \flutenotes
    \flutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \voiceone
}

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \voicetwo
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
    \voicethree
}

trumpetnotesmidi = {
    \preintro
    \trumpetnotes
    \trumpetnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
%    \counter
    \melodynotes
}

trombonenotesmidi = {
    \preintro
    \trombonenotes
    \trombonenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \voiceone
}

violinnotesmidi = {
    \preintro
    \violinnotes
    \violinnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 3/4
    \repeat volta 2 {
        g2.*2:min | d2.*2 |
        g2.*2:min | d2.*2 |

        c2.*2:min | d2.*2 |
        c2.*2:min | d2.*2 |
    }
    \repeat volta 2 {
        g2.*3:min | d2. |
        g2.*2:min | d2. | g2.:min |
    }
    \repeat volta 2 {
        g2.:min | d2. |
        c2.*4:min |
        d2.*2 |
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
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 3/4
    \key bes \major
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
%    \bassline
    \transpose c c, { \melodynotes }
}

bassnotesmidi = {
    \preintro
    \bassnotes
    \bassnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
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
    \time 3/4
    \key g \minor
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
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
    \time 3/4
    \stemUp
    \dynamicUp
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 3/4
    \stemDown
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
    \repeat volta 2 {
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
        s2. |
    }
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    g2.*2:min | d2.*2 |
}

previewnotes = {
    \time 3/4
    \key g \minor
    d'4 bes'4 a'8 g'8 |
    fis'4 g'4 a'8 g'8 |
    fis'4. d'8 ees'8 [ c'8 ] |
    d'2. |
}

\version "2.18.2"

bandmintro = {
    \partial 8 s8
}

bandmmain = {
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
    }
    \alternative { { s2. | \breakAsxt } { s2. } }
    \breakA
    \bar ".|:-||"
    \repeat volta 2 {
        \markB \positionB
        s2. | \breakBone
        s2. | \breakBtwo
        s2. | \breakBtre
        s2. | \breakBfor
        s2. | \breakBfiv
        s2. | \breakBsix
    }
    \alternative {
        { s2. | \breakBsev s2. | \breakBeit }
        { s2. | \breakBnin s2. | } }
    \breakB
    \bar ".|:-||"
    \repeat volta 2 {
        \markC \positionC
        s2. | \breakCone
        s2. | \breakCtwo
        s2. | \breakCtre
        s2. | \breakCfor
        s2. | \breakCfiv
        s2. | \breakCsix
        s2. | \breakCsev
        s2. | \breakCeit
        s2. | \breakCnin
        s2. | \breakCten
        s2. | \breakCelv
        s2. | \breakCtwl
        s2. | \breakCtht
        s2. | \breakCfrt
        s2. | \breakCfft
        s2. | \breakCsxt
        s2. | \breakCsvt
	s2. |
    }
    \markDC \positionDC
}

bandmNV = {
    \time 3/4
    \tempo \tempostring
    \bandmintro
    \bandmmain
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

metronome = {
    \time 3/4
    \tempo 4 = 120
    \bandmintro
    \bandmmain
    \bandmmain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voiceoneintro = {
    \partial 8 g8 |
}

voiceonemain = {
    \repeat volta 2 {
        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        fis'4 g'4 fis'4 |
        g'8. fis'16 g'4 g4 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        ees'4 ees'4 d'8 c'8 |
        b4. g8 b8 d'8 |
        c'4. c''8 g'8 ees'8 |
    }
    \alternative { { c'2 r8 g8 | } { c'4 r8 g8 c'8 d'8 } }
    \key c \major
    \repeat volta 2 {
        e'4. c'8 d'8 c'8 |
        e'4. c'8 d'8 c'8 |
        f'4. d'8 e'8 d'8 |
        f'4. d'8 e'8 d'8 |
        d'4 e'4 f'8 g'8 |
        a'4 g'8 [ f'8 ] e'8 [ d'8 ] |
    }
    \alternative {
        { ees'4 e'4 e'4 | e'4. g8 c'8 d'8 | }
        { c'4 c'4 c'4 | c'2. | } }
    \repeat volta 2 {
        g4 c'4 d'4 |
        e'2. |
        e'4. c'8 d'8 e'8 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
        c'2. |
        g4 c'4 e'4 |
        g'2 e'4 |
        a'4. g'8 f'8 e'8 |
        d'2. |
        a4 d'4 e'4 |
        f'4 e'4 d'4 |
        e'4 g'4 c''4 |
        c''2. |
        e'4 f'4 f'4 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
	c'2. |
    }
}

voiceone = {
    \time 3/4
    \key c \minor
    \voiceoneintro
    \voiceonemain
}

voiceonemidi = {
    \time 3/4
    \voiceoneintro
    \voiceonemain
    \voiceonemain
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \voiceonemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voiceone except that a few notes of the harmony near the end have
% been altered to keep this from falling off of the bottom of the alto sax
% range.

voicetwointro = {
    \partial 8 g8 |
}

voicetwomain = {
    \repeat volta 2 {
        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        fis'4 g'4 fis'4 |
        g'8. fis'16 g'4 g4 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        ees'4 ees'4 d'8 c'8 |
        b4. g8 b8 d'8 |
        c'4. c''8 g'8 ees'8 |
    }
    \alternative { { c'2 r8 g8 | } { c'4 r8 g8 c'8 d'8 } }
    \key c \major
    \repeat volta 2 {
        e'4. c'8 d'8 c'8 |
        e'4. c'8 d'8 c'8 |
        f'4. d'8 e'8 d'8 |
        f'4. d'8 e'8 d'8 |
        d'4 e'4 f'8 g'8 |
        a'4 g'8 [ f'8 ] e'8 [ d'8 ] |
    }
    \alternative {
        { ees'4 e'4 e'4 | e'4. g8 c'8 d'8 | }
        { c'4 c'4 c'4 | c'2. | } }
    \repeat volta 2 {
        g4 c'4 d'4 |
        e'2. |
        e'4. c'8 d'8 e'8 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
        c'2. |
        g4 c'4 e'4 |
        g'2 e'4 |
        a'4. g'8 f'8 e'8 |
        d'2. |
        a4 d'4 e'4 |
        f'4 e'4 d'4 |
        e'4 g'4 c''4 |
        c''2. |
        e'4 f'4 f'4 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
	c'2. |
    }
}

voicetwo = {
    \time 3/4
    \key c \minor
    \voicetwointro
    \voicetwomain
}

voicetwomidi = {
    \time 3/4
    \voicetwointro
    \voicetwomain
    \voicetwomain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% same as voice one without the harmony voice

voicethreeintro = {
    \partial 8 g8 |
}

voicethreemain = {
    \repeat volta 2 {
        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        fis'4 g'4 fis'4 |
        g'8. fis'16 g'4 g4 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        ees'4 ees'4 d'8 c'8 |
        b4. g8 b8 d'8 |
        c'4. c''8 g'8 ees'8 |
    }
    \alternative { { c'2 r8 g8 | } { c'4 r8 g8 c'8 d'8 } }
    \key c \major
    \repeat volta 2 {
        e'4. c'8 d'8 c'8 |
        e'4. c'8 d'8 c'8 |
        f'4. d'8 e'8 d'8 |
        f'4. d'8 e'8 d'8 |
        d'4 e'4 f'8 g'8 |
        a'4 g'8 [ f'8 ] e'8 [ d'8 ] |
    }
    \alternative {
        { ees'4 e'4 e'4 | e'4. g8 c'8 d'8 | }
        { c'4 c'4 c'4 | c'2. | } }
    \repeat volta 2 {
        g4 c'4 d'4 |
        e'2. |
        e'4. c'8 d'8 e'8 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
        c'2. |
        g4 c'4 e'4 |
        g'2 e'4 |
        a'4. g'8 f'8 e'8 |
        d'2. |
        a4 d'4 e'4 |
        f'4 e'4 d'4 |
        e'4 g'4 c''4 |
        c''2. |
        e'4 f'4 f'4 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
	c'2. |
    }
}

voicethree = {
    \time 3/4
    \key c \minor
    \voicethreeintro
    \voicethreemain
}

voicethreemidi = {
    \time 3/4
    \voicethreeintro
    \voicethreemain
    \voicethreemain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    \partial 8 g8 |
}

tenorharmonymain = {
    \repeat volta 2 {
        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        fis'4 g'4 fis'4 |
        g'8. fis'16 g'4 g4 |

        c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
        d'4 d'4 ees'8 d'8 |
        ees'2 bes'4 |
        g'4 fis'4 ees'8 d'8 |

        ees'4 ees'4 d'8 c'8 |
        b4. g8 b8 d'8 |
        c'4. c''8 g'8 ees'8 |
    }
    \alternative { { c'2 r8 g8 | } { c'4 r8 g8 c'8 d'8 } }
    \key c \major
    \repeat volta 2 {
        e'4. c'8 d'8 c'8 |
        e'4. c'8 d'8 c'8 |
        f'4. d'8 e'8 d'8 |
        f'4. d'8 e'8 d'8 |
        d'4 e'4 f'8 g'8 |
        a'4 g'8 [ f'8 ] e'8 [ d'8 ] |
    }
    \alternative {
        { ees'4 e'4 e'4 | e'4. g8 c'8 d'8 | }
        { c'4 c'4 c'4 | c'2. | } }
    \repeat volta 2 {
        g4 c'4 d'4 |
        e'2. |
        e'4. c'8 d'8 e'8 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
        c'2. |
        g4 c'4 e'4 |
        g'2 e'4 |
        a'4. g'8 f'8 e'8 |
        d'2. |
        a4 d'4 e'4 |
        f'4 e'4 d'4 |
        e'4 g'4 c''4 |
        c''2. |
        e'4 f'4 f'4 |
        f'4. e'8 \tuplet 3/2 { f'8 e'8 d'8 } |
        c'2. ~ |
	c'2. |
    }
}

tenorharmony = {
    \time 3/4
    \key c \minor
    \tenorharmonyintro
    \tenorharmonymain
}

tenorharmonymidi = {
    \time 3/4
    \tenorharmonyintro
    \tenorharmonymain
    \tenorharmonymain
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 3/4
    \key c \minor
}

countermidi = {
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 3/4
    \key c \minor
}

basslinemidi = {
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose bes c' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \voicetwo
}

altosaxnotesmidi = \transpose ees c' {
    \voicetwomidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose bes c' {
    \tenorharmony
}

tenorsaxnotesmidi = \transpose bes c' {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \voicethree
}

trumpetnotesmidi = \transpose bes c' {
    \voicethreemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
%    \counter
    \melodynotes
}

trombonenotesmidi = \transpose c c, {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode {
    \time 3/4
    \partial 8 s8
    \repeat volta 2 {
        c2.:min |
        g2. |
        c2.*3:min |
        g2. |
        g2.*2:7 |
        c2.:min |
        g2. |
        c2.*3:min |
        g2.:7 |
        c2.:min |
    }
    \alternative { { c2.:min | } { c2.:min } }
    \repeat volta 2 {
        c2.*2 |
        g2.*4 |
    }
    \alternative {
        { c2.*2 | }
        { c2.*2 | } }
    \repeat volta 2 {
        c2.*3 |
        g2. |
        c2.*4 |
        f2. |
        g2. |
        f2.*2 |
        c2.*2 |
        g2.*2 |
        c2.*2 |
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
}

guitarnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
%    \bassline
    \transpose c c, { \melodynotes }
}

bassnotesmidi = {
%    \basslinemidi
    \transpose c c, { \melodynotesmidi }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotes = {
    \time 3/4
    \key c \minor
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianorightnotesmidi = {
}

pianoleftnotes = {
    \time 3/4
    \key c \minor
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 3/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
}

drumslow = \drummode {
    \time 3/4
    \stemDown
}

drumslowmidi = \drummode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \partial 8 s8 c2.:min g2. c2.*2:min
}

previewnotes = {
    \time 3/4
    \key c \minor
    \partial 8 g8 |
    \bar ".|:"
    c'4 c'4 \tuplet 3/2 { ees'8 d'8 c'8 } |
    d'4 d'4 ees'8 d'8 |
    ees'2 bes'4 |
    g'4 fis'4 ees'8 d'8 |
}

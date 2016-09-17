\version "2.18.0"

bandm = {
    \time 2/4
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 | \breakA
    \bar "||"

    \time 4/4
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 | \breakBeit
    s1 | \breakB

    \markDC \positionDC
    \bar "|."
}

bandmNV = {
    \tempo \tempostring
    \bandm
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandm
    \bandm
    \bandm
}

voiceone = {
    \key d \minor
    \time 2/4

    a8\mf d'8 d'8 e'8 |
    f'8 f'8 e'8 d'8 |
    f'4 g'4 |
    f'8 f'8 e'8 d'8 |

    a8 d'8 d'8 e'8 |
    f'16 f'16 d'8 g'8 e'8 |
    f'4 e'4 |
    d'4 r4 |

    c'8 f'8 f'8 g'8 |
    a'8 a'8 g'8 f'8 |
    a'4 bes'4 |
    a'8 a'8 g'8 f'8 |

    \acciaccatura { f'8 } c'8 f'8 f'8 g'8 |
    a'8 f'8 a'8 g'8 |
    f'4 e'4 |
    d'4 r4 |

    \time 4/4
    \transpose c' f {
        r2 r8 e''8\mp c''8 e''8 |
        d''8. c''16 b'4. d''8 b'8 d''8 |
        c''8. b'16 a'4. c''8 a'8 c''8 |
        b'4 e''4 e''8 d''8 c''8 d''8 |
        e''2 r8 e''8\f a''8 e''8 |
        d''8. c''16 b'4. d''8 b'8 d''8 |
        c''8. b'16 a'4. c''8 a'8 c''8 |
        b'4 e''4 e''8 d''8 c''8 d''8 |
        a'8 a''8 e''8 c''8 a'4-. e'4-> |
    }
}

melodynotes = {
    \voiceone
}

melodynotesmidi = {
    \preintro
    \voiceone
    \voiceone
    \voiceone
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
    \tenorharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

countermidi = {
    \preintro
    \counter
    \counter
    \counter
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassline = {
    \time 2/4
    \key d \minor
    d4\f d4 | d4 a,4 | d4 g,4 | a,4 d4 |
    d4 d4 | d4 g,4 | a,4 a,4 | d4 r4 |
    f4 f4 | f4 c4 | f4 bes,4 | f8 c8 d8 e8 |
    f4 c4 | g4 bes4 | a4 a4 | d4 r4 |
    \time 4/4
    R1 | a4\p e4 a4 e4\mf | a4 d4 a4 d4 |
    a4 e4 a4 e4 | a4 d4 a4 d4 |
    a4 e4 a4\ff e4 | a4 d4 a4 d4 |
    a4 e4 a4 e4 | d4 a,4 d4 r4 |
}

basslinemidi = {
    \preintro
    \bassline
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

clarinetnotes = \transpose bes c'' {
    \melodynotes
}

clarinetnotesmidi = \transpose bes c' {
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

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
    \tenorharmonymidi
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


chordletters = \chordmode {
    d2:min | d2:min | d4:min g4:min | a4:7 d4:min |
    d2:min | d4:min g4:min | a2:7 | d2:min |
    f2 | f2 | f4 bes4 | f2 |
    f2 | g4 g4:min | a2:7 | d2:min |

    \time 4/4
    \transpose c' f {
        \noChordStringOn c1 \noChordStringOff |
        e1:7 | a1:min | e1:7 | a1:min |
        e1:7 | a1:min | e1:7 | a4:min e4:7 a4:min s4 |
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
melodychordletters = \chordletters
basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

guitarnotesmidi = {
    \preintro
    \guitarnotes
    \guitarnotes
    \guitarnotes
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
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianorightnotesmidi = {
    \preintro
    \pianorightnotes
    \pianorightnotes
    \pianorightnotes
}

pianoleftnotes = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
    \time 2/4
    \key d \minor
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftnotes
    \pianoleftnotes
    \pianoleftnotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumshighmidi = \drummode {
    \preintro
    \drumshigh
    \drumshigh
    \drumshigh
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 |
    \time 4/4
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 |
}

drumslowmidi = \drummode {
    \preintro
    \drumslow
    \drumslow
    \drumslow
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \key d \minor
    \time 2/4

    a8\mf d'8 d'8 e'8 |
    f'8 f'8 e'8 d'8 |
    f'4 g'4 |
    f'8 f'8 e'8 d'8 |

    a8 d'8 d'8 e'8 |
    f'16 f'16 d'8 g'8 e'8 |
    f'4 e'4 |
    d'4 r4 |

    c'8 f'8 f'8 g'8 |
    a'8 a'8 g'8 f'8 |
    a'4 bes'4 |
    a'8 a'8 g'8 f'8 |

    \acciaccatura { f'8 } c'8 f'8 f'8 g'8 |
    a'8 f'8 a'8 g'8 |
    f'4 e'4 |
    d'4 r4 |

    \time 4/4
    \transpose c' f {
        r2 r8 e''8\mp c''8 e''8 |
        d''8. c''16 b'4. d''8 b'8 d''8 |
        c''8. b'16 a'4. c''8 a'8 c''8 |
        b'4 e''4 e''8 d''8 c''8 d''8 |
        e''2 r8 e''8\f a''8 e''8 |
        d''8. c''16 b'4. d''8 b'8 d''8 |
        c''8. b'16 a'4. c''8 a'8 c''8 |
        b'4 e''4 e''8 d''8 c''8 d''8 |
        a'2. r4 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Un mir zay- nen a- le bri- der!  Oy, oy, a- le bri- der!
    Un mir zin- gen frey- le- khe li- der!  Oy, oy, oy!
    Un mir hal- tn zikh in ey- nem!  Oy, oy, zikh in ey- nem!
    A-_zel- khes iz ni- to bay key- nem!  Oy, oy, oy!

    Oy, oy, oy, oy, oy, oy!
    Oy, oy, oy, oy, oy, oy!
    Oy, oy, oy, oy, oy, oy, oy, oy, oy, oy!

    Oy, oy, oy, oy, oy, oy!
    Oy, oy, oy, oy, oy, oy!
    Oy, oy, oy, oy, oy, oy, oy, oy, oy, oy!
}
textlb = \lyricmode {
    Un mir zay- nen a- le eyn- ik!  Oy, oy, a- le eyn- ik!
    Tsi mir zay- nen fil _ tsi vey- nik!  Oy, oy, oy!
    Un mir zay- nen frey- lekh, mun- ter!  Oy, oy, frey- lekh, mun- ter!
    Zing- en lid- er, tants- n un- ter!  Oy, oy oy!
}
textlc = \lyricmode {
    Frum un link far- eyn- ikht al- e, oy, oy, far- eyn- ikht al- e, 
    vi der khos- n mit di ka- le, oy, oy, oy!
    Vi der khum- esh mit di Rash- e, oy, oy mit di Rash- e,
    vi der kug- l mit di kash- e, oy, oy, oy!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
  \time 2/4
  d2:min | d2:min | d4:min g4:min | a4:7 d4:min |
}

previewnotes = {
  \time 2/4
  \key d \minor
  \tempo \tempostring
  a8 d'8 d'8 e'8 |
  f'8 f'8 e'8 d'8 |
  f'4 g'4 |
  f'8 f'8 e'8 d'8 |
}

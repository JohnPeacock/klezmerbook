\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 | }

melody = \transpose c f {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
}

altoharmony = \transpose c f {
    \key a \minor
    \time 2/4

    a'2 | gis'2 | a'4. g'8 | f'8 e'8 ees'8 d'8 |

    cis'2 | d'8 f'8 e'8 d'8 | e'4 e'8 < d' f' >8 | g'4 gis'4 |

    a'2 | gis'2 | a'4. g'8 | f'8 e'8 ees'8 d'8 |

    cis'2 | d'8 f'8 e'8 d'8 | e'4 e'8 < d' f' >8 | c'4 b4 |

    \repeat volta 2 {
        a2 | c'2 | d'2 | e'8 d'8 c'8 b8 |
        cis'4 d'8 f'8 | gis'4 a'4 | f'4 gis'4 | a'2
    }
}

altoharmonymidi = {
    \preintro
    \altoharmony
    \altoharmony
    \altoharmony
}

tenorharmony = \transpose c f {
    e'8 e'8 e'8 a'8 | b'4 b'8 ( a'8 ) | c''4 e''4 | c''2 |
    c''8 e''8 d''8 c''8 | a'2 | d''8 d''8 b'8 b''8 | g4 ( e'4 ) |
    e'8 e'8 e'8 a'8 | b'4 b'8 ( a'8 ) | c''4 e''4 | c''2 |
    c''8 e''8 d''8 c''8 | a'2 | d''8 d''8 b'8 b''8 | g4 ( e'4 ) |

    \repeat volta 2 {
        e''4 c''4 | a''8 b''8 f''4 | d''8 d''8 b''8 d''8 | d''2 |
        e''4 d''8 a'8 | r8 b'8 e'4 | a'8 a'8 g'8 g'8 | e'2 |
    }
}

tenorharmonymidi = {
    \preintro
    \tenorharmony
    \tenorharmony
    \tenorharmony
}

counter = {
}

countermidi = {
    \preintro
    \counter
    \counter
    \counter
}

bassline = {
}

basslinemidi = {
    \preintro
    \bassline
    \bassline
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmNV = {
    \time 2/4
    \tempo \tempostring
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtht
    s2 | \breakAfrt s2 | \breakAfft s2 | \breakAsxt s2 |
    \bar ".|:-||" \breakA
    \markCH \positionCH
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 |
    }
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 130
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Violin, Clarinet and Trumpet have same melody in different
% transpositions and ranges.  Should work up a trade off on parts
% and embelishment

violinnotes = \transpose c f {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
}

flutenotes = \transpose c f { \transpose c c' {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
} }

altoforflutenotes = \transpose c c' {
    \altoharmony
}

altoflutenotes = \transpose g c {
    \flutenotes
}

altoflutealtoharmony = \transpose g c {
    \altoforflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose c f {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = \transpose c f { \transpose c d' {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
} }

clarinetnotesmidi = {
    \preintro
    \clarinetnotes
    \clarinetnotes
    \clarinetnotes
}

altoforclarinetnotes = \transpose c d {
    \altoharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose c f { \transpose c d {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
} }

altofortrumpetnotes = \transpose c d {
    \altoharmony
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c f {
    \key a \minor
    \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c {
    \altoharmony
}

altosaxnotesmidi = \transpose ees c {
    \altoharmonymidi
}

melodyforaltosaxnotes = \transpose ees c' {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = \transpose c d, {
    \tenorharmony
}

tenorsaxnotesmidi = \transpose c d, {
    \tenorharmonymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianochords = \chordmode { \transpose c f {
    a4:min s4 | e4 s4 | a4:min s4 | a4:min s4 |
    a4:7 s4 | d4:min s4 | g4 s4 | c4 e4:7 |
    a4:min s4 | e4 s4 | a4:min s4 | a4:min s4 |
    a4:7 s4 | d4:min s4 | g4 s4 | c4 e4:7 |
    \repeat volta 2 {
        a4:min s4 | f4 s4 | g4 s4 | c4 s4 |
        a4:7 d4:min | e4:7 a4:m | f4 e4:7 | a4:min s4 |
    }
} }

guitarchords = \chordmode { \transpose c f {
    s4 a4:min | s4 e4 | s4 a4:min | s4 a4:min |
    s4 a4:7 | s4 d4:min | s4 g4 | c4 e4:7 |
    s4 a4:min | s4 e4 | s4 a4:min | s4 a4:min |
    s4 a4:7 | s4 d4:min | s4 g4 | c4 e4:7 |
    \repeat volta 2 {
        s4 a4:min | s4 f4 | s4 g4 | s4 c4 |
        a4:7 d4:min | e4:7 a4:m | f4 e4:7 | s4 a4:min |
    }
} }

chordletters = \pianochords

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotes = \transpose c f {
    \key a \minor
    \time 2/4

    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
    a8 a8 a8 c'8 | e'4 e'8( d'8) | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | c'4( e'4) |
    \repeat volta 2 {
        a'4 e'4 | c''8 b'8 a'4 | g'8 f'8 e'8 f'8 | g'2 |
        g'8 a'8 f'16 e'16 d'8 | r8 e'8 a4 | c'8 c'8 b8 b8 | a2 |
    }
}

pianorightlowernotes = {
%    \key a \minor
    \time 2/4
    \stemDown
}

pianorightnotesmidi = <<
    {
        \preintro
        \pianorightuppernotes \pianorightuppernotes \pianorightuppernotes
    }
    {
        \preintro
        \pianorightlowernotes \pianorightlowernotes \pianorightlowernotes
    }
>>

textl = \lyricmode {
    Ven ikh nem a bi- se- le yash, oy oy,
    Fin- klt alts un glantst; Fin- klt alt un glantst;
    Kh'gib a vorf di pus- "te___" flash, oy4 oy,
    Un ikh gey a tants,  Un ikh gey a "tants, ___"

    Oy, oy, tsu- ker- zis, halt mir bay di hent;
    Flekh- tn bey- ge- lekh __ di fis, Di ne- sho- me8 brent!
}

textlb = \lyricmode {
    Vos mir shvi- ger, ver mir __ _ vayb, oy oy,
    veys ikh zey di shlek! veys ikh zey di shlek!
    Mit- n ersht- n kel- "lish- ik" vayn, oy oy,
    shvim- en zey a- vek,
    shvim- en zey a- vek.

    Oy, oy, tsu- ker- zis, brid- er, kumt in kon,
    Lo- mir vayz- _ n vind un vist vos kabts- n kon!
}

textlc = \lyricmode {
    Vos mir day- ges, ver mir __ _ zorg, oy oy,
    shtrof nit far dir reyd, shtrof nit far dir reyd,
    gib mir, go- ten- yu, af borg, oy oy,
    khotch a trop- n freyd, khotch a trop- n freyd!

    Oy, tate, tsu- ker zis, s're- de- le zikh dreyt,
    s'kost- n tsor- es halb um zist,
    shpringt tse- zetst- er- heyt!
}

textld = \lyricmode {
    Ven ikh nem a bi- se- le yash, oy oy,
    Bin ikh gor- nit der, Bin ikh gor- nit der,
    Kh'gib a vorf di pus- "te___" flash, oy4 oy,
    un ikh gey a sher, un ikh gey a sher!

    Oy, oy, tsu- ker- zis, halt mir bay di hent;
    Flekh- tn bey- ge- lekh __ di fis, Di ne- sho- me8 brent!
}

pianoleftuppernotes = \transpose c' f {
    \key a \minor
    \time 2/4
    \chordmode {
        r4 a4:min | r4 e4 | r4 a4:min | r4 a4:min |
        r4 a4:7 | r4 d4:min | r4 g4 | c4 e4:7 |
        r4 a4:min | r4 e4 | r4 a4:min | r4 a4:min |
        r4 a4:7 | r4 d4:min | r4 g4 | c4 e4:7 |
        \repeat volta 2 {
            r4 a4:min | r4 f4 | r4 g4 | r4 c4 |
            a4:7 d4:min | e4:7 a4:m | f4 e4:7 | a4:min r4 |
        }
    }
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = <<
    {
        \preintro
        \pianoleftuppernotes \pianoleftuppernotes \pianoleftuppernotes
    }
    {
        \preintro
        \pianoleftlowernotes \pianoleftlowernotes \pianoleftlowernotes
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
altosaxchordletters = \transpose ees c \chordletters
guitarchordletters = \guitarchords
flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
leadsheetchordletters = \guitarchordletters
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters
altoflutechordletters = \transpose g c \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% we don't have a guitar part to expand for midi or specific playing

guitarnotes = \transpose c f {
    \key a \minor
    \time 2/4

    r4 g'4 | r4 g'4 | r4 g'4 | r4 g'4 |
    r4 g'4 | r4 g'4 | r4 g'4 | g'4 g'4 |
    r4 g'4 | r4 g'4 | r4 g'4 | r4 g'4 |
    r4 g'4 | r4 g'4 | r4 g'4 | g'4 g'4 |
    \repeat volta 2 {
        r4 g'4 | r4 g'4 | r4 g'4 | r4 g'4 |
        g'4 g'4 | g'4 g'4 | g'4 g'4 | r4 g'4 |
    }
}

% guitarnotesmidi = { \preintro \guitarnotes \guitarnotes \guitarnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = \transpose c f {
    \key a \minor
    \time 2/4

    a,4 e4 | b,4 e4 | a,4 e4 | e4 b,4 |
    a,4 e4 | d4 a,4 | g,4 r4 | c8 r8 e4-- |
    a,4 e4 | b,4 e4 | a,4 e4 | e4 b,4 |
    a,4 e4 | d4 a,4 | g,4 r4 | c8 r8 e4-- |
    \repeat volta 2 {
        a,4 r4 | f4 c4 | g4 d4 | c4 c4 |
        a,4 d4 | r8 e8 a,4-^ | f4 e4 | a,4 r4 |
    }
}

bassnotesmidi = { \preintro \bassnotes \bassnotes \bassnotes }

euphoniumnotes = { \bassnotes }
euphoniumnotesmidi = { \bassnotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode { \transpose c f {
    a4:min s4 | e4 s4 | a4:min s4 | a4:min s4 |
    a4:7 s4 | d4:min s4 | g4 s4 | c4 e4:7 |
} }

previewnotes = \transpose c f' {
    \key a \minor
    \time 2/4
    a8 a8 a8 c'8 | e'4 e'8 d'8 | e'4 a'4 | e'2 |
    e'8 g'8 f'8 e'8 | d'2 | g'8 f'8 e'8 d'8 | e'2 |
}

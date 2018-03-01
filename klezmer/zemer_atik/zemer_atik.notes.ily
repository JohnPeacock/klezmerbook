\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    \bar "|."
}

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmsectiona
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronome = \context Voice = "metronome" {
    \time 4/4
    \preintro
    \tempo 4 = 100
    \bandmsectiona
    \bandmsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Od na- shu- va el ni- gun a- tik
    v'- ha- ze- mer yif v'- ye- e- rav
    od ga- vi- a mi'- shu- mar na- shik na- shik
    a- li- zei ei- na- yim v'- lei- vav
    to- vu to- vu o- ho- lei- nu
    ki ki ma- chol hif- tzi- a
    to- vu to- vu o- ho- lei- nu
    od na- shu- va el ni- gun a- tik
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    fis'8 g'8 ees'8 fis'8 g'8 a'8 fis'8 g'8 |
    a'2. r4 |
    a'8 bes'8 c''8 d''8 c''8 bes'8 a'8 g'8 |
    a'2. r4 |

    a'8 d''8 d''8 c''8 c''8 bes'8 bes'8 a'8 |
    g'4 a'4 fis'2 |
    fis'8 g'8 ees'8 fis'8 g'8 a'8 fis'8 ees'8 |
    d'2. r4 |

    d''2 d''2 |
    c''8 d''8 c''8 bes'8 c''4 a'4 |
    bes'2. a'8 g'8 |
    a'4 d''4 a'4 d'4 |

    d''2 d''2 |
    c''8 d''8 c''8 bes'8 c''4 a'4 |
    g'8 a'8 bes'8 g'8 a'8 bes'8 a'8 d'8 |
    g'2. r4 |
}

melody = {
    \key bes \major
    \melodysectiona
}

melodymidi = {
    \preintro
    \melodysectiona
    \melodysectiona
}

%--------------------------------------------------

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \key bes \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
    r2 d''4 c''4 |
    d''2. r4 |
    r2 d''4 ees''4 |
    d''2. r4 |

    r2 a''8 g''8 g''8 fis''8 |
    ees''8 d''8 ees''8 c''8 d''2 |
    d''8 ees''8 c''8 d''8 ees''8 fis''8 d''8 ees''8 |
    fis''2. r4 |

    r4 bes'4 d''4 bes'4 |
    r4 a'4 c''4 a'4 |
    r4 g'4 bes'4 g'4 |
    r4 a'4 d''4 c''4 |

    r4 bes'4 d''4 bes'4 |
    r4 a'4 d''4 a'4 |
    r4 g'4 a'4 d''4 |
    g'4 r4 r2 |
}

harmony = {
    \key bes \major
    \time 4/4
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    d'2 r2 |
    r4 a'8 g'8 fis'8 ees'8 d'8 c'8 |
    d'2 r2 |
    r4 fis'8 g'8 fis'8 ees'8 ees'8 d'8 |

    d'2 r2 |
    r2. d''4 ~ |
    d''2 ees''4 c''4 |
    d''2. r4 |

    bes'2 bes'2 |
    a'8 bes'8 a'8 g'8 a'4 fis'4 |
    g'2. fis'8 ees'8 |
    fis'4 a'4 fis'4 a'4 |

    bes'2 bes'2 |
    a'8 bes'8 a'8 g'8 a'4 fis'4 |
    ees'4 d'8 c'8 c'4 d'4 |
    bes4 a4 g4 r4 |
}

counter = {
    \key bes \major
    \time 4/4
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key bes \major
    \time 4/4
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \melodysectiona
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key bes \major
    \time 4/4
    \clarinetsectiona
}

clarinetnotesmidi = \transpose c d' {
    \key bes \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \melodysectiona
}

trumpetnotes = \transpose c d {
    \key bes \major
    \time 4/4
    \trumpetsectiona
}

trumpetnotesmidi = \transpose c d {
    \key bes \major
    \time 4/4
    \preintro
    \trumpetsectiona
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \countersectiona
}

trombonenotes = \transpose c c, {
    \key bes \major
    \time 4/4
    \trombonesectiona
}
trombonenotesmidi = {
    \key bes \major
    \time 4/4
    \preintro
    \trombonesectiona
    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarnotes = {
    \time 4/4
    \key bes \major
    \guitarsectiona
}

guitarnotesmidi = {
    \time 4/4
    \key bes \major
    \preintro
    \guitarsectiona
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    d4\f d8 d8 a,8 r8 d8 r8 |
    d4 d8 d8 a,8 r8 d8 r8 |
    c4 c8 c8 g,8 r8 c8 r8 |
    d4 d8 d8 a,8 r8 d8 r8 |

    d4 d8 d8 a,8 r8 d8 r8 |
    c4 c8 c8 d8 r8 d8 r8 |
    d4 d8 d8 c8 r8 c8 r8 |
    d4 fis4 ees4 d4 |

    bes,2*3/4-. s2*1/4 bes,2*3/4-. s2*1/4 |
    f,4 c4 d4 a,4 |
    g,2*3/4-. s2*1/4 g,4 d4 |
    a,4 d4 a,4 d4 |

    bes,2*3/4-. s2*1/4 bes,2*3/4-. s2*1/4 |
    f,4 c4 d4 a,4 |
    ees4 bes,4 c4 d4 |
    g4 d4 g,4 bes,4 |

% piano bass line, compare notes
%    \key bes \major
%    \time 4/4
%    d,2 d2 |
%    d,4. a,8 d4 d4 |
%    d,2 d2 |
%    d,4. a,8 d4 d4 |
%
%    d,2 d2 |
%    c2 d2 |
%    d4 c4 bes4 c4 |
%    d4. ees8 f8 ees8 d8 c8 |
%
%    bes,2 bes,4 d4 |
%    f,2 f,4 fis,4 |
%    g,4 a,4 bes,4 c4 |
%    d4 a,4 d2 |
%
%    bes,2 bes,4 d4 |
%    f,2 d,2 |
%    ees4 c4 a,4 d4 |
%    g,4 d,4 g,4 r4 |
}

bassline = {
    \time 4/4
    \key bes \major
    \basssectiona
}

basslinemidi = {
    \time 4/4
    \key bes \major
    \preintro
    \basssectiona
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    d1 | d1 | c1:min | d1 |
    d1 | c2:min d2 | d2 c2:min | d1 |
    bes1 | f2 d2:7 | g1:min | d1 |
    bes1 | f2 d2:7 | ees2 c4:min d4:7 | g1:min |
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
}

scorechordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
}

guitarchordletters = {
    \chordletterssectiona
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

pianorightuppernotes = {
    \key bes \major
    \time 4/4
    r4 < a d' >4 r4 < g c' d' >4 |
    r4 < a d' >4 r4 < g c' d' >4 |
    r4 < a d' >4 r4 < g c' d' >4 |
    r4 < a d' >4 r4 < g c' d' >4 |

    r4 < a d' >4 r4 < a d' >4 |
    r4 < g bes c' ees' >4 r4 < fis a d' >4 |
    r4 < a d' >4 r4 < g c' ees' >4 |
    r4 < fis a d' >4 r2 |

    r4 < f bes >4 r4 < f bes >8 < f bes >8 |
    r4 < c' f' >4 r4 < c' fis' >8 < c' fis' >8 |
    bes4 c'4 d'4 ees'4 |
    fis'4 d'4 d'4 c'4 |

    r4 < f bes >4 r4 < f bes >8 < f bes >8 |
    r4 < c' f' >4 r4 < c' fis' >4 |
    r4 < g c' ees' >4 r4 < fis a d' >4 |
    r4 < fis a d' >4 < g bes d' >4 r4 |
}

pianorightlowernotes = {
    \key bes \major
    \time 4/4
}

pianoleftuppernotes = {
    \key bes \major
    \time 4/4
    d,2 d2 |
    d,4. a,8 d4 d4 |
    d,2 d2 |
    d,4. a,8 d4 d4 |

    d,2 d2 |
    c2 d2 |
    d4 c4 bes4 c4 |
    d4. ees8 f8 ees8 d8 c8 |

    bes,2 bes,4 d4 |
    f,2 f,4 fis,4 |
    g,4 a,4 bes,4 c4 |
    d4 a,4 d2 |

    bes,2 bes,4 d4 |
    f,2 d,2 |
    ees4 c4 a,4 d4 |
    g,4 d,4 g,4 r4 |
}

pianorightnotesmidi = {
    \preintro
    <<
        { \pianorightuppernotes }
        { \pianorightlowernotes }
    >>
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftuppernotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
}

drumslow = \drummode {
    \time 4/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
    \key bes \major
    \time 4/4
    \melody
}
flutenotesmidi = { \preintro \flutenotes }

altosaxnotes = \transpose c a {
    \key bes \major
    \time 4/4
    \melody
}
altosaxnotesmidi = { \preintro \altosaxnotes }

tenorsaxnotes = \transpose c d {
    \key bes \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = { \preintro \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = \transpose c c, { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key bes \major
    \time 4/4
    \melody
}
violinnotesmidi = { \preintro \violinnotes }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \preintro \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key bes \major
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
    d1 | d1 | c1:min | d1 |
}

previewnotes = {
    \key bes \major
    \time 4/4
    \tempo \tempostring
    fis'8 g'8 ees'8 fis'8 g'8 a'8 fis'8 g'8 |
    a'2. r4 |
    a'8 bes'8 c''8 d''8 c''8 bes'8 a'8 g'8 |
    a'2. r4 |
}

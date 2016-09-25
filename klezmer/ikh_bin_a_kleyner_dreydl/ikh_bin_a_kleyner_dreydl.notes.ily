\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 1 November 2003
%
% History:
%    1 November 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

bandmintro = {
    \partial 8 s8 | \breakIN
    \bar "||"
}

bandmsectiona = {
    \markA \positionA
    s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor
    s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 | \breakAeit
    s2 | \breakAnin
    s2 | \breakAten
    s2 | \breakAelv
    s2 | \breakAtwl
    s2 | \breakAtht
    s2 | \breakAfrt
    s2 | \breakAfft
    s2 |
    \breakA
    \bar "||"
}

bandmsectionb = {
    \markB \positionB
    s2 | \breakBone
    s2 | \breakBtwo
    s2 | \breakBtre
    s2 | \breakBfor
    s2 | \breakBfiv
    s2 | \breakBsix
    s2 | \breakBsev
    s2 | \breakBeit
    s2 | \breakBnin
    s2 | \breakBten
    s2 | \breakBelv
    s2 | \breakBtwl
    s2 | \breakBtht
    s2 | \breakBfrt
    s2 | \breakBfft
    s2 |
    \breakB
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 | }

midiintro = { s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 112
    \midiintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ikh bin a kleyn- er drey- dl
    Ge- makht bin ikh fun blay
    To lo- mir al- e shpil- n
    In drey- dl eyns tsvey dray

    Oy, drey- dl, drey- dl, drey- dl
    Oy, drey zikh, drey- dl, drey
    To lo- mir al- e shpil- n
    In drey- dl eyns un tsvey

    Un ikh hob lib tsu tants- n
    Zikh drey- en in a rod
    To lo- mir al- e tants- n
    A drey- dl- ka- ra- hod

    Oy, drey- dl, drey- dl, drey- dl
    Oy, drey zikh, drey- dl, drey
    To lo- mir al- e shpil- n
    In drey- dl eyns un tsvey
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
    \partial 8 g'8 |
}

melodymidiintro = {
    s4 s8 g'8 |
}

melodysectiona = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    f'4 r8 a8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f'8 d'4 d'8 |
    g'8 [ f'8 ] e'8 [ d'8 ] |
    c'4 r8 e'8 |

    g'8 [ e'8 ] g'8 [ e'8 ] |
    g'8 e'4 e'8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    d'4 r8 a8 |

    f'8 [ d'8 ] f'8 [ d'8 ] |
    f'8 d'4 d'8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c'4. g'8 |
}

melodysectionb = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    e''4 r8 a'8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f''8 d''4 d''8 |
    g''8 [ f''8 ] e''8 [ d''8 ] |
    c''4 r8 e''8 |

    g''8 [ e''8 ] g''8 [ e''8 ] |
    g''8 e''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    d''4 r8 a'8 |
    f''8 [ d''8 ] f''8 [ d''8 ] |
    f''8 d''4 d''8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c''4. r8 |
}

melody = {
    \key c \major
    \melodyintro
    \melodysectiona
    \melodysectionb
}

melodymidi = {
    \preintro
    \melodymidiintro
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
}

%--------------------------------------------------

melodystaff = \context Staff = "melodystaff" \with {
    instrument = "Melody"
    midiInstrument = "violin"
    instr = ""
}  <<
    \clef violin
    \bandm
    \new Voice { \key c \major \time 2/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyintro = {
    \partial 8 c'8 |
}

harmonymidiintro = {
    s4 s8 c'8 |
}

harmonysectiona = {
    e'8 [ e'8 ] f'8 [ f'8 ] |
    g'8 e'4 c'8 |
    c'8 [ c'8 ] a8 [ a8 ] |
    d'4 r8 a8 |

    f'8 [ f'8 ] g'8 [ g'8 ] |
    a8 a4 b8 |
    b8 [ c'8 ] b8 [ b8 ] |
    g4 r8 c'8 |

    c'8 [ c'8 ] b8 [ b8 ] |
    e'8 c'4 b8 |
    a8 [ a8 ] a8 [ a8 ] |
    b4 r8 a8 |

    b8 [ b8 ] b8 [ b8 ] |
    d'8 b4 g8 |
    d'8 [ d'8 ] f'8 [ f'8 ] |
    c'4. g'8 |
}

harmonysectionb = {
    c'4. d'8 |
    e'4. c'8 |
    e'4 cis'4 |
    d'8 [ f'8 ] a'8 [ e'8 ] |

    f'4. g'8 |
    a'4. b'8 |
    d''4 f'4 |
    e'8 [ c'8 ] e'8 [ g'8 ] |

    c''4. b'8 |
    e'4. g'8 |
    a'4 d''4 |
    f'8 [ g'8 ] g'8 [ f'8 ] |

    d'4. f'8 |
    b'4. g'8 |
    b8 [ g8 ] b8 [ d'8 ] |
    c'4. r8 |
}

harmony = {
    \time 2/4
    \harmonyintro
    \harmonysectiona
    \harmonysectionb
}

harmonymidi = {
    \time 2/4
    \preintro
    \harmonymidiintro
    \harmonysectiona
    \harmonysectionb
    \harmonysectiona
    \harmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro = {
    \partial 8 s8 |
}

countermidiintro = {
    s2 |
}

countersectiona = {
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |
}

countersectionb = {
    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |

    s2 |
    s2 |
    s2 |
    s2 |
}

counter = {
    \time 2/4
    \counterintro
    \countersectiona
    \countersectionb
}

countermidi = {
    \time 2/4
    \preintro
    \countermidiintro
    \countersectiona
    \countersectionb
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key c \major
    \time 2/4
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \partial 8 g'8 |
}

clarinetmidiintro = {
    s4 s8 g'8 |
}

clarinetsectiona = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    f'4 r8 a8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f'8 d'4 d'8 |
    g'8 [ f'8 ] e'8 [ d'8 ] |
    c'4 r8 e'8 |

    g'8 [ e'8 ] g'8 [ e'8 ] |
    g'8 e'4 e'8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    d'4 r8 a8 |

    f'8 [ d'8 ] f'8 [ d'8 ] |
    f'8 d'4 d'8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c'4. g'8 |
}

clarinetsectionb = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    e''4 r8 a'8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f''8 d''4 d''8 |
    g''8 [ f''8 ] e''8 [ d''8 ] |
    c''4 r8 e''8 |

    g''8 [ e''8 ] g''8 [ e''8 ] |
    g''8 e''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    d''4 r8 a'8 |
    f''8 [ d''8 ] f''8 [ d''8 ] |
    f''8 d''4 d''8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c''4. r8 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key c \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = \transpose c d' {
    \key c \major
    \time 2/4
    \preintro
    \clarinetmidiintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \partial 8 g'8 |
}

trumpetmidiintro = {
    s4 s8 g'8 |
}

trumpetsectiona = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    f'4 r8 a8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f'8 d'4 d'8 |
    g'8 [ f'8 ] e'8 [ d'8 ] |
    c'4 r8 e'8 |

    g'8 [ e'8 ] g'8 [ e'8 ] |
    g'8 e'4 e'8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    d'4 r8 a8 |

    f'8 [ d'8 ] f'8 [ d'8 ] |
    f'8 d'4 d'8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c'4. g'8 |
}

trumpetsectionb = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    e''4 r8 a'8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f''8 d''4 d''8 |
    g''8 [ f''8 ] e''8 [ d''8 ] |
    c''4 r8 e''8 |

    g''8 [ e''8 ] g''8 [ e''8 ] |
    g''8 e''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    d''4 r8 a'8 |
    f''8 [ d''8 ] f''8 [ d''8 ] |
    f''8 d''4 d''8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c''4. r8 |
}

%-------------------------------------------------

trumpetnotes = \transpose c d {
    \key c \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = \transpose c d {
    \key c \major
    \time 2/4
    \preintro
    \trumpetmidiintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    \partial 8 s8 |
}

trombonemidiintro = {
    s2 |
}

trombonesectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

trombonesectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

trombonenotes = \transpose c c, {
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
}
trombonenotesmidi = {
    \preintro
    \trombonemidiintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro = {
    \partial 8 s8 |
}

guitarmidiintro = {
    s2 |
}

guitarsectiona = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarsectionb = {
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
    s2 |
}

guitarnotes = {
    \time 2/4
    \key c \major
    \guitarintro
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi = {
    \time 2/4
    \key c \major
    \preintro
    \guitarmidiintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumintro = {
    \partial 8 r8 |
}

guitarstrummidiintro = {
    s4 s8 r8 |
}

guitarstrumsectiona = {
    c'8 \improvisationOn c8 \improvisationOff d'8 \improvisationOn g8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    a8 \improvisationOn a8 \improvisationOff a8 \improvisationOn a8 \improvisationOff |
    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |

    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn a8 \improvisationOff |
    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |

    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    e'8 \improvisationOn a8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |

    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 \improvisationOff |
    d'8 \improvisationOn g4 g8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 |
    c4 c4 \improvisationOff |
}

guitarstrumsectionb = {
    c'8 \improvisationOn c8 \improvisationOff d'8 \improvisationOn g8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    a8 \improvisationOn a8 \improvisationOff a8 \improvisationOn a8 \improvisationOff |
    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |

    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn a8 \improvisationOff |
    d'8 \improvisationOn d8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |

    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    c'8 \improvisationOn c8 \improvisationOff g8 \improvisationOn c8 \improvisationOff |
    e'8 \improvisationOn a8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff a8 \improvisationOn d8 \improvisationOff |

    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 \improvisationOff |
    d'8 \improvisationOn g4 g8 \improvisationOff |
    d'8 \improvisationOn g8 \improvisationOff b8 \improvisationOn g8 |
    c4 c4 \improvisationOff |
}

guitarstrumnotes = {
    \time 2/4
    \key c \major
    \guitarstrumintro
    \guitarstrumsectiona
    \guitarstrumsectionb
}

guitarstrumnotesmidi = {
    \time 2/4
    \key c \major
    \preintro
    \guitarstrummidiintro
    \guitarstrumsectiona
    \guitarstrumsectionb
    \guitarstrumsectiona
    \guitarstrumsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    \partial 8 r8 |
}

bassmidiintro = {
    s4. r8 |
}

basssectiona = {
    c4 b,4 |
    c4 g,4 |
    a,4 cis4 |
    d4 r4 |

    f4 e4 |
    f4 d4 |
    g,4 b,4 |
    c4 r4 |

    c4 c4 |
    g4 e4 |
    g,8 a,8 a,8 c8 |
    b,4 r4 |

    d4 b,4 |
    f4 e4 |
    b,4 d8 b,8 |
    c4. r8 |
}

basssectionb = {
    c4 b,4 |
    c4 g,4 |
    a,4 cis4 |
    d4 r4 |

    f4 e4 |
    f4 d4 |
    g,4 b,4 |
    c4 r4 |

    c4 c4 |
    g4 e4 |
    g,8 a,8 a,8 c8 |
    b,4 r4 |

    d4 b,4 |
    f4 e4 |
    b,4 d8 b,8 |
    c4. r8 |
}

bassline = {
    \time 2/4
    \key c \major
    \bassintro
    \basssectiona
    \basssectionb
}

basslinemidi = {
    \time 2/4
    \key c \major
    \preintro
    \bassmidiintro
    \basssectiona
    \basssectionb
    \basssectiona
    \basssectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 8 s8 |
}

chordlettersmidiintro = \chordmode {
    s2 |
}

chordletterssectiona = \chordmode {
    c4 g4:7 |
    c2 |
    a4 a4:7 |
    d2:min |

    d4:min a4 |
    d2:min |
    g2:7 |
    c2 |

    c4 c4:maj7 |
    c4 c4:maj7 |
    a4:7 d4:min |
    g4:7 d4:min6 |

    g2:7 |
    g2:7 |
    g2:7 |
    c2 |
}

chordletterssectionb = \chordmode {
    c4 g4:7 |
    c2 |
    a4 a4:7 |
    d2:min |

    d4:min a4 |
    d2:min |
    g2:7 |
    c2 |

    c4 c4:maj7 |
    c4 c4:maj7 |
    a4:7 d4:min |
    g4:7 d4:min6 |

    g2:7 |
    g2:7 |
    g2:7 |
    c2 |
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

%-------------------------------------------------

guitarchordlettersintro = \chordmode {
    \partial 8 s8 |
}

guitarchordlettersmidiintro = \chordmode {
    s2 |
}

guitarchordletterssectiona = \chordmode {
    s8 c8 s8 g8:7 |
    s8 c4. |
    s8 a8 s8 a8:7 |
    s8 d4.:min |

    s8 d8:min s8 a8 |
    s8 d4.:min |
    s8 g4.:7 |
    s8 c4. |

    s8 c8 s8 c8:maj7 |
    s8 c8 s8 c8:maj7 |
    s8 a8:7 s8 d8:min |
    s8 g8:7 s8 d8:min6 |

    s8 g4.:7 |
    s8 g4.:7 |
    s8 g4.:7 |
    s8 c4. |
}

guitarchordletterssectionb = \chordmode {
    s8 c8 s8 g8:7 |
    s8 c4. |
    s8 a8 s8 a8:7 |
    s8 d4.:min |

    s8 d8:min s8 a8 |
    s8 d4.:min |
    s8 g4.:7 |
    s8 c4. |

    s8 c8 s8 c8:maj7 |
    s8 c8 s8 c8:maj7 |
    s8 a8:7 s8 d8:min |
    s8 g8:7 s8 d8:min6 |

    s8 g4.:7 |
    s8 g4.:7 |
    s8 g4.:7 |
    s8 c4. |
}

guitarchordletters = \chordmode {
    \time 2/4
    \guitarchordlettersintro
    \guitarchordletterssectiona
    \guitarchordletterssectionb
}

%-------------------------------------------------

scorechordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

clarinetchordletters = \transpose bes, c \scorechordletters
tenorsaxchordletters = \transpose bes, c \scorechordletters
trumpetchordletters = \transpose bes, c \scorechordletters
altosaxchordletters = \transpose ees c \scorechordletters
flutechordletters = \scorechordletters
violinchordletters = \scorechordletters
trombonechordletters = \scorechordletters
leadsheetchordletters = \chordletters
pianochordletters = \chordletters
melodychordletters = \chordletters

basschordletters = \chordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    \partial 8 g'8 |
}

pianorightuppermidiintro = {
    s4 s8 g'8 |
}

pianorightuppersectiona = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    f'4 r8 a8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f'8 d'4 d'8 |
    g'8 [ f'8 ] e'8 [ d'8 ] |
    c'4 r8 e'8 |

    g'8 [ e'8 ] g'8 [ e'8 ] |
    g'8 e'4 e'8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    d'4 r8 a8 |

    f'8 [ d'8 ] f'8 [ d'8 ] |
    f'8 d'4 d'8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c'4. g'8 |
}

pianorightuppersectionb = {
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    e''4 r8 a'8 |

    d''8 [ d''8 ] e''8 [ e''8 ] |
    f''8 d''4 d''8 |
    g''8 [ f''8 ] e''8 [ d''8 ] |
    c''4 r8 e''8 |

    g''8 [ e''8 ] g''8 [ e''8 ] |
    g''8 e''4 e''8 |
    g''8 [ g''8 ] f''8 [ e''8 ] |
    d''4 r8 a'8 |
    f''8 [ d''8 ] f''8 [ d''8 ] |
    f''8 d''4 d''8 |
    g'8 [ g'8 ] a'8 [ b'8 ] |
    c''4. r8 |
}

pianorightuppernotes = {
    \key c \major
    \time 2/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianoleftupperintro = {
    \partial 8 r8 |
}

pianoleftuppermidiintro = {
    s4. r8 |
}

pianoleftuppersectiona = {
    c4 b,4 |
    c4 g,4 |
    a,4 cis4 |
    d4 r4 |

    f4 e4 |
    f4 d4 |
    g,4 b,4 |
    c4 r4 |

    c4 c4 |
    g4 e4 |
    g,8 a,8 a,8 c8 |
    b,4 r4 |

    d4 b,4 |
    f4 e4 |
    b,4 d8 b,8 |
    c4. r8 |
}

pianoleftuppersectionb = {
    c4 b,4 |
    c4 g,4 |
    a,4 cis4 |
    d4 r4 |

    f4 e4 |
    f4 d4 |
    g,4 b,4 |
    c4 r4 |

    c4 c4 |
    g4 e4 |
    g,8 a,8 a,8 c8 |
    b,4 r4 |

    d4 b,4 |
    f4 e4 |
    b,4 d8 b,8 |
    c4. r8 |
}

pianoleftuppernotes = {
    \key c \major
    \time 2/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianorightnotesmidi = {
    \preintro
    \pianorightuppermidiintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectiona
    \pianorightuppersectionb
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftuppermidiintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectiona
    \pianoleftuppersectionb
}

pianorightlowernotes = { }
pianoleftlowernotes = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppernotes = { \pianorightuppernotes }

accordionleftupperintro = {
    \partial 8 r8 |
}

accordionleftuppermidiintro = {
    s4. r8 |
}

accordionleftuppersectiona = {
    c8 < e g >8 d8 < g b >8 |
    c8 < e g >8 g,8 < e g >8 |
    a,8 < e a >8 a,8 < e g >8 |
    d8 < f a >8 a,8 < f a >8 |

    d8 < f a >8 a,8 < e a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < g b >8 b,8 < g b >8 |
    c8 < e g >8 g,8 < e g >8 |

    c8 < e g >8 g,8 < g b >8 |
    c8 < e g >8 g,8 < g b >8 |
    a,8 < e g >8 a,8 < d a >8 |
    d8 < g b >8 a,8 < d b >8 |

    g,8 < d g >8 g,8 < d f >8 |
    d8 < d g b f' >4 < d g b f' >8 |
    g,8 < d g >8 g,8 < d f >8 |
    < c e g >8 r8 < c e g >8 r8 |
}

accordionleftuppersectionb = {
    c8 < e g >8 d8 < g b >8 |
    c8 < e g >8 g,8 < e g >8 |
    a,8 < e a >8 a,8 < e g >8 |
    d8 < f a >8 a,8 < f a >8 |

    d8 < f a >8 a,8 < e a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < g b >8 b,8 < g b >8 |
    c8 < e g >8 g,8 < e g >8 |

    c8 < e g >8 g,8 < g b >8 |
    c8 < e g >8 g,8 < g b >8 |
    a,8 < e g >8 a,8 < d a >8 |
    d8 < g b >8 a,8 < d b >8 |

    g,8 < d g >8 g,8 < d f >8 |
    d8 < d g b f' >4 < d g b f' >8 |
    g,8 < d g >8 g,8 < d f >8 |
    < c e g >8 r8 < c e g >8 r8 |
}

accordionleftuppernotes = {
    \key c \major
    \time 2/4
    \accordionleftupperintro
    \accordionleftuppersectiona
    \accordionleftuppersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
}

drumslow = \drummode {
    \time 2/4
    \stemDown
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
    \key c \major
    \time 2/4
    \melody
}
flutenotesmidi = \transpose c c' { \melodymidi }

altosaxnotes = \transpose c a, {
    \key c \major
    \time 2/4
    \melody
}
altosaxnotesmidi = \transpose c a { \harmonymidi }

tenorsaxnotes = \transpose c d {
    \key c \major
    \time 2/4
    \harmony
}
tenorsaxnotesmidi = \transpose c d { \harmonymidi }
tenorforclarinetnotes = \transpose c c' { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorfortrombonenotes = \transpose c' bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

violinnotes = {
    \key c \major
    \time 2/4
    \melody
}
violinnotesmidi = { \melodymidi }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \preintro \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key c \major
    \time 2/4
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
    \partial 8 s8
    c4 g4:7 |
    c2 |
    a4 a4:7 |
    d2:min |
}

previewnotes = {
    \key c \major
    \time 2/4
    \tempo \tempostring
    \partial 8 g'8
    \bar "||"
    \markA \positionA
    c''8 [ c''8 ] d''8 [ d''8 ] |
    e''8 c''4 e''8 |
    g'8 [ g'8 ] f'8 [ e'8 ] |
    f'4 r8 a8 |
}

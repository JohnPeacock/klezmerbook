\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This file is built from a template file that
% introduces the basic structure of piece for a
% small ensemble.  The instruments regularly seen
% are here and the basic structure of klezmer
% orchestration is represented.

% A common way to fill this in is to identify each
% of the parts according to the role it fills in
% piece.  The parts are then assigned to
% instruments as necessary.

% Within each part it may be appropriate to
% divide up into sections so that the midi can
% better represent jumps "del segno" and jumps to
% codas.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for break, bars and
% marks that are used in all of the printed
% scores.

bandmsectiona = {
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    \bar "||"
    \markCH \positionCH
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 |
    \markDC \positionDC
}

bandmcoda = {
}

bandmNV = {
    \tempo \tempostring
    \time 4/4
    \bandmsectiona
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = {
    s1 |
}

metronomesectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

metronomecoda = {
}

metronome =  \context Voice = "metronome" {
    \time 4/4

    \preintro
    \tempo 4 = 120
    \metronomesectiona
    \metronomesectiona
    \metronomesectiona
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |
%
    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

melodycoda = {
}

melody = {
    \key f \major
    \time 4/4
    \melodysectiona
    \melodycoda
}

melodymidi = {
    \key f \major
    \time 4/4
    \preintro
    \melodysectiona
    \melodysectiona
    \melodysectiona
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    d4 r4 g,4 r4 |
    d4 r4 g,4 r4 |
    d4 r4 g,4 r4 |
    c4 f4 a,4 r4 |

    d4 r4 g,4 r4 |
    d4 r4 g,4 r4 |
    d4 r4 g,4 r4 |
    a,4 e4 d4 r4 |

    c4 r4 g,4 r4 |
    c4 r4 f,4 r4 |
    c4 r4 g,4 r4 |
    f4 c4 f4 r4 |

    c4 r4 g,4 r4 |
    d4 r4 a,4 r4 |
    cis4 r4 a,4 r4 |
    d4 r4 a,4 r4 |

    cis4 r4 a,4 r4 |
    d4 r4 a,4 r4 |
    c4 r4 g,4 r4 |
    c4 r4 f,4 r4 |

    a,4 r4 cis4 r4 |
    d4 r4 a,4 r4 |
    g,4 r4 a,4 r4 |
    d4 a,4 d4 r4 |
}

basslinecoda = {
}

bassline = {
    \key f \major
    \time 4/4
    \basslinesectiona
    \basslinecoda
}

basslinemidi = {
    \key f \major
    \time 4/4
    \preintro
    \basslinesectiona
    \basslinesectiona
    \basslinesectiona
    \basslinecoda
}

basspartsectiona = {
    \basslinesectiona
}

basspartcoda = {
    \basslinecoda
}

basspart = {
    \key f \major
    \time 4/4
    \basspartsectiona
    \basspartcoda
}

basspartmidi = {
    \key f \major
    \time 4/4
    \preintro
    \basspartsectiona
    \basspartsectiona
    \basspartsectiona
    \basspartcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

guitarcoda = {
}

guitarnotes = {
    \key f \major
    \time 4/4
    \guitarsectiona
    \guitarcoda
}

guitarnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \guitarsectiona
    \guitarsectiona
    \guitarsectiona
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumsectiona = {
    \improvisationOn
    r4 d4 r4 g4 | % d2:min g2:min |
    r4 d4 r4 g4 | % d2:min g2:min |
    r4 d4 r4 g4 | % d2:min g2:min |
    c4 f4 a4 r4 | % c4:7 f4 a4:7 s4 |

    r4 d4 r4 g4 | % d2:min g2:min |
    r4 d4 r4 g4 | % d2:min g2:min |
    r4 d4 r4 g4 | % d2:min g2:min |
    a4 a4 d4 r4 | % a2:7 d2:min |

    r4 c8 c8 r4 c4 | % c1:7 |
    r4 f8 f8 r4 f4 | % f1 |
    r4 c8 c8 r4 c4 | % c1:7 |
    r4 f8 f8 f4 r4 | % f1 |

    r4 c8 c8 r4 c4 | % c1:7 |
    r4 d8 d8 r4 d4 | % d1:min |
    r4 a8 a8 r4 a4 | % a1:7 |
    d4 r4 d4 r4 | % d1:min |

    r4 a8 a8 r4 a8 a8 | % a1:7 |
    r4 d8 d8 r4 d8 d8 | % d1:min |
    r4 c8 c8 r4 c8 c8 | % c1:7 |
    f4 r4 f4 r4 | % f2. s4 |

    r4 a8 a8 r4 a8 a8 | % a1:7 |
    r4 d8 d8 r4 d8 d8 | % d1:min |
    r4 g8 g8 r4 a8 a8 | % g2:min a2:7 |
    d4 r4 d4 r4 | % d1:min |
    \improvisationOff
}

guitarstrumcoda = {
}

guitarstrumnotes = {
    \key f \major
    \time 4/4
    \guitarstrumsectiona
    \guitarstrumcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    d2:min g'2:min | d2:min g'2:min | d2:min g'2:min | c4:7 f4 a4:7 s4 |
    d2:min g'2:min | d2:min g'2:min | d2:min g'2:min | a2:7 d2:min |
    c1:7 | f1 | c1:7 | f1 |
    c1:7 | d1:min | a1:7 | d1:min |

    a1:7 | d1:min | c1:7 | f2. s4 |
    a1:7 | d1:min | g'2:min a2:7 | d1:min |
}

chordletterscoda = \chordmode {
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterscoda
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

flutesectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |

    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |
%
    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

flutecoda = {
}

flutenotes = {
    \key f \major
    \time 4/4
    \flutesectiona
    \flutecoda
}

flutenotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \flutesectiona
    \metronomesectiona
    \flutesectiona
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |

    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |
%
    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

clarinetcoda = {
}

clarinetnotes = \transpose bes, c {
    \key f \major
    \time 4/4
    \clarinetsectiona
    \clarinetcoda
}

clarinetnotesmidi = \transpose bes, c {
    \key f \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \metronomesectiona
    \clarinetsectiona
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

tenorsaxcoda = {
}

tenorsaxnotes = \transpose bes, c {
    \key f \major
    \time 4/4
    \tenorsaxsectiona
    \tenorsaxcoda
}

tenorsaxnotesmidi = \transpose bes, c {
    \key f \major
    \time 4/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectiona
    \tenorsaxsectiona
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |

    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |
%
    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

tenorfortrumpetsectiona = {
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |

    s1 | s1 | s1 | s1 |
    s1 | s1 | s1 | s1 |
}

trumpetcoda = {
}

tenorfortrumpetcoda = {
}

trumpetnotes = \transpose bes, c {
    \key f \major
    \time 4/4
    \trumpetsectiona
    \trumpetcoda
}

tenorfortrumpetnotes = \transpose bes, c {
    \key f \major
    \time 4/4
    \tenorfortrumpetsectiona
    \tenorfortrumpetcoda
}

trumpetnotesmidi = \transpose bes, c {
    \key f \major
    \time 4/4
    \preintro
    \tenorfortrumpetsectiona
    \tenorfortrumpetsectiona
    \trumpetsectiona
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c c, {
    \key f \major
    \time 4/4
    \melodysectiona
    \melodycoda
}

trombonenotesmidi = \transpose c c, {
    \key f \major
    \time 4/4
    \preintro
    \melodysectiona
    \melodysectiona
    \melodysectiona
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |
%
    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

violincoda = {
}

violinnotes = {
    \key f \major
    \time 4/4
    \violinsectiona
    \violincoda
}

violinnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \violinsectiona
    \violinsectiona
    \violinsectiona
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



accordionrightuppersectiona = {
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |

    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 bes'4 a'8 g'8 |
    f'4 e'4 d'2 |
%
    c''2 ~ c''8 c''8 c''8 bes'8 |
    a'8 ( g'8 f'2 ) r4 |
    g'4 g'4 c''4 c''8 ( bes'8 ) |
    a'2. r4 |

    c''2 \tuplet 3/2 { c''4 c''4 bes'4 } |
    a'4 g'4 f'4 g'4 |
    a'4. g'8 f'4 e'4 |
    d'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    g'8 g'8 g'8 g'8 c''4 bes'4 |
    a'2. r4 |

    e'8 e'8 e'8 e'8 g'4 g'4 |
    f'8 ( g'8 ) a'2. |
    a'8 e'8 f'8 g'8 f'4 e'4 |
    d'2. r4 |
}

accordionrightuppercoda = {
}

accordionrightuppernotes = {
    \key f \major
    \time 4/4
    \accordionrightuppersectiona
    \accordionrightuppercoda
}

pianorightuppernotes = {
    \key f \major
    \time 4/4
    \accordionrightuppersectiona
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key f \major
    \time 4/4
}

pianorightlowernotes = {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

accordionleftuppersectiona = \transpose c' c { \chordmode {
    r4 d4:min r4 g4:min |
    r4 d4:min r4 g4:min |
    r4 d4:min r4 g4:min |
    c4:7 f4 a4:7 r4 |

    r4 d4:min r4 g4:min |
    r4 d4:min r4 g4:min |
    r4 d4:min r4 g4:min |
    a4:7 a4:7 d4:min r4 |

    r4 c4:7 r4 c4:7 |
    r4 f4 r4 f4 |
    r4 c4:7 r4 c4:7 |
    f4 \notemode { < c' f' a' >4 } f4 r4 |

    r4 c4:7 r4 c4:7 |
    r4 d4:min r4 d4:min |
    r4 a4:7 r4 a4:7 |
    d4:min \notemode { < f' a' d'' >4 < a' d'' f'' >4 } r4 |

    r4 a4:7 r4 a4:7 |
    r4 d4:min r4 d4:min |
    r4 c4:7 r4 c4:7 |
    f4 \notemode { < c' f' a' >4 < a c' f' >4 }  s4 |

    r4 a4:7 r4 a4:7 |
    r4 d4:min r4 d4:min |
    g4:min r4 a4:7 r4 |
    d2:min r4 d4:min |
} }

accordionleftuppercoda = {
}

accordionleftuppernotes = {
    \key f \major
    \time 4/4
    \accordionleftuppersectiona
    \accordionleftuppercoda
}

pianoleftuppernotes = {
    \key f \major
    \time 4/4
    \accordionleftuppersectiona
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key f \major
    \time 4/4
}

pianoleftlowernotes = {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key f \major
    \time 4/4
    \preintro
    \metronomesectiona
%    \accordionrightuppersectiona
    << { s1\ff } { \accordionrightuppersectiona } >>
%    \accordionrightuppersectiona
    \metronomesectiona
    \accordionrightuppercoda
}

accordionleftnotesmidi = \transpose c c' {
    \key f \major
    \time 4/4
    \preintro
    << { s1\p } { \accordionleftuppersectiona } >>
    << { s1\ff } { \metronomesectiona } >>
    << { s1\p } { \accordionleftuppersectiona } >>
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforclarinetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
altosaxnotes = \transpose ees bes, { \clarinetnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { }
tenorharmony = { }
altoharmony = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:min g2:min |
    d2:min g2:min |
    d2:min g2:min |
    c2:7 f4 a4:7 |
}

previewnotes = {
    \key f \major
    \time 4/4
    a'4 d'4 e'8 ( f'8 ) g'4  |
    a'4 d'4 e'8 ( f'8 ) g'4 |
    a'4 d'4 bes'4 a'8 ( g'8 ) |
    f'4 g'4 a'2 |
}

textl = \lyricmode {
    Oyf- n fur- l ligt a kelb- l,
    Ligt ge- bun- dn mit a shtrik.
    Hoykh in him- l flit a shvel- bl
    Freyt zikh dreyt zikh hin un tsu- rik.

    Lakht der vint in korn,
    Lakht un lakht un lakht,
    Lakht er op a tog a gan- tsn
    Mit a hal- ber nakht.
    Don- a Don- a Don- a Don- a.
    Don- a Don- a Don- a Dai.
    Don- a Don- a Don- a Don- a.
    Don- a Don- a Don- a Dai.
}

textlb = \lyricmode {
    Shrayt dos kelb- l, zogt der poy- er,
    Ver zhe heyst dir zayn a kalb?
    Volst ge- kent dokh zayn a foy- gl,
    Volst ge- kent dokh _ zayn a shvalb.
}

textlc = \lyricmode {
    Bid- ne kelb- er tut men bin- dn,
    Un men shlept zey un men skekht.
    Ver s'hot fli- gl  flit a- royf- stu
    Iz bay keyn- em _ nit kayn knekht.
}

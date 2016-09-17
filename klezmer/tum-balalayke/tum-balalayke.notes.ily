\version "2.18.0"

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

bandmintro = {
    \tempo \tempostring
    s2. | \breakINone
    s2. | \breakINtwo
    s2. | \breakINtre
    s2. |
    \bar "||" \breakIN
}

bandmintroNOBREAKS = {
    \tempo \tempostring
    s2.*4 |
    \bar "||" \breakIN
}

bandmsectiona = {
    \markS \positionS
    s2. | s2. | \breakAone
    s2. | s2. | \breakAtwo
    s2. | s2. | \breakAtre
    s2. | s2. | \breakAfor
    s2. | s2. | \breakAfiv
    s2. | s2. | \breakAsix
    s2. | s2. | \breakAsev
    s2. | s2. |
    \bar "||" \breakAeit \markCH \positionCH

    s2. | s2. | \breakAnin
    s2. | s2. | \breakAten
    s2. | s2. | \breakAelv
    s2. | s2. | \breakAtwl
    s2. | s2. | \breakAtht
    s2. | s2. | \breakAfrt
    s2. | s2. | \breakAfft
    s2. | s2. |
    \markDSsimple \positionDS
}

bandmcoda = {
}

bandmNV = {
    \time 3/4
    \bandmintro
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
    s2. |
}

metronomeextraintro = {
    s2. | s2. | s2. | s2. |
}

metronomesectiona = {
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
}

metronomecoda = {
}

metronome =  \context Voice = "metronome" {
    \time 3/4

    \preintro
    \tempo 4 = 150
    \metronomeextraintro
    \metronomesectiona
    \metronomesectiona
    \metronomesectiona
    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro = { s2.*4 | }

melodyintro = { R2.*4 | }

melodysectiona = {
    a'2 a'4 |
    a'2 a'4 |
    a'4 ( g'4 ) f'4 |
    e'2. |

    g'2 g'4 |
    g'2 g'4 |
    g'4 ( f'4 ) e'4 |
    d'2. |

    d'4 ( f'4 ) a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 ( bes'4 ) g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    a'4 a'4 a'4 |
    a'4 a'4 a'4 |
    a'4 g'4 f'4 |
    e'2 e'4 |

    g'4 g'4 g'4 |
    g'4 g'4 g'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    d'4 f'4 a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 bes'4 g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2. |
}

melodycoda = {
}

melody = {
    \key f \major
    \time 3/4
    \melodyintro
    \melodysectiona
    \melodycoda
}

melodymidi = {
    \key f \major
    \time 3/4
    \preintro
    \melodyextraintro
    \melodysectiona
    \melodysectiona
    \melodysectiona
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro = {
    e'4 d'4 c'4 |
    a2 a4 |
    g4 f4 e4 |
    d2. |
}

basslineintro = {
    e'4 d'4 c'4 |
    a2 a4 |
    g4 f4 e4 |
    d2. |
}

basslinesectiona = {
    d2\p d4 |
    d2 d4 |
    d4 c4 bes,4 |
    a,2 e4 |

    a2 e4 |
    a,2 e4 |
    a4 g4 e4 |
    d2 a4 |

    d'2 a4 |
    d2 c4 |
    bes,4 a,4 g,4 |
    f,2 f,4 |

    g,2 g,4 |
    a,2 a,4 |
    g4 f4 e4 |
    d2 d4 |

    d2 d4 |
    d2 d4 |
    d4 c4 bes,4 |
    a,2 e4 |

    a,2 a4 |
    a,2 a4 |
    a,4 bes,4 c4 |
    d4 d2 |

    d4 f4 a4 |
    d2 d4 |
    bes,4 a,4 g,4 |
    f,2 f4 |

    e'4 d'4 c'4 |
    a2 a4 |
    g4 f4 e4 |
    d2. |
}

basslinecoda = {
}

bassline = {
    \key f \major
    \time 3/4
    \basslineintro
    \basslinesectiona
    \basslinecoda
}

basslinemidi = {
    \key f \major
    \time 3/4
    \preintro
    \basslineextraintro
    \basslinesectiona
    \basslinesectiona
    \basslinesectiona
    \basslinecoda
}

basspartextraintro = {
    e4 d4 c4 |
    a,2 a,4 |
    g,4 f,4 e,4 |
    d,2. |
}

basspartintro = {
    e4 d4 c4 |
    a,2 a,4 |
    g,4 f,4 e,4 |
    d,2. |
}

basspartsectiona = {
    d2\p d4 |
    d2 d4 |
    d4 c4 bes,4 |

    a,2 e4 |
    a2 e4 |
    a,2 e4 |
    a4 g4 e4 |
    d2 a4 |
    d'2 a4 |
    d2 c4 |

    bes,4 a,4 g,4 |
    f,2 f,4 |
    g,2 g,4 |
    a,2 a,4 |
    g4 f4 e4 |
    d2 d4 |

    d2 d4 |
    d2 d4 |
    d4 c4 bes,4 |
    a,2 e4 |
    a,2 a4 |
    a,2 a4 |
    a,4 bes,4 c4 |
    d4 d2 |

    d4 f4 a4 |
    d2 d4 |
    bes,4 a,4 g,4 |
    f,2 f4 |
    e4 d4 c4 |
    a,2 a,4 |
    g,4 f,4 e,4 |
    d,2. |
}

basspartcoda = {
}

basspart = {
    \key f \major
    \time 3/4
    \basspartintro
    \basspartsectiona
    \basspartcoda
}

basspartmidi = {
    \key f \major
    \time 3/4
    \preintro
    \basspartextraintro
    \basspartsectiona
    \basspartsectiona
    \basspartsectiona
    \basspartcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro = {
    g'4\mp < d'' g'' bes'' >4 < d'' g'' bes'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
}

guitarintro = {
    g'4\mp < d'' g'' bes'' >4 < d'' g'' bes'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
}

guitarsectiona = {
    d'4\pp < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |

    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |

    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < c'' f'' a'' >4 < c'' f'' a'' >4 |
    bes'4 < d'' f'' bes'' >4 < d'' f'' bes'' >4 |
    f'4 < c'' f'' a'' >4 < c'' f'' a'' >4 |

    g'4 < d'' g'' bes'' >4 < d'' g'' bes'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |

    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |

    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |

    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
    d'4 < c'' f'' a'' >4 < c'' f'' a'' >4 |
    bes'4 < d'' f'' bes'' >4 < d'' f'' bes'' >4 |
    f'4 < c'' f'' a'' >4 < c'' f'' a'' >4 |

    g'4 < d'' g'' bes'' >4 < d'' g'' bes'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    a4 < cis'' e'' a'' >4 < cis'' e'' a'' >4 |
    d'4 < d'' f'' a'' >4 < d'' f'' a'' >4 |
}

guitarcoda = {
}

guitarnotes = \transpose d c {
    \key f \major
    \time 3/4
    \guitarintro
    \guitarsectiona
    \guitarcoda
}

guitarnotesmidi = \transpose d c {
    \key f \major
    \time 3/4
    \preintro
    \guitarextraintro
    \guitarsectiona
    \guitarsectiona
    \guitarsectiona
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumextraintro = {
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'2_\ltoe r4
}

guitarstrumintro = {
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'2_\ltoe r4
}

guitarstrumsectiona = {
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe

    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe

    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe

    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe

    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe
    bes'2_\ltoe r4
}

guitarstrumcoda = {
}

guitarstrumnotes = {
    \key f \major
    \time 3/4
    \improvisationOn
    \guitarstrumintro
    \guitarstrumsectiona
    \guitarstrumcoda
    \improvisationOff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode { s2.*4 | }

chordlettersintro = \chordmode {
    g2.:min |
    a2.:7 |
    a2.:7 |
    d2.:min |
}

chordletterssectiona = \chordmode {
    \chordChangesOff d2.:min \chordChangesOn |
    d2.:min |
    d2.:min |
    a2.:7 |

    a2.:7 |
    a2.:7 |
    a2.:7 |
    d2.:min |

    d2.:min |
    d2.:min7 |
    bes2. |
    f2. |

    g2.:min |
    a2. |
    a2. |
    d2.:min |

    \chordChangesOff d2.:min \chordChangesOn |
    d2.:min |
    d2.:min |
    a2.:7 |

    a2.:7 |
    a2.:7 |
    a2.:7 |
    d2.:min |

    d2.:min |
    d2.:min7 |
    bes2. |
    f2. |

    g2.:min |
    a2.:7 |
    a2.:7 |
    d2.:min |
}

chordletterscoda = \chordmode {
}

chordletters = \transpose d c { \chordmode {
    \time 3/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterscoda
} }

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

fluteextraintro = { s2.*4 | }

fluteintro = { R2.*4 | }

flutesectiona = {
    a'2\ff a'4 |
    a'2 a'4 |
    a'4 ( g'4 ) f'4 |
    e'2. |

    g'2 g'4 |
    g'2 g'4 |
    g'4 ( f'4 ) e'4 |
    d'2. |

    d'4 ( f'4 ) a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 ( bes'4 ) g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    a'4 a'4 a'4 |
    a'4 a'4 a'4 |
    a'4 g'4 f'4 |
    e'2 e'4 |

    g'4 g'4 g'4 |
    g'4 g'4 g'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    d'4 f'4 a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 bes'4 g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2. |
}

flutecoda = {
}

flutenotes = \transpose d c {
    \key f \major
    \time 3/4
    \fluteintro
    \flutesectiona
    \flutecoda
}

flutenotesmidi = \transpose d c {
    \key f \major
    \time 3/4
    \preintro
    \fluteextraintro
    \flutesectiona
    \metronomesectiona
    \flutesectiona
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro = { s2.*4 | }

violinintro = { R2.*4 | }

violinsectiona = {
    a'2\ff a'4 |
    a'2 a'4 |
    a'4 ( g'4 ) f'4 |
    e'2. |

    g'2 g'4 |
    g'2 g'4 |
    g'4 ( f'4 ) e'4 |
    d'2. |

    d'4 ( f'4 ) a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 ( bes'4 ) g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    a'4 a'4 a'4 |
    a'4 a'4 a'4 |
    a'4 g'4 f'4 |
    e'2 e'4 |

    g'4 g'4 g'4 |
    g'4 g'4 g'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    d'4 f'4 a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 bes'4 g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2. |
}

violincoda = {
}

violinnotes = \transpose d c {
    \key f \major
    \time 3/4
    \violinintro
    \violinsectiona
    \violincoda
}

violinnotesmidi = \transpose d c {
    \key f \major
    \time 3/4
    \preintro
    \violinextraintro
    \violinsectiona
    \violinsectiona
    \violinsectiona
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = \transpose d c {
    \bassline
}

bassnotesmidi = \transpose d c {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro = { s2.*4 | }

accordionrightupperintro = { R2.*4 | }

accordionrightuppersectiona = {
    a'2\ff a'4 |
    a'2 a'4 |
    a'4 g'4 f'4 |
    e'2. |

    g'2 g'4 |
    g'2 g'4 |
    g'4 f'4 e'4 |
    d'2. |

    d'4 f'4 a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 bes'4 g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    a'4 a'4 a'4 |
    a'4 a'4 a'4 |
    a'4 g'4 f'4 |
    e'2 e'4 |

    g'4 g'4 g'4 |
    g'4 g'4 g'4 |
    g'4 f'4 e'4 |
    d'2 d'4 |

    d'4 f'4 a'4 |
    d''2 d''4 |
    f''4 e''4 d''4 |
    a'2 a'4 |

    c''4 bes'4 g'4 |
    e'2 e'4 |
    g'4 f'4 e'4 |
    d'2. |
}

accordionrightuppercoda = {
}

accordionrightuppernotes = \transpose d c {
    \key f \major
    \time 3/4
    \accordionrightupperintro
    \accordionrightuppersectiona
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = \transpose d c {
    \key f \major
    \time 3/4
}

%-------------------------------------------------

accordionleftupperextraintro = { s2.*4 | }

accordionleftupperintro = { R2.*4 | }

accordionleftuppersectiona = \chordmode {
    d2.:min |
    d2.:min |
    d2.:min |
    a,2.:7 |

    a,2.:7 |
    a,2.:7 |
    a,2.:7 |
    d2.:min |

    d2.:min |
    d2.:min7 |
    bes,2. |
    f2. |

    g,2.:min |
    a,2. |
    a,2. |
    d2.:min |

    d2.:min |
    d2.:min |
    d2.:min |
    a,2.:7 |

    a,2.:7 |
    a,2.:7 |
    a,2.:7 |
    d2.:min |

    d2.:min |
    d2.:min7 |
    bes,2. |
    f2. |

    g,2.:min |
    a,2.:7 |
    a,2.:7 |
    d2.:min |
}

accordionleftuppercoda = {
}

accordionleftuppernotes = \transpose d c {
    \key f \major
    \time 3/4
    \accordionleftupperintro
    \transpose c c, { \accordionleftuppersectiona }
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = \transpose d c {
    \key f \major
    \time 3/4
}

%-------------------------------------------------

accordionrightnotesmidi = \transpose d c {
    \key f \major
    \time 3/4
    \preintro
    \accordionrightupperextraintro
    \metronomesectiona
%    \accordionrightuppersectiona
    << { s1\ff } { \accordionrightuppersectiona } >>
%    \accordionrightuppersectiona
    \metronomesectiona
    \accordionrightuppercoda
}

accordionleftnotesmidi = \transpose d c {
    \key f \major
    \time 3/4
    \preintro
    \accordionleftupperextraintro
    << { s1\p } { \accordionleftuppersectiona } >>
    << { s1\ff } { \metronomesectiona } >>
    << { s1\p } { \accordionleftuppersectiona } >>
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose d c {
    \melody
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { }
tenorharmony = { }
altoharmony = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose d c { \chordmode {
    s2. |

    d2.:min |
    s2. |
    s2. |
    a2.:7 |

    s2. |
    s2. |
    s2. |
    d2.:min |
} }

previewnotes = \transpose d c {
    \key f \major
    \time 3/4

    s4 d'4 f'4 |

    \bar ".|:"
    a'2 a'4 |
    a'2 a'4 |
    a'4 ( g'4 ) f'4 |
    e'2. |

    g'2 g'4 |
    g'2 g'4 |
    g'4 ( f'4 ) e'4 |
    d'2. |
}

textl = \lyricmode {
    Shteyt a bo- kher un er trakht,
    Trakht un trakht a gan- tse nakht,
    Vem-_en tsu nem- en un nisht far- shem- en,
    Vem-_en tsu nem- en un nisht far- shem- en.

    Tum- ba- la, tum- ba- la, tum- ba- la- lay- ke,
    Tum- ba- la, tum- ba- la, tum- ba- la- lay- ke,
    Tum- ba- la- lay- ke, shpil, ba- la- lay- ke,
    Shpil, ba- la- lay- ke, frey- lekh zol zayn!
}

textlb = \lyricmode {
    Mey- dl, mey- dl, kh'vil_bay dir fregn:
    Vos ken vaks- n, vaks-_n on regen?
    Vos ken bren- en un nisht oyf- her- n?
    Vos ken benk- en, veyn- en on trer- n?
}

textlc = \lyricmode {
    Nar-_ish- er bo- kher, vos_darfs- tu fregn?
    A_shteyn ken vaks- n, vaks-_n on regen;
    Lib-_e ken bren- en un nisht oyf- her- n;
    A_harts ken benk- en, veyn- en on trer- n.
}

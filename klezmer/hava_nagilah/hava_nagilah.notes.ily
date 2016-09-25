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
    \markA \positionA
    \repeat volta 2 {
        s1 | \breakAone s1 | \breakAtwo
        s1 | \breakAtre
    }
    \alternative { { s1 | \breakAfor } { s1 | } }
    \bar ".|:-||" \breakMain \breakA

    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo
        s1 | \breakBtre
    }
    \alternative { { s1 | \breakBfor } { s1 | } }
    \bar "||" \breakMain \breakB

    \markC \positionC
    s1 | \breakCone s1 | \breakCtwo
    s1 | \breakCtre s1 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix
    s1 | \breakCsev s1 |
    \markDC \positionDC
}

bandmcoda = {
}

bandmNVbody = { 
   \bandmsectiona
    \bandmcoda
    \bar "|."
}

bandmNV = {
    \time 4/4
    \tempo \tempostring
    \bandmNVbody
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
    \repeat volta 2 {
        s1 | s1 |
        s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 |
        s1 |
    }
    \alternative { { s1 | } { s1 | } }

    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
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
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e'8 e'8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

melodycoda = {
}

melody = {
    \key c \major
    \time 4/4
    \melodysectiona
    \melodycoda
}

melodymidi = {
    \key c \major
    \time 4/4
    \preintro
    \melodysectiona
    \melodysectiona
    \melodysectiona
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \repeat volta 2 {
        e4 b,8 e4 b,8 e4 |
        e4 b,8 e4 b,8 e4 |
        e4 a,8 e4 a,8 e4 |
    }
    \alternative {
        { e4 d4 e4 r4 | }
        { e4 d4 e4 r4 | }
    }

    \repeat volta 2 {
        e4 r8 e8 ~ e4 e4 |
        d4 r8 d8 ~ d4 d4 |
        d4 r8 d8 ~ d4 d4 |
    }
    \alternative {
        { e4 d4 e4 r4 | }
        { e4 d4 e4 r4 | }
    }

    a,2 a,2 |
    a,4 a,4 a,4 a,4 |
    a,4 e4 a,4 e4 |
    a,4 e4 a,4 e4 |
    a,4 d4 a,4 d4 |
    a,4 d4 a,4 d4 |
    d4 e4 d4 e4 |
    e4 b,8 e8 a,8 e8 a,4 |
}

basslinecoda = {
}

bassline = \transpose c' bes {
    \key c \major
    \time 4/4
    \basslinesectiona
    \basslinecoda
}

basslinemidi = \transpose c' bes {
    \key c \major
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

basspart = \transpose c' bes {
    \key c \major
    \time 4/4
    \basspartsectiona
    \basspartcoda
}

basspartmidi = \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \basspartsectiona
    \basspartsectiona
    \basspartsectiona
    \basspartcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \repeat volta 2 {
        s1 | s1 |
        s1 |
    }
    \alternative { { s1 | } { s1 | } }

    \repeat volta 2 {
        s1 | s1 |
        s1 |
    }
    \alternative { { s1 | } { s1 | } }

    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
    s1 | s1 |
}

guitarcoda = {
}

guitarnotes = \transpose c' bes {
    \key c \major
    \time 4/4
    \guitarsectiona
    \guitarcoda
}

guitarnotesmidi = \transpose c' bes {
    \key c \major
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
    \repeat volta 2 {
        e''4 r8 e''4 r8 e''4 | % e1:7 |
        e''4 r8 e''4 r8 e''4 | % e1:7 |
        a''4 r8 a''4 r8 a''4 | % a1:min |
    }
    \alternative {
        { e''4 d''4 e''4 r4 | } % e4:7 d4:min e4:7 s4 |
        { e''4 d''4 e''4 r4 | } % e4:7 d4:min e4:7 s4 |
    }

    \repeat volta 2 {
        e''4 r8 e''4 r8 e''4 | % e1:7 |
        d''4 r8 d''4 r8 d''4 | % d1:min |
        d''4 r8 d''4 r8 d''4 | % d1:min |
    }
    \alternative {
        { e''4 d''4 e''4 r4 | } % e4:7 d4:min e4:7 s4 | }
        { e''4 d''4 e''4 r4 | } % e4 d4:min e4 s4 | }
    }

    a''2 a''2 | % a1:min |
    r8 a''8 r8 a''8 r8 a''8 r8 a''8 | % a1:min |
    r8 a''8 r8 a''8 r8 a''8 r8 a''8 | % a1:min |
    r8 a''8 r8 a''8 r8 a''8 r8 a''8 | % a1:min |
    r8 d''8 r8 d''8 r8 d''8 r8 d''8 | % d1:min |
    r8 d''8 r8 d''8 r8 d''8 r8 d''8 | % a1:min |
    d''4 e''4 d''4 e''4 | % d4:min e4:7 d4:min e4 |
    e''4 e''4 a''4 a''4 | % e2:7 a2:min |
    \improvisationOff
}

guitarstrumcoda = {
}

guitarstrumnotes = {
    \key c \major
    \time 4/4
    \guitarstrumsectiona
    \guitarstrumcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
%    \chordChangesOff e1 \chordChangesOn |
    \repeat volta 2 {
        e1:7 | e1:7 |
        a1:min |
    }
    \alternative {
        { e4:7 d4:min e4:7 s4 | }
        { \chordChangesOff e4:7 \chordChangesOn d4:min e4:7 s4 | }
    }

    \repeat volta 2 {
        \chordChangesOff e1:7 \chordChangesOn | d1:min |
        d1:min |
    }
    \alternative {
        { e4:7 d4:min e4:7 s4 | }
        { \chordChangesOff e4 \chordChangesOn d4:min e4 s4 | }
    }

    a1:min | a1:min |
    a1:min | a1:min |
    d1:min | d1:min |
    d4:min e4:7 d4:min e4 | e2:7 a2:min |
}

chordletterscoda = \chordmode {
}

chordletters = \transpose c' bes { \chordmode {
    \time 4/4
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

flutesectiona = {
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e''8 e''8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

flutecoda = {
}

flutenotes = \transpose c bes {
    \key c \major
    \time 4/4
    \flutesectiona
    \flutecoda
}

flutenotesmidi = \transpose c bes {
    \key c \major
    \time 4/4
    \preintro
    \flutesectiona
    \metronomesectiona
    \flutesectiona
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e''8 e''8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

clarinetcoda = {
}

clarinetnotes = \transpose bes c'' { \transpose c' bes {
    \key c \major
    \time 4/4
    \clarinetsectiona
    \clarinetcoda
} }

clarinetnotesmidi = \transpose bes c'' { \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \metronomesectiona
    \clarinetsectiona
    \clarinetcoda
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona = {
    \repeat volta 2 {
        r8 b'8 r8 b'8 r8 b'8 r4 |
        r8 b'8 r8 b'8 r8 b'8 r4 |
        r8 e'8 r8 e'8 r8 e'8 r4 |
    }
    \alternative {
        { r8 b'8 r8 e'8 r8 b'8 r4 | }
        { r8 b'8 r8 e'8 r8 b'8 r8 b'8 | }
    }

    \repeat volta 2 {
        b'8 b'4 r8 b'4 b'4 |
        a'8 a'4 r8 a'4 a'4 |
        r8 a'8 r8 d'8 r8 a'8 r8 d'8 |
    }
    \alternative {
        { r8 b'8 r8 e'8 r8 b'8 r4 | }
        { r8 b'8 r8 e'8 r8 b'8 r8 b'8 | }
    }

    r4 e'4 r4 e'4 |
    r8 e'8 r8 e'8 r8 e'8 r8 e'8 |
    r8 e'8 r8 c'8 r8 c'8 r8 e'8 |
    r8 e'8 r8 c'8 r8 c'8 r8 e'8 |

    r8 f'8 r8 a'8 r8 a'8 r8 f'8 |
    r8 f'8 r8 a'8 r8 a'8 r8 f'8 |
    R1*2 |
}

tenorsaxcoda = {
}

tenorsaxnotes = \transpose bes c' { \transpose c' bes {
    \key c \major
    \time 4/4
    \tenorsaxsectiona
    \tenorsaxcoda
} }

tenorsaxnotesmidi = \transpose bes c' { \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectiona
    \tenorsaxsectiona
    \tenorsaxcoda
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e''8 e''8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

tenorfortrumpetsectiona = {
    \repeat volta 2 {
        r8 d'8 r8 d'8 r8 d'8 r4 |
        r8 d'8 r8 d'8 r8 e'8 r4 |
        r8 f'8 r8 f'8 r8 f'8 r4 |
    }
    \alternative {
        { r8 d'8 r8 d'8 r8 d'8 r4 | }
        { r8 d'8 r8 d'8 r8 d'8 r8 d'8 | }
    }

    \repeat volta 2 {
        d'8 d'4 r8 d'4 d'4 |
        d'8 d'4 r8 a4 a4 |
        r8 a8 r8 d'8 r8 a8 r8 d'8 |
    }
    \alternative {
        { r8 d'8 r8 d'8 r8 d'8 r4 | }
        { r8 d'8 r8 d'8 r8 d'8 r8 d'8 | }
    }

    r4 c'4 r4 c'4 |
    r8 d'8 r8 d'8 r8 c'8 r8 c'8 |
    r8 e'8 r8 a'8 r8 a'8 r8 e'8 |
    r8 e'8 r8 a'8 r8 e' r8 e'8 |

    r8 f'8 r8 a'8 r8 a'8 r8 a'8 |
    r8 a'8 r8 a'8 r8 a'8 r8 a'8 |
    R1*2 |
}

trumpetcoda = {
}

tenorfortrumpetcoda = {
}

trumpetnotes = \transpose bes c' { \transpose c' bes {
    \key c \major
    \time 4/4
    \trumpetsectiona
    \trumpetcoda
} }

tenorfortrumpetnotes = {
    \key c \major
    \time 4/4
    \tenorfortrumpetsectiona
    \tenorfortrumpetcoda
}

trumpetnotesmidi = \transpose bes c' { \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \tenorfortrumpetsectiona
    \tenorfortrumpetsectiona
    \trumpetsectiona
    \trumpetcoda
} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \repeat volta 2 {
        r8 gis8 r8 gis8 r8 gis8 r4 |
        r8 gis8 r8 gis8 r8 gis8 r4 |
        r8 c'8 r8 c'8 r8 c'8 r4
    }
    \alternative {
        { r8 gis8 r8 f8 r8 gis8 r4 | }
        { r8 gis8 r8 f8 r8 gis8 r8 gis8  | }
    }

    \repeat volta 2 {
        b8 b4 r8 gis4 gis4 |
        a8 a4 r8 f4 f4 |
        r8 f8 r8 a8 r8 f8 r8 d'8 |
    }
    \alternative {
        { r8 gis8 r8 f8 r8 gis8 r4 | }
        { r8 gis8 r8 f8 r8 gis8 r8 gis8  | }
    }

    r4 a4 r4 a4 |
    r8 a8 r8 a8 r8 a8 r8 a8 |
    r8 c'8 r8 e'8 r8 e'8 r8 c'8 |
    r8 c'8 r8 e'8 r8 c'8 r8 c'8 |

    r8 d'8 r8 f'8 r8 f'8 r8 f'8 |
    r8 f'8 r8 f'8 r8 f'8 r8 f'8 |
    R1*2 |
}

trombonecoda = {
}

trombonenotes = \transpose c' bes {
    \key c \major
    \time 4/4
    \trombonesectiona
    \trombonecoda
}

trombonenotesmidi = \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \trombonesectiona
    \trombonesectiona
    \trombonesectiona
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e''8 e''8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

violincoda = {
}

violinnotes = \transpose c' bes {
    \key c \major
    \time 4/4
    \violinsectiona
    \violincoda
}

violinnotesmidi = \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \violinsectiona
    \violinsectiona
    \violinsectiona
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose c a { \violinnotes }
altosaxnotesmidi = \transpose c a { \violinnotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassfortrumpetnotes = \transpose bes c'' {
    \bassline
}

bassbassfortrumpetnotesmidi = \transpose bes c'' {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppersectiona = {
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    \repeat volta 2 {
        gis'8 gis'4 f'8 e'8 e'8 e'4 | f'8 f'4 e'8 d'8 d'8 d'4 |
        d'4 f'8. f'16 d'8 d'8 a'4 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }

    a'2 a'2 |
    a'4 a'4 a'4 a'4 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    a'16 a'16 a'8 c''8. b'16 a'8 c''8 b'8 a'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 d''8. c''16 b'8 d''8 c''8 b'8 |
    b'16 b'16 b'8 e''4 b'16 b'16 b'8 e''8. e'16 |
    e''8 e''8 c''16 ( b'16 a'16 gis'16 ) a'2 |
}

accordionrightuppercoda = {
}

accordionrightuppernotes = \transpose c' bes {
    \key c \major
    \time 4/4
    \accordionrightuppersectiona
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes = \transpose c' bes {
    \key c \major
    \time 4/4
}

%-------------------------------------------------

accordionleftuppersectiona = \chordmode {
    \repeat volta 2 {
        e4:7 e8:7 e4:7 e8:7 e4:7 |
        e4:7 e8:7 e4:7 e8:7 e4:7 |
        a4:min a8:min a4:min a8:min a4:min |
    }
    \alternative {
        { e4:7 d4:min e4:7 r4 | }
        { e4:7 d4:min e4:7 r4 | }
    }

    \repeat volta 2 {
        e4:7 r8 e8:7 ~ e4:7 e4:7 |
        d4:min r8 d8:min ~ d4:min d4:min |
        d4:min r8 d8:min ~ d4:min d4:min |
    }
    \alternative {
        { e4 d4:min e4 r4 | }
        { e4 d4:min e4 r4 | }
    }

    a,2:min a,2:min |
    a,4:min a,4:min a,4:min a,4:min |
    r8 a,8:min r8 a,8:min r8 a,8:min r8 a,8:min |
    r8 a,8:min r8 a,8:min r8 a,8:min r8 a,8:min |
    r8 d8:min r8 d8:min r8 d8:min r8 d8:min |
    r8 d8:min r8 d8:min r8 d8:min r8 d8:min |
    r8 d8:min r8 e8:7 r8 d8:min r8 e8:7 |
    r8 e8:7 r8 e8:7 a,2:min |
}

accordionleftuppercoda = {
}

accordionleftuppernotes = \transpose c' bes, {
    \key c \major
    \time 4/4
    \accordionleftuppersectiona
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes = \transpose c' bes, {
    \key c \major
    \time 4/4
}

%-------------------------------------------------

accordionrightnotesmidi = \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    \metronomesectiona
%    \accordionrightuppersectiona
    << { s1\ff } { \accordionrightuppersectiona } >>
%    \accordionrightuppersectiona
    \metronomesectiona
    \accordionrightuppercoda
}

accordionleftnotesmidi = \transpose c' bes {
    \key c \major
    \time 4/4
    \preintro
    << { s1\p } { \accordionleftuppersectiona } >>
    << { s1\ff } { \metronomesectiona } >>
    << { s1\p } { \accordionleftuppersectiona } >>
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose c' bes {
    \melody
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforclarinetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { }
tenorharmony = { }
altoharmony = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose c' bes { \chordmode {
    \repeat volta 2 {
        e1 | e1 |
        a1:min |
    }
    \alternative { { e4 d4:min e4 s4 | } { \chordChangesOff e4 \chordChangesOn d4:min e4 s4 | } }
} }

previewnotes = \transpose c' bes {
    \key c \major
    \time 4/4
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        e'4 e'4. gis'8 f'8 e'8 | gis'4 gis'4. b'8 a'8 gis'8 |
        a'4 a'4. c''8 b'8 a'8 |
    }
    \alternative {
        { gis'4 f'16 ( e'16 ) f'8 gis'4 r4 | }
        { gis'4 f'16 ( e'16 ) f'8 e'4 r4 | }
    }
    \bar "||"
}

textl = \lyricmode {
    \repeat volta 2 {
        Ha- va na- gi- la,
        ha- va na- gi- la,
        ha- va na- gi- la,
    }
    \alternative {
        { v'- nis- m'- cha. }
        { v'- nis- m'- cha. }
    }
    \repeat volta 2 {
        Ha- va n'- ra- n'- na,
        Ha- va n'- ra- n'- na,
        Ha- va n'- ra- n'- na,
    }
    \alternative {
        { v'- nis- m'- cha. }
        { v'- nis- m'- cha. }
    }
    U- ru, u- ru a- chim
    u- ru a- chim b'- lev sa- me- ach
    u- ru a- chim b'- lev sa- me- ach
    u- ru a- chim b'- lev sa- me- ach
    u- ru a- chim b'- lev sa- me- ach
    u- ru a- chim u- ru a- chim b'- lev sa- me- ach
}

textlb = \lyricmode {
}

textlc = \lyricmode {
}

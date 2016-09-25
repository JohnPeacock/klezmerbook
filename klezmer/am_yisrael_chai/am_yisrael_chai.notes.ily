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
% Creation: 6 October 2003
%
% History:
%    6 October 2008 - Dick Schoeller
%        o Creation
%    18 October 2008 - Dick Schoeller
%        o Bass and preview
%
%=====================================================================

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s1 | \breakAone
        s1 | \breakAtwo
        s1 | \breakAtre
        s1 |
    }
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone
        s1 | \breakBtwo
        s1 | \breakBtre
        s1 |
    }
    \breakB
}

bandmNV = {
    \time  4/4
    \tempo \tempostring
    \bandmsectiona
    \bandmsectionb
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronome = \context Voice = "metronome" {
    \time  4/4
    \preintro
    \tempo 4 = 130
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Am Yis- ra- el am Yis- ra- el am Yis- ra- el chai,
    Am Yis- ra- el am Yis- ra- el am Yis- ra- el chai.
    Od a- vi- nu chai, od a- vi- nu chai,
    od a- vi- nu, od a- vi- nu, od a- vi- nu chai.
}
textlb = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 |
        f'8 g'8 f'8 d'8 bes2 |
        f'8 f'8 f'8 f'8 f'8 f'8 f'8 f'8 |
        g'8 f'8 ees'8 d'8 c'2 |
    }
}

melodysectionb = {
    \repeat volta 2 {
        c''8 c''8 bes'8 g'8 c''4 r4 |
        c''8 c''8 bes'8 g'8 c''4 r4 |
        ees''8 ees''8 d''8 c''8 ees''8 ees''8 d''8 c''8 |
        f''8 f''8 d''8 bes'8 c''2 |
    }
}

melody = {
    \key ees \major
    \melodysectiona
    \melodysectionb
}

melodymidi = {
    \preintro
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
    \new Voice { \key ees \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonysectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

harmonysectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

harmony = {
    \time  4/4
    \harmonysectiona
    \harmonysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

countersectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

counter = {
    \time  4/4
    \countersectiona
    \countersectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key ees \major
    \time 4/4
    \melodysectiona
    \melodysectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 |
        f'8 g'8 f'8 d'8 bes2 |
        f'8 f'8 f'8 f'8 f'8 f'8 f'8 f'8 |
        g'8 f'8 ees'8 d'8 c'2 |
    }
}

clarinetsectionb = {
    \repeat volta 2 {
        c''8 c''8 bes'8 g'8 c''4 r4 |
        c''8 c''8 bes'8 g'8 c''4 r4 |
        ees''8 ees''8 d''8 c''8 ees''8 ees''8 d''8 c''8 |
        f''8 f''8 d''8 bes'8 c''2 |
    }
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key ees \major
    \time 4/4
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = \transpose c d' {
    \key ees \major
    \time 4/4
    \preintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = {
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 |
        f'8 g'8 f'8 d'8 bes2 |
        f'8 f'8 f'8 f'8 f'8 f'8 f'8 f'8 |
        g'8 f'8 ees'8 d'8 c'2 |
    }
}

trumpetsectionb = {
    \repeat volta 2 {
        c''8 c''8 bes'8 g'8 c''4 r4 |
        c''8 c''8 bes'8 g'8 c''4 r4 |
        ees''8 ees''8 d''8 c''8 ees''8 ees''8 d''8 c''8 |
        f''8 f''8 d''8 bes'8 c''2 |
    }
}

trumpetnotes = \transpose c d {
    \key ees \major
    \time 4/4
    \trumpetsectiona
    \trumpetsectionb
}

trumpetnotesmidi = \transpose c d {
    \key ees \major
    \time 4/4
    \preintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

trombonesectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

trombonenotes = \transpose c c, {
    \trombonesectiona
    \trombonesectionb
}
trombonenotesmidi = {
    \preintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarsectionb = {
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
        s1 |
    }
}

guitarnotes = {
    \time  4/4
    \key ees \major
    \guitarsectiona
    \guitarsectionb
}

guitarnotesmidi = {
    \time  4/4
    \key ees \major
    \preintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basssectiona = {
    \repeat volta 2 {
        c4 g,4 c4 g,4 |
        bes,4 f,4 bes,4 f,4 |
        bes,4 f,4 bes,4 g,4 |
        c4 g,4 c4 r4 |
    }
}

basssectionb = {
    \repeat volta 2 {
        c4 g,4 c4 r4 |
        c4 g,4 c4 r4 |
        c4 g,4 c4 g,4 |
        f,4 g,8 bes,8 c4 r4 |
    }
}

bassline = {
    \time  4/4
    \key ees \major
    \basssectiona
    \basssectionb
}

basslinemidi = {
    \time  4/4
    \key ees \major
    \preintro
    \basssectiona
    \basssectionb
    \basssectiona
    \basssectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 { c1:min | bes1 | bes2. g4:7 | c1:min | }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        c4:min g4:min c2:min | c4:min g4:min c2:min |
        c1:min | f4:min bes4 c2:min |
    }
}

chordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

scorechordletters = \chordmode {
    \time 4/4
    \chordletterssectiona
    \chordletterssectionb
}

guitarchordletters = {
    \chordletterssectiona
    \chordletterssectionb
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
    \key ees \major
    \time 4/4
}

pianorightlowernotes = {
    \key ees \major
    \time 4/4
}

pianoleftuppernotes = {
    \key ees \major
    \time 4/4
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
    \key ees \major
    \time 4/4
    \melody
}
flutenotesmidi = { \preintro \flutenotes }

altosaxnotes = \transpose c a {
    \key ees \major
    \time 4/4
    \melody
}
altosaxnotesmidi = { \preintro \altosaxnotes }

tenorsaxnotes = \transpose c d' {
    \key ees \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = { \preintro \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key ees \major
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
    \key ees \major
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
    \repeat volta 2 { c1:min | bes1 | bes2. g4:7 | c1:min | }
}

previewnotes = {
    \key ees \major
    \time 4/4
    \markA \positionA
    \tempo \tempostring
    \repeat volta 2 {
        g'8 g'8 g'8 g'8 g'8 g'8 g'8 g'8 |
        f'8 g'8 f'8 d'8 bes2 |
        f'8 f'8 f'8 f'8 f'8 f'8 f'8 f'8 |
        g'8 f'8 ees'8 d'8 c'2 |
    }
}

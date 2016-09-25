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

bandmintro =  {
    \tempo \tempostring
    s1*2 | \breakIN
    \bar "||"
}

bandmsectionab = {
    s1*8 |
}

bandmsectiona =  {
    \markSAI \positionSAI
    s1*4 | \breakAIfor
    s1*4 | \breakAI
    \bar "||"
    \markAII \positionAII
    s1*4 | \breakAIIfor
    s1 | \breakAIIfiv
    s1 | \breakAIIsix
    s1 | \breakAIIsev
    s1 | \breakAII
    \bar "||"
    \markB \positionB
    s1*4 | \breakBfor
    s1 | \breakBfiv
    s1 | \breakBsix
    s1 | \breakBsev
    s1 | \breakBeit
    s1 |\breakB
    \bar "||"
    \markAIII \positionAIII
    s1 | \breakAIIIone
    s1 | \breakAIIItwo
    s1 | \breakAIIItre
    s1 | \breakAIIIfor
    s1 | \breakAIIIfiv
    s1 | \breakAIIIsix
    s1 | \breakAIIIsev
    s1 | \breakAIII
    \bar "||"
    \markAIV \positionAIV
    s1*4 | \breakAIVfor
    s1*3 | \breakAIVsev
    \markTC \positionTC
    \bar "||"
    s1 | \breakAIV
    \bar "||"
    \markC \positionC
    s1*4 | \breakCfor
    s1*4 | \breakCeit
    \markDS \positionDS
    s1 | \breakC
    \bar "||"
    \markDAB \positionDAB
    s1*4 | \breakDfor
    s1*5 | \breakD
    \bar "||"
    \markToC \positionToC
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda =  {
    \markCC \positionCC s1 | \breakCCone
    s1 |
}

bandmNV =  {
    \time 4/4
    \bandmintro
    \bandmsectiona
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro =  {
    s1 |
}

metronomeextraintro =  {
    s1*4 |
}

metronomesectionaa =  {
    s1*4 |
    s1*4 |
}

metronomesectionab =  {
    s1*4 |
    s1*4 |
}

metronomesectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

metronomesectionac =  {
    s1*4 |
    s1*4 |
}

metronomesectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

metronomesectionadb =  {
    s1 |
}

metronomesectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

metronomesectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

metronomecoda =  {
    s1 | s1 |
}

metronome =  \context Voice = "metronome" {
    \time 4/4

    \preintro
    \tempo 4 = 130
    \metronomeextraintro

    \metronomesectionaa
    \metronomesectionab
    \metronomesectionb
    \metronomesectionac
    \metronomesectionada
    \metronomesectionadb
    \metronomesectionc

    \metronomesectionaa
    \metronomesectionab
    \metronomesectiond
    \metronomesectionac
    \metronomesectionada

    \metronomecoda
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextraintro =  {
    s1*4 |
}

melodyintro =  {
    s1 | s1 |
}

melodysectionaa =  {
    s1*4 |
    s1*4 |
}

melodysectionab =  {
    s1*4 |
    s1*4 |
}

melodysectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

melodysectionac =  {
    s1*4 |
    s1*4 |
}

melodysectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

melodysectionadb =  {
    s1 |
}

melodysectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

melodysectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

melodycoda =  {
    s1 | s1 |
}

melody =  {
    \key f \major
    \time 4/4
    \melodyintro
    \melodysectionaa
    \melodysectionab
    \melodysectionb
    \melodysectionac
    \melodysectionada
    \melodysectionadb
    \melodysectionc
    \melodysectiond
    \blankmeasure
    \melodycoda
}

melodymidi =  {
    \key f \major
    \time 4/4
    \preintro
    \melodyextraintro

    \melodysectionaa
    \melodysectionab
    \melodysectionb
    \melodysectionac
    \melodysectionada
    \melodysectionadb
    \melodysectionc

    \melodysectionaa
    \melodysectionab
    \melodysectiond
    \melodysectionac
    \melodysectionada
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony =  {
}

tenorharmonymidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmony =  {
}

altoharmonymidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter =  {
}

countermidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineextraintro =  {
    s1 | s1 |
    d4. d8 a,4 c4 |
    d4. d8 a,4 c4 |
}

basslineintro =  {
    d4. d8 a,4 c4 |
    d4. d8 a,4 c4 |
}

basslinesectionaa =  {
    d4. d8 a,4 d4 | \scoreBreak
    g,4. g,8 d4 g4 |
    a,4. e8 a4 a,4 |
    d4. d8 d4 a,4 | \scoreBreak

    d4. d8 a,4 d4 |
    g,4. d8 g4 d4 |
    a,4. e8 a4 a,4 |
    d4. d8 a,4 d4 | \scoreBreak
}

basslinesectionab =  {
    d4. d8 a,4 d4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 d4 | \scoreBreak

    d4. d8 a,4 d4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 a,4 | \scoreBreak
}

basslinesectionb =  \transpose c c' {
    d,4. d,8 a,,4 d,4 |
    bes,,4. bes,,8 f,4 bes,,4 |
    c,4. c,8 g,,4 c,4 |
    f,,4. f,,8 c,4 f,4 | \scoreBreak

    f,4. f,8 d,4 fis,4 |
    g,4. g,8 c,4 e,4 |
    f,4. f,8 fis,4 d,4 |
    g,4. g,8 e,4 g,4 |
    a,8 a,8 gis,8 a,8 bes,8 b,8 c8 cis8 | \scoreBreak
}

basslinesectionac =  {
    d4. d8 a,4 c4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a,4 |
    d4. d8 d4 a,4 | \scoreBreak

    d4. d8 a,4 d4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 d4 | \scoreBreak
}

basslinesectionada =  {
    d4. d8 a,4 d4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a,4 |
    d4. d8 d4 a4 | \scoreBreak

    d4. d8 d4 a,4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a4 |
}

basslinesectionadb =  \transpose c c' {
    d4. d8 a,4 a,4 | \scoreBreak
}

basslinesectionc =  \transpose c c' {
    d4. d8 a,4 d4 |
    c,2 c2 |
    f,2 c2 |
    a,2 a,2 | \scoreBreak
    d2 d,2 |

    des, 2 des,2 |
    c,8 r8 a,,2 d,4 |
    g,4 g,4 c,4 c,4 |
    f,4 r4 a,,4 r4 | \scoreBreak
}

basslinesectiond =  {
    d1 |
    d'2 d4 a4 |
    d'2 d4 d'4 |
    g2 d'4 g4 | \scoreBreak

    g,2 g,4 f,4 |
    e,2 b,4 e4 |
    g,2 bes,4 d4 | \scoreBreak
    a,8 r8 e8 e'8 cis8 cis'8 bes,8 bes8 |
    a,8 a8 g,8 g8 f,8 f8 e,8 e8 | \scoreBreak
}

basslinecoda =  \transpose c c' {
    d4. d8 g,4 a,4 |
    d,8 r8 a,,4 d,8 r8 r4 |
}

bassline =  {
    \key f \major
    \time 4/4
    \basslineintro
    \basslinesectionaa
    \basslinesectionab
    \basslinesectionb
    \basslinesectionac
    \basslinesectionada
    \basslinesectionadb
    \basslinesectionc
    \basslinesectiond
    \blankmeasure
    \basslinecoda
}

basslinemidi =  {
    \key f \major
    \time 4/4
    \preintro
    \basslineextraintro

    \basslinesectionaa
    \basslinesectionab
    \basslinesectionb
    \basslinesectionac
    \basslinesectionada
    \basslinesectionadb
    \basslinesectionc

    \basslinesectionaa
    \basslinesectionab
    \basslinesectiond
    \basslinesectionac
    \basslinesectionada
    \basslinecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarextraintro =  {
    s1*4 |
}

guitarintro =  {
    s1 | s1 |
}

guitarsectionaa =  {
    s1*4 |
    s1*4 |
}

guitarsectionab =  {
    s1*4 |
    s1*4 |
}

guitarsectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

guitarsectionac =  {
    s1*4 |
    s1*4 |
}

guitarsectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

guitarsectionadb =  {
    s1 |
}

guitarsectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

guitarsectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

guitarcoda =  {
    s1 | s1 |
}

guitarnotes =  {
    \key f \major
    \time 4/4
    \guitarintro
    \guitarsectionaa
    \guitarsectionab
    \guitarsectionb
    \guitarsectionac
    \guitarsectionada
    \guitarsectionadb
    \guitarsectionc
    \guitarsectiond
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \guitarextraintro

    \guitarsectionaa
    \guitarsectionab
    \guitarsectionb
    \guitarsectionac
    \guitarsectionada
    \guitarsectionadb
    \guitarsectionc

    \guitarsectionaa
    \guitarsectionab
    \guitarsectiond
    \guitarsectionac
    \guitarsectionada
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextraintro = \chordmode {
    s1*4 |
}

chordlettersintro = \chordmode {
    d1:min | d1:min |
}

chordletterssectionaa = \chordmode {
    d1:min | g1:min | a1 | d1:min |
    d1:min | g1:min | a1 | d1:min |
}

chordletterssectionab = \chordmode {
    d1:min | g1:min | a1 | d1:min |
    d1:min | g1:min | a1 | d1:min |
}

chordletterssectionb = \chordmode {
    d1:min | bes1 | c1 | f1 |
    f2 d2:7 | g1:min | f2 d2:7 | g2 e2:7 |
    a1 |
}

chordletterssectionac = \chordmode {
    d1:min | g1:min | a1 | d1:min |
    d1:min | g1:min | a1 | d1:min |
}

chordletterssectionada = \chordmode {
    d1:min | g1:min | a1 | d1:min |
    d1:min | g1:min | a1 |
}

chordletterssectionadb = \chordmode {
    d1:min |
}

chordletterssectionc = \chordmode {
    d1:min | c1 | f1 | a1 |
    d1:min | des:1 | f4 d2. | g2 c2 |
    f2 a2:7 |
}

chordletterssectiond = \chordmode {
    d1 | d1:min7 | d1:min7 | g1:min7 |
    e1:dim | e1:7 | e1:dim | a1:7 |
    s1 |
}

chordletterscoda = \chordmode {
    d1:min | d1:min |
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectionaa
    \chordletterssectionab
    \chordletterssectionb
    \chordletterssectionac
    \chordletterssectionada
    \chordletterssectionadb
    \chordletterssectionc
    \chordletterssectiond
    \blankmeasure
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

flutenotes =  {
    \melody
}

flutenotesmidi =  {
    \melodymidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetextraintro =  {
    s1*4 |
}

clarinetintro =  {
    R1*2 |
}

clarinetsectionaa =  {
    r8 c'' b' fis' a' g' d' cis' |
    c'1 |
    r8 b8 dis' fis' c'' b' \tuplet 3/2 { fis'4 c''8 } |
    b'1 |

    r8 c''8 b'8 fis'8 a'8 g'8 ~ \tuplet 3/2 { g'8 ais8 b8 } |
    c'1 |
    r8 b8 e'8 dis'8 g'8 fis'8 \tuplet 3/2 { a'4 g'8 } |
    e'1 |
}

clarinetsectionab =  {
    R1*8 |
}

clarinetsectionb =  {
    r8 c''8 b'8 fis'8 a'8 g'8 dis'8 fis'8 |
    e'1 |
    r8 d'8 fis'8 a'8 e''8 d''8 ~ \tuplet 3/2 { d''8 [ cis''8 c''8 ] } |
    b'1 |

    r8 b' b' b' b' d'' d'' c'' |
    c''4 \tuplet 3/2 { c''8 [ c''8 e''8 ] } e''8 d'' d'' a' |
    \tuplet 3/2 { b'4 b'8 } b'8 d'' d'' c'' c'' gis' |
    a'8 e'8 dis'8 e'8 g'8 fis'8 a'8 g'8 |

    fis'2 r2 |
}

clarinetsectionac =  {
    r8 c'' b' fis' a' g' d' cis' |
    c'1 |
    r8 b8 dis' fis' c'' b' \tuplet 3/2 { fis'4 c''8 } |
    b'1 |

    r8 c''8 b'8 fis'8 a'8 g'8 ~ \tuplet 3/2 { g'8 [ ais8 b8 ] } |
    c'1 |
    r8 b8 e'8 dis'8 g'8 fis'8 \tuplet 3/2 { a'4 g'8 } |
    e'1 |
}

clarinetsectionada =  {
    r2 e'''2 ~ |
    e'''2. r4 |
    r2 dis'''2 |
    e'''2 b''2 |

    r2 b''2 |
    c'''2. r4 |
    r2 g'''4. fis'''8 |
}

clarinetsectionadb =  {
    e'''2. r4 |
}

clarinetsectionc =  {
    r8 e''8 e''8 e''8 e''8 e''8 e''8 e''8 |
    e''8 d''8 r8 a'8 ~ a'8 c''8 b'8 ais'8 |
    c''8 r8 b'4. b'8 ais'8 b'8 |
    c''8 b'8 r8 fis'8 ~ fis'8 a'4 aes'8 |

    g'2 r8 g'8 g'8 g'8 |
    g'8 g'8 r8 g'8 ~ g'8 bes'8 a'8 g'8 |
    b'8 r8 e''2 d''4 |
    b'8 a'8 g'8 fis'8 ~ fis'8 e'8 ees'8 d'8 |

    g'4 r4 fis'4 r4 |
}

clarinetsectiond =  {
    R1 |
    dis''8 e''8 r8 dis''8 e''8 r8 dis''8 e''8 ~ |
    e''2. d''4 |
    d''8 c''8 b'8 c''8 a''8 gis''8 b''8 a''8 |

    e''2 r2 |
    eis''8 fis''8 r8 eis''8 fis''8 r8 eis''8 fis''8 ~ |
    fis''2 r8 e''8 a''8 c'''8 |
    b''8 r8 r4 r2 |

    R1 |
}

clarinetcoda =  {
    e'''2. r4 |
    r4 b''4 e'''8 r8 r4 |
}

clarinetnotes =  {
    \key g \major
    \time 4/4
    \clarinetintro
    \clarinetsectionaa
    \clarinetsectionab
    \clarinetsectionb
    \clarinetsectionac
    \clarinetsectionada
    \clarinetsectionadb
    \clarinetsectionc
    \clarinetsectiond
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi =  {
    \key g \major
    \time 4/4
    \preintro
    \clarinetextraintro

    \clarinetsectionaa
    \clarinetsectionab
    \clarinetsectionb
    \clarinetsectionac
    \clarinetsectionada
    \clarinetsectionadb
    \clarinetsectionc

    \clarinetsectionaa
    \clarinetsectionab
    \clarinetsectiond
    \clarinetsectionac
    \clarinetsectionada
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextraintro =  {
    s1*4 |
}

tenorsaxintro =  {
    s1 | s1 |
}

tenorsaxsectionaa =  {
    s1*4 |
    s1*4 |
}

tenorsaxsectionab =  {
    s1*4 |
    s1*4 |
}

tenorsaxsectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

tenorsaxsectionac =  {
    s1*4 |
    s1*4 |
}

tenorsaxsectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

tenorsaxsectionadb =  {
    s1 |
}

tenorsaxsectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

tenorsaxsectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

tenorsaxcoda =  {
    s1 | s1 |
}

tenorsaxnotes =  {
    \key g \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectionb
    \tenorsaxsectionac
    \tenorsaxsectionada
    \tenorsaxsectionadb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi =  {
    \key g \major
    \time 4/4
    \preintro
    \tenorsaxextraintro

    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectionb
    \tenorsaxsectionac
    \tenorsaxsectionada
    \tenorsaxsectionadb
    \tenorsaxsectionc

    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectiond
    \tenorsaxsectionac
    \tenorsaxsectionada
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxextraintro =  {
    s1*4 |
}

altosaxintro =  {
    s1 | s1 |
}

altosaxsectionaa =  {
    s1*4 |
    s1*4 |
}

altosaxsectionab =  {
    s1*4 |
    s1*4 |
}

altosaxsectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

altosaxsectionac =  {
    s1*4 |
    s1*4 |
}

altosaxsectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

altosaxsectionadb =  {
    s1 |
}

altosaxsectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

altosaxsectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

altosaxcoda =  {
    s1 | s1 |
}

altosaxnotes =  {
    \key d \major
    \time 4/4
    \altosaxintro
    \altosaxsectionaa
    \altosaxsectionab
    \altosaxsectionb
    \altosaxsectionac
    \altosaxsectionada
    \altosaxsectionadb
    \altosaxsectionc
    \altosaxsectiond
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi =  {
    \key d \major
    \time 4/4
    \preintro
    \altosaxextraintro

    \altosaxsectionaa
    \altosaxsectionab
    \altosaxsectionb
    \altosaxsectionac
    \altosaxsectionada
    \altosaxsectionadb
    \altosaxsectionc

    \altosaxsectionaa
    \altosaxsectionab
    \altosaxsectiond
    \altosaxsectionac
    \altosaxsectionada
    \altosaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextraintro =  {
    s1*4 |
}

trumpetintro =  {
    s1 | s1 |
}

trumpetsectionaa =  {
    s1*4 |
    s1*4 |
}

trumpetsectionab =  {
    s1*4 |
    s1*4 |
}

trumpetsectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

trumpetsectionac =  {
    s1*4 |
    s1*4 |
}

trumpetsectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

trumpetsectionadb =  {
    s1 |
}

trumpetsectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

trumpetsectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

trumpetcoda =  {
    s1 | s1 |
}

trumpetnotes =  {
    \key g \major
    \time 4/4
    \trumpetintro
    \trumpetsectionaa
    \trumpetsectionab
    \trumpetsectionb
    \trumpetsectionac
    \trumpetsectionada
    \trumpetsectionadb
    \trumpetsectionc
    \trumpetsectiond
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi =  {
    \key g \major
    \time 4/4
    \preintro
    \trumpetextraintro

    \trumpetsectionaa
    \trumpetsectionab
    \trumpetsectionb
    \trumpetsectionac
    \trumpetsectionada
    \trumpetsectionadb
    \trumpetsectionc

    \trumpetsectionaa
    \trumpetsectionab
    \trumpetsectiond
    \trumpetsectionac
    \trumpetsectionada
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextraintro =  {
    s1*4 |
}

tromboneintro =  {
    s1 | s1 |
}

trombonesectionaa =  {
    s1*4 |
    s1*4 |
}

trombonesectionab =  {
    s1*4 |
    s1*4 |
}

trombonesectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

trombonesectionac =  {
    s1*4 |
    s1*4 |
}

trombonesectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

trombonesectionadb =  {
    s1 |
}

trombonesectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

trombonesectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

trombonecoda =  {
    s1 | s1 |
}

trombonenotes =  {
    \key f \major
    \time 4/4
    \tromboneintro
    \trombonesectionaa
    \trombonesectionab
    \trombonesectionb
    \trombonesectionac
    \trombonesectionada
    \trombonesectionadb
    \trombonesectionc
    \trombonesectiond
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \tromboneextraintro

    \trombonesectionaa
    \trombonesectionab
    \trombonesectionb
    \trombonesectionac
    \trombonesectionada
    \trombonesectionadb
    \trombonesectionc

    \trombonesectionaa
    \trombonesectionab
    \trombonesectiond
    \trombonesectionac
    \trombonesectionada
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes =  {
}

euphoniumnotesmidi =  {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinextraintro =  {
    s1*4 |
}

violinintro =  {
    R1*2 |
}

violinsectionaa =  {
    r8 e'8 f'8 cis'8 e'8 d'8 a8 aes8 |
    g1 |
    r8 a'8 a'8 a'8 g'8 f'8 \tuplet 3/2 { cis'4 d'8 } |
    e'8 f'8 ~ f'2. |

    r8 d'8 f'8 a'8 e''8 cis''8 e''8 d''8 |
    c''8 bes'4 a'8 g'2 |
    r8 a'8 a'8 a'8 gis'8 a'8 \tuplet 3/2 { bes'4 a'8 } |
    d''1 |
}

violinsectionaarests =  {
    s1*4 |
    s1*4 |
}

violinsectionab =  {
    r8 d''8 des''8 c''8 b'8 d''8 f''8 e''8 |
    bes'1 |
    r8 bes'8 bes'8 a'8 cis''8 bes'8 a'8 g'8 |
    \acciaccatura { fis'16 } g'8 f'8 ~ \tuplet 3/2 { f'8 [ a'8 g'8 ] } f'2 |

    r8 f''8 ~ \tuplet 3/2 { f''8 [ e''8 d''8 ] } cis''8 d''4 bes'16 a'16 |
    g'1 |
    r8 a'8 ~ \tuplet 3/2 { a'8 [ gis'8 a'8 ] } bes'8 a'8 b8 cis'8 |
    d'1 |
}

violinsectionb =  {
    R1 |
    r4 bes'2 f'4 | 
    e'2 \tuplet 3/2 { e'4 f'4 g'4 } |
    a'2 f'4 des'4 |

    c'2 r2 |
    R1*4 |
}

violinsectionac =  {
    r2 a'2 ~ |
    \tuplet 3/2 { a'4 g'4 g'4 } \tuplet 3/2 { g'4 ges'4 f'4 } |
    e'1 |
    r8 d'8 d'8 cis'8 \tuplet 3/2 { d'4 f'4 a'4 } |

    d''1 |
    r8 e''4 d''8 \tuplet 3/2 { e''4 f''4 g''4 } |
    cis''1 |
    r8 d''4 bes'8 a'8 g'8 f'8 e'8 |
}

violinsectionada =  {
    d'2 r2 |
    r4 d''2 bes''4 |
    g''2 ~ g''4 f''8 e''8 |
    \acciaccatura { fis'16 } g'8 f'8 ~ \tuplet 3/2 { f'8 [ a'8 g'8 ] } f'2 |

    r8 f''8 ~ \tuplet 3/2 { f''8 [ e''8 d''8 ] } cis''8 d''4 bes'16 a'16 |
    g'1 |
    r8 a'8 ~ \tuplet 3/2 { a'8 [ gis'8 a'8 ] } bes'8 a'8 b8 cis'8 |
}

violinsectionadb =  {
    d'1 |
}

violinsectionc =  {
    r8 d''8 cis''8 c''8 b'8 bes'8 a'8 aes'8 |
    g'8 e'8 r8 e'8 ~ e'2 |
    f'8 r8 f'4. f'8 f'8 f'8 |
    e'8 e'8 r8 d'8 ~ d'8 b4 cis'8 |

    d'2 r8 f'8 e'8 d'8 |
    des'8 des'8 r8 des'8 ~ des'8 c'8 ees'8 des'8 |
    c'8 r8 c'2 a'4 |
    f''4 d''4 d''4 e''4 |

    f''4 r4 a'4 r4 |
}

violinsectiond =  {
    R1 |
    eis'8 fis'8 r8 eis'8 fis'8 r8 eis'8 fis'8 ~ |
    fis'2. fis'4 |
    g'2 f'2 |

    e'2 d'2 |
    r2 b'2 |
    bes'4. d''8 c''4 bes'4 |
    a'8 r8 r4 r2 |

    R1 |
}

violincoda =  {
    d'1 |
    r4 cis''4 d''8 r8 r4 |
}

violinnotes =  {
    \key f \major
    \time 4/4
    \violinintro
    \violinsectionaa
    \violinsectionab
    \violinsectionb
    \violinsectionac
    \violinsectionada
    \violinsectionadb
    \violinsectionc
    \violinsectiond
    \blankmeasure
    \violincoda
}

violinnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \violinextraintro

    \violinsectionaarests
    \violinsectionab
    \violinsectionb
    \violinsectionac
    \violinsectionada
    \violinsectionadb
    \violinsectionc

    \violinsectionaa
    \violinsectionab
    \violinsectiond
    \violinsectionac
    \violinsectionada
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes =  {
    \bassline
}

bassnotesmidi =  {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperextraintro =  {
    s1 | s1 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightupperintro =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightuppersectionaa =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |

    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightuppersectionab =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |

    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightuppersectionb =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { bes16 [ d'16 f'16 ] } bes'8 < d' f' bes' >8 r8 < d' f' bes' >8 r8 < d' f' bes' >8 |
    r8 \tuplet 3/2 { g16 [ c'16 e'16 ] } g'8 < c' e' g' >8 r8 < c' e' g' >8 r8 < c' e' g' >8 |
    r8 \tuplet 3/2 { a16 [ c'16 f'16 ] } a'8 < c' f' a' >8 r8 < c' f' a' >8 r8 < c' f' a' >8 |

    r8 \tuplet 3/2 { a16 [ c'16 f'16 ] } a'8 < c' f' a' >8 r8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ c'16 f'16 ] } a'8 < c' f' a' >8 r8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 |
    r8 \tuplet 3/2 { g16 [ b16 d'16 ] } g'8 < b d' g' >8 r8 < b d' e' gis' >8 r8 < b d' e' gis' >8 |
    a'8 a'8 gis'8 a'8 bes'8 b'8 c''8 cis''8 |
}

pianorightuppersectionac =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |

    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightuppersectionada =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |

    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' g' >8 r8 < bes d' g' >8 r8 < bes d' g' >8 |
    r8 \tuplet 3/2 { a16 [ cis'16 e'16 ] } a'8 < c' e' a' >8 r8 < c' e' a' >8 r8 < c' e' a' >8 |
}

pianorightuppersectionadb =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
}

pianorightuppersectionc =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    g8 c'8 e'8 g'8 ~ g'8 e'8 c'8 bes8 |
    a8 c'8 f'8 a'8 ~ a'8 f'8 c'8 a8 |
    a8 cis'8 e'8 a'8 ~ a'8 g'8 f'8 e'8 |
    d'8 a8 d'8 f'8 ~ f'8 a'8 g'8 f'8 |

    aes8 des'8 f8 aes'8 ~ aes'8 f'8 des'8 aes8 |
    < c' f' a' >8 r8 < d' fis' a' >2 < d' fis' a d'' >4 |
    b8 d'8 f'8 a'8 ~ a'8 d''8 c''8 a''8 |
    < c' f' a' >4 r4 < cis' e' g' a' >4 r4 |
}

pianorightuppersectiond =  {
    r8 a8 d'8 fis'8 a'8 d''8 fis''8 a''8 |
    r8 \tuplet 3/2 { a16 [ d'16 fis'16 ] } a'8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 |
    r8 \tuplet 3/2 { a16 [ d'16 fis'16 ] } a'8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 r8 < c' d' fis' a' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' f' g' >8 r8 < bes d' f' g' >8 r8 < bes d' f' g' >8 |

    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' e' g' >8 r8 < bes d' e' g' >8 r8 < bes d' e' g' >8 |
    r8 \tuplet 3/2 { e16 [ gis16 b16 ] } e'8 < gis b d' e' >8 r8 < gis b d' e' >8 r8 < gis b d' e' >8 |
    r8 \tuplet 3/2 { g16 [ bes16 d'16 ] } g'8 < bes d' e' g' >8 r8 < bes d' e' g' >8 r8 < bes d' e' g' >8 |
    < a cis' e' g' a' >8 r8 cis'''16 bes'' g'' e'' g'' e'' cis'' bes' cis'' bes' g' e' |
    cis'4 ~ cis'16 d' dis' e' f' fis' g' gis' a' b' c' cis'' |
}

pianorightuppercoda =  {
    r8 \tuplet 3/2 { a16 [ d'16 f'16 ] } a'8 < d' f' a' >8 r8 < d' f' a' >8 r8 < d' f' a' >8 |
    r4 < g' a' >4 < f' d'' >8 r8 r4 |
}

pianorightuppernotes =  {
    \key f \major
    \time 4/4
    \pianorightupperintro
    \pianorightuppersectionaa
    \pianorightuppersectionab
    \pianorightuppersectionb
    \pianorightuppersectionac
    \pianorightuppersectionada
    \pianorightuppersectionadb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \blankmeasure
    \pianorightuppercoda
}

%-------------------------------------------------

pianorightlowernotes =  {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

pianoleftupperextraintro =  {
    s1 | s1 |
    d,4. d,8 a,,4 c,4 |
    d,4. d,8 a,,4 c,4 |
}

pianoleftupperintro =  {
    d,4. d,8 a,,4 c,4 |
    d,4. d,8 a,,4 c,4 |
}

pianoleftuppersectionaa =  {
    d,4. d,8 a,,4 d,4 |
    g,4. g,8 d4 g4 |
    a,4. e8 a4 a,4 |
    d,4. d,8 d,4 a,4 |

    d4. d8 a,4 d4 |
    g,4. d8 g4 d4 |
    a,4. e8 a4 a,4 |
    d4. d8 a,4 d4 |
}

pianoleftuppersectionab =  {
    d4. d8 a,4 d4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 d4 |

    d4. d8 a,4 d4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 a,4 |
}

pianoleftuppersectionb =  {
    d4. d8 a,4 d4 |
    bes,4. bes,8 f4 bes,4 |
    c4. c8 g,4 c4 |
    f,4. f,8 c4 f4 |

    f,4. f,8 d,4 fis,4 |
    g,4. g,8 c,4 e,4 |
    f,4. f,8 fis,4 d,4 |
    g,4. g,8 e,4 e4 |
    a,8 a,8 gis,8 a,8 bes,8 b,8 c8 cis8 |
}

pianoleftuppersectionac =  {
    d,4. d,8 a,,4 c,4 |
    g,4. g,8 d4 g4 |
    a,4. a,8 e4 a,4 |
    d,4. d,8 d,4 a,4 |

    d4. d8 a,4 d4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a4 |
    d4. d8 a,4 d4 |
}

pianoleftuppersectionada =  {
    d4. d8 a,4 d4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a,4 |
    d,4. d,8 d,4 a,4 |

    d,4. d,8 d,4 a,4 |
    g,4. g8 d4 g4 |
    a,4. a,8 e4 a4 |
}

pianoleftuppersectionadb =  {
    d4. d8 a,4 a,4 |
}

pianoleftuppersectionc =  {
    d4. d8 a,4 d4 |
    c,2 c2 |
    f,2 c2 |
    a,2 a,2 |
    d2 d,2 |

    < des, des >2 < des, des >2 |
    < c, c >8 r8 < a,, a, >2 < d, d >4 |
    g,4 g,4 < c, c >4 < c, c >4 |
    < f, f >4 r4 < a,, a, >4 r4 |
}

pianoleftuppersectiond =  {
    d,1 |
    d2 d,4 a,4 |
    d2 d,4 d4 |
    g,2 d4 g4 |

    g,2 g,4 f,4 |
    e,2 b,4 e4 |
    g,2 bes,4 d4 |
    < a,, a, >8 r8 e8 e'8 cis8 cis'8 bes,8 bes8 |
    a,8 a8 g,8 g8 f,8 f8 e,8 e8 |
}

pianoleftuppercoda =  {
    d4. d8 g,4 a,4 |
    d,8 r8 a,,4 d,8 r8 r4 |
}

pianoleftuppernotes =  {
    \key f \major
    \time 4/4
    \pianoleftupperintro
    \pianoleftuppersectionaa
    \pianoleftuppersectionab
    \pianoleftuppersectionb
    \pianoleftuppersectionac
    \pianoleftuppersectionada
    \pianoleftuppersectionadb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \blankmeasure
    \pianoleftuppercoda
}

%-------------------------------------------------

pianoleftlowernotes =  {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

pianorightnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \pianorightupperextraintro

    \pianorightuppersectionaa
    \pianorightuppersectionab
    \pianorightuppersectionb
    \pianorightuppersectionac
    \pianorightuppersectionada
    \pianorightuppersectionadb
    \pianorightuppersectionc

    \pianorightuppersectionaa
    \pianorightuppersectionab
    \pianorightuppersectiond
    \pianorightuppersectionac
    \pianorightuppersectionada
    \pianorightuppercoda
}

pianoleftnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \pianoleftupperextraintro

    \pianoleftuppersectionaa
    \pianoleftuppersectionab
    \pianoleftuppersectionb
    \pianoleftuppersectionac
    \pianoleftuppersectionada
    \pianoleftuppersectionadb
    \pianoleftuppersectionc

    \pianoleftuppersectionaa
    \pianoleftuppersectionab
    \pianoleftuppersectiond
    \pianoleftuppersectionac
    \pianoleftuppersectionada
    \pianoleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightupperextraintro =  {
    s1*4 |
}

accordionrightupperintro =  {
    R1*2 |
}

accordionrightuppersectionaa =  {
    R1*8 |
}

accordionrightuppersectionab =  {
    r8 f'8 e' ees' d' f' a' g' |
    \tuplet 3/2 { f'4 e' ees' } d'2 |
    r8 g' g' f' a' g' f' e' |
    e'8 d' ~ \tuplet 3/2 { d'8 [ f' e' ] } d'2 |

    r8 d''8 ~ \tuplet 3/2 { d''8 [ c'' bes' ] } \tuplet 3/2 { a'4 g' f' } |
    f'4. e'8 ~ e'2 |
    r8 e'8 ~ \tuplet 3/2 { e'8 [ d' cis' ] } g4. a8 |
    \tuplet 3/2 { bes4 a4 d'4 ~ } d'2 |
}

accordionrightuppersectionabrests =  {
    R1*8 |
}

accordionrightuppersectionb =  {
    R1*4 |

    r8 f'8 e' f' fis'4 a' |
    g'4. f'8 e'4 g'4 |
    f'4. e'8 d'4 c'4 |
    b2 cis'4 d'4 |

    cis'2 r2 |
}

accordionrightuppersectionac =  {
    r2 d'2 |
    g2. r4 |
    r2 a2 ~ |
    a2. r4 |

    r2 d'2 |
    g'2. r4 |
    r2 a2 |
    d'2. r4 |
}

accordionrightuppersectionacrests =  {
    R1*8 |
}

accordionrightuppersectionada =  {
    r8 d''8 des''8 c''8 b'8 d''8 f''8 e''8 |
    bes'1 |
    r8 bes'8 bes'8 a'8 cis''8 bes'8 a'8 g'8 |
    d''2 r8 c''8 bes'8 gis'8 |

    a'1 |
    r4 e'4 \tuplet 3/2 { bes'2 d''4 } |
    e''2 cis''2 |
}

accordionrightuppersectionadb =  {
    r8 d'''8 a''8 f''8 e''8 d''8 a'8 f'8 |
}

accordionrightuppersectionc =  {
    d'4 r4 r2 |
    r2 r8 d'8 c'8 bes8 |
    d'8 r8 c'2. |
    cis'4 r8 a'8 ~ a'2 |

    d'2 r8 a8 a8 a8 |
    aes1 |
    a1 |
    b2 bes2 |

    a4 r4 cis'4 r4 |
}

accordionrightuppersectiond =  {
    r8 a8 d'8 fis'8 a'8 d''8 fis''8 a''8 |
    c'''1 ~ |
    c'''4 fis''4 a''4 c''4 |
    c''8 d''8 r8 c''8 d''8 r8 c''8 d''8 ~ |

    d''2 bes'2 |
    r2 b'2 |
    bes'4. d''8 c''4 bes'4 |
    a'8 r8 r4 r2 |

    R1 |
}

accordionrightuppercoda =  {
    r8 d'''8 a''8 f''8 d''8 bes'8 g'8 e'8 |
    d'8 r8 e'4 d'8 r8 r4 |
}

accordionrightuppernotes =  {
    \key f \major
    \time 4/4
    \accordionrightupperintro
    \accordionrightuppersectionaa
    \accordionrightuppersectionab
    \accordionrightuppersectionb
    \accordionrightuppersectionac
    \accordionrightuppersectionada
    \accordionrightuppersectionadb
    \accordionrightuppersectionc
    \accordionrightuppersectiond
    \blankmeasure
    \accordionrightuppercoda
}

%-------------------------------------------------

accordionrightlowernotes =  {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

accordionleftupperextraintro =  {
    s1*4 |
}

accordionleftupperintro =  {
    s1 | s1 |
}

accordionleftuppersectionaa =  {
    s1*4 |
    s1*4 |
}

accordionleftuppersectionab =  {
    s1*4 |
    s1*4 |
}

accordionleftuppersectionb =  {
    s1*4 |
    s1*4 |
    s1 |
}

accordionleftuppersectionac =  {
    s1*4 |
    s1*4 |
}

accordionleftuppersectionada =  {
    s1*4 |
    s1 | s1 | s1 |
}

accordionleftuppersectionadb =  {
    s1 |
}

accordionleftuppersectionc =  {
    s1*4 |
    s1*4 |
    s1 |
}

accordionleftuppersectiond =  {
    s1*4 |
    s1*4 |
    s1 |
}

accordionleftuppercoda =  {
    s1 | s1 |
}

accordionleftuppernotes =  {
    \key f \major
    \time 4/4
    \accordionleftupperintro
    \accordionleftuppersectionaa
    \accordionleftuppersectionab
    \accordionleftuppersectionb
    \accordionleftuppersectionac
    \accordionleftuppersectionada
    \accordionleftuppersectionadb
    \accordionleftuppersectionc
    \accordionleftuppersectiond
    \blankmeasure
    \accordionleftuppercoda
}

%-------------------------------------------------

accordionleftlowernotes =  {
    \key f \major
    \time 4/4
}

%-------------------------------------------------

accordionrightnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \accordionrightupperextraintro

    \accordionrightuppersectionaa
    \accordionrightuppersectionabrests
    \accordionrightuppersectionb
    \accordionrightuppersectionacrests
    \accordionrightuppersectionada
    \accordionrightuppersectionadb
    \accordionrightuppersectionc

    \accordionrightuppersectionaa
    \accordionrightuppersectionab
    \accordionrightuppersectiond
    \accordionrightuppersectionac
    \accordionrightuppersectionada
    \accordionrightuppercoda
}

accordionleftnotesmidi =  {
    \key f \major
    \time 4/4
    \preintro
    \accordionleftupperextraintro

    \accordionleftuppersectionaa
    \accordionleftuppersectionab
    \accordionleftuppersectionb
    \accordionleftuppersectionac
    \accordionleftuppersectionada
    \accordionleftuppersectionadb
    \accordionleftuppersectionc

    \accordionleftuppersectionaa
    \accordionleftuppersectionab
    \accordionleftuppersectiond
    \accordionleftuppersectionac
    \accordionleftuppersectionada
    \accordionleftuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextraintro = \drummode {
    \time 4/4
    sna4\p sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ |
    sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ |
    sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ |
    sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ |
}

drumshighintro = \drummode {
    \repeat unfold 2 { sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ | }
}

drumshighsectionaa = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ | }
    sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16
}

drumshighsectionab = \drummode {
}

drumshighsectionb = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 \repeat tremolo 8 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 \repeat tremolo 8 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighsectionac = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ | }
}

drumshighsectionacd = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 ~ | }
    sna4 sna4 sna4 sna8 \repeat tremolo 2 sna16 |
}

drumshighsectionc = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 \repeat tremolo 8 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 \repeat tremolo 8 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighsectiond = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 \repeat tremolo 8 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 \repeat tremolo 8 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighcoda = \drummode {
    sna4 sna4 sna4 \repeat tremolo 8 sna32 ~ |
    sna8 sna8 r8 sna8 r4 cymc4 |
}

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectionaa
    \drumshighsectionb
    \drumshighsectionacd
    \drumshighsectionc
    \drumshighsectiond
    \blankmeasure
    \drumshighcoda
}

drumshighmidiextraintro = \drummode {
    \time 4/4
    sna4\p sna4 sna4 sna8 sna16 sna16 ~ |
    sna4 sna4 sna4 sna8 sna16 sna16 ~ |
    sna4 sna4 sna4 sna8 sna16 sna16 ~ |
    sna4 sna4 sna4 sna8 sna16 sna16 ~ |
}

drumshighmidiintro = \drummode {
    \repeat unfold 2 { sna4 sna4 sna4 sna8 sna16 sna16 ~ | }
}

drumshighmidisectionaa = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 sna16 sna16 ~ | }
    sna4 sna4 sna4 sna8 sna16 sna16
}

drumshighmidisectionab = \drummode {
}

drumshighmidisectionb = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighmidisectionac = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 sna16 sna16 ~ | }
}

drumshighmidisectionacd = \drummode {
    \repeat unfold 15 { sna4 sna4 sna4 sna8 sna16 sna16 ~ | }
    sna4 sna4 sna4 sna8 sna16 sna16 |
}

drumshighmidisectionc = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighmidisectiond = \drummode {
    \repeat unfold 4 {
        sna4 sna4 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
        sna8 sna8 r8 sna8 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
    }
    sna4 r4 r4 cymc4 |
}

drumshighmidicoda = \drummode {
    sna4 sna4 sna4 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 ~ |
    sna8 sna8 r8 sna8 r4 cymc4 |
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighmidiextraintro

    \drumshighmidisectionaa
    \drumshighmidisectionb
    \drumshighmidisectionacd
    \drumshighmidisectionc

    \drumshighmidisectionaa
    \drumshighmidisectiond
    \drumshighmidisectionac
    \drumshighmidicoda
}

drumslowextraintro = \drummode {
    \time 4/4
    bda4\p bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
}

drumslowintro = \drummode {
    \repeat unfold 2 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionaa = \drummode {
    \repeat unfold 8 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionab = \drummode {
    \repeat unfold 8 { bda4 bda4 bda4 bda4 | }
}

drumslowsectionb = \drummode {
    \repeat unfold 8 { bda4 bda4 bda4 bda4 | }
    bda4 s4 s2 |
}

drumslowsectionac = \drummode {
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
}

drumslowsectionada = \drummode {
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 |
}

drumslowsectionadb = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectionc = \drummode {
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 bda4 |
    bda4 s4 s4 s4 |
}

drumslowsectiond = \drummode {
    < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 | < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 |
    < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 | < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 |
    < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 | < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 |
    < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 | < hhp bda >4 < hhp bda >4 < hhp bda >4 < hhp bda >4 |
    bda4 s4 s4 s4 |
}

drumslowcoda = \drummode {
    bda4 bda4 bda4 bda4 | bda4 bda4 bda4 s4 |
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowintro
    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectionb
    \drumslowsectionac
    \drumslowsectionada
    \drumslowsectionadb
    \drumslowsectionc
    \drumslowsectiond
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowextraintro

    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectionb
    \drumslowsectionac
    \drumslowsectionada
    \drumslowsectionadb
    \drumslowsectionc

    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectiond
    \drumslowsectionac
    \drumslowsectionada
    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes =  {
    \key f \major
    \time 4/4
    \transpose d c { \clarinetintro }
    \transpose d c { \clarinetsectionaa }
    \violinsectionab
    \transpose d c { \clarinetsectionb }
    \transpose d c { \clarinetsectionac }
    \violinsectionada
    \violinsectionadb
    \transpose d c { \clarinetsectionc }
    \accordionrightuppersectiond
    \blankmeasure
    \accordionrightuppercoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d1:min | g1:min | a1 | d1:min |
    d1:min | g1:min | a1 | d1:min |
}

previewnotes = \transpose d c' {
    \key g \major
    \time 4/4

    r8 c'' b' fis' a' g' d' cis' |
    c'1 |
    r8 b8 dis' fis' c'' b' \tuplet 3/2 { fis'4 c''8 } |
    b'1 |

    r8 c''8 b'8 fis'8 a'8 g'8 ~ \tuplet 3/2 { g'8 ais8 b8 } |
    c'1 |
    r8 b8 e'8 dis'8 g'8 fis'8 \tuplet 3/2 { a'4 g'8 } |
    e'1 |
}

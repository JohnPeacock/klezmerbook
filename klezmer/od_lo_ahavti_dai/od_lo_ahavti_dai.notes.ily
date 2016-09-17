\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2010, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmpickup = {
    \partial 8 s8
}

bandmsectiona = {
    s1 | \breakAone
    s1 | \breakAtwo
    s1 | \breakAtre
    s1 | \breakAfor

    s1 | \breakAfiv
    s1 | \breakAsix
    s1 | \breakAsev
    s1 | \breakAeit
    \bar "||"
    s1 | \breakAnin
    s1 | \breakAten
    s1 | \breakAelv
    s1 | \breakAtwl

    s1 | \breakAtht
    s1 | \breakAfrt
    s1 | \breakAfft
    s1 | \breakAsxt
}

bandmNV = {
    \tempo \tempostring
    \bandmpickup
    \bandmsectiona
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = {
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }

metronomepickup = {
    s1 |
}

metronome = \context Voice = "metronome" {
    \preintro
    \tempo 4 = 120
    \metronomepickup
    \bandmsectiona
    \bandmsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    B'- e- le ha- ya- da- yim od lo ba- ni- ti- k'far
    Od lo ma- tsa- ti ma- yim b'- em- tsa ha- mid- bar
    Od lo tsi- yar- ti pe- rach od lo gi- li- ti ech
    To- vil o- ti ha- de- rech ul'- an a- ni ho- lech.
    Ay, __ od lo a- hav- ti __ dai
    Ha- ru'- ach v'- ha- she- mesh al pa- nai
    Ay, __ od lo a- mar- ti __ dai
    V'- im log im lo ach- shav, e- __ ma- tai.
}
textlb = \lyricmode {
    Od lo sha- tal- ti de- she, od lo hei- kam- ti ir
    Od lo na- ta- ti ker- em al kol giv- ot ha- gir
    Od lo ha- kol a- si- ti ma- mash b'- mo ya- dai
    Od lo ha- kol ni- ti- ti, od lo a- hav- ti dai.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodypickup = {
    \partial 8 g'8 |
}

melodymidipickup = {
    s2 s4 s8 g'8 |
}

melodysectiona = {
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    fis'8 fis'8 fis'8 fis'8 e'4 r8 e'16 ( fis'16 ) |
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    a'8 d'8 d'8 d'8 b'4 r8 b'8 |

    b'8 b'8 b'8 b'8 c''4 b'8 b'8 |
    a'8 a'8 d''8 d''8 b'4 r8 b'16 ( a'16 ) |
    g'8 g'8 g'8 g'8 a'4 g'8 g'8 |
    fis'8 fis'8 b'8 b'8 e'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    a'4 g'8 ( a'8 ) b'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    fis'8 ( e'8 ) fis'4 e'2 |
}

melody = {
    \key g \major
    \time 4/4
    \melodypickup
    \melodysectiona
}

melodymidi = {
    \time 4/4
    \preintro
    \melodymidipickup
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
    \new Voice { \key g \major \time 4/4 \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonypickup = {
    \partial 8 s8
}

harmonymidipickup = {
    s1 |
}

harmonysectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

harmony = {
    \key g \major
    \time 4/4
    \harmonypickup
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterpickup = {
    \partial 8 s8
}

countermidipickup = {
    s1 |
}

countersectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

counter = {
    \key g \major
    \time 4/4
    \counterpickup
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key g \major
    \time 4/4
    \melodypickup
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetpickup = {
    \partial 8 g'8 |
}

clarinetmidipickup = {
    s2 s4 s8 g'8 |
}

clarinetsectiona = {
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    fis'8 fis'8 fis'8 fis'8 e'4 r8 e'16 ( fis'16 ) |
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    a'8 d'8 d'8 d'8 b'4 r8 b'8 |

    b'8 b'8 b'8 b'8 c''4 b'8 b'8 |
    a'8 a'8 d''8 d''8 b'4 r8 b'16 ( a'16 ) |
    g'8 g'8 g'8 g'8 a'4 g'8 g'8 |
    fis'8 fis'8 b'8 b'8 e'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    a'4 g'8 ( a'8 ) b'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    fis'8 ( e'8 ) fis'4 e'2 |
}

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key g \major
    \time 4/4
    \clarinetpickup
    \clarinetsectiona
}

clarinetnotesmidi = \transpose c d' {
    \key g \major
    \time 4/4
    \preintro
    \clarinetmidipickup
    \clarinetsectiona
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetpickup = {
    \partial 8 g'8 |
}

trumpetmidipickup = {
    s2 s4 s8 g'8 |
}

trumpetsectiona = {
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    fis'8 fis'8 fis'8 fis'8 e'4 r8 e'16 ( fis'16 ) |
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    a'8 d'8 d'8 d'8 b'4 r8 b'8 |

    b'8 b'8 b'8 b'8 c''4 b'8 b'8 |
    a'8 a'8 d''8 d''8 b'4 r8 b'16 ( a'16 ) |
    g'8 g'8 g'8 g'8 a'4 g'8 g'8 |
    fis'8 fis'8 b'8 b'8 e'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    a'4 g'8 ( a'8 ) b'4 r4 |

    b'4. ( a'16 g'16 a'4 ) r8 d'8 |
    g'8 g'8 g'8 fis'16 ( e'16 ) fis'4 r8 b8 |
    e'8 e'8 e'8 e'8 d'4 g'4 |
    fis'8 ( e'8 ) fis'4 e'2 |
}

trumpetnotes = \transpose c d {
    \key g \major
    \time 4/4
    \trumpetpickup
    \trumpetsectiona
}

trumpetnotesmidi = \transpose c d {
    \key g \major
    \time 4/4
    \preintro
    \trumpetmidipickup
    \trumpetsectiona
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonepickup = {
    \partial 8 s8
}

trombonemidipickup = {
    s1 |
}

trombonesectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

trombonenotes = \transpose c c, {
    \key g \major
    \time 4/4
    \trombonepickup
    \trombonesectiona
}
trombonenotesmidi = {
    \key g \major
    \time 4/4
    \preintro
    \trombonemidipickup
    \trombonesectiona
    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarpickup = {
    \partial 8 s8
}

guitarmidipickup = {
    s1 |
}

guitarsectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarnotes = {
    \time 4/4
    \key g \major
    \guitarpickup
    \guitarsectiona
}

guitarnotesmidi = {
    \time 4/4
    \key g \major
    \preintro
    \guitarmidipickup
    \guitarsectiona
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basspickup = {
    \partial 8 r8
}

bassmidipickup = {
    s2 s4 s8 r8 |
}

basssectiona = {
    e,4 b,4 g4 b,8 c8 |
    d4 b,8 d8 e,8 b,8 e8 d8 |
    g8 fis8 e8 d8 c4 e4 |
    d4 d4 g4 b4 |

    e4 fis8 gis8 a4 b4 |
    c'8 a8 d'4 g4 d4 |
    g8 fis8 e8 d8 c4 e4 |
    d4 b,4 e4 r4 |

    e4 b,4 e4 b,4 |
    d4 a,4 d4 a,4 |
    c4 a,4 b,4 e4 |
    c4 d4 g,4 fis,4 |

    e4 b,4 e4 b,4 |
    d4 a,4 d4 a,4 |
    c4 a,4 b,4 e4 |
    a,4 b,4 e,2 |
}

bassline = {
    \time 4/4
    \key g \major
    \basspickup
    \basssectiona
}

basslinemidi = {
    \time 4/4
    \key g \major
    \preintro
    \bassmidipickup
    \basssectiona
    \basssectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterspickup = \chordmode {
    \partial 8 s8
}

chordlettersmidipickup = \chordmode {
    s1 |
}

chordletterssectiona = \chordmode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

chordletters = \chordmode {
    \chordletterspickup
    \chordletterssectiona
}

scorechordletters = \chordmode {
    \chordletterspickup
    \chordletterssectiona
}

guitarchordletters = {
    \chordletterspickup
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

pianorightupperpickup = {
    \partial 8 < e'' g'' >8 |
}

pianorightuppermidipickup = {
    s2 s4 s8 < e'' g'' >8 |
}

pianorightuppersectiona = {
    < b' g'' >8 < b' g'' >8 < e'' g'' >8 < b' g'' >8 < b' d'' g'' >8 < b' d'' g'' >4 < e'' g'' >8 |
    < a' fis'' >8 < a' d'' fis'' >8 < b' d'' fis'' >8 < a' d'' fis'' >8 < g' b' e'' >4 r8 < c'' e'' >16 fis''16 |
    < b' d'' g'' >8 < b' d'' g'' >8 < b' e'' g'' >8 < b' e'' g'' >8 < c'' e'' g'' >8 < c'' g'' >4 < b' g'' >8 |
    < c'' a'' >8 d''8 < fis'' c''' >8 < d'' a'' >8 < d'' g'' b'' >4 < d'' fis'' b'' >4 |

    < e'' gis'' b'' >8 < e'' gis'' b'' >8 < e'' b'' >8 < d'' e'' b'' >8 < c'' e'' c''' >4 < d'' fis'' b'' >4 |
    < e'' a'' >8 < c'' e'' a'' >8 < fis'' d''' >8 < d'' fis'' d''' >8 < d'' g'' b'' >4 r8 < c'' b'' >16 a''16 |
    < b' d'' g'' >8 < b' d'' g'' >8 < b' e'' g'' >8 < b' e'' g'' >8 < a' e'' a'' >4 < b' e'' g'' >4 |
    < d'' fis'' >8 a'8 < dis'' fis'' b'' >4 < g' b' e'' >4 r4 |

    < e'' g'' b'' >4 < b' g'' >4 < c'' a'' >4 \stemUp e''8 d''8 \stemNeutral |
    < d'' g'' b'' >4 < b' d'' g'' >4 < a' fis'' >4 < fis' d'' >8 b'8 |
    < g' c'' e'' >8 < g' c'' e'' >8 < e' c'' e'' >8 < e' c'' e'' >8 < fis' b' d'' >4 < g' b' g'' >4 |
    < a' e'' a'' >4 < b' d'' g'' >8 < c'' fis'' a'' >8 < d'' g'' b'' >2 |

    < e'' g'' b'' >4 < b' g'' >4 < c'' a'' >4 \stemUp e''8 d''8 \stemNeutral |
    < d'' g'' b'' >4 < b' d'' g'' >4 < a' fis' >4 < fis' d'' >8 b'8 |
    < g' c'' e'' >8 < g' c'' e'' >8 < e' c'' e'' >8 < e' c'' e'' >8 < fis' b' d'' >4 < g' c'' g'' >4 |
    < a' fis'' >8 < c'' e'' >8 < a' dis'' fis'' >4 \stemUp < b' e'' >2 |
}

pianorightuppernotes = {
    \time 4/4
    \key g \major
    \pianorightupperpickup
    \pianorightuppersectiona
}

pianorightlowerpickup = {
    \partial 8 s8
}

pianorightlowermidipickup = {
    s1 |
}

pianorightlowersectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    \stemDown
    s2 s4 < a' c'' >4 |
    s1 |
    s1 |
    s1 |

    \stemDown
    s2 s4 < a' c'' >4 |
    s1 |
    s1 |
    \stemDown
    s2 g'4 e'4 |
}

pianorightlowernotes = {
    \time 4/4
    \key g \major
    \pianorightlowerpickup
    \pianorightlowersectiona
}

pianoleftupperpickup = {
    \partial 8 r8 |
}

pianoleftuppermidipickup = {
    s2 s4 s8 r8 |
}

pianoleftuppersectiona = {
    e,4 b,8 e8 g8 d8 b,8 c8 |
    < d, d >4 < b,, b, >8 < d, d >8 e,8 b,8 e8 d8 |
    < g, g >8 < fis, fis >8 < e, e >8 < d, d >8 < c, c >4 < e, e >4 |
    < d, d >4 < d, d >4 < g, g >4 < b, b >4 |

    < e, e >4 < fis, fis >8 < gis, gis >8 < a, a >4 < b, b >4 |
    < c c' >8 < a, a >8 < d d' >4 < g, g >4 < d, d >4 |
    < g, g >8 < fis, fis >8 < e, e >8 < d, d >8 < c, c >4 < e, e >4 |
    < d, d >4 < b,, b, >4 < e, e >4 r4 |

    < e,, e, >1 |
    < d,, d, >1 |
    < c, c >4 < a,, a, >4 < b,, b, >4 < e, e >4 |
    < c, c >4 < d, d >4 < g,, g, >4 < fis,, fis, >4 |

    < e,, e, >1 |
    < d,, d, >1 |
    < c, c >4 < a,, a, >4 < b,, b, >4 < e, e >4 |
    < a,, a, >4 < b,, b, >4 < e,, e, >2 |
}

pianoleftuppernotes = {
    \time 4/4
    \key g \major
    \pianoleftupperpickup
    \pianoleftuppersectiona
}

pianorightnotesmidi = {
    \preintro
    <<
        {
            \pianorightuppermidipickup
            \pianorightuppersectiona
            \pianorightuppersectiona
        }
        {
            \pianorightlowermidipickup
            \pianorightlowersectiona
            \pianorightlowersectiona
        }
    >>
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftuppermidipickup
    \pianoleftuppersectiona
    \pianoleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighpickup = \drummode {
    \partial 8 s8 |
}

drumshighmidipickup = \drummode {
    s1 |
}

drumshighsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshigh = \drummode {
    \time 4/4
    \stemUp
    \dynamicUp
    \drumshighpickup
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighmidipickup
    \drumshighsectiona
    \drumshighsectiona
}

drumslowpickup = \drummode {
    \partial 8 s8 |
}

drumslowmidipickup = \drummode {
    s1 |
}

drumslowsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslow = \drummode {
    \time 4/4
    \stemDown
    \drumslowpickup
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowmidipickup
    \drumslowsectiona
    \drumslowsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes = \transpose c c' {
    \key g \major
    \time 4/4
    \melody
}
flutenotesmidi = { \melodymidi }

altosaxnotes = \transpose c a {
    \key g \major
    \time 4/4
    \melody
}
altosaxnotesmidi = { \melodymidi }

tenorsaxnotes = \transpose c d' {
    \key g \major
    \time 4/4
    \harmony
}
tenorsaxnotesmidi = {
    \preintro
    \harmonymidipickup
    \harmonysectiona
    \harmonysectiona
}
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

violinnotes = {
    \key g \major
    \time 4/4
    \melody
}
violinnotesmidi = { \melodymidi }

bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

tenorforclarinet = { \tenorsaxnotes }
clarinetfortenornotes = \transpose c' c { \clarinetnotes }
trombonemelodynotes = \transpose c' c {
    \key g \major
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
    \partial 8 s8 |
    s1 | s1 | s1 | s1 |
}

previewnotes = {
    \key g \major
    \time 4/4
    \tempo \tempostring
    \partial 8 g'8 |
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    fis'8 fis'8 fis'8 fis'8 e'4 r8 e'16 fis'16 |
    g'8 g'8 g'8 g'8 g'8 g'4 g'8 |
    a'8 d'8 d'8 d'8 b'4 r8 b'8 |
}

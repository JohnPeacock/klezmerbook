\version "2.18.2"

bandmintro =  {
    \tempo \tempostring
    s2.*4 | \breakIN
}

bandmsectiona =  {
    \markA \positionA
    \bar "||"
    s2. | \breakAone s2. | \breakAtwo s2. | \breakAtre s2. | \breakAfor
    s2. | \breakAfiv s2. | \breakAsix s2. | \breakAsev s2. | \breakAeit
    s2. | \breakAnin s2. | \breakAten s2. | \breakAelv s2. | \breakAtwl
    \markB \positionB
    \bar "||"
    s2. | \breakAtht s2. | \breakAfrt s2. | \breakAfft s2. | \breakAsxt
    s2. | \breakAsvt s2. | \breakAeit s2. | \breakAnnt s2. | \breakAtwy
    s2. | \breakAtwnone s2. | \breakAtwntwo s2. | \breakAtwntre s2. |
}

bandmNV =  {
    \time 3/4
    \bandmintro
    \bandmsectiona
    \bar "|."
}

bandm = { \bandmNV }

leadsheetbandmNV = { \bandmNV }

preintro =  { s2. | }
metronome = {
    \time 3/4
    \preintro
    \tempo 4 = 120
    s2. | s2. | s2. | s2. |

    s2. | s2. | s2. | s2. |
    \repeat volta 2 { s2. | s2. | }
    \alternative { { s2. | s2. | } { s2. | s2. | } }

    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
    s2. | s2. | s2. | s2. |
}

%-------------------------------------------------

chordlettersintro = \chordmode {
    e4 a2:min b2.:7 a4:min6 e4:min b4:7 e2.:min
}

chordletterssectiona = \chordmode {
    e2.:min | b2:7 e4:min | c2 d4:7 | g'2. |

    e4:7 a'2:min | a'4:min e2:min | b4:7 e4:min d4:7 | g'2. |

    e4:7 a'2:min | a'4:min e2:min | b4:7 e4:min d4:7 | e2.:min |

    e4:7 b2:7 | b4:7 e2:min | c2 d4:7 | g'2. |

    e4:7 a'2:min | a'4:min e2:min | b4:7 e4:min d4:7 | g'2. |

    e4:7 a'2:min | a'4:min e2:min | b4:7 e4:min d4:7 | e2.:min |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
}
leadsheetchordletters = {
    \bandmintro
    \chordletterssectiona
}
guitarchordletters = \chordmode {
    \bandmintro
    \chordletterssectiona
}
melodychordletters = \chordmode {
    \bandmintro
    \chordletterssectiona
}

clarinetchordletters = \transpose bes, c \guitarchordletters
tenorsaxchordletters = \transpose bes, c \guitarchordletters
trumpetchordletters = \transpose bes, c \guitarchordletters
altosaxchordletters = \transpose ees c \guitarchordletters
flutechordletters = \guitarchordletters
violinchordletters = \guitarchordletters
trombonechordletters = \guitarchordletters
%leadsheetchordletters = \chordletters
pianochordletters = \chordletters
%melodychordletters = \chordletters
basschordletters = \guitarchordletters

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro =  { R2.*4 }
% turn this on if we want to see ambitus in score.
% melodyintro =  { r2. | r2. | r2. | r2. | }

melodysectiona =  {
    e'8 fis'8 g'8 g'8 g'4 |
    fis'8 a'8 g'8 fis'8 e'4 |
    g'8 fis'8 g'4 a'4 |
    b'2. |

    e''8 b'8 d''8 c''8 a'8 fis'8 |
    a'8 c''8 b'8 g'8 e'4 |
    fis'8 ( a'8 ) g'4 a'4 |
    b'2. |

    e''8 b'8 d''8 c''8 a'8 fis'8 |
    a'8 c''8 b'8 g'8 e'4 |
    fis'8 ( a'8 ) g'4 fis'4 |
    e'2. |

    e'8 g'8 fis'8 dis'8 b8. b16 |
    e'8 a'8 g'8 fis'8 e'4 |
    g'8 fis'8 g'4 a'4 |
    b'2. |

    e''8 b'8 d''8 c''8 a'8 fis'8 |
    a'8 c''8 b'8 g'8 e'4 |
    fis'8 a'8 g'4 a'4 |
    b'2. |

    e''8 b'8 d''8 c''8 a'8 fis'8 |
    a'8 c''8 b'8 g'8 e'4 |
    fis'8 a'8 g'4 fis'4 |
    e'2. |
}

melody =  {
    \key g \major
    \time 3/4
    \melodyintro
    \melodysectiona
}

melodymidi = {
    \key g \major
    \time 3/4
    \melodyintro
    \melodysectiona
    \melodysectiona
    \melodysectiona
    \melodysectiona
}

textl = \lyricmode {
    Oyf -- n pri -- pe -- tshik brent a fa -- ye -- rl,
    un in shtub iz heys.
    Un der re -- be ler -- ent kley -- ne kin -- der -- lekh
    dem __ A -- lef Beyz.
    Un der re -- be ler -- ent kley -- ne kin -- der -- lekh
    dem __ A -- lef Beyz.

    Zet zhe kin -- der -- lekh ge -- denkt zhe, ta -- ye -- re,
    Vos ir ler -- nt do
    zogt- zhe noch a mol un ta -- ke noch a mol: ko -- mets A -- lef "\"o\""
    zogt- zhe noch a mol un ta -- ke noch a mol: ko -- mets A -- lef "\"o\""
}

textlb = \lyricmode {
    Ler -- nt, kin -- _ der, mit __ _ groys khey -- shek,
    az -- oy "zog ikh" aykh on,
    ver s' -- vet _ gi -- kher fun aykh ken -- en ivre,
    "der ba" -- kumt a fon.
    ver s' -- vet _ gi -- kher fun aykh ken -- en ivre,
    "der ba" -- kumt a fon.
}

textlc = \lyricmode {
    Az __ _ ir __ _ vet, kin -- der, elt -- er vern,
    vet ir aleyn far -- shteyn,
    vi -- fl in di oys -- yes li -- gn trer -- _ n,
    "un vi" fil ge -- veyn.
    vi -- fl in di oys -- yes li -- gn trer -- _ n,
    "un vi" fil ge -- veyn.
}

textld = \lyricmode {
    Az __ _ ir __ _ vet, kin -- der, dem goles shlepn,
    oys -- ge -- mu -- tshet zayn,
    zolt ir fun di oys -- yes koy -- _ ekh __ _ shepn,
    "kukt in" zey a -- rayn!
    zolt ir fun di oys -- yes koy -- _ ekh __ _ shepn,
    "kukt in" zey a -- rayn!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodystaff =  \context Staff = "melodystaff" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

harmonyintro =  { R2.*4 }
% turn this on if we want to see ambitus in score.
% harmonyintro =  { r2. | r2. | r2. | r2. | }

harmonysectiona =  {
    g8 a8 b8 b8 b4 |
    a8 b8 b8 a8 g4 |
    b8 c'8 b4 d'4 |
    g'2 r4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 b4 |
    g2 e'4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 b4 |
    g2 e'4 |

    a2. |
    a2. |
    b2 d'4 |
    g'2 r4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 fis'4 |
    g2. |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 fis'4 |
    e'2. |
}

harmony =  {
    \key g \major
    \time 3/4
    \harmonyintro
    \harmonysectiona
}

harmonymidi =  {
    \key g \major
    \time 3/4
    \harmonyintro
    \harmonysectiona
    \harmonysectiona
    \harmonysectiona
    \harmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinharmonyintro =  { R2.*4 }
% turn this on if we want to see ambitus in score.
% violinharmonyintro =  { r2. | r2. | r2. | r2. | }

violinharmonysectiona =  {
    g8 a8 b8 b8 b4 |
    a8 b8 b8 a8 g4 |
    b8 c'8 b4 d'4 |
    g'2 r4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 b4 |
    g2 e'4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 b4 |
    g2 e'4 |

    a2. |
    a2. |
    b2 d'4 |
    g'2 r4 |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 fis'4 |
    < b g >2. |

    gis'8 gis'8 a'8 a'8 e'8 a8 |
    e'8 a'8 g'8 e'8 g4 |
    a8 fis'8 e'4 fis'4 |
    < g e' >2. |
}

violinharmony = \transpose c c' {
    \key g \major
    \time 3/4
    \violinharmonyintro
    \violinharmonysectiona
}

violinharmonymidi = \transpose c c' {
    \key g \major
    \time 3/4
    \violinharmonyintro
    \violinharmonysectiona
    \violinharmonysectiona
    \violinharmonysectiona
    \violinharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterintro =  { R2.*4 }
% turn this on if we want to see ambitus in score.
% counterintro =  { r2. | r2. | r2. | r2. | }

countersectiona =  {
    g8 fis8 e4 e4 |
    dis4 e8 fis8 g4 |
    e4 dis4 d4 |
    g,4 e4 g8 fis8 |

    e4 a,4 c4 |
    dis4 e4 g4 |
    dis4 e4 d4 |
    g,4 e4 g8 f8 |

    e4 a,4 c4 |
    dis4 e4 g4 |
    a,4 b,4 a4 |
    e4 b,8 g,8 e,4 |

    b,4 dis4 dis4 |
    dis4 e8 fis8 g4 |
    e4 dis4 d4 |
    g,4 d4 g8 fis8 |

    e4 a,4 c4 |
    dis4 e4 g4 |
    a,4 b,4 a4 |
    g4 g,8 b,8 d8 g8 |

    e4 a,4 c4 |
    dis4 e4 g4 |
    a,4 b,4 a4 |
    e4 g,8^"Tacit last verse" b,8 e8 g8 |
}

counter =  {
    \key g \major
    \time 3/4
    \counterintro
    \countersectiona
}

countermidi =  {
    \key g \major
    \time 3/4
    \counterintro
    \countersectiona
    \countersectiona
    \countersectiona
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = { \melody }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    e''8 b'8 d''8 c''8 a'8 fis'8 |
    < dis' a' >8 c''8 < e' b' >8 g'8 e'4 |
    < c' e' fis' >8 a'8 < b e' g' >4 < dis' fis' >4 |
    < g b e' >2. |
}

pianorightuppersectiona = {
    e'8 fis'8 < e' b g' >8 g'8 g'4 |
    < c' e' fis' >8 a'8 < b dis' g' >8 fis'8 < g b e' >4 |
    < c' e' g' >8 fis'8 < c' g' >4 < c' fis' a' >4 |
    < d' g' b' >2. |

    < e' gis' e'' >8 b'8 < a' d'' >8 c''8 a'8 fis'8 |
    < dis' a' >8 c''8 < e' b' >8 g'8 < b e' >4 |
    < c' e' fis' >8 a'8 < b e' g' >4 < c' fis' a' >4 |
    < d' g' b' >2. |

    < e' gis' e'' >8 b'8 < a' d'' >8 c''8 a'8 fis'8 |
    < dis' a' >8 c''8 < e' b' >8 g'8 < b e' >4 |
    < c' e' fis' >8 a'8 < b e' g' >4 < a d' fis' >4 |
    < g b e' >2. |

    e'8 g'8 fis'8 dis'8 b8. b16 |
    < g e' >8 a'8 < b g' >8( < a fis' >8 )  < g e' >4 |
    < c' e' g' >8 fis'8 g'4 < c' fis' a' >4 |
    < g' d' b' >2. |

    < e' gis' e'' >8 b'8 < a' d'' >8 c''8 a'8 fis'8 |
    < fis' dis' a' >8 c''8 < e' b' >8 g'8 < c' e' >4 |
    < c' e' fis' >8 a'8 < c' e' g' >4 < c' fis' a' >4 |
    < d' g' b' >2. |

    < e' gis' e'' >8 b'8 < a' d'' >8 c''8 a'8 fis'8 |
    < fis' dis' a' >8 c''8 < e' b' >8 g'8 < c' e' >4 |
    < c' e' fis' >8 a'8 < b e' g' >4 < dis' fis' b' >4 |
    < e' g' b' e'' >2 \stemDown < g'' e''' >4 |
}
pianorightuppernotes =  {
    \key g \major
    \time 3/4
    \stemUp
    \pianorightupperintro
    \pianorightuppersectiona
}

pianorightlowerintro = {
    e'2. | s2.*3 |
}

pianorightlowersectiona = {
    s2.*4 |
    \repeat unfold 2 { s4 e'2 | s2. }
    \alternative { { s2.*2 } { s2.*2 } }

    a2 s4 s2.*3
    s4 e'2 s2.*3
    s4 e'2 s2.*3
}

pianorightlowernotes =  {
    \key g \major
    \time 3/4
    \stemDown
    \pianorightlowerintro
    \pianorightlowersectiona
}

pianorightnotesmidi =  <<
    {
        \preintro
        \pianorightupperintro
        \pianorightuppersectiona
        \pianorightuppersectiona
        \pianorightuppersectiona
        \pianorightuppersectiona
    }
    {
        \preintro
        \pianorightlowerintro
        \pianorightlowersectiona
        \pianorightlowersectiona
        \pianorightlowersectiona
        \pianorightlowersectiona
    }
>>

pianoleftupperintro = {
    gis,8 e8 a,8 e8 ~ < e a >4 |
    < b, dis a >4 e8 g8 ~ < g b >4 |
    < a, a >4 < b, g >4 < b, a >4 |
    e8 b,8 c8 b,8 e,4
}

pianoleftuppersectiona = {
    e,4 ~ < e, e >4 b,4 |
    a,4 b,4 e,4 |
    a,4 b,4 d4 |
    g,4 ~ < g, g >4 ~ < g, d >4 |

    e,4 a,4 ~ < a, e >4 |
    b,4 e,4 c4 |
    a,4 b,4 d4 |
    g,8 d8 g8 fis8 g4 |

    e,4 a,4 ~ < a, e >4 |
    b,4 e,4 c4 |
    a,4 b,4 b,,4 |
    e,8 b,8 c8 b,8 e,4 |

    b,4 fis,4 b,4 |
    e,4 b,4 e4 |
    a,4 e8 a,8 d4 |
    g,8 d8 g8 d8 g8 fis8 |

    e4 a,4 ~ < a, e >4 |
    b,4 e,4 b,4 |
    a,4 e4 d4 |
    g,8 d8 g8 fis8 e8 b,8 |

    e8 e,8 a,4 ~ < a, e >4 |
    b,4 e,4 b,4 |
    a,4 b,4 b,4 |
    e,8 b,8 e8 b,8 e,4 |
}

pianoleftuppernotes =  {
    \key g \major
    \time 3/4
    \pianoleftupperintro
    \pianoleftuppersectiona
}

pianoleftnotesmidi =  <<
    {
        \preintro
        \pianoleftupperintro
        \pianoleftuppersectiona
        \pianoleftuppersectiona
        \pianoleftuppersectiona
        \pianoleftuppersectiona
    }
    {
        \preintro
%        \pianoleftlowerintro
%        \pianoleftlowersectiona
%        \pianoleftlowersectiona
%        \pianoleftlowersectiona
%        \pianoleftlowersectiona
    }
>>


basslineintro =  { R2.*4 }
% turn this on if we want to see ambitus in score.
% basslineintro =  { r2. | r2. | r2. | r2. | }

basslinesectiona = {
    e4 b,4 b,4 |
    b,4 dis4 e4 |
    c4 e4 d4 |
    g,4 b,4 d4 |

    e4 a,4 a,4 |
    a,4 e4 e4 |
    b,4 e4 d4 |
    g,4 b,4 d4 |

    e4 a,4 a,4 |
    a,4 e4 e4 |
    b,4 e4 d4 |
    e4 b,4 b,4 |

    e4 b,4 b,4 |
    b,4 e4 b,4 |
    c4 e4 d4 |
    g,4 b,4 d4 |

    e4 a,4 a,4 |
    a,4 e4 e4 |
    b,4 e4 d4 |
    g,4 b,4 d4 |

    e4 a,4 a,4 |
    a,4 e4 e4 |
    b,4 e4 d4 |
    e4 b,4 b,4 |
}

bassline =  {
    \key g \major
    \time 3/4

    \basslineintro
    \basslinesectiona
}

basslinemidi =  {
    \key g \major
    \time 3/4

    \basslineintro
    \basslinesectiona
    \basslinesectiona
    \basslinesectiona
    \basslinesectiona
}

bassnotes =  {
    \bassline
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumintro =  { R2.*4 }

guitarstrumsectiona = {
    bes'2._\ltoe |
    bes'2_\ltoe bes'4_\ltoe |
    bes'2_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |

    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'4_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |

    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'4_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |

    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'2_\ltoe |
    bes'2_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |

    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'4_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |

    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'2_\ltoe |
    bes'4_\ltoe bes'4_\ltoe bes'4_\ltoe |
    bes'4_\ltoe bes'4_\rtoe bes'4_\rtoe |
}

guitarstrumnotes =  {
    \key g \major
    \time 3/4
    \improvisationOn
    \guitarstrumintro
    \guitarstrumsectiona
    \improvisationOff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

flutenotes =  \transpose c c' { \melody }
fluteharmonynotes = \transpose c c' { \harmony }
tenorforflutenotes = \transpose c c' { \harmony }
flutenotesmidi = \transpose c c' { \preintro \melodymidi }

clarinetnotes =  \transpose c d' { \melody }
clarinetharmonynotes = \transpose c d' { \harmony }
tenorforclarinetnotes = \transpose c d' { \harmony }
clarinetnotesmidi = \transpose c d' { \preintro \melodymidi }

altosaxnotes = \transpose ees c' { \melody }
altosaxharmonynotes =  \transpose ees c' { \harmony }
tenorforaltonotes =  \transpose ees c' { \harmony }
altosaxnotesmidi = \transpose ees c' { \preintro \melodymidi }

tenorsaxnotes = \transpose c d' { \harmony }
tenorsaxnotesmidi = \transpose c d' { \preintro \harmonymidi }
clarinetfortenornotes = \transpose c d { \melody }

trumpetnotes =  \transpose c d { \melody }
trumpetharmonynotes =  \transpose c d { \harmony }
tenorfortrumpetnotes =  \transpose c d { \harmony }
trumpetnotesmidi = \transpose c d { \preintro \melodymidi }

violinnotes = { \melody }
violinharmonynotes = { \violinharmony }
tenorforviolinnotes = { \violinharmony }
violinnotesmidi =  { \preintro \melodymidi }

trombonenotes =  { \counter }
trombonenotesmidi =  { \preintro \countermidi }

bassnotes =  { \bassline }
bassnotesmidi =  { \preintro \basslinemidi }

euphoniumnotes =  { \bassline }
euphoniumnotesmidi =  { \preintro \basslinemidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% put the instrument Voices into staves for printing and for
% midi

vocalsstaff =  \context Staff = "vocalss" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

counter = {}
tenorharmony = {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    e2.:min | b2:7 e4:min | e2:min d4:7 | g2. |
}

previewnotes = {
    \key g \major
    \time 3/4
    e'8 fis'8 g'8 g'8 g'4 |
    fis'8 a'8 g'8 fis'8 e'4 |
    g'8 fis'8 g'4 a'4 |
    b'2. |
}

\version "2.18.0"

bandmintro = {
    \partial 4. s4.
}

bandmsectiona = {
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 |
    \breakA \bar "||"
}

bandmsectionb = {
    s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
    s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
    s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
    s2 | \breakBtht s2 | \breakBfrt s2 | \breakBfft s2 | \breakBsxt
}

bandm = {
    \time 2/4
    \key d \minor
    \bandmintro
    \bandmsectiona
    \bar "||"
    \bandmsectionb
    \bar "|."
}

bandmNV = {
    \time 2/4
    \key d \minor
    \bandmintro
    \tempo "Rubato"
    \bandmsectiona
    \bar "||"
    \tempo \tempostring
    \bandmsectionb
    \bar "|."
}
leadsheetbandmNV =  { \bandmNV }

preintro = { s2 }

metronomeintro = {
    s2 |
}

metronomesectionb = {
    s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
    s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
    s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
    s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft
    \tempo 4 = 138
    s2 | \breakA
}

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 60
    \metronomeintro
    \metronomesectionb
    \bandmsectiona
    \bandmsectionb
    \bandmsectiona
    \bandmsectionb
}

% ----------------------------------------

voiceoneintro = {
    \partial 4. a8 d'8 e'8
}

voiceonemidiintro = {
    s8 c'8 f'8 g'8 |
}

voiceonesectiona = {
    f'4 e'8 d'8 ~ |
    d'8 g'8 f'8 g'8 |
    f'4 e'8 d'8 ~ |
    d'8 d'8 f'8 a'8 |
   
    d''4 cis''8 d''8 ~ |
    d''8 f''8 e''8 d''8 |
    a'2 |
    r8 a'8 bes'8 b'8 |
   
    c''4 bes'8 a'8 ~ |
    a'8 d''8 c''8 bes'8 |
    a'4 g'8 f'8 ~ |
    f'8 a'8 c''8 bes'8 |
   
    a'4 g'8 f'8 ~ |
    f'8 g'8 f'8 e'8 |
    d'2 |
    r8 c'8 f'8 g'8 |
}

voiceonesectionb = {
    a'4 g'8 f'8 ~ |
    f'8 c''8 b'8 bes'8 |
    a'4 g'8 f'8 ~ |
    f'8 c'8 f'8 a'8 |

    c''4 b'8 c''8 ~ |
    c''8 f''8 e''8 d''8 |
    a'2 |
    r8 a'8 d''8 e''8 |

    f''4 e''8 d''8 ~ |
    d''8 a'8 c''8 bes'8 |
    a'4 g'8 f'8 ~ |
    f'8 a'8 c''8 bes'8 |

    a'4 g'8 f'8 ~ |
    f'8 g'8 f'8 e'8 |
    d'2 |
    r8 a8 d'8 e'8 |
}

% coda
%            a'4 g'4 |
%            f'8 g'8 f'8 a'8 |
%            d''2 ~ |
%            d''2 |

melodynotes = {
    \time 2/4
    \key d \minor
    \voiceoneintro
    \voiceonesectiona
    \voiceonesectionb
}

melodynotesmidi = {
    \time 2/4
    \preintro
    \voiceonemidiintro
    \voiceonesectionb
    \voiceonesectiona
    \voiceonesectionb
    \voiceonesectiona
    \voiceonesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicetwointro = {
    \partial 4. s4.
}

voicetwomidiintro = {
    s2 |
}

voicetwosectiona = {
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

voicetwosectionb = {
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

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

tenorharmony = {
    \time 2/4
    \key d \minor
    \voicetwointro
    \voicetwosectiona
    \voicetwosectionb
}

tenorharmonymidi = {
    \time 2/4
    \preintro
    \voicetwomidiintro
    \voicetwosectionb
    \voicetwosectiona
    \voicetwosectionb
    \voicetwosectiona
    \voicetwosectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

voicethreeintro = {
    \partial 4. s4.
}

voicethreemidiintro = {
    s2 |
}

voicethreesectiona = {
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

voicethreesectionb = {
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

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

counter = {
    \time 2/4
    \key d \minor
    \voicethreeintro
    \voicethreesectiona
    \voicethreesectionb
}

countermidi = {
    \time 2/4
    \preintro
    \voicethreemidiintro
    \voicethreesectionb
    \voicethreesectiona
    \voicethreesectionb
    \voicethreesectiona
    \voicethreesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \partial 4. r8 r4
}

basslinemidiintro = {
    r2 |
}

basslinesectiona = {
    d4 a4 |
    d4 a4 |
    d4 a4 |
    d4 a4 |
   
    d4 a4 |
    d4 a4 |
    d4 a4 |
    d8 r8 c4 |
   
    f,4 c4 |
    f,8 bes,8 a,8 g,8 |
    f,4 c8 f8 |
    f,4 g,4 |
   
    d4 bes,8 a,8 ~ |
    a,8 a,8 b,8 cis8 |
    d8 a,8 f,8 a,8 |
    d8 c8 f8 g8 |
}

basslinesectionb = {
    f4 c4 |
    f8 c8 d8 e8 |
    f,4 c4 |
    f,4 c4 |
   
    f,4 c4 |
    f8 f,8 g,8 gis,8 |
    a,8. gis,16 a,8 bes,8 |
    a,8 g,8 f,8 cis8 |
   
    d4 a,4 |
    d4 g,4 |
    d4 a,4 |
    d4 g,4 |
   
    f,4 e8  d8 ~ |
    d8 r8 bes,4 |
    a,4 cis8 e8 |
    r8 a,16 g,16  f,8 cis8 |
}

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

bassline = {
    \time 2/4
    \key d \minor
    \basslineintro
    \basslinesectiona
    \basslinesectionb
}

basslinemidi = {
    \time 2/4
    \preintro
    \basslinemidiintro
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
    \basslinesectiona
    \basslinesectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = \transpose c c' {
    \melodynotes
}

flutenotesmidi = \transpose c c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \partial 4. b'8 e''8 fis''8
}

clarinetmidiintro = {
    s8 d''8 g''8 a''8 |
}

clarinetsectiona = {
    g''4 fis''8 e''8 ~ |
    e''8 a''8 g''8 a''8 |
    g''4 fis''8 e''8 ~ |
    e''8 e'8 g'8 b'8 |

    e''4 dis''8 e''8 ~ |
    e''8 g''8 fis''8 e''8 |
    b'2 |
    r8 b''8 c'''8 cis'''8 |

    d'''4 c'''8 b''8 ~ |
    b''8 e'''8 d'''8 c'''8 |
    b''4 a''8 g''8 ~ |
    g''8 b''8 d'''8 c'''8 |

    b''4 a''8 g''8 ~ |
    g''8 a''8 g''8 fis''8 |
    e''2 |
    r8 d''8 g''8 a''8 |
}

clarinetsectionb = {
    b''4 a''8 g''8 ~ |
    g''8 d'''8 cis'''8 c'''8 |
    b''4 a''8 g''8 ~ |
    g''8 d''8 g''8 b''8 |

    d'''4 cis'''8 d'''8 ~ |
    d'''8 g''8 fis''8 e''8 |
    b''2 |
    r8 b'8 e''8 fis''8 |

    g''4 fis''8 e''8 ~ |
    e''8 b''8 d'''8 c'''8 |
    b''4 a''8 g''8 ~ |
    g''8 b''8 d'''8 c'''8 |

    b''4 a''8 g''8 ~ |
    g''8 a''8 g''8 a''8 |
    b''2 |
    r8 b'8 e''8 fis''8 |
}

clarinetnotes = {
    \time 2/4
    \key e \minor
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
}

clarinetnotesmidi = {
    \time 2/4
    \preintro
    \clarinetmidiintro
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose ees c' {
    \melodynotes
}

altosaxnotesmidi = \transpose ees c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    \partial 4. b'8 e''8 fis''8
}

tenorsaxmidiintro = {
    s8 d''8 b'8 d''8 |
}

tenorsaxsectiona = {
    e''8 b'8 a'8 g'8 ~ |
    g'8 c''8 e''8 c''8 |
    b'8 e''8 a'8 g'8 ~ |
    g'8 e'8 g'8 b'8 |
   
    g'8 b'8 fis'8 g'8 ~ |
    g'8 b'8 a'8 g'8 |
    g'8 b'8 g''16 ( fis''16 e''16 fis''16 |
    g''8 ) g''8 a''8 ais''8 |
   
    b''8 b'8 a''8 g''8 ~ |
    g''8 c'''8 b''8 a''8 |
    g''8 d''8 c''8 b'8 |
    g'8 g''8 a''8 fis''8 |

    g''8 e''8 c''8 e''8 |
    b'8 c''8 b'8 a'8 |
    g'8 b'8 e''8 b'8 |
    g'8 d''8 b'8 d''8 |
}

tenorsaxsectionb = {
    g''8 d''8 c''8 b'8 |
    d''8 b''8 ais''8 a''8 |
    g''8 d''8 c''8 b'8 |
    d''8 b'8 d''8 g''8 |
   
    b''8 g''8 ais''8 b''8 |
    g''8 b'8 a'8 ais'8 |
    b'8 b'16 ( dis''16 fis''8 ) dis''16 ( fis''16 |
    b'8 ) b'16 a'16 g'8 b'8 |

    e''8 b'8 a'8 g'8 |
    e''8 g''8 a''8 fis''8 |
    g''8 e''8 fis''8 e''8 ~ |
    e''8 g''8 a''8 fis''8 |

    g''8 e''8 fis''8 e''8 ~ |
    e''8 e''8 e''8 e''8 |
    dis''8 dis''16 ( fis''16 b''8 ) dis''8 |
    r8 b'8 e''8 fis''8 |
}

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

tenorsaxnotes = {
    \time 2/4
    \key e \minor
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
}

tenorforclarinetnotes = { \tenorsaxnotes }

tenorsaxnotesmidi = {
    \time 2/4
    \preintro
    \tenorsaxmidiintro
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = \transpose bes c' {
    \melodynotes
}

trumpetnotesmidi = \transpose bes c' {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = {
    \counter
}

trombonenotesmidi = {
    \countermidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = {
    \melodynotes
}

violinnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \partial 4. s4.
}

chordlettersmidiintro = \chordmode {
    s2 |
}

chordletterssectiona = \chordmode {
    d2*8:min |
    f2*3 | f4 c4:7 |
    f2 | f4. a8:7 | d2*2:min |
}

chordletterssectionb = \chordmode {
    f2 |
    f4. c8:7 |
    f2*4 |
    a2*2:7 |

    d2:min |
    d4:min g4:min |
    d2:min |
    d4:min g4:min |

    d2:min |
    d4:min g4:min |
    d2*2:min |
}

% coda
%    d4:min a4:7 | d2*2:min |

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
}

chordlettersmidi = \chordmode {
    \time 2/4
    \preintro
    \chordlettersmidiintro
    \chordletterssectionb
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiona
    \chordletterssectionb
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

guitarnotesintro = {
    \partial 4. s4.
}

guitarnotesmidiintro = {
    s2 |
}

guitarnotessectiona = {
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

guitarnotessectionb = {
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

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

guitarnotes = {
    \time 2/4
    \key d \minor
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
}

guitarnotesmidi = {
    \time 2/4
    \preintro
    \guitarnotesmidiintro
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectiona
    \guitarnotessectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotesintro = {
    \partial 4. a'8 < f' d'' >8 < g' e'' >8
}

pianorightnotesmidiintro = {
    s8 c'8 f'8 g'8 |
}

pianorightnotessectiona = {
    < a' f'' >4 < g' e'' >8 < f' d'' >8 ~ |
    < f' d'' >8 < bes' g'' >8 < a' f'' >8 < bes' g'' >8 |
    < a' f'' >4 < g' e'' >8 < f' d'' >8 ~ |
    < f' d'' >8 < a' d'' >8 < a' f'' >8 < a' a'' >8 |
   
    < f' d'' >4 < e' cis' >8 < f' d'' >8 ~ |
    < f' d'' >8 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
    << { a''4\rest a''16 ( g''16 f''16 g''16 ) } \\ { < f' a' >2 } >> |
    a''8 < f' a' >8 < g' bes' >8 < gis' b' >8 |
   
    < a' c'' >4 < g' bes' >8 < f' a' >8 ~ |
    < f' a' >8 < f' d'' >8 < f' c'' >8 < c' e' bes' >8 |
    < c' f' a' >4 < c' g' >8 < a f' >8 ~ |
    < a f' >8 a'8 << { c''8 bes' 8 } \\ { < d' g' >4 } >> |
   
    < d' f' a' >4 < d' g' >8 < d' f' >8 ~ |
    < d' f' >8 g'8 f'8 < g a e' >8 |
    < f a d' >2 ~ |
    < f a d' >8 c'8 f'8 g'8 |
}

pianorightnotessectionb = {
    < f' a' >4 g'8 f'8 ~ |
    f'8 < a' c'' >8 < gis' b' >8 < g' bes' >8 |
    < f' a' >4 g'8 f'8 ~ |
    f'8 c'8 f'8 a'8 |
    
    < a' c'' >4 < gis' b' >8 < a' c'' >8 |
    < a' c'' >8 < a' f'' >8 < g' e'' >8 < f' d'' >8 |
    < cis' e' a' >2 ~ |
    < cis' e' a' >8 < cis' e' a' >8 < f' a' d'' >8 < g' a' e'' >8  |
    
    < a' f'' >4 < g' e' >8 < f' d'' >8 ~ |
    < f' d'' >8 a'8 << { c''8 bes'8 } \\ { < d' g' >4 } >>  |
    < f' a' >4 < e' g' >8 < d' f' >8 ~ |
    < d' f' >8 a'8 << { c''8 bes'8 } \\ { < d' g' >4 } >> |
    
    < d' a' >4 < cis' g' >8 < d' f' >8 ~ |
    < d' f' >8 g'8 << { f'8 g'8 } \\ { d'4 } >> |
    < cis' e' a' >2 ~ |
    < cis' e' a' >8 < cis' e' a' >8 < d' a' d'' >8 < g' a' e'' >8 |
}

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

pianorightnotes = {
    \time 2/4
    \key d \minor
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightnotesmidi = {
    \time 2/4
    \preintro
    \pianorightnotesmidiintro
    \pianorightnotessectionb
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectiona
    \pianorightnotessectionb
}

pianorightuppernotes = {
    \pianorightnotes
}

pianorightlowernotes = {
}

pianoleftnotesintro = {
    \partial 4. r8 r4
}

pianoleftnotesmidiintro = {
    r2 |
}

pianoleftnotessectiona = {
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
   
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 a,8 < f a >8 |
    d8 r8 < c, c >4-> |
   
    f,8 < f a c' >8 c8 < f a c' >8 |
    < f, f >8 < bes, bes >8 < a, a >8 < g, g >8 |
    < f, f >8 < f a >8 c8 f8 |
    f,8 < f a c' >8 < g, g >4 |
   
    < d, d >4 < bes, bes >8 < a, a >8 ~ |
    < a, a >8 a,8 b,8 cis8 |
    d8 a,8 f,8 a,8 |
    < d, d >8 r8 r4 |
}

pianoleftnotessectionb = {
    f8 < a c' >8 c8 < a c' >8 |
    f8 < c, c >8 < d, d >8 < e, e >8 |
    < f, f >8 < a c' >8 c8 < a c' >8 |
    f8 < a c' >8 c8 < a c' >8 |
   
    f8 < a c' >8 c8 < a c' >8 |
    f8 < f, f >8 < g, g >8 < gis, gis >8 |
    < a, a >8. < gis, gis >16 < a, a >8 < bes, bes >8 |
    < a, a >8 < g, g >8 < f, f >8 < cis, cis >8 |
   
    < d, d >8 < f a >8 a,8 < f a >8 |
    d8 < f a >8 g, < d g >8 |
    d8 < f a >8 a, < f a >8 |
    d8 < f a >8 g, < d g >8 |
   
    < f, f >4 < e, e >8  < d, d >8 ~ |
    < d, d >8 r8 < bes,, bes, >4 |
    < a,, a, >8 a,8 ( cis8 e8 ) |
    r8 < a, a >16 < g, g >16  < f, f >8 < cis, cis >8 |
}

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

pianoleftnotes = {
    \time 2/4
    \key d \minor
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftnotesmidi = {
    \time 2/4
    \preintro
    \pianoleftnotesmidiintro
    \pianoleftnotessectionb
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectiona
    \pianoleftnotessectionb
}

pianoleftuppernotes = {
    \pianoleftnotes
}

pianoleftlowernotes = {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    \partial 4. s4.
}

drumshighmidiintro = \drummode {
    s2 |
}

drumshighsectiona = \drummode {
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

drumshighsectionb = \drummode {
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

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighmidiintro
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectiona
    \drumshighsectionb
}

drumslowintro = \drummode {
    \partial 4. s4.
}

drumslowmidiintro = \drummode {
    s2 |
}

drumslowsectiona = \drummode {
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

drumslowsectionb = \drummode {
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

% coda
%    s2 |
%    s2 |
%    s2 |
%    s2 |

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowmidiintro
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectiona
    \drumslowsectionb
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melodynotes
}

leadsheetnotesmidi = {
    \melodynotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Der frost in- droys- n brent,
    Far- froyr- n mayn- e hent,
    Fun tsor- es zing ikh mir
    Mayn troy- rik lid.

    Ikh shtey a- leyn in gas,
    Fun re- gn ver ikh nas,
    Di lets- te bey- ge- lekh,
    Nu, koyft bay mir?

    Nu, koyft zhe bub- lich- ki,
    Hey- sink- e bey- ge- lekh,
    Di lets- te bey- ge- lekh,
    Nu, koyft, bay mir?

    Es kumt bald on di nakht,
    Ikh shtey zikh tif far- trakht,
    Zet, mayn- e ey- ge- lekh
    Zayn- en far- shvartst.
}
textlb = \lyricmode {
    Di nakht es
    geyt far- bay,
    Der tog rukt on afs- nay,
    Ikh shtey in gas un trakht,
    Vos vet dokh zayn?

    Der vey- tik iz in hoyz,
    Fun hung- er gey ikh oys,
    Oy, mench- n, hert mayn lid,
    Fun hung- er shvakh…
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    \time 2/4
    \partial 4. s4.
    d2:min | d2:min | d2:min | d2:min |
}

previewnotes = {
    \time 2/4
    \key d \minor
    \tempo \tempostring
    \partial 4. a8 d'8 e'8 |
    f'4 e'8 d'8 ~ |
    d'8 g'8 f'8 e'8 |
    f'4 e'8 d'8 ~ |
    d'8 d'8 f'8 a'8 |
}

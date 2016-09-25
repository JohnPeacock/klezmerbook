\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = { }

tenorharmonymidi = { }

counter = { }

countermidi = { }

bassline = { }

basslinemidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = { \partial 4. s8 s4 | \breakIN }
bandmintromidi = { s1 | }

bandmsectionaa = {
  \markSA \positionSA
  s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
  s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev
}

bandmsectionab = { s1 | \breakAeit \markCT \positionCT }
bandmsectionac = { s1 | }

bandmsectiona = {
    \repeat volta 2 { \bandmsectionaa }
    \alternative { { \bandmsectionab } { \bandmsectionac } }
    \breakA \bar ".|:-||"
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
        s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev
    }
    \alternative { { s1 | \breakBeit } { s1 | } }
    \markDS \positionDS
    \breakB \bar "||"
}

blankmeasure = { \stopStaff s1 \startStaff \breakBL }

bandmcoda = { \markCC \positionCC s1 \bar "|." }

bandmNV = {
    \tempo \tempostring
    \time 4/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \blankmeasure
    \bandmcoda
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s1 | }
metronomeextra = { s1 | }
metronomeintro = { \partial 4. s8 s4 | }
metronomeintromidi = { s1 }
metronomesectionaa = { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }
metronomesectionab = { s1 | }
metronomesectionac = { s1 | }
metronomesectiona = {
    \repeat volta 2 { \metronomesectionaa }
    \alternative { { \metronomesectionab } { \metronomesectionac } }
}
metronomesectionb = {
    \repeat volta 2 { s1 | s1 | s1 | s1 | s1 | s1 | s1 | }
    \alternative { { s1 | } { s1 | } }
}
metronomecoda = { s1 | }

metronome = \context Voice = "metronomev" {
    \time 4/4
    \preintro
    \tempo 4 = 115
    \metronomeextra
    \metronomeintromidi
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 120
    \metronomesectiona
    \metronomesectionb
    \tempo 4 = 125
    \metronomesectionaa
    \metronomesectionab
    \metronomesectionaa
    \tempo 4 = 115
    \metronomecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyextra = {
    r1 |
}

melodyintro = {
    \partial 4. c''8   f''8[ g''8 ] |
}

melodyintromidi = {
    r2 r8 c''8   f''8[ g''8 ] |
}

melodysectionaa = {
    \afterGrace g''8 [ ( bes''16 ) aes''8 ] aes''8 [ aes''8 ] aes''8 [ g''16 bes''16 ] aes''16 [ g''16 f''8 ] |
    \afterGrace f''8 [ ( aes''16 ) g''8 ] g''8 [ g''8 ] g''4. e''8 |
% measure 3
    \afterGrace e''8 [ ( g''16 ) f''8 ] f''8 [ f''8 ] f''8 [ e''16 g''16 ] f''16[ e''16 des''8 ] |
    c''2 ~   c''8 [ c''8 ] f''8 [ g''8 ] |
    \afterGrace g''8 [ ( bes''16 ) aes''8 ] aes''8 [ aes''8 ] aes''8 [ g''16 bes''16 ] aes''16 [ g''16 f''8 ] |
% measure 6
    \afterGrace a''8 [ ( c'''16 ) bes''8 ]   bes''8[ bes''8 ] bes''4. aes''8 |
    g''8[ aes''8 ] \afterGrace b''8 ( d'''16 ) c'''8 ] b''8 [\prall aes''16 b''16 ] aes''16 [ g''16 f''8 ] |
}

melodysectionab = {
    f''2 ~ f''8 [ c''8 ] f''8[ g''8 ] |
}

melodysectionac = {
    f''2 ~ f''8 [ ees''8 ] aes''8 [ bes''8 ] |
}

melodysectiona = {
    \repeat volta 2 { \melodysectionaa }
    \alternative { { \melodysectionab } { \melodysectionac } }
}

melodysectionb = {
% measure 10
    \repeat volta 2 {
        \afterGrace bes''8 [ ( des'''16 ) c'''8 ] c'''8 [ c'''8 ] c'''8 [ bes''16 c'''16 ] des'''16 [ c'''16 bes''8 ] |
        aes''2 r8 ees''8 aes''8 [ bes''8 ] |
        \afterGrace bes''8 ( des'''16 ) c'''8 ] c'''8 [ c'''8 ] c'''8 [ des'''8 ] ees'''8 [ des'''8 ] |
        c'''2 r8 f''8 bes''8 [ c'''8 ] |

        \afterGrace c'''8 [ ( ees'''16 ) des'''8 ]   des'''8[ des'''8 ]   des'''8[ c'''16 ees'''16 ]   des'''16[ c'''16 bes''8 ] |
        \afterGrace b''8 [ ( d'''16 ) c'''8 ] c'''8 [ c'''8 ] c'''4 bes''8 [ aes''8 ] |
        g''8 [ aes''8 ] b''8 [ c'''8 ] b''8\prall [ aes''16 b''16 ]   aes''[ g''16 f''8 ] |
    }
    \alternative {
        {
            f''2 ~   f''8[ ees''8 ]   aes''8[ bes''8 ] |
        }
        {
            f''2 ~   f''8[ c''8 ]   f''8[ g''8 ] |
        }
    }
}

melodycoda = {
% measure 19
    f''4-. c''4-. f'4-. r4 |
}

melody = {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \blankmeasure
    \melodycoda
}

melodymidi = {
    \preintro
    \melodyextra
    \melodyintromidi
    \melodysectiona
    \melodysectionb
    \melodysectiona
    \melodysectionb
    \melodysectionaa
    \melodysectionab
    \melodysectionaa
    \melodycoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored in c

fluteextra = {
    \melodyextra |
}

fluteintro = {
    \melodyintro
}

fluteintromidi = {
    \melodyintromidi
}

flutesectionaa = {
    \melodysectionaa
}

flutesectionab = {
    \melodysectionab
}

flutesectionac = {
    \melodysectionac
}

flutesectiona = {
    \repeat volta 2 {
        \flutesectionaa
    }
    \alternative {
        {
            \flutesectionab
        }
        {
            \flutesectionac
        }
    }
}

flutesectionb = {
    \melodysectionb
}

flutecoda = {
    \melodycoda
}

%-------------------------------------------------

flutenotes = {
    \key aes \major
    \time 4/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \blankmeasure
    \flutecoda
}

flutenotesmidi = {
    \key aes \major
    \time 4/4
    \preintro
    \fluteextra
    \fluteintromidi
    \flutesectiona
    \flutesectionb
    \flutesectiona
    \flutesectionb
    \flutesectionaa
    \flutesectionab
    \flutesectionaa
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody scored in b-flat

clarinetextra = {
    \melodyextra |
}

clarinetintro = {
    \melodyintro
}

clarinetintromidi = {
    \melodyintromidi
}

clarinetsectionaa = {
    \melodysectionaa
}

clarinetsectionab = {
    \melodysectionab
}

clarinetsectionac = {
    \melodysectionac
}

clarinetsectiona = {
    \repeat volta 2 {
        \clarinetsectionaa
    }
    \alternative {
        {
            \clarinetsectionab
        }
        {
            \clarinetsectionac
        }
    }
}

clarinetsectionb = {
    \melodysectionb
}

clarinetcoda = {
    \melodycoda
}

%-------------------------------------------------

clarinetnotes = \transpose c d {
    \key aes \major
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = \transpose c d {
    \key aes \major
    \time 4/4
    \preintro
    \clarinetextra
    \clarinetintromidi
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionaa
    \clarinetsectionab
    \clarinetsectionaa
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxextra = {
    r1 |
}

tenorsaxintro = {
    \partial 4. r8 r4 |
}

tenorsaxintromidi = {
    r1 |
}

tenorsaxsectionaa = {
    d''8 d''8 r8 d''8 r8 d''16 d''16 d''8 d''8 |
    r8 c''16 c''16 c''8 c''8 c''2 |
% measure 3
    bes'8 bes'8 bes'8 bes'8 bes'8 a'8 bes'16 a'16 bes'8 |
    a'2 r2 |
    d''8 d''8 r8 d''8 r8 d''16 d''16 d''8 d''8 |
% measure 6
    r8 c''16 c''16 c''8 c''8 c''2 |
    d''8 d''8 r8 d''8 r8 d''16 d''16 d''8 d''8 |
}

tenorsaxsectionab = {
    d''8 bes'8 d''8 bes'8 g'4 r4 |
}

tenorsaxsectionac = {
    d''8 bes'8 d''8 bes'8 g'4 a'4\glissando |
}

tenorsaxsectiona = {
    \repeat volta 2 {
        \tenorsaxsectionaa
    }
    \alternative {
        {
            \tenorsaxsectionab
        }
        {
            \tenorsaxsectionac
        }
    }
}

tenorsaxsectionb = {
% measure 10
    \repeat volta 2 {
        bes'8 bes'16 bes'16 f'8 bes'8 ~ bes'8 f'8 bes'16 bes'16 f'8 |
        r8 bes'16 bes'16 f'8 bes'8 ~ bes'8 f'8 bes'16 bes'16 f'8 |
        r8 f''16 f''16 f''8 f''8 r8 f''16 f''16 f''8 f''8 |

% measure 13
        r8 f''16 f''16 f''16 f''16 f''8 r8 f''16 f''16 f''16 f''16 f''16 f''16 |
        ees''8 ees''8 ees''8 ees''8 ees''8 d''8 ees''16 d''16 c''8 |
        d''8 d''8 d''8 d''8 d''4 c''8 bes'8 |

% measure 16
        a'8 bes'8 cis''8 d''8 cis''8 bes'16 cis''16 bes'16 a'16 g'8 |
    }
    \alternative {
        {
            g'2 r2 |
        }
        {
            g'2 r2 |
        }
    }
}

tenorsaxcoda = {
% measure 19
    < g' g'' >4 d''4 g'4 r4 |
}

%-------------------------------------------------

tenorsaxnotes = {
    \key bes \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key bes \major
    \time 4/4
    \preintro
    \tenorsaxextra
    \tenorsaxintromidi
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose d a {
    \key bes \major
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \blankmeasure
    \tenorsaxcoda
}

altosaxnotesmidi = \transpose d a {
    \key bes \major
    \time 4/4
    \preintro
    \tenorsaxextra
    \tenorsaxintromidi
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionaa
    \tenorsaxsectionab
    \tenorsaxsectionaa
    \tenorsaxcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetextra = {
    r1 |
}

trumpetintro = {
    \partial 4. r8 r4 |
}

trumpetintromidi = {
    r1 |
}

trumpetsectionaa = {
    \afterGrace cis''8 ( ees''16 )d''8 ~ d''4 ~ d''8 c''16 d''16 ees''16 d''16 c''8  |
    \afterGrace b'8 ( d''16 ) c''8 c''2 c''8 a'8 |
% measure 3
    bes'16 a'16 g'8 bes'16 a'16 g'8 bes'16 a'16 g'8 bes'16 a'16 g'8 |
    fis'1 |
    \afterGrace cis''8 ( ees''16 ) d''8 ~ d''2. |
% measure 6
    \afterGrace d''8 ( f''16 ) ees''8 ~ ees''2 ~ ees''8 bes'8 |
    a'8 bes'8 cis''8 d''8 cis''8 bes'16 cis''16 bes'16 a'16 g'8 |
}

trumpetsectionab = {
    g'2 ~ g'8 d'8 g'8 a'8 |
}

trumpetsectionac = {
    g'2 ~ g'8 f'8 bes'8 c''8 |
}

trumpetsectiona = {
    \repeat volta 2 {
        \trumpetsectionaa
    }
    \alternative {
        {
            \trumpetsectionab
        }
        {
            \trumpetsectionac
        }
    }
}

trumpetsectionb = {
% measure 10
    \repeat volta 2 {
        \afterGrace c''8 ( ees''16 ) d''8 d''8 d''8 d''8 c''16 d''16 ees''16 d''16 c''8 |
        bes'2 r8 f'8 bes'8 c''8 |
        \afterGrace c''8 ( ees''16 ) d''8 d''8 d''8 d''8 ees''8 f''8 ees''8 |

% measure 13
        d''2 r8 g'8 c''8 d''8 |
        \afterGrace d''8 ( f''16 ) ees''8 ees''8 ees''8 ees''8 d''16 f''16 ees''16 d''16 c''8 |
        \afterGrace cis''8 ( e''16 ) d''8 d''8 d''8 d''4 c''8 bes'8 |

% measure 16
        a'8 bes'8 cis''8 d''8 cis''8\prall bes'16 c''16 bes'16 a'16 g'8 |
    }
    \alternative {
        {
            g'2 ~ g'8 f'8 bes'8 c''8 |
        }
        {
            g'2 ~ g'8 d'8 g'8 a'8 |
        }
    }
}

trumpetcoda = {
% measure 19
    g'4 d'4 g4 r4 |
}

%-------------------------------------------------

trumpetnotes = {
    \key bes \major
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = {
    \key bes \major
    \time 4/4
    \preintro
    \trumpetextra
    \trumpetintromidi
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionaa
    \trumpetsectionab
    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneextra = {
    r1 |
}

tromboneintro = {
    \partial 4. r8 r4 |
}

tromboneintromidi = {
    r1 |
}

trombonesectionaa = {
    r8   f8[ aes8 c'8 ] f'2 |
    r8   g8[ c'8 e'8 ] c'2 |
% measure 3
      des'8[ des'8 ]   des'8[ des'8 ]   des'8[ c'8 ]   des'16[ c'16 des'8 ] |
    e'2 r2 |
    r8   f8[ aes8 c'8 ] f'2 |
% measure 6
    r8 bes8   des'8[ f'8 ] bes4. aes8 |
      g8[ aes8 ]   b8[ c'8 ]   b8[ aes16 b16 ]   aes16[ g16 f8 ] |
}

trombonesectionab = {
    f2 r2 |
}

trombonesectionac = {
    f2 r2 |
}

trombonesectiona = {
    \repeat volta 2 {
        \trombonesectionaa
    }
    \alternative {
        {
            \trombonesectionab
        }
        {
            \trombonesectionac
        }
    }
}

trombonesectionb = {
% measure 10
    \repeat volta 2 {
          c'8[ c'16 c'16 ]   c'8[ c'8 ] ~   c'8[ c'8 ]   c'16[ c'16 c'8 ] |
        r8   c'16[ c'16 ]   c'8[ c'8 ] ~   c'8[ c'8 ]   c'16[ c'16 c'8 ] |
        r8   c'16[ c'16 ]   c'8[ c'8 ] r8   c'16[ c'16 ]   c'8[ c'8 ] |
% measure 13
        r8   c'16[ c'16 ]   c'16[ c'16 c'8 ] r8   c'16[ c'16 ]   c'16[ c'16 c'16 c'16 ] |
          f'8[ f'8 ] r8 f'8 r8   f'16[ f'16 ]   f'8[ f'8 ] |
          f'8[ f'16 f'16 ]   f'8[ f'8 ] r8 f'8   f'8[ f'8 ] |
% measure 16
          e'8[ e'16 e'16 ]   e'8[ e'8 ] r8 e'8   e'8[ e'8 ] |
    }
    \alternative {
        {
              f'8[ f'16 f'16 ]   f'8[ f'8 ] r4   ees'8[\glissando c'8 ] |
        }
        {
              f'8[ f'16 f'16 ]   f'8[ f'8 ] f'4 r4 |
        }
    }
}

trombonecoda = {
% measure 19
    < f f' >4-. c'4-. f4-. r4
}

%-------------------------------------------------

trombonenotes = {
    \key aes \major
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \blankmeasure
    \trombonecoda
}

trombonenotesmidi = {
    \key aes \major
    \time 4/4
    \preintro
    \tromboneextra
    \tromboneintromidi
    \trombonesectiona
    \trombonesectionb
    \trombonesectiona
    \trombonesectionb
    \trombonesectionaa
    \trombonesectionab
    \trombonesectionaa
    \trombonecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Low melody scored for C instrument.

violinextra = {
    r1 |
}

violinintro = {
    \melodyintro
}

violinintromidi = {
    \melodyintromidi
}

violinsectionaa = {
    \melodysectionaa
}

violinsectionab = {
    \melodysectionab
}

violinsectionac = {
    \melodysectionac
}

violinsectiona = {
    \repeat volta 2 {
        \violinsectionaa
    }
    \alternative {
        {
            \violinsectionab
        }
        {
            \violinsectionac
        }
    }
}

violinsectionb = {
    \melodysectionb
}

violincoda = {
    \melodycoda
}

%-------------------------------------------------

violinnotes = \transpose c' c {
    \key aes \major
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \blankmeasure
    \violincoda
}

violinnotesmidi = \transpose c' c {
    \key aes \major
    \time 4/4
    \preintro
    \violinextra
    \violinintromidi
    \violinsectiona
    \violinsectionb
    \violinsectiona
    \violinsectionb
    \violinsectionaa
    \violinsectionab
    \violinsectionaa
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose c' c {
    \key aes \major
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \blankmeasure
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersextra = \chordmode {
    s1 |
}

chordlettersintro = \chordmode {
    \partial 4. s8 s4 |
}

chordlettersintromidi = \chordmode {
    s1 |
}

chordletterssectionaa = \chordmode {
    f1:min | c1 |
    des1 | c1 | f1:min |
    bes1:min | c1 |
}

chordletterssectionab = \chordmode {
    f1:min |
}

chordletterssectionac = \chordmode {
    \chordChangesOff
    f2:min
    \chordChangesOn
    s4 ees4 |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordletterssectionaa
    }
    \alternative {
        {
            \chordletterssectionab
        }
        {
            \chordletterssectionac
        }
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        aes1 | aes1 | aes1 |
        aes1 | bes1:min | f1:min |
        c1 |
    }
    \alternative {
        {
            f1:min |
        }
        {
            \chordChangesOff
            f1:min |
            \chordChangesOn
        }
    }
}

chordletterscoda = \chordmode {
    \chordChangesOff
    f4:min
    \chordChangesOn
    c4 f4:min s4 |
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
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
basschordletters = \chordletters

chordlettersmidi = \chordmode {
    \preintro
    \chordlettersextra
    \chordlettersintromidi
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionaa
    \chordletterssectionab
    \chordletterssectionaa
    \chordletterscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% we don't have a guitar part to expand for midi or specific playing

guitarextra = {
}

guitarintro = {
}

guitarintromidi = {
}

guitarsectionaa = {
}

guitarsectionab = {
}

guitarsectionac = {
}

guitarsectiona = {
    \repeat volta 2 {
        \guitarsectionaa
    }
    \alternative {
        {
            \guitarsectionab
        }
        {
            \guitarsectionac
        }
    }
}

guitarsectionb = {
}

guitarcoda = {
}

%-------------------------------------------------

guitarnotes = {
    \key aes \major
    \time 2/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \blankmeasure
    \guitarcoda
}

guitarnotesmidi = {
    \key aes \major
    \time 2/4
    \preintro
    \guitarextra
    \guitarintromidi
    \guitarsectiona
    \guitarsectionb
    \guitarsectiona
    \guitarsectionb
    \guitarsectionaa
    \guitarsectionab
    \guitarsectionaa
    \guitarcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotesextra = {
    s1 |
}

bassnotesintro = {
    \partial 4. s8 s4 |
}

bassnotesintromidi = {
    s1 |
}

bassnotessectionaa = {
    f4\2 c4\3 f4\2 c4\3 |
    g,4\4 c4\3 e4\2 c4\3 |
% measure 3
    des4\3 aes,4\4 des4\3 aes,4\4 |
      c8[\3 e8\2 ]   g8[\2 e8\2 ] c4\3 s4 |
    f4\2 c4\3 f4\2 c4\3 |
% measure 6
    bes,4\4 des4\3 bes,4\4 des4\3 |
    c4\3 e4\2 g4\2 c4\3 |
}

bassnotessectionab = {
      f8[\2 aes8\2 ]   c'8[\1 aes8\2 ] f4\2 c4\3 |
}

bassnotessectionac = {
      f8[\2 aes8\2 ]   c'8[\1 aes8\2 ] f4\2 s4 |
}

bassnotessectiona = {
    \repeat volta 2 {
        \bassnotessectionaa
    }
    \alternative {
        {
            \bassnotessectionab
        }
        {
            \bassnotessectionac
        }
    }
}

bassnotessectionb = {
% measure 10
    \repeat volta 2 {
        aes4\2 ees4\3 aes4\2 ees4\3 |
        aes4\2 ees4\3 aes4\2 ees4\3 |
        aes4\2 ees4\3 aes4\2 ees4\3 |
% measure 13
        aes4\2 ees4\3 aes4\2 ees4\3 |
        bes4\1 bes4\1 bes4\1 bes4\1 |
        f4\2 f4\2 f4\2 f4\2 |
% measure 16
        c4\3 e4\2 g4\2 c4\3 |
    }
    \alternative {
        {
              f8[\2 aes8\2 ]   c'8[\1 aes8\2 ] ees4\3 ees4\3 |
        }
        {
              f8[\2 aes8\2 ]   c'8[\1 aes8\2 ] f4\2 c4\3 |
        }
    }
}

bassnotescoda = {
% measure 19
    f4-. c4-. f,4-. s4
}

bassnotes = {
    \bassnotesintro
    \bassnotessectiona
    \bassnotessectionb
    \blankmeasure
    \bassnotescoda
}

bassnotesmidi = {
    \preintro
    \bassnotesextra
    \bassnotesintromidi
    \bassnotessectiona
    \bassnotessectionb
    \bassnotessectiona
    \bassnotessectionb
    \bassnotessectionaa
    \bassnotessectionab
    \bassnotessectionaa
    \bassnotescoda
}

bassrestsextra = {
    r1 |
}

bassrestsintro = {
    \partial 4. r8 r4 |
}

bassrestsintromidi = {
    r1 |
}

bassrestssectionaa = {
    s1 |
    s1 |
% measure 3
    s1 |
    s2 s4 r4 |
    s1 |
% measure 6
    s1 |
    s1 |
}

bassrestssectionab = {
    s1 |
}

bassrestssectionac = {
    s2 s4 r4 |
}

bassrestssectiona = {
    \repeat volta 2 {
        \bassrestssectionaa
    }
    \alternative {
        {
            \bassrestssectionab
        }
        {
            \bassrestssectionac
        }
    }
}

bassrestssectionb = {
% measure 10
    \repeat volta 2 {
        s1 |
        s1 |
        s1 |
% measure 13
        s1 |
        s1 |
        s1 |
% measure 16
        s1 |
    }
    \alternative {
        {
            s1 |
        }
        {
            s1 |
        }
    }
}

bassrestscoda = {
% measure 19
    s2 s4 r4
}

bassrests = {
    \bassrestsintro
    \bassrestssectiona
    \bassrestssectionb
    \blankmeasure
    \bassrestscoda
}

bassrestsmidi = {
    \preintro
    \bassrestsextra
    \bassrestsintromidi
    \bassrestssectiona
    \bassrestssectionb
    \bassrestssectiona
    \bassrestssectionb
    \bassrestssectionaa
    \bassrestssectionab
    \bassrestssectionaa
    \bassrestscoda
}

%-------------------------------------------------

bassnotes = <<
    \key aes \major
    \time 4/4
    \bassnotes
    \bassrests
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightextra = {
    r1 |
}

pianorightintro = {
    \partial 4. c''8   f''8[ g''8 ] |
}

pianorightintromidi = {
    r2 r8 c''8   f''8[ g''8 ] |
}

pianorightsectionaa = {
    r8 < f' aes' c'' >8 r8 < f' aes' c'' >8 r8 < f' aes' c'' >16[ < f' aes' c'' >16 ] < f' aes' c'' >16[ < f' aes' c'' >16 < f' aes' c'' >8 ] |
    r8 < c' e' g' >8 r8 < c' e' g' >8 < c' e' g' >4. r8 |
    r8 < des' f' aes' >8 r8 < des' f' aes' >8 r8 < des' f' aes' >16[ < des' f' aes' >16 ] < des' f' aes' >16[ < des' f' aes' >16 < des' f' aes' >8 ] |
    < c' e' g' >2. r4 |
    r8 < f' aes' c'' >8 r8 < f' aes' c'' >8 r8 < f' aes' c'' >16[ < f' aes' c'' >16 ] < f' aes' c'' >16[ < f' aes' c'' >16 < f' aes' c'' >8 ] |
    r8 < bes' des' f' >8 r8 < bes' des' f' >8 < bes' des' f' >4. r8 |
    r8 < c' e' g' >8 r8 < c' e' g' >8 r8 < c' e' g' >16[ < c' e' g' >16 ] < c' e' g' >16[ < c' e' g' >16 < c' e' g' >8 ] |
}

pianorightsectionab = {
    < f' aes' c'' >2 r8 c''8   f''8[ g''8 ] |
}

pianorightsectionac = {
    < f' aes' c'' >2 r8 ees''8   aes''8[ bes''8 ] |
}

pianorightsectiona = {
    \repeat volta 2 {
        \pianorightsectionaa
    }
    \alternative {
        {
            \pianorightsectionab
        }
        {
            \pianorightsectionac
        }
    }
}

pianorightsectionb = {
    \repeat volta 2 {
        r8 < aes' c'' ees'' >8 r8 < aes' c'' ees'' >8 r8 < aes' c'' ees'' >16[ < aes' c'' ees'' >16 ] < aes' c'' ees'' >16[ < aes' c'' ees'' >16 < aes' c'' ees'' >8 ] |
        < aes' c'' ees'' >2 r8 ees''8   aes''8[ bes''8 ] |
        r8 < aes' c'' ees'' >16[ < aes' c'' ees'' >16 ] < aes' c'' ees'' >8[ < aes' c'' ees'' >8 ] r8 < aes' c'' ees'' >16[ < aes' c'' ees'' >16 ] < aes' c'' ees'' >8[ < aes' c'' ees'' >8 ] |
        < aes' c'' ees'' >2 r8 f''8   bes''8[ c'''8 ] |
        r8 < bes' des' f' >8 r8 < bes' des' f' >8 r8 < bes' des' f' >16[ < bes' des' f' >16 ] < bes' des' f' >16[ < bes' des' f' >16 < bes' des' f' >8 ] |
        r8 < f' aes' c'' >8 r8 < f' aes' c'' >8 r8 < f' aes' c'' >8 r8 < f' aes' c'' >8 |
        r8 < c' e' g' >8 r8 < c' e' g' >8 r8 < c' e' g' >16[ < c' e' g' >16 ] < c' e' g' >16[ < c' e' g' >16 < c' e' g' >8 ] |
    }
    \alternative {
        {
            < f' aes' c'' >2 r8 ees''8   aes''8[ bes''8 ] |
        }
        {
            < f' aes' c'' >2 r8 c''8   f''8[ g''8 ] |
        }
    }
}

pianorightcoda = {
    < f' aes' c'' >4-. < c' e' g' >4-. < f' aes' c'' >4-. r4 |
}

pianoleftextra = <<
    \bassrestsextra
    \bassnotesextra
>>

pianoleftintro = <<
    \bassrestsintro
    \bassnotesintro
>>

pianoleftintromidi = <<
    \bassnotesintromidi
>>

pianoleftsectionaa = <<
    \bassrestssectionaa
    \bassnotessectionaa
>>

pianoleftsectionab = <<
    \bassrestssectionab
    \bassnotessectionab
>>

pianoleftsectionac = <<
    \bassrestssectionac
    \bassnotessectionac
>>

pianoleftsectiona = {
    \repeat volta 2 {
        \pianoleftsectionaa
    }
    \alternative {
        {
            \pianoleftsectionab
        }
        {
            \pianoleftsectionac
        }
    }
}

pianoleftsectionb = <<
    \bassrestssectionb
    \bassnotessectionb
>>

pianoleftcoda = <<
    \bassrestscoda
    \bassnotescoda
>>

%-------------------------------------------------

pianorightuppernotes = {
    \key aes \major
    \time 4/4
    \pianorightintro
    \pianorightsectiona
    \pianorightsectionb
    \blankmeasure
    \pianorightcoda
}

pianoleftuppernotes = {
}

pianorightnotesmidi = {
    \key aes \major
    \time 4/4
    \preintro
    \pianorightextra
    \pianorightintromidi
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectiona
    \pianorightsectionb
    \pianorightsectionaa
    \pianorightsectionab
    \pianorightsectionaa
    \pianorightcoda
}

pianoleftuppernotes = {
    \key aes \major
    \time 4/4
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \blankmeasure
    \pianoleftcoda
}

pianoleftlowernotes = {
}

pianoleftnotesmidi = {
    \key aes \major
    \time 4/4
    \preintro
    \pianoleftextra
    \pianoleftintromidi
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionaa
    \pianoleftsectionab
    \pianoleftsectionaa
    \pianoleftcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    \stemUp \hideDynamics
    hhc4\p hhc4 r8 hhc8 hhc8 hhc8 |
}

drumshighintro = \drummode {
    \stemUp
    \partial 4. hhc8 hhc8 hhc8 |
}

drumshighintromidi = \drummode {
    \stemUp
    hhc4 hhc4 r8 hhc8 hhc8 hhc8 |
}

drumshighsectionaa = \drummode {
    \stemUp \hideDynamics
    \set countPercentRepeats = ##t
    \repeat percent 3 {
        hhc8\p [ sna8 hhc8 sna8 ] hhc8 [ sna16 sna16 sna16 sna16 sna8 ] |
    }
    hhc8 [ sna8 hhc8 sna8 ] hhc4 r4 |
    \repeat percent 3 {
        hhc8 [ sna8 hhc8 sna8 ] hhc8 [ sna16 sna16 sna16 sna16 sna8 ] |
    }
}

drumshighsectionab = \drummode {
    \stemUp
    hhc8 [ sna8 hhc8 sna8 ] hhc4 r4 |
}

drumshighsectionac = \drummode {
    \stemUp
    hhc8 [ sna8 hhc8 sna8 ] hhc4 r4 |
}

drumshighsectiona = \drummode {
    \repeat volta 2 { \drumshighsectionaa }
    \alternative { { \drumshighsectionab } { \drumshighsectionac } }
}

drumshighsectionb = \drummode {
    \stemUp \hideDynamics
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 6 {
            wbh8\f [ wbh16 wbh16 ] wbh8 [ wbh8 ] wbh8 [ wbh16 wbh16 ] wbh8 [ wbh8 ] |
        }
        wbh8 [ wbh16 wbh16 ] wbh8 [ wbh8 ] wbh8 [ wbh16 wbh16 ] wbh8 [ wbh8 ] |
    }
    \alternative {
        { r8 wbh8 r8 wbh8 r8 wbh8 r8 wbh8 | }
        { r8 wbh8 r8 wbh8 r8 wbh8 r8 wbh8 | }
    }
}

drumshighcoda = \drummode {
    \stemUp
    cymr4->\ff cymr4-> cymc2->
}

drumshigh = \drummode {
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \blankmeasure
    \drumshighcoda
}

drumshighmidi = \drummode {
    \stemUp
    \dynamicUp
    \preintro
    \drumshighextra
    \drumshighintromidi
    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectiona
    \drumshighsectionb

    \drumshighsectionaa
    \drumshighsectionab
    \drumshighsectionaa

    \drumshighcoda
}

drumslowextra = \drummode {
    bda4\p s4 s2
}

drumslowintro = \drummode {
    \partial 4. s8 s8 s8 |
}

drumslowintromidi = \drummode {
    bda4 s4 s2 |
}

drumslowsectionaa = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 3 {
        bda4 bda4 bda4 bda4 |
    }
    bda4 bda4 bda4 bda4 |
    \repeat percent 3 {
        bda4 bda4 bda4 bda4 |
    }
}

drumslowsectionab = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectionac = \drummode {
    bda4 bda4 bda4 bda4 |
}

drumslowsectiona = \drummode {
    \repeat volta 2 { \drumslowsectionaa }
    \alternative { { \drumslowsectionab } { \drumslowsectionac } }
}

drumslowsectionb = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 6 { bda4 bda4 bda4 bda4 | }
        bda4 bda4 bda4 bda4 |
    }
    \alternative { { bda4 bda4 bda4 bda4 | } { bda4 bda4 bda4 bda4 | } }
}

drumslowcoda = \drummode {
% measure 19
    bda4 bda4 bda4 r4
}

drumslow = \drummode {
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \blankmeasure
    \drumslowcoda
}

drumslowmidi = \drummode {
    \preintro
    \drumslowextra
    \drumslowintromidi
    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectiona
    \drumslowsectionb

    \drumslowsectionaa
    \drumslowsectionab
    \drumslowsectionaa

    \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 |
    f1:min |
    c1 |
    des1 |
}

previewnotes = {
    \key aes \major
    \time 4/4
    s2 s8 c''8 f''8 g''8 |
    \bar ".|:"
    \afterGrace g''8 ( bes''16 ) aes''8 aes''8 aes''8 aes''8 g''16 bes''16 aes''16 g''16 f''8 |
    \afterGrace f''8 ( aes''16 ) g''8 g''8 g''8 g''4. e''8 |
    \afterGrace e''8 ( g''16 ) f''8 f''8 f''8 f''8 e''16 g''16 f''16 e''16 des''8 |
    c''2 ~ c''8 c''8 f''8 g''8 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassnotes
}

euphoniumnotesmidi = {
    \bassnotesmidi
}

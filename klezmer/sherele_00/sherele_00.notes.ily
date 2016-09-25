\version "2.18.2"

% This contains the meat of Sherele.
% A traditional Sher.
%
% This rendition is based on:
%   The melody copied from the song book accompanying the Viva El Klezmer cassette
%   Chord pattern determined by listening to a recording on The Tummlers, "Shpiel, Klezmer!"
%   A midi file created by Michael Greenspan that I yanked off of the net.
%   Entry into Lilypond format Dick Schoeller, 2002.

blankslowintro = {
    s2*8 | \breakSI
}

blankfastintro = {
    s2*14 | \breakFI
}

blankfastintroSPLIT = {
    s2*2 \breakFItwo s2*12 |
}

restslowintro = {
    R2*8 |
}

restfastintro = {
    R2*14 |
}

restfastintroSPLIT = {
    R2*2 R2*12 |
}

bandmslowintro = {
   \tempo \markupTS
    s2*8 | \bar "||" \breakSI
}

bandmfastintro = {
    \tempo \markupTF
    s2*14 | \bar ".|:-||" \breakFI
}

bandmfastintroSPLIT = {
    \tempo \markupTF
    s2*2 \breakFItwo s2*4 | \breakFIsix
    s2*2 | \breakFIeit  s2*2 | \breakFIten
    s2*2 | \breakFItwl s2*2 | \bar ".|:-||" \breakFI
}

bandmintro = {
    \bandmslowintro
    \bandmfastintro
}

bandmintroSPLIT = {
    \bandmslowintro
    \bandmfastintroSPLIT
}

bandmsectiona = {
    \repeat volta 2 {
        \markSA \positionSA
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakAeit
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        s2 | \breakAtht s2 | \breakAfrt s2 | \breakAfft s2 | \breakAsxt
        s2 | \breakAsvt s2 | \breakAett
    }
    \alternative {
        { s2 \breakAnnt | s2 \breakAtwy | } { s2 \breakAtyo | s2 | }
    }
    \bar ".|:-||" \breakA
}

bandmsectionb = {
    \repeat volta 2 {
        \markB \positionB
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakBeit
        s2 | \breakBnin s2 | \breakBten s2 | \breakBelv s2 | \breakBtwl
        s2 | \breakBtht s2 | \breakBfrt
    }
    \alternative {
        { s2 | \breakBfft s2 | \breakBsxt } { s2 | \breakBsvt s2 | }
    }
    \bar ".|:-||" \breakB
}

bandmsectionc = {
    \repeat volta 2 {
        \markC \positionC
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix
    }
    \alternative {
        { s2 | \breakCsev s2 | \breakCeit } { s2 | \breakCnin s2 | }
    }
    \markDSsimple \positionDS
}

bandmNV = {
    \time 2/4
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

bandmNVSPLIT = {
    \time 2/4
    \bandmintroSPLIT
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

bandm = { \bandmNV }

bandmSPLIT = { \bandmNVSPLIT }

leadsheetbandmNV = {
    \time 2/4
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bar "|."
}

leadsheetbandm = \context Voice = "leadsheetbandm" {
    \leadsheetbandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s2 }
metronomeextra = { s2 | s2 | }
metronomeslowintro = { s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | }
metronomefastintro = {
    s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}
metronomeintro = { \metronomeslowintro \metronomefastintro }

metronomesectiona = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionb = {
    \repeat volta 2 {
        s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
    }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronomesectionc = {
    \repeat volta 2 { s2 | s2 | s2 | s2 | s2 | s2 | }
    \alternative { { s2 | s2 | } { s2 | s2 | } }
}

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 80
    \metronomeextra
    \metronomeslowintro
    \tempo 4 = 130
    \metronomefastintro
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
    \metronomesectiona
    \metronomesectionb
    \metronomesectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyfastintro = {
    % measure 1
    R2*2 |
    \repeat unfold 2 {
        e'8. d'16 cis'8 d'8 |
        e'8-. r8 r4 |
    }

    % measure 5
    e'8. d'16 cis'8 d'8 |
    e'8 f'8 gis'8 d'8 |
    gis'8 a'8 b'8 gis'8 |
    a'8 f'8 gis'8 e'8 |

    % measure 9
    gis'8 a'8 b'8 gis'8 |
    a'8 f'8 gis'8 f'8 |
    e'4 b4 |
    e'4 r4 |
}

melodyintro = {
    \restslowintro
    \melodyfastintro
}

melodysectiona = {
    \repeat volta 2 {
        % measure 13
        e'8. d'16 cis'8 d'8 |
        e'4 f'4 |
        e'2\prall ~ |
        e'2\prall |

        % measure 17
        gis'8. f'16 e'8 f'8 |
        gis'4 a'4 |
        b'2 |
        b'2 |

        % measure 21
        b'8. c''16 d''4 |
        d''4 d''4 |
        d''8. c''16 c''8 b'8 |
        b'8 a'8 a'8 gis'8 |
        gis'8 a'8 b'4 |
        b'4 b'4 |

        % measure 27
        b'8. a'16 a'8 gis'8 |
        gis'8 f'8 f'8 e'8 |
        d'8. cis'16 d'8 e'8 |
        f'8 a'8 gis'8 f'8 |
    }
    \alternative {
        {
          e'2 ~ |
          e'2 |
        }
        {
            e'2 ~ |
            e'4. r8 |
        }
    }
}

melodysectionb = {
    \repeat volta 2 {
        % measure 53
        a'4. e'16 a'16 |
        c''4. a'16 c''16 |
        e''2 |
        e''4 e''8 e''8 |

        % measure 57
        e''8 d''8 d''8 c''8 |
        c''8 b'8 b'8 a'8 |
        b'4 e''4 |
        b'4 e'4 |

        % measure 61
        b'4. c''8 |
        d''4. e''8 |
        f''2\prall ~ |
        f''2\prall |

        % measure 65
        e''8 d''8 d''8 c''8 |
        c''8 b'8 b'8 gis'8 |
    }
    \alternative {
        { a'2 | a'4. r8 | }
        { a'4 e'4 | a'2 | }
    }
}

melodysectionc = {
    \repeat volta 2 {
        % measure 85
        b'8 a'8 gis'4 |
        gis'8 f'8 e'4 |
        e'8 a'8 gis'8 a'8 |
        b'4 e''4 |

        % measure 89
        b'8 a'8 gis'4 |
        gis'8 f'8 e'4 |
    }
    \alternative {
        {
            f'8 e'8 d'8 f'8 |
            e'8 b'8 b'8 b'8 |
        }
        {
            f'16 f'16 e'8 d'8 f'8 |
            e'2 |
        }
    }
}

melody = {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accompanimentintro = {
    \restslowintro
    \restfastintro
}

accompanimentsectiona = {
    \repeat volta 2 {
        % measure 23
        r2 |
        e8 fis8 gis8 a8 |
        r2 |
        gis8 gis8 fis8 e8 |

        % measure 27
        e4 e4 |
        gis8 gis8 fis8 e8 |
        gis4 gis4 |
        gis4 r4 |

        % measure 31
        d8 a8 d8 f8 |
        d8 a8 d8 f8 |
        d8 a8 d8 f8 |
        d'4 r4 |
        e8 fis8 gis8 a8 |
        b4 e4 |

        % measure 37
        r2 |
        a8 a8 g8 f8 |
        e4 gis8 b8 |
        f8 c8 f8 a8 |
    }
    \alternative {
        {
            e8 b8 e8 gis8 |
            b4 r8 e8 |
        }
        {
            e8 b8 e8 gis8 |
            b4 r8 e8 |
        }
    }
}

accompanimentsectionb = {
    \repeat volta 2 {
        % measure 45
        r2 |
        a8 b8 c'8 d'8 |
        e'2 |
        c'8 c'8 b8 a8 |

        % measure 49
        r2 |
        r8 a8 c'8 e'8 |
        e4 gis4 |
        e4 e4 |

        % measure 53
        e4 b4 |
        e8 b8 e8 gis8 |
        d8 a8 d4 |
        d4 r4 |

        % measure 65
        e8 b,8 e8 gis8 |
        b4 r4 |
    }
    \alternative {
        {
            a8 e8 a8 c'8 | e'4 r4 |
        }
        {
            a8 e8 a8 c'8 | e'4 r4 |
        }
    }
}

accompanimentsectionc = {
    \repeat volta 2 { R2*6 | }
    \alternative { { R2*2 | } { R2*2 | } }
}

accompaniment = {
    \accompanimentintro
    \accompanimentsectiona
    \accompanimentsectionb
    \accompanimentsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counterfastintro = {
    R2*2 |
    gis8 f8 e8 f8 |
    gis8 r8 r4 |
    gis8 f8 e8 f8 |
    gis8 r8 r4 |
    gis8 f8 e8 f8 |
    gis8 a8 b8 gis8 |
    a8 c'8 d'8 b8 |
    c'8 a8 b8 gis8 |
    b8 c'8 d'8 c'8 |
    b8 a8 gis8 a8 |
    gis8 a8 gis8 f8 |
    gis8 r8 r4 |
}

counterintro = {
    \restslowintro
    \counterfastintro
}

countersectiona = {
    \repeat volta 2 {
        % measure 23 e chord (Bb instrument)
        R2*2 |
        gis2\mordent |
        e8 f8 gis8 a8 |

        % measure 27 e chord
        b4 gis4 ~ |
        gis4 a4 |
        b8 a8 gis4 |
        f4 e4 |

        % measure 31 d:min chord
        f8 gis8 f4 |
        a4 a4 |
        b8 a8 a8 gis8 |
        a8 gis8 gis8 f8 |

        % e chord
        e8 f8 gis4 |
        gis4 gis4 |
        d'8 c'8 c'8 b8 |
        b8 a8 a8 gis8 |

        % measure 39 d:min chord
        f8 gis8 a8 b8 |
        c'8 d'8\mordent ~ d'8\mordent a8 |
    }
    \alternative {
        {
            gis8 a8 gis8 f8 |
            e4 e4 |
        }
        {
            gis8 a8 gis8 f8 |
            e4 e4 |
        }
    }
}

countersectionb = {
    \repeat volta 2 {
        % measure 45 a:min chord (Bb instruments)
        c'4. b8 |
        a4 e4 |
        a8 e8 a8 b8 |
        c'4 c'8 c'8 |

        % measure 49 a:min chord
        c'8 b8 b8 a8 |
        a8 gis8 gis8 f8 |
        % e chord
        gis16 gis16 a8 b8 a8 |
        gis8 f8 e4 |

        % measure 53 e chord
        gis4. a8 |
        b4. c'8 |
        % d:min chord
        f'8\mordent e'8 d'8 f'8 |
        d'8 b8 b8 a8 |

        % measure 57 e chord
        b8 a8 a8 gis8 |
        gis8 f8 f8 e8 |
    }
    \alternative {
        {
            % a:min chord
            c'4\mordent a8 gis8 |
            a2 |
        }
        {
            c'4\mordent a8 gis8 |
            a4 r4 |
        }
    }
}

countersectionc = {
    \repeat volta 2 {
        % measure 63
        e4. f8 |
        gis8 a8 b4 |
        b4. a8 |
        gis8 f8 e4 |

        % measure 67
        gis4. a8 |
        gis8 f8 gis4 |
    }
    \alternative {
        {
            a8 a16 gis16 f8 a8 |
            gis8 gis8 gis8 gis8 |
        }
        {
            a8 a16 gis16 f8 a8 |
            gis2 |
        }
    }
}

countermelody = {
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = \transpose c' bes' {
    \key a \minor
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetonenotes = \transpose c c' {
    \key a \minor
    \time 2/4
    \melody
}

clarinettwonotes = \transpose c c'' {
    \key a \minor
    \time 2/4
    \accompaniment
}

clarinetnotesmidi = \transpose c c' {
    \key a \minor
    \time 2/4
    \preintro
    \metronomeextra
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \accompanimentsectiona
    \accompanimentsectionb
    \accompanimentsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetonenotes = {
    \key a \minor
    \time 2/4
    \melody
}

trumpettwonotes = \transpose c c' {
    \key a \minor
    \time 2/4
    \accompaniment
}

trumpetnotesmidi = \transpose c c' {
    \key a \minor
    \time 2/4
    \preintro
    \metronomeextra
    \accompanimentintro
    \accompanimentsectiona
    \accompanimentsectionb
    \accompanimentsectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = \transpose c g' {
    \key a \minor
    \time 2/4
    \countermelody
}

altosaxnotesmidi = \transpose c g' {
    \key a \minor
    \time 2/4
    \preintro
    \metronomeextra
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc
}

tenorsaxnotes = \transpose c c' {
    \key a \minor
    \time 2/4
    \countermelody
}

tenorsaxnotesmidi = \transpose c c' {
    \key a \minor
    \time 2/4
    \preintro
    \metronomeextra
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc
}

tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonenotes = \transpose c' bes {
    \key a \minor
    \time 2/4
    \countermelody
}

trombonenotesmidi = \transpose c' bes {
    \key a \minor
    \time 2/4
    \preintro
    \metronomeextra
    \counterintro
    \countersectiona
    \countersectionb
    \countersectionc
    \countersectiona
    \countersectionb
    \countersectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinslowintro = {
    d'8 c' b c' |
    d'4 ees' |
    d'2\trill ~ |
    d'2\trill |
    fis'8 [ ees' d' ees' ] |
    fis'4 g' |
    a'2\trill ~ |
    a'2\trill |
}

violinfastintro = {
    R2*14 |
}

violinintro = {
    \violinslowintro
    \violinfastintro
}

violinsectiona = {
    \repeat volta 2 {
        % measure 13
        d'8 c' b c' |
        d'4 ees' |
        d'2 ~ |
        d'2 |

        % measure 17
          fis'8[ ees' d' ees' ] |
        fis'4 g' |
        a'2 ~ |
        a'2 |

        % measure 21
        a'8 bes' c''4 |
        c'' c'' |
        c''8 bes' bes' a' |
        a' g' g' fis' |
        fis'8 g' a'4 |
        a' a' |

        % measure 27
        a'8 g' g' fis' |
        fis' ees' ees' d' |
        c' b c' d' |
        ees' g' fis' ees' |
    }
    \alternative {
        {
            d'2 ~ |
            d'2 |
        }
        {
            d'2 ~ |
            d'2 |
        }
    }
}

violinsectionb = {
    \repeat volta 2 {
        % measure 53
        g'4. d'16 g' |
        bes'4. g'16 bes' |
        d''2 ~ |
        d''2 |

        % measure 57
        d''8 c'' c'' bes' |
        bes' a' a' g' |
        a'2 ~ |
        a'2 |

        % measure 61
        a'4. bes'8 |
        c''4. d''8 |
        ees''2 ~ |
        ees''2 |

        % measure 65
        d''8 c'' c'' bes' |
        bes' a' a' g' |
    }
    \alternative {
        {
            bes'2 |
            \tuplet 3/2 { d''8 cis'' bes' } \tuplet 3/2 { bes' a' g' } |
        }
        {
            g'4. a'16 bes'16 |
            g'4. r8 |
        }
    }
}

violinsectionc = {
    \repeat volta 2 {
        % measure 85
        a'8 g' fis'4 |
        fis'8 ees' d'4 |
        d'8 g' fis' g' |
        a' r d'' r |

        % measure 89
        a'8 g' fis'4 |
        fis'8 ees' d'4 |
    }
    \alternative {
        {
            ees'8 d' c' g' |
            d'2 |
        }
        {
            ees'8 d' c' g' |
            d'2 |
        }
    }
}

%-------------------------------------------------

violinnotes = \transpose c c {
    \key g \minor
    \time 2/4

    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

violinnotesmidi = \transpose c c {
    \key g \minor
    \time 2/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteslowintro = {
    d'8 c' b c' |
    d'4 ees' |
    d'2 ~ |
    d'2 |
    fis'8 [ ees' d' ees' ] |
    fis'4 g' |
    a'2 ~ |
    a'2 |
}

flutefastintro = {
    R2*14 |
}

fluteintro = {
    \fluteslowintro
    \flutefastintro
}

%-------------------------------------------------

flutenotes = \transpose c c' {
    \key g \minor
    \time 2/4

    \fluteintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

flutenotesmidi = \transpose c c' {
    \key g \minor
    \time 2/4
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc
}

altoflutenotes = \transpose g c {
    \flutenotes
}

altoflutetenorharmony = \transpose g c {
    \tenorforflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    \blankslowintro
    \blankfastintro
}

chordlettersintroSPLIT = \chordmode {
    \blankslowintro
    \blankfastintroSPLIT
}

chordlettersectiona = \chordmode {
    \repeat volta 2 {
        d2*4 | d2*4 | c2*4:min |
        d2*4 | c2:min | c2:min |
    }
    \alternative {
        { d2 | d2 | }
        { \chordChangesOff d2 \chordChangesOn | d2 | }
    }
}

chordlettersectionb = \chordmode {
    \repeat volta 2 {
        % measure 45
	g2*4:min |
	g2*2:min | d2*2 |
        d2*2 | c2*2:min |
        d2 | d2 |
    }
    \alternative {
        { g2:min | g2:min | }
        { \chordChangesOff g2:min \chordChangesOn | g2:min | }
    }
}

chordlettersectionc = \chordmode {
    \repeat volta 2 {
        % measure 63
        d2 | d2 | d2 | d2 |
        d2 | d2 |
    }
    \alternative {
        { c2:min | d2 | }
        { c2:min | d2 | }
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordlettersectiona
    \chordlettersectionb
    \chordlettersectionc
}

chordlettersSPLIT = \chordmode {
    \time 2/4
    \chordlettersintro
    \chordlettersectiona
    \chordlettersectionb
    \chordlettersectionc
}

clarinetchordletters = \transpose bes, c \chordletters
tenorsaxchordletters = \transpose bes, c \chordletters
trumpetchordletters = \transpose bes, c \chordletters
altosaxchordletters = \transpose ees c \chordletters
guitarchordletters = \chordletters
flutechordletters = \chordletters
violinchordletters = \chordletters
trombonechordletters = \chordletters
leadsheetchordletters = \chordmode {
    \time 2/4
    \chordlettersectiona
    \chordlettersectionb
    \chordlettersectionc
}
pianochordletters = \chordletters
melodychordletters = \chordletters
basschordletters = \chordletters
altoflutechordletters = \transpose g c \chordletters

%-------------------------------------------------

dseve = <
    d\4 a\3 c'\2 fis'\1 
>8

dsevq = <
    d\4 a\3 c'\2 fis'\1 
>4

gmine = <
    g\4 bes\3 d'\2 g'\1
>8

gminq = <
    g\4 bes\3 d'\2 g'\1
>4

eesmaje = <
   bes\3 ees'\2 bes'\1
>8

eesmajq = <
   bes\3 ees'\2 bes'\1
>4

guitarnotesintro = {
    \blankslowintro
    \blankfastintro
}

guitarnotessectiona = {
    \repeat volta 2 {
        % measure 13
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        a8 d'8 a'8 \dseve |

        % measure 17
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        a8 d'8 a'8 \dseve |

        % measure 21
        s8 \dseve s8 \dseve |
        s8 \eesmaje s8 \eesmaje |
        \eesmaje \eesmaje \eesmaje \eesmaje |
        s8 \eesmaje s8 \eesmaje |
        \dseve \dseve \dseve \dseve |
        s8 \dseve s8 \dseve |

        % measure 27
        \eesmaje \eesmaje \eesmaje \eesmaje |
        s8 \eesmaje s8 \eesmaje |
        \dseve \dseve \dseve \dseve |
        \eesmaje \eesmaje \eesmaje \eesmaje |
    }
    \alternative {
        {
            s8 \dseve s8 \dseve |
            s8 \dseve s8 \dseve |
        }
        {
            s8 \dseve s8 \dseve |
            s8 \dseve s8 \dseve |
        }
    }
}

guitarnotessectionb = {
    \repeat volta 2 {
        % measure 53
        s8 \gmine s8 \gmine |
        s8 \gmine s8 \gmine |
        s8 \gmine s8 \gmine |
        s8 \gmine s8 \gmine |

        % measure 57
        \gmine \gmine \gmine \gmine |
        s8 \gmine s8 \gmine |
        s4 \dsevq |
        s4 \dsevq |

        % measure 61
        \dseve \dseve \dseve \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |

        % measure 65
	\dseve \dseve \dseve \dseve |
        s8 \dseve s8 \dseve |
    }
    \alternative {
        { 
            s8 \dseve s8 \dseve |
            s8 \dseve s8 \dseve |
        }
        {
            \dseve
                \dseve
                \dseve
                \dseve |
            s8 \dseve s8 \dseve |
        }
    }
}

guitarnotessectionc = {
    \repeat volta 2 {
        % measure 85
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |

        % measure 89
        s8 \dseve s8 \dseve |
        s8 \dseve s8 \dseve |
    }
    \alternative {
        {
            s8 \gmine s8 \gmine |
            s8 \dseve s8 \dseve |
        }
        {
            s8 \gmine s8 \gmine |
            s4 \dsevq |
        }
    }
}

guitarjustnotes = {
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
}

%-------------------------------------------------

guitarrestsintro = {
    % intro
    \restslowintro
    \restfastintro
}

guitarrestssectiona = {
    \repeat volta 2 {
        % measure 13
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        s8 s8 s8 s8 |

        % measure 17
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        s8 s8 s8 s8 |

        % measure 21
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        s8 s8 s8 s8 |
        r8 s8 r8 s8 |
        s8 s8 s8 s8 |
        r8 s8 r8 s8 |

        % measure 27
        s8 s8 s8 s8 |
        r8 s8 r8 s8 |
        s8 s8 s8 s8 |
        s8 s8 s8 s8 |
    }
    \alternative {
        {
            r8 s8 r8 s8 |
            r8 s8 r8 s8 |
        }
        {
            r8 s8 r8 s8 |
            r8 s8 r8 s8 |
        }
    }
}

guitarrestssectionb = {
    \repeat volta 2 {
        % measure 53
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |

        % measure 57
        s8 s8 s8 s8 |
        r8 s8 r8 s8 |
        r4 s4 |
        r4 s4 |

        % measure 61
        s8 s8 s8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |

        % measure 65
        s2 | s2 |
    }
    \alternative {
        {
            r8 s8 r8 s8 | r8 s8 r8 s8 |
        }
        {
            s8 s8 s8 s8 | r8 s8 r8 s8 |
        }
    }
}

guitarrestssectionc = {
    \repeat volta 2 {
        % measure 85
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |

        % measure 89
        r8 s8 r8 s8 |
        r8 s8 r8 s8 |
    }
    \alternative {
        {
            r8 s8 r8 s8 |
            r8 s8 r8 s8 |
        }
        {
            r8 s8 r8 s8 |
            r4 s4 |
        }
    }
}

guitarrests = {
    \guitarrestsintro
    \guitarrestssectiona
    \guitarrestssectionb
    \guitarrestssectionc
}

%-------------------------------------------------

%guitarnotes = <<
%    \key g \minor
%    \time 2/4
%    \guitarjustnotes
%    \guitarrests
%>>

guitarnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \metronomeextra
    \guitarnotesintro
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
    \guitarnotessectiona
    \guitarnotessectionb
    \guitarnotessectionc
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassrestsfast = {
    R2*2 |
    \repeat unfold 2 { s4 s4 | s4 r4 | }
    s2 | s2 | s2 | s2 |
    s2 | s2 | s2 | s4 r4 |
}

bassrests = {
    \restslowintro
    \bassrestsfast
}

bassfastintro = {
    R2*2 |
    \repeat unfold 2 {
        e,4\3 e,4\3 |
        e,4\3 s4 |
    }
    e,4\3 b,,4\4 |
    e,4\3 b,,4\4 |
    e,4\3 e,4\3 |
    f,4\3 e,4\3 |
    e,4\3 e,4\3 |
    d,4\3 e,4\3 |
    e,4\3 b,4\2 |
    e,4\3 s4 |
}

bassintro = {
    % intro
    \blankslowintro
    \bassfastintro
}

basssectiona = {
    \repeat volta 2 {
        % coded for Bb instruments.
        % measure 23 e chord (Bb instrument)
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 27 e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 31 d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |
        d,4\3 a,,4\4 |
        d,4\3 a,,4\4 |

        % e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 39 d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |
    }
    \alternative {
        {
            e,4\3 b,,4\2 |
            e,4\3 b,,4\2 |
        }
        {
            e,4\3 b,,4\4 |
            e,4\3 fis,8\3 gis,8\2 |
        }
    }
}

basssectionb = {
    \repeat volta 2 {
        % measure 45 a:min chord (Bb instruments)
        a,4\2 e,4\3 |
        a,4\2 e,4\3 |
        a,,4\4 e,4\3 |
        a,4\2 e,4\3 |

        % measure 49 a:min chord
        a,4\2 e,4\3 |
        a,4\2 g,8\2 f,8\3 |
        % e chord
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 53 e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        % d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |

        % measure 57 e chord
        e,4\3 b,,4\4 |
        e,4\3 fis,8\3 gis,8\2 |
    }
    \alternative {
        {
            a,4\2 e,4\3 |
            a,4\2 e,4\3 |
        }
        {
            a,4\2 e,4\3 |
            a,4\2 g,8\2 f,8\3 |
        }
    }
}
basssectionc = {
    \repeat volta 2 {
        % measure 63
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |

        % measure 67
        e,4\3 b,,4\4 |
        e,4\3 b,,8 a,,8 |
    }
    \alternative {
        {
            d,4 a,,4 |
            e,8 gis,8 e,8 b,,8 |
        }
        {
            d,4 a,,4 |
            e,2 |
        }
    }
}

bassnotes = \transpose c bes {

    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
}

bassmidinotes = \transpose c bes {
    \preintro
    \metronomeextra
    \restslowintro
    \bassfastintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionc
}

%-------------------------------------------------

bassnotes = <<
    \key g \minor
    \time 2/4
    \bassnotes
    \bassrests
>>

bassnotesmidi = {
    \key g \minor
    \time 2/4
    \bassmidinotes
}

euphoniumnotes = {
    \bassnotes
}

ephoniumnotesmidi = {
    \bassnotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianonotesintro = {
    R2*8 |
    R2*2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 | r2 |
}

pianonotessectiona = {
    \repeat volta 2 {
        d''8[\ff c''8 b'8 c''8 ] |
        d''8 r8 ees''8 r8 |
        < fis' a' d'' >2 ~ |
        < fis' a' d'' >2 |
        fis''8[^\trill ees''8 d''8 ees''8 ] |
        < d'' fis'' >8 r8 < ees'' g'' >8 r8 |
        < fis'' a'' >2 ~ |
        < fis'' a'' >2 |
        < fis'' a'' >8[ < g'' bes'' >8 ] < a'' c''' >8 r8 |
        < a'' c''' >8 r8 < a'' c''' >8 r8 |
        c'''8[( bes''8) bes''8( a''8) ] |
        a''8[( g''8) g''8( fis''8) ] |
        < d'' fis'' >8[ < ees'' g'' >8 ] < fis'' a'' >8 r8 |
        < fis'' a'' >8 r8 < fis'' a'' >8 r8 |
        a''8[( g''8) g''8( fis''8) ] |
        fis''8[( ees''8) ees''8( d''8) ] |
        c''8[ b'8 c''8 d''8 ] |
        ees''8[ g''8 fis''8 ees''8 ] |
    }
    \alternative {
        {
            < fis' a' d'' >2 ~ |
            < fis' a' d'' >4 r4 |
        }
        {
            < fis' a' d'' >2 ~ |
            < fis' a' d'' >4 r4 |
        }
    }
}

pianonotessectionb = {
    \repeat volta 2 {
        \startOctVA
        g''4.   d''16[ g''16 ] |
        bes''4.   g''16[ bes''16 ] |
        \stopOctVA
        < bes' d'' >2 |
        < bes' d'' >2 |
        d''8[( c''8) c''8( bes'8) ] |
        bes'8[( a'8) a'8( g'8) ] |
        < fis' a' >2 ~ |
        < fis' a' >2 |
        a'4. bes'8 |
        c''4. d''8 |
        < c'' ees'' >2 |
        < c'' ees'' >2 |
        d''8[( c''8) c''8( bes'8) ] |
        bes'8[( a'8) a'8( g'8) ] |
    }
    \alternative {
        { 
        < g' bes' >2 |
        \tuplet 3/2 {   d''8[ cis''8 bes'8 ] } \tuplet 3/2 {   bes'8[ a'8 g'8 ] } |
        }
        {
            g'4.   a'16[ bes'16 ] | g'4. r8 |
        }
    }
}

pianonotessectionc = {
    \repeat volta 2 {
        < a' a'' >8[ < g' g'' >8 ] < fis' fis'' >4^> |
        < fis' fis'' >8[ < ees' ees'' >8 ] < d' d'' >4_> |
        d''8[ g''8 fis''8 g''8 ] |

        < fis'' a'' >8 r8 < fis'' a'' d''' >8^> r8 |
        a''8[ g''8 ] fis''4^> |
        fis''8[ ees''8 ] d''4^> |
    }
    \alternative {
        {
            ees''8[ d''8 c''8 g''8 ] |
            < fis' a' d'' >4. r8 |
        }
        {
            ees''8[ d''8 c''8 g''8 ] |
            < fis' a' d'' >4. r8 |
        }
    }
}

pbassslowintro = {
    R2*8 | \breakSI
}

pbassfastintro = {
    R2*2 |
    \repeat unfold 2 {
        e,4\3 e,4\3 |
        e,4\3 s4 |
    }
    e,4\3 b,,4\4 |
    e,4\3 b,,4\4 |
    e,4\3 e,4\3 |
    f,4\3 e,4\3 |
    e,4\3 e,4\3 |
    d,4\3 e,4\3 |
    e,4\3 b,4\2 |
    e,4\3 s4 |
}

pbasssectiona = {
    \repeat volta 2 {
        % coded for Bb instruments.
        % measure 23 e chord (Bb instrument)
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 27 e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 31 d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |
        d,4\3 a,,4\4 |
        d,4\3 a,,4\4 |

        % e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 39 d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |
    }
    \alternative {
        {
            e,4\3 b,,4\2 |
            e,4\3 b,,4\2 |
        }
        {
            e,4\3 b,,4\4 |
            e,4\3 fis,8\3 gis,8\2 |
        }
    }
}

pbasssectionb = {
    \repeat volta 2 {
        % measure 45 a:min chord (Bb instruments)
        a,4\2 e,4\3 |
        a,4\2 e,4\3 |
        a,,4\4 e,4\3 |
        a,4\2 e,4\3 |

        % measure 49 a:min chord
        a,4\2 e,4\3 |
        a,4\2 g,8\2 f,8\3 |
        % e chord
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |

        % measure 53 e chord
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |
        % d:min chord
        d,4\3 f,4\2 |
        d,4\3 a,4\2 |

        % measure 57 e chord
        e,4\3 b,,4\4 |
        e,4\3 fis,8\3 gis,8\2 |
    }
    \alternative {
        {
            a,4\2 e,4\3 |
            a,4\2 e,4\3 |
        }
        {
            a,4\2 e,4\3 |
            a,4\2 g,8\2 f,8\3 |
        }
    }
}

pbasssectionc = {
    \repeat volta 2 {
        % measure 63
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |
        e,4\3 b,,4\4 |
        e,4\3 b,4\2 |

        % measure 67
        e,4\3 b,,4\4 |
        e,4\3 b,,8 a,,8 |
    }
    \alternative {
        {
            d,4 a,,4 |
            e,8 gis,8 e,8 b,,8 |
        }
        {
            d,4 a,,4 |
            e,2 |
        }
    }
}

pianobassnotes = \transpose c bes {
    \pbassslowintro
    \pbassfastintro
    \pbasssectiona
    \pbasssectionb
    \pbasssectionc
}

pianobassnotesmidi = \transpose c bes {
    \preintro
    \metronomeextra
    \restslowintro
    \bassfastintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionc
}

%-------------------------------------------------

pianorightuppernotes = {
    \key g \minor
    \time 2/4

    \pianonotesintro
    \pianonotessectiona
    \pianonotessectionb
    \pianonotessectionc
}

pianorightlowernotes = {
}

pianoleftuppernotes = {
    \key g \minor
    \time 2/4
    \pianobassnotes
}

pianoleftlowernotes = {
}

pianorightnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \metronomeextra
    \pianonotesintro
    \pianonotessectiona
    \pianonotessectionb
    \pianonotessectionc
    \pianonotessectiona
    \pianonotessectionb
    \pianonotessectionc
}

pianoleftnotesmidi = {
    \key g \minor
    \time 2/4
    \pianobassnotesmidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    hhc4\p hhc4 |
    hhc4 hhc4 |
}

drumshighslowintro = \drummode {
    R2*8 |
}

drumshighfastintro = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 2 {
        hhc4 hhc4 |
    }
    \repeat percent 2 {
        sna8 hhc16 hhc16 sna8 hhc16 hhc16 |
        sna8 r8 r4 |
    }
    \repeat percent 7 { sna8 hhc16 hhc16 sna8 hhc16 hhc16 | }
    sna8 r8 r4 |
}

drumshighintro = \drummode {
    \drumshighslowintro
    \drumshighfastintro
}

drumshighsectiona = \drummode {
    \repeat volta 2 {
        \repeat percent 8 {
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
        hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
    }
    \alternative {
        {
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
        {
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
    }
}

drumshighsectionb = \drummode {
    \hideDynamics
    \repeat volta 2 {
        % measure 53
        \repeat percent 6 {
             \hideDynamics
             wbh8\ff wbh16 wbh16 wbh8 wbh8 ~ wbh8 wbh8 wbh8 wbh8 |
        }
        % measure 65
        wbh8 wbh16 wbh16 wbh8 wbh8 ~ wbh8 wbh8 wbh8 wbh8 |
    }
    \alternative {
        {
            wbh8 wbh16 wbh16 wbh8 wbh8 ~ wbh8 wbh8 wbh8 wbh8 |
        }
        {
            wbh8 wbh16 wbh16 wbh8 wbh8 ~ wbh8 wbh8 wbh8 wbh8 |
        }
    }
}

drumshighsectionbNOT = \drummode {
    \repeat volta 2 {
        % measure 53
        \repeat percent 2 {
            \hideDynamics 
            sna8\ff sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
        }
        % measure 57
        \repeat percent 2 {
            sna8 sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
        }
        % measure 61
        \repeat percent 2 {
            sna8 sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
        }
        % measure 65
        sna8 sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
    }
    \alternative {
        {
            sna8 sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
        }
        {
            sna8 sna16 sna16 sna8 sna8 ~ sna8 sna8 sna8 sna8 |
        }
    }
}

drumshighsectionc = \drummode {
    \repeat volta 2 {
        \repeat percent 3 {
            \hideDynamics 
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
    }
    \alternative {
        {
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
        {
            hhc8 [ sna16 sna16 ] sna8 [ hhc8 ] ~ hhc8 [ sna8 ] hhc8 [ sna8 ] |
        }
    }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighintro
    \stemUp
    \dynamicUp
    \drumshighsectiona
    \stemUp
    \dynamicUp
    \drumshighsectionb
    \stemUp
    \dynamicUp
    \drumshighsectionc
}

drumshighmidi = \drummode {
    \stemUp
    \dynamicUp
    \preintro
    \drumshighextra
    \drumshighslowintro
    \drumshighfastintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
}

drumslowextra = \drummode {
    bda4 r4 |
    bda4 r4 |
}

drumslowslowintro = \drummode {
    R2*8 |
}

drumslowfastintro = \drummode {
    \repeat percent 2 { bda4 bda4 | }
    \repeat percent 2 { bda4 bda4 | bda4 bda4 | }
    \repeat percent 7 { bda4 bda4 | }
    bda4 bda4 |
}

drumslowintro = \drummode {
    \drumslowslowintro
    \drumslowfastintro
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        \repeat percent 8 { bda4. bda8 ~ bda4 bda4 | }
        bda4. bda8 ~ bda4 bda4 |
    }
    \alternative {
        { bda4. bda8 ~ bda4 bda4 | }
        { bda4. bda8 ~ bda4 bda4 | }
    }
}

drumslowsectionb = \drummode {
    \repeat volta 2 {
        \repeat percent 6 { bda4. bda8 ~ bda4 bda4 | }
        bda4. bda8 ~ bda4 bda4 |
    }
    \alternative {
        { bda4. bda8 ~ bda4 bda4 | }
        { bda4. bda8 ~ bda4 bda4 | }
    }
}

drumslowsectionc = \drummode {
    \repeat volta 2 {
        \repeat percent 3 { bda4. bda8 ~ bda4 bda4 | }
    }
    \alternative {
        { bda4. bda8 ~ bda4 bda4 | }
        { bda4. bda8 ~ bda4 bda4 | }
    }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

drumslowmidi = \drummode {
    \preintro
    \drumslowextra
    \drumslowslowintro
    \drumslowfastintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
}

tenorharmony = \transpose c' bes { \accompaniment }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2:7 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

previewnotes = \transpose c c' {
    \key g \minor
    \time 2/4
    d'8 c' b c' |
    d'4 ees' |
    d'2 ~ |
    d'2 |
    fis'8 ees' d' ees' |
    fis'4 g' |
    a'2 ~ |
    a'2 |
}

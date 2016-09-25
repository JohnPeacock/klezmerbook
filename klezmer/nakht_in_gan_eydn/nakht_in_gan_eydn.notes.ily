\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% arrangement:
%   flute -            high melody scored in C
%   clarinet -         high melody scored in Bb
%   alto sax -         slow harmony in Eb
%   tenor sax -        quicker harmony in Bb
%   trumpet -          low melody in Bb (or can play tenor part)
%   trombone -         harmony
%   violin -           low melody in C
%   bass -             1st and 5ths walking in 2
%   guitar -           up beat chords in 2
%   piano -            down beat left hand octaves, up beat right hand chords
%
% variations:
%   clarinet drops into tenor harmony, violin plays upper melody,
%       trumpet plays lower
%   layer a flute into melody above violin
%
% possible parts to work in:
%   flute harmony 3rd below violin (never done this before).
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

spaceextra = { s2 | s2 | }

bandmintro = {
    s2 |
}

bandmsectionaa = {
    \markSA \positionSA
    s2 | \breakAone
    s2 | \breakAtwo
    s2 | \breakAtre
    s2 | \breakAfor
    s2 | \breakAfiv
    s2 | \breakAsix
    s2 | \breakAsev
    s2 | \breakAeit
    s2 | \breakAnin
    s2 | \breakAten
    s2 | \breakAelv
    s2 | \breakAtwl
    \markTC \positionTC
    \bar "||"
}

bandmsectionab = {
    s2 | \breakAtht
    s2 | \breakAfrt
}

bandmsectionac = {
    s2 | \breakAfft
    s2 | \breakAsxt
}

bandmsectionad = {
    s2 | \breakAsvt
    s2 |
}

bandmsectiona = {
    \repeat volta 2 { \bandmsectionaa \bandmsectionab }
    \alternative { { \bandmsectionac } { \bandmsectionad } }
    \bar ".|:-||"
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s2 | \breakBone
        s2 | \breakBtwo
        s2 | \breakBtre
        s2 | \breakBfor
        s2 | \breakBfiv
        s2 | \breakBsix
        s2 | \breakBsev
        s2 | \breakBeit
        s2 | \breakBnin
        s2 | \breakBten
        s2 | \breakBelv
        s2 | \breakBtwl
    }
    \alternative {
        {
            s2 | \breakBtht
            s2 | \breakBfrt
            s2 | \breakBfft
            s2 | \breakBsxt
        }
        {
            s2 | \breakBsvt
            s2 | \breakBett
            s2 | \breakBnnt
            s2 |
        }
    }
    \bar ".|:-||"
    \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s2 | \breakCone
        s2 | \breakCtwo
        s2 | \breakCtre
        s2 | \breakCfor
        s2 | \breakCfiv
        s2 | \breakCsix
        s2 | \breakCsev
        s2 | \breakCeit
        s2 | \breakCnin
        s2 | \breakCten
        s2 | \breakCelv
        s2 | \breakCtwl
        s2 | \breakCtht
        s2 | \breakCfrt
    }
    \alternative {
        {
            s2 \breakCfft |
            s2 \breakCsxt |
        }
        {
            s2 \breakCsvt |
            s2 |
        }
    }
    \markDS \positionDS
    \bar "||"
    \breakC
}

blankmeasure = { \stopStaff s2 \startStaff \breakBL }

bandmcoda = {
    \markCC \positionCC s2 | \breakCDone
    s2 | \breakCDtwo
    s2 | \breakCDtre
    s2
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \blankmeasure
    \bandmcoda
    \bar "|."
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%-------------------------------------------------

preintro = { s2 | }

metronomeextra = { s2 | s2 | }

metronome = \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 115
    \metronomeextra
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \tempo 4 = 130
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \tempo 4 = 135
    \bandmsectionaa
    \tempo 4 = 130
    \bandmcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody in Bb

melodyintro = { r8 b'8 [ e''8 fis''8 ] | }

melodysectionaa = {
    g''4 fis''8\prall e''8 |
    g''4 fis''8\prall e''8 |
    fis''8 g''8 e''4 |
    r8 d''8 g''8 a''8 |

    b''4 a''8\prall g''8 |
    b''4 a''8\prall g''8 |
    a''8 b''8 g''4 |
    r8 d''8 g''8 b''8 |

    d'''4 c'''4 |
    b''4\prall a''8 g''8 |
    g''8 a''8 g''8 fis''8 |
    e''4. d''8 |
}

melodysectionab = {
    g''8 a''4 g''8 | b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
}

melodysectionac = { e''2 | r8 b'8 e''8 fis''8 | }

melodysectionad = { e''2 ~ | e''4 r8 b''8 | }

melodysectiona = {
    \repeat volta 2 { \melodysectionaa \melodysectionab }
    \alternative { { \melodysectionac } { \melodysectionad } }
}

melodysectionb = {
    \repeat volta 2 {
        b''8 e'''8 e'''8 e'''8 |
        e'''8 b''8 g'''16 fis'''16 e'''8 |
        dis'''8 e'''8 c'''8 b''8 |
        a''4. a''8\prall |

        gis''8 a''8 b''8 c'''8 |
        dis'''8 e'''8 dis'''8\prall c'''8 |
        b''2 ~ |
        b''8 r8 \breathe d''4 |

        d''8 g''8 g''8 b''8 |
        d'''8 d'''8 c'''8 b''8 |
        e'''8 a''8 a''8 a''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        {
            e''4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 g''8 |
            a''8 a''8 g''8 a''8 |
            b''2 |
            e'''4\trill r8 b''8 |
        }
        {
            e''4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 g''8 |
            a''8 a''8 g''8 fis''8 |
            e''2 |
            r8 b''8 c'''8 b''8  |
        }
    }
}

melodysectionc = {
    \repeat volta 2 {
        e'''2 |
        r8 b''8 g''8 fis''8 |
        e''2 |
        r8 b''8 c'''8 b''8 |

	\glissnogap g'''2*1/2 \glissando \glissnogap \inote c'''4 \glissando |
        \tuplet 3/2 { g'''8 fis'''8 e'''8 } \tuplet 3/2 { dis'''8 e'''8 fis'''8 } |
        e'''2 |
        r8 d'''8 cis'''8 d'''8 |

        e'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 c'''8 b''8 |
        cis'''8 d'''8 c'''8 b''8 |
        a''4.\prall g''8 |

	g''8 \glissnogap a''4*1/2 \glissando \glissnogap \inote e''4*1/2 \glissando g''8 |
        b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
    }
    \alternative {
        { e''2 | r8 b''8 c'''8 b''8 | } { e''2 | r8 b'8 e''8 fis''8 | }
    }
}

melodycoda = {
    g''8 a''4 g''8 |
    b''16 [ b''16 ais''16 b''16 ] c'''16 [ cis'''16 d'''16 dis'''16 ] |
    e'''4 b''4 |
    e''4 r4
}

melody = \transpose c c, {
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \blankmeasure
    \melodycoda
}

melodymidi = {
    \preintro
    \spaceextra
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectionaa
    \melodycoda
}

clarinetfortenornotes = {
    \key g \major
    \time 2/4
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% High melody in C

fluteintro = { r8 a'8 [ d''8 e''8 ] | }

flutesectionaa = {
    f''4 e''8\prall d''8 |
    f''4 e''8\prall d''8 |
    e''8 f''8 d''4 |
    r8 c''8 f''8 g''8 |

    a''4 g''8\prall f''8 |
    a''4 g''8\prall f''8 | g''8 a''8 f''4 |
    r8 c''8 f''8 a''8 |
    c'''4 bes''4 |

    a''4\prall g''8 f''8 |
    f''8 g''8 f''8 e''8 |
    d''4. c''8 |
}

flutesectionab = {
    f''8 g''4 f''8 | a''16 [ g''16 f''8 ] f''16 [ e''16 d''8 ] |
}

flutesectionac = { d''2 | r8 a'8 d''8 e''8 | }

flutesectionad = { d''2 ~ | d''4 r8 a''8 | }

flutesectiona = {
    \repeat volta 2 { \flutesectionaa \flutesectionab }
    \alternative { { \flutesectionac } { \flutesectionad } }
}

flutesectionb = {
    \repeat volta 2 {
        a''8 d'''8 d'''8 d'''8 |
        d'''8 a''8 f'''16 e'''16 d'''8 |
        cis'''8 d'''8 bes''8 a''8 |
        g''4. g''8\prall |

        fis''8 g''8 a''8 bes''8 |
        cis'''8 d'''8 cis'''8\prall bes''8 |
        a''2 ~ |
        a''8 r8 \breathe c''4 |

        c''8 f''8 f''8 a''8 |
        c'''8 c'''8 bes''8 a''8 |
        d'''8 g''8 g''8 g''8 |
        g''8 a''16 g''16 f''8 e''8 |
    }
    \alternative {
        {
            d''4 \grace { e''16 } a''8 f''8 |
            g''8 g''8 f''8 g''8 |
            a''2 |
            d'''4\trill r8 a''8 |
        }
        {
            d''4 \grace { e''16 } a''8 f''8 |
            g''8 g''8 f''8 e''8 |
            d''2 |
            r8 a''8 bes''8 a''8  |
        }
    }
}

flutesectionc = {
    \repeat volta 2 {
        d'''2 |
        r8 a''8 f''8 e''8 |
        d''2 |
        r8 a''8 bes''8 a''8 |

        f'''2-\trill |
        \tuplet 3/2 { f'''8 e'''8 d'''8 } \tuplet 3/2 { cis'''8 d'''8 e'''8 } |
        d'''2 |
        r8 c'''8 b''8 c'''8 |

        d'''8 ees'''8 d'''8 c'''8 |
        b''8 c'''8 bes''8 a''8 |
        b''8 c'''8 bes''8 a''8 |
        g''4.\prall f''8 |

        f''8 g''4 f''8 |
        a''16 [ g''16 f''8 ] f''16 [ e''16 d''8 ] |
    }
    \alternative {
        { d''2 | r8 a''8 bes''8 a''8 | }
        { d''2 | r8 a'8 d''8 e''8 | }
    }
}

flutecoda = {
    f''8 g''4 f''8 |
    a''16 [ a''16 gis''16 a''16 ] bes''16 [ b''16 c'''16 cis'''16 ] |
    d'''4 a''4 |
    d''4 r4
}

%-------------------------------------------------

flutenotes = \transpose c c {
    \key f \major
    \time 2/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \blankmeasure
    \flutecoda
}

flutenotesmidi = \transpose c c {
    \key f \major
    \time 2/4
    \preintro
    \spaceextra
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectionaa
    \flutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    r8 b'8 [ e''8 fis''8 ] |
}

clarinetsectionaa = {
    g''4 fis''8\prall e''8 |
    g''4 fis''8\prall e''8 |
    fis''8 g''8 e''4 |
    r8 d''8 g''8 a''8 |

    b''4 a''8\prall g''8 |
    b''4 a''8\prall g''8 |
    a''8 b''8 g''4 |
    r8 d''8 g''8 b''8 |

    d'''4 c'''4 |
    b''4\prall a''8 g''8 |
    g''8 a''8 g''8 fis''8 |
    e''4. d''8 |
}

clarinetsectionab = {
    g''8 a''4 g''8 | b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
}

clarinetsectionac = { e''2 | r8 b'8 e''8 fis''8 | }

clarinetsectionad = { e''2 ~ | e''4 r8 b''8 | }

clarinetsectiona = {
    \repeat volta 2 { \clarinetsectionaa \clarinetsectionab }
    \alternative { { \clarinetsectionac } { \clarinetsectionad } }
}

clarinetsectionb = {
    \repeat volta 2 {
        \startOctVA
	\set Staff.ottavation = #"8va. optional"
        b''8 e'''8 e'''8 e'''8 |
        e'''8 b''8 g'''16 fis'''16 e'''8 |
        dis'''8 e'''8 c'''8 b''8 |
        a''4. a''8\prall |

        gis''8 a''8 b''8 c'''8 |
        dis'''8 e'''8 dis'''8\prall c'''8 |
        b''2 ~ |
        b''8 r8 \stopOctVA \breathe < d' d'' >4 |

        < d' d'' >8 < g' g'' >8 < g' g'' >8 < b' b'' >8 |
        < d'' d''' >8 < d'' d''' >8 < c'' c''' >8 < b' b'' >8 |
        < e'' e''' >8 < a' a'' >8 < a' a'' >8 < a' a'' >8 |
        < a' a'' >8 < b' b'' >16 < a' a'' >16 < g' g'' >8 < fis' fis'' >8 |
    }
    \alternative {
        {
            < e' e'' >4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 < g' g'' >8 |
            < a' a'' >8 < a' a'' >8 < g' g'' >8 < a' a'' >8 |
            < b' b'' >2 |
            < e'' e''' >4\trill r8 < b' b'' >8 |
        }
        {
            < e' e'' >4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 < g' g'' >8 |
            < a' a'' >8 < a' a'' >8 < g' g'' >8 < fis' fis'' >8 |
            < e' e'' >2 |
            r8 < b' b'' >8 < c'' c''' >8 < b' b'' >8  |
        }
    }
}

clarinetsectionc = {
    \startOctVA
    \set Staff.ottavation = #"8va. optional"
    \repeat volta 2 {
        e'''2 |
        r8 b''8 g''8 fis''8 |
        e''2 |
        r8 b''8 c'''8 b''8 |

        \glissnogap g'''2*1/2 \glissando \glissnogap \inote c'''4 \glissando |
        \tuplet 3/2 { g'''8 fis'''8 e'''8 } \tuplet 3/2 { dis'''8 e'''8 fis'''8 } |
        e'''2 |
        r8 d'''8 cis'''8 d'''8 |

        e'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 c'''8 b''8 |
        cis'''8 d'''8 c'''8 b''8 |
        a''4.\prall g''8 |

        g''8 \glissnogap a''4*1/2 \glissando \glissnogap \inote e''4*1/2 \glissando g''8 |
        b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
    }
    \alternative {
        { e''2 | r8 b''8 c'''8 b''8 | } { e''2 | r8 b'8 e''8 fis''8 | }
    }
    \stopOctVA
}

clarinetcoda = {
    g''8 a''4 g''8 |
    b''16 [ b''16 ais''16 b''16 ] c'''16 [ cis'''16 d'''16 dis'''16 ] |
    e'''4 b''4 |
    e''4 r4
}

clarinetnotes = {
    \key g \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \blankmeasure
    \clarinetcoda
}

clarinetnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \spaceextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectionaa
    \clarinetcoda
}

melodyforaltosectionb = {
    \repeat volta 2 {
        b''8 e'''8 e'''8 e'''8 |
        e'''8 b''8 g'''16 fis'''16 e'''8 |
        dis'''8 e'''8 c'''8 b''8 |
        a''4. a''8\prall |

        gis''8 a''8 b''8 c'''8 |
        dis'''8 e'''8 dis'''8\prall c'''8 |
        b''2 ~ |
        b''8 r8 \breathe d''4 |

        d''8 g''8 g''8 b''8 |
        d'''8 d'''8 c'''8 b''8 |
        e'''8 a''8 a''8 a''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        {
            e''4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 g''8 |
            a''8 a''8 g''8 a''8 |
            b''2 |
            e'''4\trill r8 b''8 |
        }
        {
            e''4*7/8 \glissnogap \inote fis''4*1/8 \glissando b''8 g''8 |
            a''8 a''8 g''8 fis''8 |
            e''2 |
            r8 b''8 c'''8 b''8  |
        }
    }
}

melodyforaltosectionc = {
    \repeat volta 2 {
        e'''2 |
        r8 b''8 g''8 fis''8 |
        e''2 |
        r8 b''8 c'''8 b''8 |

        \glissnogap g'''2*1/2 \glissando \glissnogap \inote c'''4 \glissando |
        \tuplet 3/2 { g'''8 fis'''8 e'''8 } \tuplet 3/2 { dis'''8 e'''8 fis'''8 } |
        e'''2 |
        r8 d'''8 cis'''8 d'''8 |

        e'''8 f'''8 e'''8 d'''8 |
        cis'''8 d'''8 c'''8 b''8 |
        cis'''8 d'''8 c'''8 b''8 |
        a''4.\prall g''8 |

        g''8 \glissnogap a''4*1/2 \glissando \glissnogap \inote e''4*1/2 \glissando g''8 |
        b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
    }
    \alternative {
        { e''2 | r8 b''8 c'''8 b''8 | } { e''2 | r8 b'8 e''8 fis''8 | }
    }
}

clarinetforaltonotes = \transpose ees bes, {
    \key g \major
    \time 2/4
    \clarinetintro
    \clarinetsectiona
    \melodyforaltosectionb
    \melodyforaltosectionc
    \blankmeasure
    \clarinetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmony 1 in Eb

altosaxintro = { r2 | }

altosaxsectionaa = {
    r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 a'8-> g'8-> e'8-> |

    a'2-- | fis'2-- | a'4 d'4 | r8 a'8 r8 a'8 |

    r8 a'8 r8 a'8 | r8 a'8 r8 fis'8 | r8 e'8 r8 e'8 | r8 d'8 r8 d'8 |
}

altosaxsectionab = { fis''2 | e''2 | }

altosaxsectionac = { r2 | r2 | }

altosaxsectionad = { r2 | r2 | }

altosaxsectiona = {
    \repeat volta 2 { \altosaxsectionaa \altosaxsectionab }
    \alternative { { \altosaxsectionac } { \altosaxsectionad } }
}

altosaxsectionb = {
    \repeat volta 2 {
        r8 d''8 r8 d''8 | r8 d''8 r8 d''8 | dis''2 | r8 e''8 r8 e''8 |

        r8 b'8 r8 b'8 | r8 b'8 r8 b'8 |
        fis'8-> ais'8-> cis''8-> ais'8-> | fis'8-^ r8 a'4-- |

        r8 fis'8 r8 fis'8 | r8 fis'8 r8 fis'8 | r8 e'8 r8 e'8 | r8 e'8 r8 e'8 |
    }
    \alternative {
         {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
	    r8 d''8 cis''8 b'8 | g'8 fis'8 d'8 cis'8 |
        }
        {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
            r8 g'8 fis'8 d'8 | b8 r8 r4 |
        }
    }
}

altosaxsectionc = {
    \repeat volta 2 {
        b'4 r8 b'8 ~ | b'4 r4 | b'4 r8 b'8 ~ | b'4 r4 |

        d''4 r8 d''8 ~ |
        \tuplet 3/2 { d''8 cis''8 b'8 } \tuplet 3/2 { ais'8 b'8 cis''8 } |
        b'4 r4 | b'2 |

        r2 | r2 | r2 | r2 | r2 | r2 |
    }
    \alternative { { r2 | r8 fis'8 g'8 fis'8 | } { r2 | r2 | } }
}

altosaxcoda = { fis''2 | e''2 | d''4 cis''4 | d''4 r4 | }

%-------------------------------------------------

altosaxnotes = {
    \key d \major
    \time 2/4

    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \blankmeasure
    \altosaxcoda
}

altosaxnotesmidi = {
    \key d \major
    \time 2/4
    \preintro
    \spaceextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectionaa
    \altosaxcoda
}

altosaxmelodynotes = \transpose d' a { \clarinetnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoforfluteintro = { r2 | }

altoforflutesectionaa = {
    r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 a'8-> g'8-> e'8-> |

    a'2-- | fis'2-- | a'4 d'4 | r8 a'8 r8 a'8 |

    r8 a'8 r8 a'8 | r8 a'8 r8 fis'8 | r8 e'8 r8 e'8 | r8 d'8 r8 d'8 |
}

altoforflutesectionab = { fis''2 | e''2 | }

altoforflutesectionac = \transpose ees bes { r8 c''8 b'8 g'8 | e'4 r4 | }

altoforflutesectionad = \transpose ees bes { r8 c''8 b'8 g'8 | e'4 r4 | }

altoforflutesectiona = {
    \repeat volta 2 { \altoforflutesectionaa \altoforflutesectionab }
    \alternative { { \altoforflutesectionac } { \altoforflutesectionad } }
}

altoforflutesectionb = {
    \repeat volta 2 {
        r8 d''8 r8 d''8 | r8 d''8 r8 d''8 | dis''2 | r8 e''8 r8 e''8 |

        r8 b'8 r8 b'8 | r8 b'8 r8 b'8 |
        fis'8-> ais'8-> cis''8-> ais'8-> | fis'8-^ r8 a'4-- |

        r8 fis'8 r8 fis'8 | r8 fis'8 r8 fis'8 | r8 e'8 r8 e'8 | r8 e'8 r8 e'8 |
    }
    \alternative {
        {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
	    r8 d''8 cis''8 b'8 | g'8 fis'8 d'8 cis'8 |
        }
        {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
            r8 g'8 fis'8 d'8 | b8 r8 r4 |
        }
    }
}

altoforflutesectionc = {
    \repeat volta 2 {
        b'4 r8 b'8 ~ | b'4 r4 | b'4 r8 b'8 ~ | b'4 r4 |

        d''4 r8 d''8 ~ |
        \tuplet 3/2 { d''8 cis''8 b'8 } \tuplet 3/2 { ais'8 b'8 cis''8 } |
        b'4 r4 | b'2 |

        \transpose ees bes {
            g'8 b'8 g'8 b'8 |
            g'8 b'8 g'8 b'8 |
            g'8 b'8 a'8 b'8 |
            a'8 c''8 b'8 c''8 |
            b'8 g'8 fis'8 g'8 |
            fis'8 b'8 a'8 b'8 |
        }
    }
    \alternative {
        { \transpose ees bes { r8 c''8 b'8 g'8 | e'4 r4 | } }
        { \transpose ees bes { r8 c''8 b'8 g'8 | e'4 r4 | } }
    }
}

altoforflutecoda = { fis''2 | e''2 | d''4 cis''4 | d''4 r4 | }

%-------------------------------------------------

altoforflutenotes = \transpose c ees {
    \key d \major
    \time 2/4
    \altoforfluteintro
    \altoforflutesectiona
    \altoforflutesectionb
    \altoforflutesectionc
    \blankmeasure
    \altoforflutecoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoflutenotes = \transpose g c {
    \flutenotes
}

altoforaltoflutesectionb = {
    \repeat volta 2 {
        r8 d''8 r8 d''8 | r8 d''8 r8 d''8 | dis''2 | r8 e''8 r8 e''8 |

        r8 b'8 r8 b'8 | r8 b'8 r8 b'8 |
        fis'8-> ais'8-> cis''8-> ais'8-> | fis'8-^ r8 a'4-- |

        r8 fis'8 r8 fis'8 | r8 fis'8 r8 fis'8 | r8 e'8 r8 e'8 | r8 e'8 r8 e'8 |
    }
    \alternative {
        {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
	    r8 d'''8 cis'''8 b''8 | g''8 fis''8 d''8 cis''8 |
        }
        {
            r8 d'8 r8 fis'8 | r8 fis'8 r8 fis'8 |
            r8 g''8 fis''8 d''8 | b'8 r8 r4 |
        }
    }
}

altoforaltoflutenotes = \transpose c ees {
    \key d \major
    \time 2/4
    \altoforfluteintro
    \altoforflutesectiona
    \altoforaltoflutesectionb
    \altoforflutesectionc
    \blankmeasure
    \altoforflutecoda
}

altoflutealtoharmony = \transpose g c {
    \altoforaltoflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmony 2 in Bb

tenorsaxintro = { r2 | }

tenorsaxsectionaa = {
    r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 e''8-> d''8-> b'8-> |

    g'8-> a'8 r8 b'8 | r8 b'8 r8 b'8 | r8 b'8 r8 b'8 | r8 a'8 r8 a'8 |

    d''4 c''4 | b'4 a'8 g'8 | g'8 a'8 g'8 fis'8 | e'4 r4 |
}

tenorsaxsectionab = {
    dis''8 fis''8 ~ fis''8 fis''8 | dis''8 fis''8 ~ fis''8 fis''8 |
}

tenorsaxsectionac = { r8 c''8 b'8 g'8 | e'4 r4 | }

tenorsaxsectionad = { r8 c''8 b'8 g'8 | e'4 r4 | }

tenorsaxsectiona = {
    \repeat volta 2 { \tenorsaxsectionaa \tenorsaxsectionab }
    \alternative { { \tenorsaxsectionac } { \tenorsaxsectionad } }
}

tenorsaxsectionb = {
    \repeat volta 2 {
        r8 e''8 r8 e''8 | r8 e''8 r8 e''8 | d''2  | r8 e''8 r8 e''8 |

        r8 c''8 r8 c''8 | r8 c''8 r8 c''8 | b'8-> dis''8-> fis''8-> dis''8-> |
        b'8-^ r8 d''4-- |

        r8 g'8 r8 g'8 | r8 g'8 r8 gis'8 | a'8 c''8 b'8 c''8 |
        a'8 c''8 b'8 a'8 |
    }
    \alternative {
        {
            g'8 b'8 a'8 g'8 | fis'8 dis'8 ~ dis'8 dis'8 |
            r8 g''8 fis''8 e''8 | c''8 b'8 g'8 fis'8 |
        }
        {
            g'8 b'8 a'8 g'8 | fis'8 dis'8 ~ dis'8 dis'8 |
            r8 c''8 b'8 g'8 | e'8 r8 r4 |
        }
    }
}

tenorsaxsectionc = {
    \repeat volta 2 {
        b'4 r8 b'8 ~ | b'4 r4 | b'4 r8 b'8 ~ | b'4 r4 |

        e''4 r8 g''8 ~ |
        \tuplet 3/2 { g''8 fis''8 e''8 } \tuplet 3/2 { dis''8 e''8 fis''8 } |
        e''4 r4 | gis'2 |

        g'8 b'8 g'8 b'8 | g'8 b'8 g'8 b'8 |
        g'8 b'8 a'8 b'8 | a'8 c''8 b'8 c''8 |

        b'8 g'8 fis'8 g'8 | fis'8 b'8 a'8 b'8 |
    }
    \alternative {
        { r8 c''8 b'8 g'8 | e'4 r4 | } { r8 c''8 b'8 g'8 | e'4 r4 | }
    }
}

tenorsaxcoda = {
    dis''8 fis''8 ~ fis''8 fis''8 | dis''8 fis''8 ~ fis''8 fis''8 |
    e''4 dis''4 | e''4 r4 |
}

%-------------------------------------------------

tenorsaxnotes = {
    \key g \major
    \time 2/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \blankmeasure
    \tenorsaxcoda
}

tenorsaxnotesmidi = {
    \key g \major
    \time 2/4
    \preintro
    \spaceextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectionaa
    \tenorsaxcoda
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes, { \tenorforothersnotes }
tenorforviolinnotes = \transpose c bes, { \tenorforothersnotes }
tenorforflutenotes = \transpose c bes, { \tenorforothersnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melody, played in low range, in Bb

trumpetintro = { r8 b'8 [ e''8 fis''8 ] |
}

trumpetsectionaa = {
    g''4 fis''8\trill e''8 |
    g''4 fis''8\trill e''8 |
    fis''8 g''8 e''4 |
    r8 d''8 g''8 a''8 |

    b''4 a''8\trill g''8 |
    b''4 a''8\trill g''8 |
    a''8 b''8 g''4 |
    r8 d''8 g''8 b''8 |

    d'''4 c'''4 |
    b''4\trill a''8 g''8 |
    g''8 a''8 g''8 fis''8 |
    e''4. d''8 |
}

trumpetsectionab = {
    g''8 a''4 g''8 | b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
}

trumpetsectionac = { e''2 | r8 b'8 e''8 fis''8 | }

trumpetsectionad = { e''2 ~ | e''4 r8 b''8 | }

trumpetsectiona = {
    \repeat volta 2 { \trumpetsectionaa \trumpetsectionab }
    \alternative { { \trumpetsectionac } { \trumpetsectionad } }
}

trumpetsectionb = {
    \repeat volta 2 {
        b''8 e'''8 e'''8 e'''8 |
        e'''8 b''8 g'''16 fis'''16 e'''8 |
        dis'''8 e'''8 c'''8 b''8 |
        a''4. a''8\trill |

        gis''8 a''8 b''8 c'''8 |
        dis'''8 e'''8 dis'''8\trill c'''8 |
        b''2 ~ |
        b''8 r8 \breathe d''4 |

        d''8 g''8 g''8 b''8 |
        d'''8 d'''8 c'''8 b''8 |
        e'''8 a''8 a''8 a''8 |
        a''8 b''16 a''16 g''8 fis''8 |
    }
    \alternative {
        {
            e''4 \acciaccatura { a''16 } b''8 g''8 |
            a''8 a''8 g''8 a''8 | b''2 | e'''4\trill r8 b''8 |
        }
        {
            e''4 \acciaccatura { a''16 } b''8 g''8 |
            a''8 a''8 g''8 fis''8 | e''2 | r8 b''8 c'''8 b''8  |
        }
    }
}

trumpetsectionc = {
    \repeat volta 2 {
        e'''2 | r8 b''8 g''8 fis''8 | e''2 | r8 b''8 c'''8 b''8 |

	g'''2\trill |
        \tuplet 3/2 { g'''8 fis'''8 e'''8 } \tuplet 3/2 { dis'''8 e'''8 fis'''8 } |
        e'''2 | r8 d'''8 cis'''8 d'''8 |

        e'''8 f'''8 e'''8 d'''8 | cis'''8 d'''8 c'''8 b''8 |
        cis'''8 d'''8 c'''8 b''8 | a''4.\prall g''8 |

        g''8 a''4 \acciaccatura { fis''16 } g''8 |
        b''16 [ a''16 g''8 ] g''16 [ fis''16 e''8 ] |
    }
    \alternative {
        { e''2 | r8 b''8 c'''8 b''8 | }
        { e''2 | r8 b'8 e''8 fis''8 | }
    }
}

trumpetcoda = {
    g''8 a''4 g''8 |
    b''16 [ b''16 ais''16 b''16 ] c'''16 [ cis'''16 d'''16 dis'''16 ] |
    e'''4 b''4 | e''4 r4
}

trumpetnotes = \transpose c' c {
    \key g \major
    \time 2/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \blankmeasure
    \trumpetcoda
}

trumpetnotesmidi = \transpose c' c {
    \key g \major
    \time 2/4
    \preintro
    \spaceextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectionaa
    \trumpetcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmony 3 in C (bass clef)

tromboneintro = { r2 | }

trombonesectionaa = {
    r8 f8 r8 f8 | r8 f8 r8 f8 | r8 f8 r8 f8 | r8 f8 r4 |

    f'2--\glissando | c'2--\glissando | f'4 f4 | r8 g8 r8 g8 |

    r8 a8 r8 g8 | r8 f8 r8 f8 | cis2 | d8 r8 r4 |
}

trombonesectionab = { a8 cis'4 cis'8 | a8 cis'4 cis'8 | }

trombonesectionac = { d'8 bes8 a8 f8 | d4 r4 | }

trombonesectionad = { d'8 bes8 a8 f8 | d4 r4 | }

trombonesectiona = {
    \repeat volta 2 { \trombonesectionaa \trombonesectionab }
    \alternative { { \trombonesectionac } { \trombonesectionad } }
}

trombonesectionb = {
    \repeat volta 2 {
        r8 a8 r8 a8 | r8 a8 r8 a8 | a2 | cis'8 d'8 b8 g8 |

        fis8 g8 a8 bes8 | cis'8 d'8 cis'8 bes8 | a2 | r2 |
        c2 ~ | c2 | d2 ~ | d2 |
    }
    \alternative {
        { r2 | r2 | r8 f'8 e'8 d'8 | bes8 a8 f8 e8 | }
        { r2 | r2 | r2 | r8 a8 bes8 a8 | }
    }
}

trombonesectionc = {
    \repeat volta 2 {
        r8 d8 f8 a8 | d'2 | r8 d'8 a8 f8 | d2 |

        r2 | r2 | r2 | r2 |

        \grace { \glissnogap \inote c'16 \glissando } f'2 |
        \grace { \glissnogap \inote c'16 \glissando } f'4*3/4 \glissnogap \inote c'4*1/4 \glissando f'4 |
        \grace { \glissnogap \inote c'16 \glissando } f'4*3/4 \glissnogap \inote c'4*1/4 \glissando f'4 |
        \grace { \glissnogap \inote c'16 \glissando } f'2 |

        r8 a8 r8 a8 | r8 a8 r8 a8 |
    }
    \alternative { { d'8 bes8 a8 f8 | d4 r4 | } { d'8 bes8 a8 f8 | d4 r4 | } }
}

trombonecoda = { a8 cis'4 cis'8 | a8 cis'4 cis'8 | d'4 a4 | d4 r4 }

trombonenotes = {
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \blankmeasure
    \trombonecoda
}

trombonemidinotes = {
    \preintro
    \spaceextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectionaa
    \trombonecoda
}

%-------------------------------------------------

trombonenotes = {
    \key f \major
    \time 2/4
    \trombonenotes
}

trombonenotesmidi = {
    \key f \major
    \time 2/4
    \trombonemidinotes
}

tromboneforothersnotes = { \trombonenotes }
tromboneforflutenotes = { \transpose c c'' { \tromboneforothersnotes } }
trombonefortrumpetnotes = { \transpose bes c'' { \tromboneforothersnotes } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = \transpose c' c {
    \key f \major
    \time 2/4
    \trombonenotes
}

euphoniumnotesmidi = \transpose c' c {
    \key f \major
    \time 2/4
    \trombonemidinotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Low melody in C

violinintro = { r8 a'8 [ d''8 e''8 ] | }

violinsectionaa = {
    f''4 e''8\prall d''8 |
    f''4 e''8\prall d''8 |
    e''8 f''8 d''4 |
    r8 c''8 f''8 g''8 |

    a''4 g''8\prall f''8 |
    a''4 g''8\prall f''8 |
    g''8 a''8 f''4 |
    r8 c''8 f''8 a''8 |

    c'''4 bes''4 |
    a''4\prall g''8 f''8 |
    f''8 g''8 f''8 e''8 |
    d''4. c''8 |
}

violinsectionab = {
    f''8 g''4 f''8 | a''16 [ g''16 f''8 ] f''16 [ e''16 d''8 ] |
}

violinsectionac = { d''2 | r8 a'8 d''8 e''8 | }

violinsectionad = { d''2 ~ | d''4 r8 a''8 | }

violinsectiona = {
    \repeat volta 2 { \violinsectionaa \violinsectionab }
    \alternative { { \violinsectionac } { \violinsectionad } }
}

violinsectionb = {
    \repeat volta 2 {
        a''8 d'''8 d'''8 d'''8 | d'''8 a''8 f'''16 e'''16 d'''8 |
        cis'''8 d'''8 bes''8 a''8 | g''4. g''8\prall |

        fis''8 g''8 a''8 bes''8 | cis'''8 d'''8 cis'''8\prall bes''8 |
        a''2 ~ | a''8 r8 c''4 |

        c''8 f''8 f''8 a''8 | c'''8 c'''8 bes''8 a''8 |
        d'''8 g''8 g''8 g''8 | g''8 a''16 g''16 f''8 e''8 |
    }
    \alternative {
        {
            d''4*7/8 \glissnogap \inote e''4*1/8 \glissando a''8 f''8 |
            g''8 g''8 f''8 g''8 | a''2 | d'''4\trill r8 a''8 |
        }
        {
            d''4*7/8 \glissnogap \inote e''4*1/8 \glissando a''8 f''8 |
            g''8 g''8 f''8 e''8 | d''2 | r8 a''8 bes''8 a''8  |
        }
    }
}

violinsectionc = {
    \repeat volta 2 {
        d'''2 | r8 a''8 f''8 e''8 | d''2 | r8 a''8 bes''8 a''8 |

        \glissnogap f'''2*1/2 \glissando \glissnogap \inote bes''4 \glissando |
        \tuplet 3/2 { f'''8 e'''8 d'''8 } \tuplet 3/2 { cis'''8 d'''8 e'''8 } |
        d'''2 | r8 c'''8 b''8 c'''8 |

        d'''8 ees'''8 d'''8 c'''8 | b''8 c'''8 bes''8 a''8 |
        b''8 c'''8 bes''8 a''8 | g''4.\prall f''8 |

        f''8 \glissnogap g''4*1/2 \glissando \glissnogap \inote d''4*1/2 \glissando f''8 |
        a''16 [ g''16 f''8 ] f''16 [ e''16 d''8 ] |
    }
    \alternative {
        { d''2 | r8 a''8 bes''8 a''8 | } { d''2 | r8 a'8 d''8 e''8 | }
    }
}

violincoda = {
    f''8 g''4 f''8 |
    a''16 [ a''16 gis''16 a''16 ] bes''16 [ b''16 c'''16 cis'''16 ] |
    d'''4 a''4 | d''4 r4 |
}

%-------------------------------------------------

violinnotes = \transpose c' c {
    \key f \major
    \time 2/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \blankmeasure
    \violincoda
}

violinnotesmidi = \transpose c' c {
    \key f \major
    \time 2/4
    \preintro
    \spaceextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectionaa
    \violincoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode { s2 }

chordletterssectionaa = \chordmode {
    d2:min | d2:min | d2:min | c2:7 |
    f2 | f2 | f2 | c2:7 |
    f2 | f2 | a2:7 | d2:min |
}

chordletterssectionab = \chordmode { a2:7 | a2:7 | }

chordletterssectionac = \chordmode { d2:min | d2:min | }

chordletterssectionad = \chordmode {
  \chordChangesOff d2:min \chordChangesOn | d2:min |
}

chordletterssectiona = \chordmode {
    \repeat volta 2 { \chordletterssectionaa \chordletterssectionab }
    \alternative { { \chordletterssectionac } { \chordletterssectionad } }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d2:min \chordChangesOn d2:min d2:7 g2:min |
        g2:min g2:min a2:7 a4:7 c4 f2 f2 g2:min g2:min |
    }
    \alternative {
        { d2:min a2:7 d2:min d2:min }
        { \chordChangesOff d2:min \chordChangesOn a2:7 d2:min d2:min }
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff d2:min \chordChangesOn d2:min d2:min d2:min
        d2:min d2:min d2:min d2 |
        f2 f2 f2 g2:min a2:7 a2:7
    }
    \alternative {
        { d2:min d2:min }
        { \chordChangesOff d2:min \chordChangesOn d2:min }
    }
}

chordletterscoda = \chordmode {
    a2:7 a2:7 d4:min a4:7 d4:min s4
}

chordletters = \chordmode {
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
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
altoflutechordletters = \transpose g c \chordletters

chordlettersmidi = \chordmode {
    \preintro
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectionaa
    \chordletterscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = {
    \key c \minor
    \time 4/4
}

guitarnotesmidi = {
    \key c \minor
    \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = { r2 | }

basssectionaa = {
    d'4\1 a4\2 |
    d'4\1 a4\2 |
    cis'4\1 d'4\1 |
    r8 c'8\1 bes8\2 g8\2 |
    f4\3 c4\4 |
    f4\3 c4\4 |
    e4\3 f4\3 |
    r8 c'8\1 a8\2 c'8\1 |
    f4\3 c4\4 |
    f4\3 c4\4 |
    a,4\4 cis4\3 |
    d4\3 a,4\4 |
}

basssectionab = {
    cis4\3 a,4\4 |
    cis4\3 a,4\4 |
}

basssectionac = {
    d8\3 bes8\2 a8\2 f8\3 |
    d4\3 a4\2 |
}

basssectionad = {
    d8\3 bes8\2 a8\2 f8\3 |
    d4\3 a4\2 |
}

basssectiona = {
    \repeat volta 2 { \basssectionaa \basssectionab }
    \alternative { { \basssectionac } { \basssectionad } }
}

basssectionb = {
    \repeat volta 2 {
        d'4\1 a4\2 |
        d'4\1 a4\2 |
        d4\3 fis4\2 |
        g4\2 d4\3 |
        g4\2 d4\3 |
        g4\2 d4\3 |
        a,8\4 cis8\3 e8\3 cis8\3 |
        a8\2 r8 c4 |
        f4\2 c4\3 |
        f4\2 fis4\2 |
        g4\2 d4\3 |
        g4\2 cis4\3 |
    }
    \alternative {
        {
            d4\3 a,4\4 |
            cis4\3 a,4\4 |
            d8\3 f'8\1 e'8\1 d'8\1 |
            bes8\2 a8\2 f8\3 e8\3 |
        }
        {
            d4\3 a,4\4 |
            cis4\3 a,4\4 |
            d8\3 bes8\2 a8\2 f8\3 |
            d4\3 r4 |
        }
    }
}

basssectionc = {
    \repeat volta 2 {
        d4\3 a8\2 d'8\1 |
        r8 a8\2 d'8\1 a8\2 |
        d4\3 a8\2 d'8\1 |
        r8 a8\2 d'8\1 a8\2 |
        d4\3 a8\2 d'8\1 |
        r8 a8\2 d'8\1 a8\2 |
        d4\3 a8\2 d'8\1 |
        r8 a8\2 d'8\1 a8\2 |
        f4\2 c4\3 |
        f4\2 c4\3 |
        f4\2 c4\3 |
        g4\2 d4\3 |
        cis4\3 a,4\4 |
        cis4\3 a,4\4 | 
    }
    \alternative {
        {
            d8\3 bes8\2 a8\2 f8\3 |
            d4\3 r4 |
        }
        {
            d8\3 bes8\2 a8\2 f8\3 |
            d4\3 a4\2 |
        }
    }
}

basscoda = {
    cis4\3 a,4\4 |
    cis8\3 a,8\4 b,8\4 cis8\3 |
    d4\3 a,4\4 |
    d4\3 r4
}

bassnotes = {
    \key f \major
    \time 2/4
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \blankmeasure
    \basscoda
}

bassnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \spaceextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectionaa
    \basscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightnotesintro = { r2 | }

pianorightnotessectionaa = {
    r4 < f a d' >8 < f a d' >8 | r4 < f a d' >4 |
    r4 < f a d' >8 < f a d' >8 | r4 < e g bes c' >4 |

    r4 < f a d' >4 | r4 < f a d' >8 < f a d' >8 |
    r4 < f a d' >4 | < g bes c' e' >8 r8 r4 |

    r8 f8 r8 g8 | r8 a8 r8 g8 | r8 a8 b8 cis'8 | d'8 e'8 f'8 g'8 |
}

pianorightnotessectionab = { a'8 g'4 f'8 | e'8 g'8 f'8 e'8 | }

pianorightnotessectionac = { d'8 r8 a8 r8 | d'8 r8 r4 | }

pianorightnotessectionad = { d'8 r8 a8 r8 | d'8 r8 r4 | }

pianorightnotessectiona = {
    \repeat volta 2 { \pianorightnotessectionaa \pianorightnotessectionab }
    \alternative {
        { \pianorightnotessectionac } { \pianorightnotessectionad }
    }
}

pianorightnotessectionb = 
{
    \repeat volta 2 {
        d'4 a'4 | d''4 a'4 | d''4 fis'4 | g'4 bes'4 |

        d''4 g'4 | a'4 e''4 | d'4 d'4 | d'4 c'4 |

        f'4 c'4 | f'4 d'4 | g'4 g4 | bes4 a4 |
    }
    \alternative {
        { d'4 f'4 | g'4 a'4 | d'4 d'4 | d'4 r4 | }
        { d'4 f'4 | e'4 f'4 | bes'2 | r2 | }
    }
}

pianorightnotessectionc = 
{
    \repeat volta 2 {
        < d' f' a' >2-> | r2 | < a d' f' >2-> | r2 |

        < d' f' a' >2-> | r2 | < a d' f' >2-> | r2 |

        r4 < c' f' c'' >8 < c' f' c'' >8 | r4 < d' f' d'' >8 < d' f' d'' >8 |
        r4 < f' a' c'' >8 < f' a' c'' >8 | r4 < g' bes' d'' >4 |

        r2 | r4 < g a cis' >4 |
    }
    \alternative { { < f a d' >2 | r2 | } { < f a d' >2 | r2 | } }
}

pianorightnotescoda = {
    a'8 g'4 f'8 | e'8 g'8 f'8 e'8 |
    \transpose c c' { \chordmode { d4:min } } \chordmode { a4:7 | d4:min } r4 |
}

pianorightuppernotes = {
    \key f \major
    \time 2/4
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \blankmeasure
    \pianorightnotescoda
}

pianorightnotesmidi = {
    \key f \major
    \time 2/4
    \preintro
    \spaceextra
    \pianorightnotesintro
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectiona
    \pianorightnotessectionb
    \pianorightnotessectionc
    \pianorightnotessectionaa
    \pianorightnotescoda
}

pianoleftnotesintro = { r2 | }

pianoleftnotessectionaa = {
    d,4 r4 | a,4 r4 | d,4 r4 | a,4 r4 |

    f,4 r4 | f,4 r4 | f4 r4 | c8 r8 r4 |

    f,4 g,4 | a,4 g,4 | r8 a,8 b,8 cis8 | d8 a,8 d8 e8 |
}

pianoleftnotessectionab = { < f, f >4 r4 | a,4 cis'4 | }

pianoleftnotessectionac = { < d, d >8 r8 < a,, a, >8 r8 | < d, d >8 r8 r4 | }

pianoleftnotessectionad = { d4 a,4 | d4 r4 | }

pianoleftnotessectiona = {
    \repeat volta 2 { \pianoleftnotessectionaa \pianoleftnotessectionab }
    \alternative { { \pianoleftnotessectionac } { \pianoleftnotessectionad } }
}

pianoleftnotessectionb = {
    \repeat volta 2 {
        d,4 a,4 | d4 a,4 | d4 fis,4 | g,4 bes,4 |

        d4 g,4 | a,4 e4 | d4 d4 | d4 c4 |

        f4 c4 | f4 d4 | g4 g,4 | bes,4 a,4 |
    }
    \alternative {
        { d4 f4 | g4 a4 | d4 d4 | d4 r4 | } { d4 f4 | g,4 a,4 | d2 | r2 | }
    }
}

pianoleftnotessectionc = {
    \repeat volta 2 {
        < d f >4-> a8 d'8 | r8 a8 d'8 a8 | < d f >4-> a8 d'8 | r8 a8 d'8 a8 |

        < d f >4-> a8 d'8 | r8 a8 d'8 a8 | < d f >4-> a8 d'8 | r8 a8 d'8 a8 |

        f4 c4 | f4 c4 | f4 c4 | g4 d4 |

        < cis a cis' >2 | < a, cis a >2 |
    }
    \alternative { { < d, d >2 | r2 | } { < d, d >2 | r2 | } }
}

pianoleftnotescoda = { cis4 a,4 | cis8 a,8 b,8 cis8 | d4 a,4 | d4 r4 | }

pianolefthigh = {
    \key f \major
    \time 2/4
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \blankmeasure
    \pianoleftnotescoda
}

pianolefthighmidi = {
    \key f \major
    \time 2/4
    \preintro
    \spaceextra
    \pianoleftnotesintro
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectiona
    \pianoleftnotessectionb
    \pianoleftnotessectionc
    \pianoleftnotessectionaa
    \pianoleftnotescoda
}

pianoleftlow = { }

pianoleftlowmidi = { }

pianoleftuppernotes = <<
    \key f \major
    \time 2/4
    \pianolefthigh
    \pianoleftlow
>>

pianoleftnotesmidi = <<
    \key f \major
    \time 2/4
    \pianolefthighmidi
    \pianoleftlowmidi
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumsextra = \drummode { < bda hhc >4 hhc4 | < bda hhc >4 hhc4 | }

drumsintro = \drummode { s2 | }

drumssectionaa = \drummode {
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

drumssectionab = \drummode {
    s2 |
    s2 |
}

drumssectionac = \drummode {
% measure 16
    s2 |
    s2 |
}

drumssectionad = \drummode {
    s2 |
    s2 |
}

drumssectiona = \drummode {
    \repeat volta 2 {
        \drumssectionaa
        \drumssectionab
    }
    \alternative {
        {
            \drumssectionac
        }
        {
            \drumssectionad
        }
    }
}

drumssectionb = \drummode {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

% measure 24
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
% measure 32
            s2 |
            s2 |
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
            s2 |
            s2 |
        }
    }
}

drumssectionc = \drummode {
    \repeat volta 2 {
% measure 40
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |

% measure 48
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
        s2 |
    }
    \alternative {
        {
            s2 |
            s2 |
        }
        {
            s2 |
            s2 |
        }
    }
}

drumscoda = \drummode {
% measure 58
    s2 |
    s2 |
    s2 |
    s2
}

drumshigh = \drummode {
    \drumsintro
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \blankmeasure
    \drumscoda
}

drumshighmidi = \drummode {
    \preintro
    \drumsextra
    \drumsintro
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \drumssectiona
    \drumssectionb
    \drumssectionc
    \drumssectionaa
    \drumscoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \key f \major
    \transpose c bes, { \melody }
}

tenorharmony = \transpose c' bes { \tenorsaxnotes }
counter = \transpose c c' { \trombonenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s2 | d2:min | s2 | s2 | c2:7 | f2 | s2 | s2 | c2:7 |
}

previewnotes = {
    \key f \major
    \time 2/4
    s8 a'8 d''8 e''8 |
    \bar ".|:"
    f''4 e''8\prall d''8 |
    f''4 e''8\prall d''8 |
    e''8 f''8 d''4 |
    r8 c''8 f''8 g''8 |
    a''4 g''8\prall f''8 |
    a''4 g''8\prall f''8 |
    g''8 a''8 f''4 |
    r8 c''8 f''8 a''8 |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \bassnotes }

\version "2.18.2"

bandmintro = {
    s4. | \breakINone s4. | \breakIN
}

bandmsectiona = {
    \markA \positionA
    \repeat volta 2 {
        s4. | \breakAone s4. | \breakAtwo s4. | \breakAtre s4. | \breakAfor
        s4. | \breakAfiv s4. | \breakAsix s4. | \breakAsev s4. | \breakAeit
        s4. | \breakAnin s4. | \breakAten s4. | \breakAelv s4. | \breakAtwl
        s4. | \breakAtht s4. | \breakAfrt s4. | \breakAfft s4. |
    }
    \breakA
}

bandmsectionb = {
    \markB \positionB
    \repeat volta 2 {
        s4. | \breakBone s4. | \breakBtwo s4. | \breakBtre s4. | \breakBfor
        s4. | \breakBfiv s4. | \breakBsix s4. | \breakBsev s4. | \breakBeit
        s4. | \breakBnin s4. | \breakBten s4. | \breakBelv s4. | \breakBtwl
        s4. | \breakBtht s4. | \breakBfrt s4. | \breakBfft s4. | \breakBsxt
    }
    s4. | \breakBsvt s4. | \breakBett s4. | \breakBnnt s4. | \breakBtwy
    s4. | \breakBtone s4. | \breakBttwo s4. | \breakBttre s4. |
    \bar ".|:-||"
    \breakB
}

bandmsectionc = {
    \markC \positionC
    \repeat volta 2 {
        s4. | \breakCone s4. | \breakCtwo s4. | \breakCtre s4. | \breakCfor
        s4. | \breakCfiv s4. | \breakCsix s4. | \breakCsev s4. | \breakCeit
        s4. | \breakCnin s4. | \breakCten s4. | \breakCelv s4. | \breakCtwl
        s4. | \breakCtht s4. | \breakCfrt s4. | \breakCfft s4. |
    }
    \breakC
}

bandmsectiond = {
    \markD \positionD
    \repeat volta 2 {
        s4. | \breakDone s4. | \breakDtwo s4. | \breakDtre s4. | \breakDfor
        s4. | \breakDfiv s4. | \breakDsix s4. | \breakDsev s4. | \breakDeit
        s4. | \breakDnin s4. | \breakDten s4. | \breakDelv s4. | \breakDtwl
        s4. | \breakDtht s4. | \breakDfrt
    }
    \alternative {
        { s4. | \breakDfft s4. | \breakDsxt }
        { s4. | \breakDsvt s4. | \breakDett }
    }
    \bar "|."
}

bandmNV = {
    \time 3/8
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
}

leadsheetbandmNV = { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preintro = { s4. | }

metronomeextra = {
    \tempo 8 = 120
    s4. | s4. |
}

metronome = \context Voice = "metronomev" {
    \time 3/8
    \preintro
    \tempo 8 = 120
    \metronomeextra
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \tempo 8 = 130
    \bandmsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodyintro = {
    r4. |
    r4. |
}

melodysectiona = {
    \repeat volta 2 {
        d'8. [ fis'16 ] a'16 [ g'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4 d'8 |
        d'4. |

        ees'8 [ d'8 c'8 ] |
        b8. [ c'16 ] d'16 [ ees'16 ] |
        c'4. ~ |
        c'4. |

        d'8. [ fis'16 ] a'16 [ g'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4 d'8 |
        \acciaccatura { d'16 } a'4. |

        a'8.\trill [ g'16 ] fis'16 [ ees'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4. ~ |
        d'4 d'8 |
    }
}

melodysectionb = {
    \repeat volta 2 {
        g'8 [ g'8 g'8 ] |
        g'4 fis'8 |
        a'8.\trill [ g'16 ] fis'16 [ ees'16 ] |
        d'4 r16 d'16 |
        g'8 [ fis'8 ees'8 ] |
        d'8. [ ees'16 ] fis'16 [ g'16 ] |
        fis'4. ~ |
        fis'4 d'8 |
        g'8 [ g'8 g'8 ] |
        g'8. [ a'16 ] bes'16 [ b'16 ] |
        c''8. [ bes'16 ] a'16 [ g'16 ] |
        fis'4 fis'8 |
        g'8 [ c'8 ] d'16 [ ees'16 ] |
        fis'8 [ g'8 ] fis'16 [ ees'16 ] |
        d'4. ~ |
        d'4 d'8 |
    }
    g'4. ~ |
    g'4 a'16 [ bes'16 ] |
    g'4. ~ |
    g'4 a'16 [ bes'16 ] |
    g'4 a'16 [ bes'16 ] |
    g'4 a'16 [ bes'16 ] |
    g'4. ~ |
    g'4 d'8 |
}

melodysectionc = {
    \repeat volta 2 {
        g'8 [ a'8 bes'8 ] |
        bes'4 bes'8 |
        bes'4. ~ |
        bes'4 bes'8 |
        bes'8.\trill [ a'32 bes'32 ] a'16 [ g'16 ] |
        bes'8.\trill [ a'32 bes'32 ] a'16 [ g'16 ] |
        c''8. [ bes'16 ] a'16 [ g'16 ] |
        a'4 g'8 |
        fis'8 [ g'8 a'8 ] |
        a'8. [ d''16 ] a'16 [ d''16 ] |
        a'4. ~ |
        a'4 d'8 |
        bes'8. [ a'16 ] a'16 [ g'16 ] |
        fis'8. [ g'16 ] a'16 [ bes'16 ] |
        g'4. ~ |
        g'4 d'8 |
    }
}

melodysectiond = {
    \repeat volta 2 {
        g'8 [ g'8 g'8 ] |
        g'4 fis'8 |
        a'8.\trill [ g'16 ] fis'16 [ ees'16 ] |
        d'4 r16 d'16 |
        g'8 [ fis'8 ees'8 ] |
        d'8. [ ees'16 ] fis'16 [ g'16 ] |
        fis'4. ~ |
        fis'4 d'8 |
        g'8 [ g'8 g'8 ] |
        g'8. [ a'16 ] bes'16 [ b'16 ] |
        c''8. [ bes'16 ] a'16 [ g'16 ] |
        fis'4 fis'8 |
        g'8 [ c'8 ] d'16 [ ees'16 ] |
        fis'8 [ g'8 ] fis'16 [ ees'16 ] |
    }
    \alternative {
        {
            d'8. [ d''16 ] a'16 [ fis'16 ] |
            d'4 d'8 |
        }
        {
            d'4. ~ |
            d'4 r8 |
        }
    }
}

melody = {
    \key bes \major
    \time 3/8
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonyintro = {
    r4. |
    r4. |
}

tenorharmonysectiona = {
    \repeat volta 2 {
        fis'8. [ a'16 ] d''16 [ bes'16 ] |
        a'8. [ g'16 ] fis'16 [ ees'16 ] |
        fis'4 fis'8 |
        fis'4. |

        g'8 [ fis'8 ees'8 ] |
        d'8. [ e'16 ] fis'16 [ g'16 ] |
        ees'4. ~ |
        ees'4. |

        fis'8. [ a'16 ] d''16 [ c''16 ] |
        a'8. [ g'16 ] fis'16 [ ees'16 ] |
        fis'4 fis'8 |
        d''4. |

        d''8. [ bes'16 ] a'16 [ g'16 ] |
        a'8. [ g'16 ] fis'16 [ ees'16 ] |
        fis'4. ~ |
        fis'4 fis'8 |
    }
}

tenorharmonysectionb = {
    \repeat volta 2 {
        bes'8 [ bes'8 bes'8 ] |
        bes'4 a'8 |
        d''8. [ bes'16 ] a'16 [ g'16 ] |
        fis'4 r16 fis'16 |

        c''8 [ a'8 g'8 ] |
        fis'8. [ g'16 ] a'16 [ bes'16 ] |
        a'4. ~ |
        a'4 fis'8 |

        bes'8 [ bes'8 bes'8 ] |
        bes'8. [ c''16 ] d''16 [ dis''16 ] |
        ees''8. [ d''16 ] c''16 [ bes'16 ] |
        a'4 a'8 |

        c''8 [ ees'8 ] fis'16 [ g'16 ] |
        a'8 [ c''8 ] a'16 [ g'16 ] |
        fis'4. ~ |
        fis'4 fis'8 |
    }
    bes'4. ~ |
    bes'4 c''16 [ d''16 ] |
    bes'4. ~ |
    bes'4 c''16 [ d''16 ] |
    bes'4 c''16 [ d''16 ] |
    bes'4 c''16 [ d''16 ] |
    bes'4. ~ |
    bes'4 g'8 |
}

tenorharmonysectionc = {
    \repeat volta 2 {
        bes'8 [ c''8 d''8 ] |
        d''4 d''8 |
        d''4. ~ |
        d''4 d''8 |

        d''8. [ c''32 d''32 ] c''16 [ bes'16 ] |
        d''8. [ c''32 d''32 ] c''16 [ bes'16 ] |
        ees''8. [ d''16 ] c''16 [ bes'16 ] |
        d''4 bes'8 |

        a'8 [ bes'8 d''8 ] |
        d''8. [ fis''16 ] d''16 [ fis''16 ] |
        d''4. ~ |
        d''4 fis'8 |

        d''8. [ c''16 ] c''16 [ bes'16 ] |
        a'8. [ bes'16 ] c''16 [ d''16 ] |
        bes'4. ~ |
        bes'4 g'8 |
    }
}

tenorharmonysectiond = {
    \repeat volta 2 {
        bes'8 [ bes'8 bes'8 ] |
        bes'4 a'8 |
        d''8. [ bes'16 ] a'16 [ g'16 ] |
        fis'4 r16 fis'16 |
        c''8 [ a'8 g'8 ] |
        fis'8. [ g'16 ] a'16 [ bes'16 ] |
        a'4. ~ |
        a'4 fis'8 |
        bes'8 [ bes'8 bes'8 ] |
        bes'8. [ c''16 ] d''16 [ dis''16 ] |
        ees''8. [ d''16 ] c''16 [ bes'16 ] |
        a'4 a'8 |
        c''8 [ ees'8 ] fis'16 [ g'16 ] |
        a'8 [ c''8 ] a'16 [ g'16 ] |
    }
    \alternative {
        {
            fis'8. [ fis''16 ] d''16 [ a'16 ] |
            fis'4 fis'8 |
        }
        {
            fis'4. ~ |
            fis'4 r8 |
        }
    }
}

tenorharmonynotes = {
    \tenorharmonyintro
    \tenorharmonysectiona
    \tenorharmonysectionb
    \tenorharmonysectionc
    \tenorharmonysectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonyintro = {
    r4. |
    r4. |
}

altoharmonysectiona = {
    \repeat volta 2 {
        a8. [ d'16 ] fis'16 [ ees'16 ] |
        d'8. [ c'16 ] a16 [ g16 ] |
        a4 a8 |
        a4. |

        c'8 [ bes8 g8 ] |
        g8. [ a16 ] b16 [ b16 ] |
        g4. ~ |
        g4. |

        a8. [ d'16 ] fis'16 [ ees'16 ] |
        d'8. [ c'16 ] a16 [ g16 ] |
        a4 a8 |
        fis'4. |

        fis'8. [ ees'16 ] d'16 [ c'16 ] |
        d'8. [ c'16 ] a16 [ g16 ] |
        a4. ~ |
        a4 a8 |
    }
}

altoharmonysectionb = {
    \repeat volta 2 {
        d'8 [ d'8 d'8 ] |
        d'4 d'8 |
        fis'8. [ ees'16 ] d'16 [ c'16 ] |
        a4 r16 a16 |

        ees'8 [ d'8 c'8 ] |
        a8. [ c'16 ] d'16 [ ees'16 ] |
        d'4. ~ |
        d'4 a8 |

        d'8 [ d'8 d'8 ] |
        d'8. [ fis'16 ] g'16 [ gis'16 ] |
        g'8. [ fis'16 ] fis'16 [ ees'16 ] |
        d'4 d'8 |

        ees'8 [ g8 ] a16 [ c'16 ] |
        d'8 [ ees'8 ] d'16 [ c'16 ] |
        a4. ~ |
        a4 a8 |
    }
    d'4. ~ |
    d'4 fis'16 [ g'16 ] |
    d'4. ~ |
    d'4 fis'16 [ g'16 ] |
    d'4 fis'16 [ g'16 ] |
    d'4 fis'16 [ g'16 ] |
    d'4. ~ |
    d'4 bes8 |
}

altoharmonysectionc = {
    \repeat volta 2 {
        d'8 [ fis'8 g'8 ] |
        g'4 g'8 |
        g'4. ~ |
        g'4 g'8 |

        g'8. [ fis'32 g'32 ] fis'16 [ d'16 ] |
        g'8. [ fis'32 g'32 ] fis'16 [ d'16 ] |
        g'8. [ fis'16 ] fis'16 [ ees'16 ] |
        fis'4 ees'8 |

        d'8 [ ees'8 fis'8 ] |
        fis'8. [ a'16 ] fis'16 [ a'16 ] |
        fis'4. ~ |
        fis'4 a8 |

        g'8. [ fis'16 ] fis'16 [ d'16 ] |
        d'8. [ ees'16 ] fis'16 [ g'16 ] |
        d'4. ~ |
        d'4 bes8 |
    }
}

altoharmonysectiond = {
    \repeat volta 2 {
        d'8 [ d'8 d'8 ] |
        d'4 d'8 |
        fis'8. [ ees'16 ] d'16 [ c'16 ] |
        a4 r16 a16 |
        ees'8 [ d'8 c'8 ] |
        a8. [ c'16 ] d'16 [ ees'16 ] |
        d'4. ~ |
        d'4 a8 |
        d'8 [ d'8 d'8 ] |
        d'8. [ fis'16 ] g'16 [ gis'16 ] |
        g'8. [ fis'16 ] fis'16 [ ees'16 ] |
        d'4 d'8 |
        ees'8 [ g8 ] a16 [ c'16 ] |
        d'8 [ ees'8 ] d'16 [ c'16 ] |
    }
    \alternative {
        {
            a8. [ a'16 ] fis'16 [ d'16 ] |
            a4 a8 |
        }
        {
            a4. ~ |
            a4 r8 |
        }
    }
}

altoharmonynotes = {
    \altoharmonyintro
    \altoharmonysectiona
    \altoharmonysectionb
    \altoharmonysectionc
    \altoharmonysectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteintro = { \melodyintro }
flutesectiona = { \melodysectiona }
flutesectionb = { \melodysectionb }
flutesectionc = { \melodysectionc }
flutesectiond = { \melodysectiond }

%-------------------------------------------------

flutenotes = \transpose c c' {
    \key bes \major
    \time 3/8
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
}

flutenotesmidi = \transpose c c' {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = { \melodyintro }
clarinetsectiona = { \melodysectiona }
clarinetsectionb = { \melodysectionb }
clarinetsectionc = { \melodysectionc }
clarinetsectiond = { \melodysectiond }

%-------------------------------------------------

clarinetnotes = \transpose c d' {
    \key bes \major
    \time 3/8
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
}

clarinetnotesmidi = \transpose c d' {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = { \melodyintro }
trumpetsectiona = { \melodysectiona }
trumpetsectionb = { \melodysectionb }
trumpetsectionc = { \melodysectionc }
trumpetsectiond = { \melodysectiond }

%-------------------------------------------------

trumpetnotes = \transpose c d {
    \key bes \major
    \time 3/8
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
}

trumpetnotesmidi = \transpose c d {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = { \altoharmonyintro }
altosaxsectiona = { \altoharmonysectiona }
altosaxsectionb = { \altoharmonysectionb }
altosaxsectionc = { \altoharmonysectionc }
altosaxsectiond = { \altoharmonysectiond }

%-------------------------------------------------

altosaxnotes = \transpose c a {
    \key bes \major
    \time 3/8
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
}

altosaxnotesmidi = \transpose c a {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
}

melodyforaltonotes = \transpose c a {
    \key bes \major
    \time 3/8
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
}

altoforviolinnotes = {
    \key bes \major
    \time 3/8
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
}

altoforflutenotes = \transpose c c' {
    \key bes \major
    \time 3/8
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
}

altoflutenotes = \transpose g c {
    \flutenotes
}

altoflutealtoharmony = \transpose g c {
    \altoforflutenotes
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = { \tenorharmonyintro }
tenorsaxsectiona = { \tenorharmonysectiona }
tenorsaxsectionb = { \tenorharmonysectionb }
tenorsaxsectionc = { \tenorharmonysectionc }
tenorsaxsectiond = { \tenorharmonysectiond }

%-------------------------------------------------

tenorsaxnotes = \transpose c d {
    \key bes \major
    \time 3/8
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
}

tenorsaxnotesmidi = \transpose c d {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes, { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = \transpose c' c {
    r4. | r4 a'8 |
}

trombonesectiona = \transpose c' c {
    \repeat volta 2 {
        d'4 d'8 |
        d'4 r16 c'16 |
        d'8. [ fis'16 ] a'16 [ bes'16 ] |
        a'8. [ fis'16 ] ees'16 [ d'16 ] |
        c'4. |
        b'8 a'8 g'8 |
        c'8. [ ees'16 ] g'16 [ fis'16 ] |
        ees'8. [ d'16 ] c'8 |
        d'4 d'8 |
        d'4 r16 c'16 |
        d'8. [ fis'16 ] a'16 [ bes'16 ] |
        a'8. [ fis'16 ] ees'16 [ d'16 ] |
        d'4. |
        d'8 r8 c''8 |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        a'8. [ fis'16 ] d'8 |
    }
}

trombonesectionb = \transpose c' c {
    \repeat volta 2 {
        bes'8. [ a'16 ] g'8 |
        bes'8. [ a'16 ] g'8 |
        d'8 d'8 d'8 |
        d'4. |
        c'8. [ c'16 ] c'8 |
        d'4. |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        a'8. [ fis'16 ] d'8 |
        bes'8. [ a'16 ] g'8 |
        g'4. |
        c'8. [ c'16 ] c'8 |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        g'4. |
        c'8 ees'8 g'8 |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        a'8. [ fis'16 ] d'8 |
    }
    bes'4. ~ |
    bes'4 c''16 [ d''16 ] |
    bes'4. ~ |
    bes'4 c''16 [ d''16 ] |
    bes'4 c''16 [ d''16 ] |
    bes'4 c''16 [ d''16 ] |
    bes'4. ~ |
    bes'4 g'8 |
}

trombonesectionc = \transpose c' c {
    \repeat volta 2 {
        g'8 g'8 g'8 |
        d''8. [ bes'16 ] g'8 |
        d''8. [ bes'16 ] g'8 |
        d''8. [ c''16 ] bes'16 a'16 |
        g'4 r8 |
        bes'8 g'8 fis'16 g'16 |
        c''4. |
        d'8. [ fis'16 ] a'16 [ g'16 ] |
        fis'8. [ ees'16 ] d'16 [ d'16 ] |
        fis'4. |
        d'8. [ fis'16 ] a'16 [ bes'16 ] |
        a'8. [ fis'16 ] ees'16 [ d'16 ] |
        g'8 g'8 g'8 |
        d''8. [ d''16 ] d''8 |
        d''8. [ c''16 ] bes'16 a'16 |
        g'4. |
    }
}

trombonesectiond = \transpose c' c {
    \repeat volta 2 {
        bes'8. [ a'16 ] g'8 |
        bes'8. [ a'16 ] g'8 |
        d'8 d'8 d'8 |
        d'4. |
        c'8. [ c'16 ] c'8 |
        d'4. |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        a'8. [ fis'16 ] d'8 |
        bes'8. [ a'16 ] g'8 |
        g'4. |
        c'8 c'8 c'8 |
        d''8. [ c''16 ] bes'16 [ a'16 ] |
        g'4. |
        c'8 ees'8 g'8 |
    }
    \alternative {
        {
            d'4. |
            r4 a'8 |
        }
        {
            d'4. ~ |
            d'4 r8 |
        }
    }
}

%-------------------------------------------------

trombonenotes = {
    \key bes \major
    \time 3/8
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
}

trombonenotesmidi = {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = { \melodyintro }
violinsectiona = { \melodysectiona }
violinsectionb = { \melodysectionb }
violinsectionc = { \melodysectionc }
violinsectiond = { \melodysectiond }

%-------------------------------------------------

violinnotes = {
    \key bes \major
    \time 3/8
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
}

violinnotesmidi = {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    d4.:7 d4.:7
}

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        d4.:7 |
        \chordChangesOn
        d4:7 d16:7 c16:min7 | d4.:7 | d4.:7 | c4.:min7 | g4.:7 |
        c4.:min7 | c4.:min7 | d4.:7 | d4:7 d16:7 c16:min7 |
        d4.:7 | d4.:7 | d4.:7 | d4:7 d16:7 c16:min7 |
        d4.:7 | d4.:7 |
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        g4.:min7+ | g4.:min7+ | d4.:7 | d4.:7 |
        c4.:min7 | d4.:7 | d4.:7 | d4.:7 |
        g4.:min7+ | g4.:min7+ | c4.:min7 | d4.:7 |
        c4.:min7 | c4.:min7 | d4.:7 | d4.:7 |
    }
    g4.:min7+ | g4.:min7+ | g4.:min7+ | g4.:min7+ |
    g4.:min7+ | g4.:min7+ | g4.:min7+ | g4.:min7+ |
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        g4.:min7+ |
        \chordChangesOn
        g4.:min7+ | g4.:min7+ | g4.:min7+ |
        g4.:min7+ | g4.:min7+ | c4.:min7 | d4.:7 |
        d4.:7 | d4.:7 | d4.:7 | d4.:7 |
        g4.:min7+ | d4.:7 | g4.:min7+ | g4.:min7+ |
    }
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        \chordChangesOff
        g4.:min7+ |
        \chordChangesOn
        g4.:min7+ | d4.:7 | d4.:7 |
        c4.:min7 | d4.:7 | d4.:7 | d4.:7 |
        g4.:min7+ | g4.:min7+ | c4.:min7 | d4.:7 |
        c4.:min7 | c4.:min7 |
    }
    \alternative {
        { d4.:7 d4.:7 }
        { \chordChangesOff d4.:7 \chordChangesOn d4.:7 }
    }
}

chordletters = \chordmode {
    \time 3/8
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    r4. |
    r4. |
}

pianorightuppersectiona = {
    \repeat volta 2 {
        < fis' a' d''>8. [ fis''16 ] a''16 [ g''16 ] |
        < a' d'' fis''>8. [ ees''16 ] d''16 [ c''16 ] |
        < fis' a' d''>4 < fis' a' d''>8 |
        < fis' a' d''>4. |

        < g' c'' ees''>8 [ < fis' bes' d''>8 < ees' g' c''>8 ] |
        < d' g' b'>8. [ c''16 ] d''16 [ ees''16 ] |
        < ees' g' c''>4. ~ |
        < ees' g' c''>4. |

        < fis' a' d''>8. [ fis''16 ] a''16 [ g''16 ] |
        < a' d'' fis''>8. [ ees''16 ] d''16 [ c''16 ] |
        < fis' a' d''>4 < fis' a' d''>8 |
        \acciaccatura { d''16 } < d'' fis'' a'' >4. |

        < d'' fis'' a''>8. [ g''16 ] fis''16 [ ees''16 ] |
        < a' d'' fis'' >8. [ ees''16 ] d''16 [ c''16 ] |
        < fis' a' d''>4. ~ |
        < fis' a' d''>4 < fis' a' d''>8 |
    }
}

pianorightuppersectionb = {
    \repeat volta 2 {
        g''8 [ g''8 g''8 ] |
        < bes' ees'' g''>4 fis''8 |
        a''8. [ g''16 ] fis''16 [ ees''16 ] |
        < fis' a' d''>4 r16 d''16 |

        g''8 [ fis''8 ees''8 ] |
        d''8. [ ees''16 ] fis''16 [ g''16 ] |
        < a' d'' fis''>4. ~ |
        < a' d'' fis''>4 < fis' a' d''>8 |

        g''8 [ g''8 g''8 ] |
        g''8. [ a''16 ] bes''16 [ b''16 ] |
        c'''8. [ bes''16 ] a''16 [ g''16 ] |
        < a' d'' fis''>4 < a' d'' fis''>8 |

        g''8 [ c''8 ] d''16 [ ees''16 ] |
        fis''8 [ g''8 ] fis''16 [ ees''16 ] |
        < fis' a' d''>4. ~ |
        < fis' a' d''>4 < fis' a' d''>8 |
    }
    < bes' d'' g''>4. ~ |
    < bes' d'' g''>4 a''16 [ bes''16 ] |
    < bes' d'' g''>4. ~ |
    < bes' d'' g''>4 a''16 [ bes''16 ] |
    < bes' d'' g''>4 a''16 [ bes''16 ] |
    < bes' d'' g''>4 a''16 [ bes''16 ] |
    < bes' d'' g''>4. ~ |
    < bes' d'' g''>4 d''8 |
}

pianorightuppersectionc = {
    \repeat volta 2 {
        g''8 [ a''8 bes''8 ] |
        < d'' g'' bes'' >4 bes''8 |
        < d'' g'' bes'' >4. ~ |
        < d'' g'' bes'' >4 bes''8 |

        bes''8. [ a''32 bes''32 ] a''16 [ g''16 ] |
        bes''8. [ a''32 bes''32 ] a''16 [ g''16 ] |
        c'''8. [ bes''16 ] a''16 [ g''16 ] |
        < d'' fis'' a'' >4 g''8 |

        fis''8 [ g''8 a''8 ] |
        a''8. [ d'''16 ] a''16 [ d'''16 ] |
        < d'' fis'' a'' >4. ~ |
        < d'' fis'' a'' >4 d''8 |

        bes''8. [ a''16 ] a''16 [ g''16 ] |
        fis''8. [ g''16 ] a''16 [ bes''16 ] |
        < bes' d'' g''>4. ~ |
        < bes' d'' g''>4 d''8 |
    }
}

pianorightuppersectiond = {
    \repeat volta 2 {
        g''8 [ g''8 g''8 ] |
        < bes' ees'' g''>4 fis''8 |
        a''8. [ g''16 ] fis''16 [ ees''16 ] |
        < fis' a' d'' >4 r16 d''16 |

        g''8 [ fis''8 ees''8 ] |
        d''8. [ ees''16 ] fis''16 [ g''16 ] |
        < a' d'' fis'' >4. ~ |
        < a' d'' fis'' >4 < fis' a' d''>8 |

        g''8 [ g''8 g''8 ] |
        g''8. [ a''16 ] bes''16 [ b''16 ] |
        c'''8. [ bes''16 ] a''16 [ g''16 ] |
        < a' d'' fis'' >4 < a' d'' fis''>8 |

        g''8 [ c''8 ] d''16 [ ees''16 ] |
        fis''8 [ g''8 ] fis''16 [ ees''16 ] |
    }
    \alternative {
        {
            d''8. [ d'''16 ] a''16 [ fis''16 ] |
            < fis' a' d'' >4 < fis' a' d'' >8 |
        }
        {
            < fis' a' d'' >4. ~ |
            < fis' a' d'' >4 r8 |
        }
    }
}

pianoleftintro = {
    < d fis a c' >8 r8 < d fis a c' >8 |
    < d fis a c' >8 r8 < d fis a c' >8 |
}

pianoleftsectiona = {
    \repeat volta 2 {
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >16 < c ees g bes >16 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        % measure 8
        < d fis g b >8 r8 < d fis g b >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >16 < c ees g bes >16 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >16 < c ees g bes >16 |
        % measure 17
        < d fis a c' >8 r8 < d fis a c' >8 |
        < d fis a c' >8 r8 < d fis a c' >8 |
    }
}

pianoleftsectionb = {
    \repeat volta 2 {
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
    }
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    < g, bes, d fis >8 r8 < g, bes, d fis >8 |
}

pianoleftsectionc = {
    \repeat volta 2 {
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
    }
}

pianoleftsectiond = {
    \repeat volta 2 {
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < g, bes, d fis >8 r8 < g, bes, d fis >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < d fis g b >8 r8 < d fis g b >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
        < c ees g bes >8 r8 < c ees g bes >8 |
    }
    \alternative {
        {
            < d fis g b >8 r8 < d fis g b >8 |
            < d fis g b >8 r8 < d fis g b >8 |
        }
        {
            < d fis g b >4. ~ |
            < d fis g b >4 r8 |
        }
    }
}

%-------------------------------------------------

pianorightuppernotes = {
    \key bes \major
    \time 3/8
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
}

pianoleftuppernotes = {
    \key bes \major
    \time 3/8
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \pianoleftsectiond
}

%-------------------------------------------------

accordionrightuppernotes = {
    \key bes \major
    \time 3/8
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
}

accordionleftuppernotes = {
    \key bes \major
    \time 3/8
    \pianoleftintro
    \pianoleftsectiona
    \pianoleftsectionb
    \pianoleftsectionc
    \pianoleftsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% we don't have a guitar part to expand for midi or specific playing

guitarintro = {
}

guitarsectiona = {
}

guitarsectionb = {
}

guitarsectionc = {
}

guitarsectiond = {
}

guitarnotes = {
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
}

guitarnotesmidi = {
    \preintro
    \metronomeextra
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
    d8\3 r8 a,8\4 |
    d8\3 r8 a,8\4 |
}

basssectiona = {
    \repeat volta 2 {
        d8\3 r8 a,8\4 |
        d8\3 r8 d16\3 c16 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,16\4 bes,16\4 |
        c8 r8 bes,16\4 a,16\4 |
        g,8 r8 d8\3 |
        c8 r8 g,8 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        d8\3 r8 d16\3 c16 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 d16\3 c16 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
    }
}

basssectionb = {
    \repeat volta 2 {
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,16\4 bes,16\4 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        c8 r8 g,8 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
    }
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
    g,8 r8 d8\3 |
}

basssectionc = {
    \repeat volta 2 {
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        g,8 r8 a,16\4 bes,16\4 |
        d8\3 r8 a,8\4 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
    }
}

basssectiond = {
    \repeat volta 2 {
        g,8 r8 d8\3 |
        g,8 r8 a,16\4 bes,16\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        c8 r8 g,8 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        d8\3 r8 a,8\4 |
        g,8 r8 d8\3 |
        g,8 r8 d8\3 |
        c8 r8 g,8 |
        d8\3 r8 a,16\4 bes,16\4 |
        c8 r8 g,8 |
        c8 r8 g,8 |
    }
    \alternative {
        {
            d8\3 r8 a,8\4 |
            d8\3 r8 a,8\4 |
        }
        {
            d4.\3 ~ |
            d4\3 r8 |
        }
    }
}

bassnotes = {
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiond
}

%-------------------------------------------------

bassnotes = {
    \key bes \major
    \time 3/8
    \bassnotes
}

bassnotesmidi = {
    \key bes \major
    \time 3/8
    \preintro
    \metronomeextra
    \bassintro
    \basssectiona
    \basssectionb
    \basssectionc
    \basssectiond
}

euphoniumnotes = { \bassnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighextra = \drummode {
    \repeat percent 2 {
        << sna8\p hhc >> r8 \snareflameight |
    }
}

drumshighintro = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 2 {
        << sna8 hhc >> r8 \snareflameight |
    }
}

drumshighsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 16 {
            << sna8 hhc >> r8 \snareflameight |
        }
    }
}

drumshighsectionb = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 16 {
            << sna8 hhc >> r8 \snareflameight |
        }
    }
    \repeat percent 8 {
        << sna8 hhc >> r8 \snareflameight |
    }
}

drumshighsectionc = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 16 {
            << sna8 hhc >> r8 \snareflameight |
        }
    }
}

drumshighsectiond = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 {
        \repeat percent 14 {
            << sna8 hhc >> r8 \snareflameight |
        }
    }
    \alternative {
        {
            \repeat percent 2 {
                << sna8 hhc >> r8 \snareflameight |
            }
        }
        {
            \hideDynamics
            << sna8 hhc\f >> r4 |
            r4.
        }
    }
}

drumshigh = \drummode {
    \time 3/8
    \stemUp
    \dynamicUp
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
}

drumshighmidi = \drummode {
    \time 3/8
    \stemUp
    \dynamicUp
    \preintro
    \drumshighextra
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
}

drumslowextra = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 2 { bda8 s8 bda8 | }
}

drumslowintro = \drummode {
    \set countPercentRepeats = ##t
    \repeat percent 2 { bda8 s8 bda8 | }
}

drumslowsectiona = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 { \repeat percent 16 { bda8 s8 bda8 | } }
}

drumslowsectionb = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 { \repeat percent 16 { bda8 s8 bda8 | } }
    \repeat percent 8 { bda8 s8 bda8 | }
}

drumslowsectionc = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 { \repeat percent 16 { bda8 s8 bda8 | } }
}

drumslowsectiond = \drummode {
    \set countPercentRepeats = ##t
    \repeat volta 2 { \repeat percent 14 { bda8 s8 bda8 | } }
    \alternative {
        { \repeat percent 2 { bda8 s8 bda8 | } }
        { bda8 s4 | s4. }
    }
}

%-------------------------------------------------

drumslow = \drummode {
    \time 3/8
    \stemDown
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
}

drumslowmidi = \drummode {
    \stemDown
    \preintro
    \drumslowextra
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

foobarsectiona = {
    \repeat volta 2 {
        d'8. [ fis'16 ] a'16 [ g'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4 d'8 |
        d'4. |

        ees'8 [ d'8 c'8 ]
        b8. [ c'16 ] d'16 [ ees'16 ] |
        c'4. ~ |
        c'4. |

        d'8. [ fis'16 ] a'16 [ g'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4 d'8 |
        a'4. |

        a'8.\trill [ g'16 ] fis'16 [ ees'16 ] |
        fis'8.\trill [ ees'16 ] d'16 [ c'16 ] |
        d'4. ~ |
        d'4 d'8 |
    }
}

melodystaff = \transpose c c' \context Staff <<
    \clef violin
    \key bes \major
    \time 3/8

    \bandm
    \new Voice {
        \melodyintro
        \foobarsectiona
        \melodysectionb
        \melodysectionc
        \melodysectiond
    }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

counter = \transpose c c' { \trombonenotes }
tenorharmony = { \tenorharmonynotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d4.:7 |
    s4 s16 c16:min7 |
    d4.:7 |
    s4. |
    c4.:min7 |
    g4.:7 |
}

previewnotes = \transpose c c' {
    \key bes \major
    \time 3/8
    d'8. fis'16 a'16 g'16 |
    fis'8.\trill ees'16 d'16 c'16 |
    d'4 d'8 |
    d'4. |
    ees'8 d'8 c'8 |
    b8. c'16 d'16 ees'16 |
    c'4. ~ |
    c'4. |
}

tromboneforbassclarinetnotes = { \trombonenotes }
bassforbassclarinetnotes = { \transpose c c' { \bassnotes } }

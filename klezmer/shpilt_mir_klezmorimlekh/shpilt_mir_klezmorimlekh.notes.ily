\version "2.18.0"

bandmsectiona = {
    \bar ".|:"
    \repeat volta 2 {
        % measure 1
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        % measure 5
        \grace { s16 } s2 | \breakAfiv \grace { s16 } s2 | \breakAsix
        s2 | \breakAsev s2 | \breakAeit
        % measure 9
        s2 | \breakAnin s2 | \breakAten s2 | \breakAelv s2 | \breakAtwl
        % measure 13
        \grace { s16 } s2 | \breakAtht s2 | \breakAfrt
        s2 | \breakAfft s2 | \breakAsxt
        % measure 17
        s2 | \breakAsvt s2 | \breakAett s2 | \breakAnnt s2 | \breakAtwy
        % measure 21
        \grace { s16 } s2 | \breakAtwone \grace { s16 } s2 | \breakAtwtwo
        s2 | \breakAtwtre s2 | \breakAtwfor

        s2 | \breakAtwfiv s2 | \breakAtwsix s2 | \breakAtwsev s2 | \breakAtweit

        \grace { s16 } s2 | \breakAtwnin \grace { s16 } s2 | \breakAtty
        s2 | \breakAttone s2 | \breakAtttwo

        \grace { s16 } s2 | \breakAtttre s2 | \breakAttfor
        s2 | \breakAttfiv s2 | \breakAttsix

        \grace { s16 } s2 | \breakAttsev \grace { s16 } s2 | \breakAtteit
        s2 | \breakAttnin s2 |
    }
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \bandmsectiona
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

preintro = { s2 | }

metronome = {
    \time 2/4
    \preintro
    \tempo 4 = 120
    \bandmsectiona

    \tempo 4 = 130
    \bandmsectiona
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
        % measure 1
        cis''8\ff d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 5
	\grace { s16 } cis''8 d''8 e''8 e''8 |
	\grace { s16 } f''8. e''16 f''16 ( e''16 ) d''8 |
	e''2 |
	a''4 r4 |
        % measure 9
        cis''8 d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 13
	\grace { s16 } g'8 bes'8 a'8 g'8 |
	g'8 d''8 cis''8 bes'8 |
	a'2 ~ |
	a'4 r8 a'8 |
        % measure 17
	d''8 ( e''8 ) fis''8 g''8 |
	fis''8 ( g''16 fis''16 ) e''8 d''8 |
	e''8 fis''16 ( e''16 ) d''8 cis''8 |
	d''4. d''8 |
        % measure 21
	\grace { s16 } d''8 f''8 e''8 d''8 |
	\grace { s16 } d''8 a''8 gis''8 f''8 |
	e''2 |
	a''4. a'8 |
        % measure 25
	f''8. ( e''16 ) f''16 ( e''16 ) d''8 |
	d''8. ( cis''16 ) d''16 ( cis''16 ) bes'8 |
	bes'8. ( a'16 ) bes'16 ( a'16 ) g'8 |
	g'4. g'8 |
        % measure 29
	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\acciaccatura { fis'16 } g'8 d''8 cis''8 bes'8 |
	a'4 ( cis''4 |
	e''4 a''4 ) |
        % measure 33
	\acciaccatura { a'16 } f''8. e''16 f''16 ( e''16 ) d''8 |
	d''8. ( cis''16 ) d''16 ( cis''16 ) bes'8 |
	bes'8. ( a'16 ) bes'16 ( a'16 ) g'8 |
	g'4. g'8 |
        % measure 37
	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\acciaccatura { fis'16 } g'8 d''8 cis''8 bes'8 |
	a'4 ( a''4 ~ |
	a''4 ) r4 |
    }
}

melody = {
    \key d \minor
    \time 2/4
    \melodysectiona
}

melodymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Shpielt mir kles- mor- im- lach, shpielt mir a frai- lach auf
    a_tentz- el lo mir gain mit gut- e Freind oi!
    Sol mir die gan- ze Welt op- ge- ben Mas- el tov
    a_sim- che is ba mir a grois- e heint. __
    Kein gre- ser- e sim- che's ba kein ma- me nit do,
    Seit all- e mun- ter frai- lach seit a zind oi!
    Der leibt hot die Ma- me, die glik- lech- e shoh,
    Zu_der chip- pe fir- en ihr_ein und ein- zig Kind.
    Der leibt hot die Ma- me, die glik- lech- e shoh,
    Zu_der chip- pe fir- en ihr_ein und ein- zig Kind
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmonysectiona = {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

tenorharmony =  \transpose c' bes {
    \key e \minor
    \time 2/4
    \tenorharmonysectiona
}

tenorharmonymidi =  \transpose c' bes {
    \key e \minor
    \time 2/4
    \preintro
    \tenorharmonysectiona
    \tenorharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoharmonysectiona = {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

altoharmony = {
    \key d \minor
    \time 2/4
    \altoharmonysectiona
}

altoharmonymidi = {
    \key d \minor
    \time 2/4
    \preintro
    \altoharmonysectiona
    \altoharmonysectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countersectiona = {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

counter =  \transpose c c' {
    \key d \minor
    \time 2/4
    \countersectiona
}

countermidi =  \transpose c c' {
    \key d \minor
    \time 2/4
    \preintro
    \countersectiona
    \countersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% currently just the piano left hand.  need to fix that.

%    << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
%    << sna4 cymr4 >> r8 cymc8 |

%    bda4 bda8 bda8 | s8 bda8 bda4 |

basslinesectiona = {
    \repeat volta 2 {
        % measure 1
        a,8 r8 e8 r8 |
        a,8 r8 e8 r8 |
        d8 r8 a,8 r8 |
        g,8 r8 a,8 r8 |
        % measure 5
        \grace { s16 } cis8 r8 a,8 r8 |
        \grace { s16 } d8 r8 a,8 r8 |
        cis8 r8 a,8 r8 |
        e8-> r8 r4 |
        % measure 9
        a,8 r8 e8 r8 |
        a,8 r8 e8 r8 |
        d8 r8 a,8 r8 |
        g,8 r8 a,8 r8 |
        % measure 13
        \grace { s16 } g,8 r8 d8 r8 |
        g,8 r8 d8 r8 |
        cis8 r8 a,8 r8 |
        e8-> r8 r4 |
        % measure 17
        d8 r8 a8 r8 |
        d8 r8 a8 r8 |
        cis8 r8 a8 r8 |
        d8 r8 a,8 r8 |
        % measure 21
        \grace { s16 } d8 r8 a8 r8 |
        \grace { s16 } d8 r8 a,8 r8 |
        cis8 r8 a,8 r8 |
        e8 r8 r4 |
        % measure 25
        d8 r8 a,8 r8 |
        d8 r8 a,8 r8 |
        d8 r8 g,8 r8 |
        bes,8 r8 g,8 r8 |
        % measure 29
        \grace { s16 } d8 r8 g,8 r8  |
        \grace { s16 } bes,8 r8 g,8 r8 |
        a,4 cis4 |
        e4 a4 |
        % measure 33
        \grace { s16 } d8 r8 a,8 r8 |
        d8 r8 a,8 r8 |
        d8 r8 g,8 r8 |
        bes,8 r8 g,8 r8 |
        % measure 37
        \grace { s16 } d8 r8 g,8 r8  |
        \grace { s16 } bes,8 r8 g,8 r8 |
        a,4 e8-> cis8-> |
        a,4-> r4 |
    }
}

bassline = {
    \key d \minor
    \time 2/4
    \basslinesectiona
}

basslinemidi = {
    \key d \minor
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

guitarnotes = {
    \key d \minor
    \time 2/4
    \guitarsectiona
}

guitarnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \guitarsectiona
    \guitarsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        a2 | d4:min a4 | d4:min a4 | g4:min a4 |
        \grace { a16 } a2 | \grace { d16:min } d2:min | a2 | a2 |
        a2 | d4:min a4 | d4:min a4 | g4:min a4 |
        \grace { g16:min } g2:min | g2:min | a2 | a2 |
        d2 | d2 | a2:7 | d2 |
        \grace { d16:min } d2:min | \grace { d16:min } d2:min | a2 | a2 |
        d2:min | d4:min d4:7 | g2:min | g2:min |
        \grace { g16:min } g2:min | \grace { g16:min } g2:min | a2 | a2 |
        \grace { d16:min } d2:min | d4:min d4:7 | g2:min | g2:min |
        \grace { g16:min } g2:min | \grace { g16:min } g2:min | a2 | a2 |
    }
}

chordletters = \chordmode {
    \time 2/4
    \chordletterssectiona
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

melodystaff =  \context Staff = "melodystaff"  \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = "Melody"
    instr = "Mel."
}  <<
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutesectiona = {
    \repeat volta 2 {
        % measure 1
        cis''8\ff d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 5
	\acciaccatura { a'16 } cis''8 d''8 e''8 e''8 |
	\acciaccatura { g''16 } f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	e''2 ( |
	< cis'' a'' >4 ) r8 a'8 |
        % measure 9
        cis''8 d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 13
	\acciaccatura { fis'16 } g'8 ( bes'8 ) a'8 g'8 |
	g'8 ( d''8 ) cis''8 bes'8 |
	a'2 ~ |
	a'4 r8 a'8 |
        % measure 17
	d''8 e''8 fis''8 g''8 |
	fis''8 ( g''16 fis''16 e''8 ) d''8 |
	e''8 ( fis''16 e''16 d''8 ) cis''8 |
	d''4. d''8 |
        % measure 21
	\grace { s16 } d''8 f''8 e''8 d''8 |
	\grace { s16 } d''8 a''8 gis''8 f''8 |
	e''2 ( |
	a''4. ) a'8 |
        % measure 25
	f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	d''8. ( cis''16 ) d''16 ( cis''16 bes'8 ) |
	bes'8. ( a'16 ) bes'16 ( a'16 g'8 ) |
	g'4. g'8 |
        % measure 29
	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\acciaccatura { fis'16 } g'8 ( d''8 ) cis''8 bes'8 |
	a'4 cis''4 |
	e''4 a''4 |
        % measure 33
	\acciaccatura { a'16 } f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	d''8. ( cis''16 ) d''16 ( cis''16 bes'8 ) |
	bes'8. ( a'16 ) bes'16 ( a'16 g'8 ) |
	g'4. g'8 |
        % measure 37
	\grace { s16 } g'8 ( bes'8 ) a'8 g'8 |
	\acciaccatura { fis'16 } g'8 ( d''8 ) cis''8 bes'8 |
	a'4 cis''8 e''8 |
	a''4-> r4 |
    }
}

flutenotes =  \transpose c c {
    \key d \minor
    \time 2/4
    \flutesectiona
}

flutenotesmidi =  \transpose c c, {
    \key d \minor
    \time 2/4
    \preintro
    \flutesectiona
    \flutesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetsectiona = {
    \repeat volta 2 {
        % measure 1
        dis''8\ff e''8 fis''4 |
        g''8 g''8 fis''4 |
        e''8 e''8 dis''4 |
        c''8 c''8 b'4 |
        % measure 5
        \grace { s16 } dis''8 e''8 fis''8 fis''8 |
        \grace { s16 } g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
        fis''2 ( |
        b''4 ) r8 b'8 |
        % measure 9
        dis''8 e''8 fis''4 |
        g''8 g''8 fis''4 |
        e''8 e''8 dis''4 |
        c''8 c''8 b'4 |
        % measure 13
        \grace { s16 } a'8 c''8 c''16 ( b'16 ) b'16 ( a'16 ) |
        a'8 e''8 dis''8 c''8 |
        b'8 b'8 ( dis''8 fis''8 |
        b''4 ) r8 b'8 |
        % measure 17
        e''8 fis''8 gis''8 a''8  |
        gis''8 a''16 gis''16 fis''8 e''8 |
        fis''8 gis''16 fis''16 e''8 dis''8 |
        e''4. e''8 |
        % measure 21
        \grace { s16 } e''8 g''8 g''16 ( fis''16 ) fis''16 ( e''16 ) |
        \grace { s16 } e''8 b''8 ais''8 g''8 |
        fis''2 ( |
        b''4 ) r8 b'8 |

        g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
        e''8. dis''16 \tuplet 3/2 { e''8 ( dis''8 c''8 ) } |
        c''8. b'16 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. a'8 |

        \grace { s16 } a'8 c''8 b'8 a'8 |
        \grace { s16 } a'8 e''8 dis''8 c''8 |
        b'4 dis''4 |
        fis''4 b''4 |

        \grace { s16 } g''8. fis''16 \tuplet 3/2 { g''8 ( fis''8 e''8 ) } |
        e''8. dis''16 \tuplet 3/2 { e''8 ( dis''8 c''8 ) } |
        c''8. b'16 \tuplet 3/2 { c''8 ( b'8 a'8 ) } |
        a'4. a'8 |

        \grace { s16 } a'8 c''8 b'8 a'8 |
        \grace { s16 } a'8 e''8 dis''8 c''8 |
        b'4 b''8^^ b''8^^ |
        b''4^^ r4 |
    }
}

clarinetnotes = {
    \key e \minor
    \time 2/4
    \clarinetsectiona
}

clarinetnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \clarinetsectiona
    \clarinetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxsectiona = {
    \repeat volta 2 {
        % measure 1
        b'8\ff c''8 dis''8 b'8 |
        e''8 e''8 dis''16 ( b'16 dis''8 ) |
        g'8 g'8 fis'16 ( b'16 fis'8 ) |
        e'16 ( fis'16 e'8 ) dis'16 ( fis'16 ) fis'8 |
        % measure 5
        \grace { s16 } b'8 c''8 dis''8 dis''8 |
        \grace { s16 } e''8 b'16 dis''16 \tuplet 3/2 { e''8 ( b'8 b'8 ) } |
        dis''8 b'8 dis''8 fis''8 |
        dis''8 fis''8 fis''8 r8 |
        % measure 9
        b'8 c''8 dis''8 dis''8 |
        e''8 b'8 dis''16 ( b'16 dis''8 ) |
        g'8 g'8 fis'16 ( b'16 fis'8 ) |
        e'16 ( fis'16 e'8 ) dis'16 ( fis'16 dis'8 ) |
        % measure 13
        \acciaccatura { dis'16 } e'2 |
        e'8 g'8 fis'8 e'8 |
        dis'8 dis'8 fis'8 b'8 |
        dis''8 fis''8 b'8 r8 |
        % measure 17
        gis'8 b'8 e''8 cis''8 |
        b'8 cis''16 b'16 a'8 gis'8 |
        a'8 b'16 a'16 gis'8 fis'8 |
        gis'8 b'16 b'16 gis'8 b'8 |
        % measure 21
        \acciaccatura { ais'16 } b'2 |
        \grace { s16 } b'8 g''8 fis''8 e''8 |
        dis''8 b'8 dis''8 fis''8 |
        dis''8 fis''8 dis''8 r8 |

        b'8. a'16 \tuplet 3/2 { b'8 ( a'8 g'8 ) } |
        g'8 r8 gis'8 r8 |
        e'8. d'16 e'4 |
        r8 e'8 a'8 r8 |

        \acciaccatura { dis'16 } e'2 |
        \grace { s16 } e'8 g'8 fis'8 e'8 |
        dis'8 ( fis'8 ) fis'8 ( b'8 ) |
        b'8 ( dis''8 ) dis''8 ( fis''8 ) |

        \grace { s16 } b'8. a'16 \tuplet 3/2 { b'8 ( a'8 g'8 ) } |
        g'8 r8 gis'8 r8 |
        e'8. d'16 e'4 |
        r8 e'8 a'8 r8 |

        \acciaccatura { dis'16 } e'2 |
        \grace { s16 } a'8 g'8 fis'8 e'8 |
        dis'4 dis''8^^ dis''8^^ |
        dis''4 r4 |
    }
}

tenorsaxnotes = {
    \key e \minor
    \time 2/4
    \tenorsaxsectiona
}

tenorsaxnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \tenorsaxsectiona
    \tenorsaxsectiona
}

tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforflutenotes = \transpose c' bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c' bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltosectiona = {
    \repeat volta 2 {
        % measure 1
        b'8\ff c''8 dis''8 b'8 |
        e''8 e''8 dis''16 ( b'16 dis''8 ) |
        g''8 g''8 fis''16 ( b''16 fis''8 ) |
        e''16 ( fis''16 e''8 ) dis''16 ( fis''16 ) fis''8 |
        % measure 5
        \grace { s16 } b'8 c''8 dis''8 dis''8 |
        \grace { s16 } e''8 b''16 dis'''16 \tuplet 3/2 { e'''8 ( b''8 b''8 ) } |
        dis''8 b'8 dis''8 fis''8 |
        dis''8 fis''8 fis''8 r8 |
        % measure 9
        b'8 c''8 dis''8 dis''8 |
        e''8 b''8 dis''16 ( b'16 dis''8 ) |
        g''8 g''8 fis''16 ( b''16 fis''8 ) |
        e''16 ( fis''16 e''8 ) dis''16 ( fis''16 dis''8 ) |
        % measure 13
        \acciaccatura { dis''16 } e''2-\prall |
        e''8 g''8 fis''8 e''8 |
        dis''8 dis''8 fis''8 b''8 |
        dis''8 fis''8 b'8 r8 |
        % measure 17
        gis'8 b'8 e''8 cis'''8 |
        b''8 cis'''16 b''16 a''8 gis''8 |
        a''8 b''16 a''16 gis''8 fis''8 |
        gis''8 b''16 b''16 gis''8 b''8 |
        % measure 21
        \acciaccatura { ais'16 } b'2-\prall |
        \grace { s16 } b'8 g''8 fis''8 e''8 |
        dis''8 b'8 dis''8 fis''8 |
        dis''8 fis''8 dis'''8 r8 |

        b''8. a''16 \tuplet 3/2 { b''8 ( a''8 g''8 ) } |
        g''8 r8 gis''8 r8 |
        e''8. d''16 e''4 |
        r8 e''8 a''8 r8 |

        \acciaccatura { dis''16 } e''2-\prall |
        \grace { s16 } e''8 g''8 fis''8 e''8 |
        dis''8 ( fis''8 ) fis''8 ( b''8 ) |
        fis''8 ( dis''8 ) dis''8 ( fis''8 ) |

        \grace { s16 } b''8. a''16 \tuplet 3/2 { b''8 ( a''8 g''8 ) } |
        g''8 r8 gis''8 r8 |
        e''8. d''16 e''4 |
        r8 e''8 a''8 r8 |

        \acciaccatura { dis''16 } e''2-\prall |
        \grace { s16 } a''8 g''8 fis''8 e''8 |
        dis''4 dis''8^^ dis''8^^ |
        dis''4 r4 |
    }
}

tenorforaltonotes = \transpose ees' bes {
    \key e \minor
    \time 2/4
    \tenorforaltosectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxsectiona = {
    \repeat volta 2 {
        ais'8\ff b'8 cis''4 |
        d''8 d''8 cis''4 |
        b'8 b'8 ais'4 |
        g'8 g'8 fis'4 |

        \acciaccatura { fis'16 } ais'8 b'8 cis''8 cis''8 |
        \acciaccatura { e''16 } d''8. cis''16 d''16 ( cis''16 b'8 ) |
        cis''8 fis'8 ( ais'8 cis'8 |
        fis''4 ) r8 fis'8 |

        ais'8 b'8 cis''4 |
        d''8 d''8 cis''4 |
        b'8 b'8 ais'4 |
        g'8 g'8 fis'4 |

        \acciaccatura { dis'16 } e'8 g'8 fis'8 e'8 |
        e'8 b'8 ais'8 g'8 |
        fis'8 ( ais'8 cis''8 fis''8 |
        fis'4 ) r8 fis'8 |

        b'8 cis''8 dis''8 e''8 |
        dis''8 e''16 dis''16 cis''8 b'8 |
        cis''8 dis''16 cis''16 b'8 ais'8 |
        b'4 r8 b'8 |

        \grace { s16 } b'8 d''8 cis''8 b'8 |
        \acciaccatura { ais'16 } b'8 fis''8 eis''8 d''8 |
        cis''2 ( |
        fis''4 ) r8 fis'8 |

        d''8. cis''16 d''16 ( cis''16 b'8 ) |
        b'8. ais'16 b'16 ( ais'16 g'8 ) |
        g''8. fis''16 g''16 ( fis''16 e''8 ) |
        e''4. e''8 |

        \grace { s16 } e''8 g''8 fis''8 e''8 |
        \acciaccatura { dis''16 } e''8 b''8 ais''8 g''8 |
        fis''4 ais'4 |
        cis''4 fis''4 |

        \grace { s16 } d''8. cis''16 d''16 ( cis''16 b'8 ) |
        b'8. ais'16 b'16 ( ais'16 g'8 ) |
        g''8. fis''16 g''16 ( fis''16 e''8 ) |
        e''4. e''8 |

        \grace { s16 } e''8 g''8 fis''8 e''8 |
        \acciaccatura { dis''16 } e''8 b''8 ais''8 g''8 |
        fis''4 fis''8-> fis''8-> |
        fis''4.-> r8 |
    }
}

altosaxnotes = {
    \key b \minor
    \time 2/4
    \altosaxsectiona
}

altosaxnotesmidi = {
    \key b \minor
    \time 2/4
    \preintro
    \altosaxsectiona
    \altosaxsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetsectiona = \transpose bes c' {
    \repeat volta 2 {
        % measure 1
        cis''8\ff d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |

	\acciaccatura { a'16 } cis''8 d''8 e''8 e''8 |
	\grace { s16 } f''8. e''16 \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
	e''2 ( |
	a'4 ) r8 a'8 |
        % measure 9
        cis''8 d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 13
	\acciaccatura { fis'16 } g'8 bes'8 a'8 g'8 |
	g'8 d''8 cis''8 bes'8 |
	a'2 ~ |
	a'4 r8 a'8 |
        % measure 17
	d''2 |
	d''2 |
	e''4 d''8 cis''8 |
	d''4. d''8 |
        % measure 21
	\grace { s16 } d''8 f''8 e''8 d''8 |
	\grace { s16 } d''8 f''8 e''8 d''8 |
	cis''2 ( |
	a'4. ) a'8 |

	f''8. e''16 \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
	d''8. cis''16 \tuplet 3/2 { d''8 ( cis''8 bes'8 ) } |
	bes'8. a'16 \tuplet 3/2 { bes'8 ( a'8 g'8 ) } |
	g'4. g'8 |

	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\grace { s16 } g'8 d''8 cis''8 bes'8 |
	a'4 cis''4 |
	e''4 a'4 |

	\acciaccatura { a'16 } f''8. e''16 \tuplet 3/2 { f''8 ( e''8 d''8 ) } |
	d''8. cis''16 \tuplet 3/2 { d''8 cis''8 bes'8 } |
	bes'8. a'16 \tuplet 3/2 {  bes'8 a'8 g'8 } |
	g'4. g'8 |

	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\grace { s16 } g'8 d''8 cis''8 bes'8 |
	a'4 e''8-> cis''8-> |
	a'4-> r4 |
    }
}

trumpetnotes = {
    \key e \minor
    \time 2/4
    \trumpetsectiona
}

trumpetnotesmidi = {
    \key e \minor
    \time 2/4
    \preintro
    \trumpetsectiona
    \trumpetsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonesectiona = {
    \repeat volta 2 {
        % measure 1
        cis'8 d'8 e'4 |
        d'8 d'8 cis'4 |
        f'8 f'8 e'4 |
        d'8 d'8 cis'4 |
        % measure 5
        \grace { s16 } a8 r8 e8 r8 |
        \grace { s16 } d8 a8 f8 d8 |
        a,8 a8 e8 a8 |
        a8 a16 a16 e16 e16 a8 |
        % measure 9
        cis'8 d'8 e'4 |
        d'8 d'8 cis'4 |
        f'8 f'8 e'4 |
        d'8 d'8 cis'4 |
        % measure 13
        \grace { s16 } g8 r8 d8 r8 |
        g8 r8 d8 r8 |
        a,8 a8 e8 a8 |
        a,8 e8 a8 r8 |
        % measure 17
        d8 r8 a,8 r8 |
        d8 r8 a,8 r8 |
        a,8 r8 e8 r8 |
        d8 d'8 a8 d'8 |
        % measure 21
        \grace { s16 } d8 r8 a,8 r8 |
        \grace { s16 } d8 r8 a,8 r8 |
        a,8 a8 e8 a8 |
        a,8 e8 a8 a,8 |
        % measure 25
        f8. e16 f16 ( e16 d8 ) |
        d8. cis16 d16 ( cis16 bes,8 ) |
        bes,8. a,16 bes,16 ( a,16 g,8 ) |
        g,8 g8 d8 bes,8 |
        % measure 29
        \grace { s16 } g,8 r8 d8 r8 |
        \grace { s16 } g,8 r8 e8 r8 |
        a,8 r8 a4 |
        cis'4 a4 |
        % measure 33
        \grace { s16 } f'8. e'16 f'16 ( e'16 d'8 ) |
        d'8. cis'16 d'16 ( cis'16 bes8 ) |
        bes8. a16 bes16 ( a16 g8 ) |
        g8 g8 d8 bes,8 |
        % measure 37
        \grace { s16 } g,8 g8 d8 g8 |
        \grace { s16 } g,8 g8 d8 g8 |
        a4 e8-> cis8-> |
        a,4-> r4 |
    }
}

trombonenotes = {
    \key d \minor
    \time 2/4
    \trombonesectiona
}

trombonenotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \trombonesectiona
    \trombonesectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = {
    \bassline
}

euphoniumnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    \repeat volta 2 {
        % measure 1
        cis''8\ff d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 5
	\acciaccatura { a'16 } cis''8 d''8 e''8 e''8 |
	\acciaccatura { g''16 } f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	e''2 ( |
	< cis'' a'' >4 ) r8 a'8 |
        % measure 9
        cis''8 d''8 e''4 |
	f''8 f''8 e''4 |
	d''8 d''8 cis''4 |
	bes'8 bes'8 a'4 |
        % measure 13
	\acciaccatura { fis'16 } g'8 ( bes'8 ) a'8 g'8 |
	g'8 ( d''8 ) cis''8 bes'8 |
	a'2 ~ |
	a'4 r8 a'8 |
        % measure 17
	d''8 e''8 fis''8 g''8 |
	fis''8 ( g''16 fis''16 e''8 ) d''8 |
	e''8 ( fis''16 e''16 d''8 ) cis''8 |
	d''4. d''8 |
        % measure 21
	\grace { s16 } d''8 f''8 e''8 d''8 |
	\grace { s16 } d''8 a''8 gis''8 f''8 |
	e''2 ( |
	a''4. ) a'8 |
        % measure 25
	f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	d''8. ( cis''16 ) d''16 ( cis''16 bes'8 ) |
	bes'8. ( a'16 ) bes'16 ( a'16 g'8 ) |
	g'4. g'8 |

	\grace { s16 } g'8 bes'8 a'8 g'8 |
	\acciaccatura { fis'16 } g'8 ( d''8 ) cis''8 bes'8 |
	a'4 cis''4 |
	e''4 a''4 |

	\acciaccatura { a'16 } f''8. ( e''16 ) f''16 ( e''16 d''8 ) |
	d''8. ( cis''16 ) d''16 ( cis''16 bes'8 ) |
	bes'8. ( a'16 ) bes'16 ( a'16 g'8 ) |
	g'4. g'8 |

	\grace { s16 } g'8 ( bes'8 ) a'8 g'8 |
	\acciaccatura { fis'16 } g'8 ( d''8 ) cis''8 bes'8 |
	a'4 cis''8 e''8 |
	a''4-> r4 |
    }
}

violinnotes = {
    \key d \minor
    \time 2/4
    \violinsectiona
}

violinnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \violinsectiona
    \violinsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = {
    \bassline
}

bassnotesmidi = {
    \basslinemidi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodychordnames = \context ChordNames = "melodychordnames" {
    \melodychordletters
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppersectiona = {
    \repeat volta 2 {
        % measure 1
        cis''8\ff d''8 e''4 |
        < d'' f'' >8 < d'' f'' >8 < cis'' e'' >4 |
        < f' a' d'' >8 < f' a' d'' >8 < e' a' cis'' >4 |
        < d' e' bes' >8 < d' e' bes' >8 < cis' e' a' >4 |
        % measure 5
        \acciaccatura { a'16 } cis''8 d''8 e''8 e''8 |
        \acciaccatura { g''16 } f''8. e''16 f''16 ( e''16 d''8 ) |
        < cis'' e'' >2 ( |
        < cis'' e'' a'' >4 ) r8 a'8 |
        % measure 9
        cis''8 d''8 e''4 |
        < d'' f'' >8 < d'' f'' >8 < cis'' e'' >4 |
        < f' a' d'' >8 < f' a' d'' >8 < e' a' cis'' >4 |
        < d' e' bes' >8 < d' e' bes' >8 < cis' e' a' >4 |
        % measure 13
        \acciaccatura { fis'16 } g'8 bes'8 a'8 g'8 |
        g'8 d''8 cis''8 bes'8 |
        < cis' e' a' >2 ~ |
        < cis' e' a' >4 r8 a'8 |
        % measure 17
        d''8 e''8 fis''8 g''8 |
        fis''8 g''16 fis''16 e''8 d''8 |
        e''8 ( fis''16 e''16 ) d''8 cis''8 |
        < fis' d'' >4 r8 d''8 |
        % measure 21
        \grace { s16 } d''8 f''8 e''8 d''8 |
        \acciaccatura { cis''16 } d''8 a''8 gis''8 < d'' f'' >8 |
        < cis'' e'' >2 ( |
        < cis'' e'' a'' >4 ) r8 a'8 |
        % measure 25
        f''8. e''16 f''16 ( e''16 d''8 ) |
        d''8. cis''16 d''16 ( cis''16 bes'8 ) |
        bes'8. a'16 bes'16 ( a'16 g'8 ) |
        g'4. g'8 |
        % measure 29
        \grace { s16 } g'8 bes'8 a'8 g'8 |
        \acciaccatura { fis'16-2 } g'8-1 d''8-4 cis''8-3 bes'8-2 |
        a'4 < a' cis'' >4 |
        < cis'' e'' >4 < cis'' e'' a'' >4 |
        % measure 33
        \acciaccatura { a'16 } f''8. e''16 f''16 ( e''16 d''8 ) |
        d''8. cis''16 d''16 ( cis''16 bes'8 ) |
        bes'8. a'16 bes'16 ( a'16 g'8 ) |
        g'4. g'8 |
        % measure 37
        \grace { s16 } g'8 bes'8 a'8 g'8 |
        \acciaccatura { fis'16-2 } g'8-1 d''8 cis''8 bes'8 |
        a'4 < cis'' e'' a'' >4-> |
        < cis'' e'' a'' >4-> r4 |
    }
}

pianorightuppernotes = {
    \key d \minor
    \time 2/4
    \pianorightuppersectiona
}

%-------------------------------------------------

pianorightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianoleftuppersectiona = {
    \repeat volta 2 {
        % measure 1
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        d8 a8 a,8 a8 |
        g,8 g8 a,8 a8 |
        % measure 5
        \grace { s16 } a,8 a8 e8 a8 |
        \grace { s16 } d8 a8 f8 d8 |
        a,8 a8 e8 a8 |
        a,8 ( a16 a16 d16 d16 a8 ) |
        % measure 9
        a,8 a8 e8 a8 |
        a,8 a8 e8 a8 |
        d8 a8 a,8 a8 |
        g,8 g8 a,8 a8 |
        % measure 13
        \grace { s16 } g,8 g8 d8 g8 |
        g,8 g8 d8 g8 |
        a,8 a8 e8 a8 |
        a,8 e8 a8 a,8 |
        % measure 17
        d8 d'8 a8 d'8 |
        d8 d'8 a8 d'8 |
        a,8 a8 e8 a8 |
        d8 d'8 a8 d'8 |
        % measure 21
        \grace { s16 } d8 d'8 a8 d'8 |
        \grace { s16 } d8 d'8 a8 d'8 |
        a,8 a8 e8 a8 |
        a,8 e8 a8 a,8 |
        % measure 25
        d8 d'8 a8 d'8 |
        d8 d'8 fis8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 bes,8 |
        % measure 29
        \grace { s16 } g,8 g8 d8 g8 |
        \grace { s16 } g,8 g8 e8 g8 |
        a,8 a8 e8 a8 |
        cis8 e8 a,8 a8 |
        % measure 33
        \grace { s16 } d8 d'8 a8 d'8 |
        d8 d'8 fis8 d'8 |
        g,8 g8 d8 g8 |
        g,8 g8 d8 bes,8 |
        % measure 37
        \grace { s16 } g,8 g8 d8 g8 |
        \grace { s16 } g,8 g8 d8 g8 |
        < a, a >4 e8-> cis8-> |
        < a, a >4-> r4 |
    }
}

pianoleftuppernotes = {
    \key d \minor
    \time 2/4
    \pianoleftuppersectiona
}

%-------------------------------------------------

pianoleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

pianorightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \pianorightuppersectiona
    \pianorightuppersectiona
}

pianoleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \pianoleftuppersectiona
    \pianoleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppersectiona = {
    \repeat volta 2 {
        % measure 1
        < a' cis'' >8\ff < bes' d'' >8 < cis'' e''>4 |
        < d'' f'' >8 < d'' f'' >8 < cis'' e'' >4 |
        < f' a' d'' >8 < f' a' d'' >8 < e' a' cis'' >4 |
        < d' e' bes' >8 < d' e' bes' >8 < cis' e' a' >4 |
        % measure 5
        \grace { s16 } < a' cis'' >8 < bes' d'' >8 < cis'' e'' >8 < cis'' e'' >8 |
        \grace { s16 } < d'' f'' >8. e''16 ( f''16 e''16 d''8 ) |
        < cis'' e'' >2 ( |
        < cis'' a'' >4 ) r8 a'8 |
        % measure 9
        < a' cis'' >8 < bes' d'' >8 < cis'' e''>4 |
        < d'' f'' >8 < d'' f'' >8 < cis'' e'' >4 |
        < f' a' d'' >8 < f' a' d'' >8 < e' a' cis'' >4 |
        < d' e' bes' >8 < d' e' bes' >8 < cis' e' a' >4 |
        % measure 13
        \acciaccatura { f'16 } g'8 bes'8 bes'16 ( a'16 ) a'16 ( g'16 ) |
        g'8 < f' d'' >8 < e' cis'' >8 < d' bes' >8 |
        < cis' a' >2 ~ |
        < cis' a' >4 r8 a'8 |
        % measure 17
        d''8 e''8 fis''8 g''8 |
        fis''8 g''16 fis''16 e''8 d''8 |
        e''8 fis''16 e''16 d''8 cis''8 |
        d''4. d''8 |
        % measure 21
        \grace { s16 } d''8 f''8 f''16 ( e''16 ) e''16 ( d''16 ) |
        \acciaccatura { cis''16 } d''8 < f'' a'' >8 < e'' gis'' >8 < d'' f'' >8 |
        < cis'' e'' >2 ( |
        < cis'' a'' >4 ) r8 a'8 |
        % measure 25
        f''8. e''16 ( f''16 e''16 d''8 ) |
        d''8. cis''16 ( d''16 cis''16 bes'8 ) |
        bes'8. a'16 ( bes'16 a'16 g'8 ) |
        g'4. g'8 |
        % measure 29
        \grace { s16 } g'8 bes'8 a'8 g'8 |
        \acciaccatura { fis'16 } g'8 < f' d'' >8 < e' cis'' >8 < d' bes' >8 |
        < cis' a' >4 < e' a' cis'' >4 |
        < a' cis'' e'' >4 < cis'' e'' a'' >4 |
        % measure 33
        \grace { s16 } f''8. e''16 ( f''16 e''16 d''8 ) |
        d''8. cis''16 ( d''16 cis''16 bes'8 ) |
        bes'8. a'16 ( bes'16 a'16 g'8 ) |
        g'4. g'8 |
        % measure 37
        \grace { s16 } g'8 bes'8 a'8 g'8 |
        \acciaccatura { fis'16 } g'8 < f' d'' >8 < e' cis'' >8 < d' bes' >8 |
        < cis' a' >4 < a' cis'' a'' >4-> |
        < a' cis'' a'' >4-> r4 |
    }
}

accordionrightuppernotes = {
    \key d \minor
    \time 2/4
    \accordionrightuppersectiona
}

%-------------------------------------------------

accordionrightlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionleftuppersectiona = {
    \repeat volta 2 {
        % measure 1
        a,8_3^"B.S." e,8_2 a,8_3 a8^"M" |
        d,8 d'8^"m" a,8 a8^"M" |
        d,8 d'8^"m" a,8 a8^"M" |
        g,8 g8^"m" a,8 a8^"M" |
        % measure 5
        \grace { s16 } a,8^"B.S." e,8 a,8 a8^"M" |
        \grace { s16 } d,8 d'8^"m" a,8 d'8 |
        a,8 a8^"M" e,8 a8 |
        a,8 a8 e,8 a8 |
        % measure 9
        a,8_3^"B.S." e,8_2 a,8_3 a8^"M" |
        d,8 d'8^"m" a,8 a8^"M" |
        d,8 d'8^"m" a,8 a8^"M" |
        g,8 g8^"m" a,8 a8^"M" |
        % measure 13
        \grace { s16 } g,8 g8^"m" d,8 g8 |
        g,8 g8^"m" a,8_3^"B.S." e,8_2 |
        a,8 a8^"M" e,8 a8 |
        a,8 a8 a8 a8 |
        % measure 17
        d,8 d'8^"M" d,8_3 g8_4^"M" |
        a,8_3_-^"B.S." b,8_2 cis,8_-_3 d,8_4 |
        cis,8_-_3 a8^"7" a,8 a8 |
        d,8 d'8^"M" a,8 d'8 |
        % measure 21
        \grace { s16 } d,8 d'8^"m" a,8 d'8 |
        \grace { s16 } d,8 d'8 d,8 d'8 |
        a,8 a8^"M" e,8 a8 |
        a,8 a8 a8 a8 |
        % measure 25
        d,8 d8^"m" a,8 d8 |
        d,8 d8 d,8 d8^"7" |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        % measure 29
        \grace { s16 } g,8 g8 d,8 g8 |
        \grace { s16 } g,8 g8 a,8_3^"B.S." e,8_2 |
        a,8_3 a8^"M" e,8 a8 |
        a,8 a8 a,8 a8 |
        % measure 33
        \grace { s16 } d,8 d8^"m" a,8 d8 |
        d,8 d8 d,8 d8^"7" |
        g,8 g8^"m" d,8 g8 |
        g,8 g8 d,8 g8 |
        % measure 37
        \grace { s16 } g,8 g8 d,8 g8 |
        \grace { s16 } g,8 g8 a,8_3^"B.S." e,8_2 |
        a,4_3 e,8_2^> cis,8_-_4^> |
        < a,_3 a_2 >4^>^"M" r4 |
    }
}

accordionleftuppernotes = {
    \key d \minor
    \time 2/4
    \accordionleftuppersectiona
}

%-------------------------------------------------

accordionleftlowernotes = {
    \key d \minor
    \time 2/4
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \accordionrightuppersectiona
    \accordionrightuppersectiona
}

accordionleftnotesmidi = {
    \key d \minor
    \time 2/4
    \preintro
    \accordionleftuppersectiona
    \accordionleftuppersectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighsectiona = \drummode {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

drumshigh = \drummode {
    \time 2/4
    \stemUp
    \dynamicUp
    \drumshighsectiona
}

drumshighmidi = \drummode {
    \time 2/4
    \preintro
    \drumshighsectiona
    \drumshighsectiona
}

drumslowsectiona = \drummode {
    \repeat volta 2 {
        % measure 1
        s2 | s2 | s2 | s2 |
        % measure 5
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 9
        s2 | s2 | s2 | s2 |
        % measure 13
        \grace { s16 } s2 | s2 | s2 | s2 |
        % measure 17
        s2 | s2 | s2 | s2 |
        % measure 21
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        % measure 25
        s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
        \grace { s16 } s2 | s2 | s2 | s2 |
        \grace { s16 } s2 | \grace { s16 } s2 | s2 | s2 |
    }
}

drumslow = \drummode {
    \time 2/4
    \stemDown
    \drumslowsectiona
}

drumslowmidi = \drummode {
    \time 2/4
    \preintro
    \drumslowsectiona
    \drumslowsectiona
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    a2 | d4:min a4 | d4:min a4 | g4:min a4 | a2 | d2:min
}

previewnotes = {
    \key d \minor
    \time 2/4
    \bar ".|:"
    cis''8\ff d''8 e''4 |
    f''8 f''8 e''4 |
    d''8 d''8 cis''4 |
    bes'8 bes'8 a'4 |
    % measure 5
    cis''8 d''8 e''8 e''8 |
    f''8. e''16 f''16 ( e''16 ) d''8 |
}

\version "2.18.0"

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

bandmsectiona = {
    \repeat volta 2 {
        s2 | \breakAone s2 | \breakAtwo s2 | \breakAtre s2 | \breakAfor
        s2 | \breakAfiv s2 | \breakAsix s2 | \breakAsev s2 | \breakA
    }
}

bandmsectionb = {
    \repeat volta 2 {
        s2 | \breakBone s2 | \breakBtwo s2 | \breakBtre s2 | \breakBfor
        s2 | \breakBfiv s2 | \breakBsix s2 | \breakBsev s2 | \breakB
    }
}

bandmsectionc = {
    \repeat volta 2 {
        s2 | \breakCone s2 | \breakCtwo s2 | \breakCtre s2 | \breakCfor
        s2 | \breakCfiv s2 | \breakCsix s2 | \breakCsev s2 | \breakC
    }
}

bandmsectiond = {
    \repeat volta 2 {
        s2 | \breakDone s2 | \breakDtwo s2 | \breakDtre s2 | \breakDfor
        s2 | \breakDfiv s2 | \breakDsix s2 | \breakDsev s2 | \breakD
    }
}

bandmNV = {
    \time 2/4
    \tempo \tempostring
    \markA \positionA
    \bandmsectiona
    \markB \positionB
    \bandmsectionb
    \markC \positionC
    \bandmsectionc
    \markD \positionD
    \bandmsectiond
}

leadsheetbandmNV =  { \bandmNV }

bandm = { \bandmNV }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This Voice contains only spacing (invisible
% rests as) place holders for tempo changes in
% the midi output.

preintro = {
    s2 |
}

metronome =  \context Voice = "metronome" {
    \time 2/4
    \preintro
    \tempo 4 = 66
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodysectiona = {
    \repeat volta 2 {
        fis'8.-\trill ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 bes'16 a'16 g'16 |
        a'8.-\trill g'16 fis'16 ees'16 d'8 |

        fis'8.-\trill ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4. |
    }
}

melodysectionb = {
    \repeat volta 2 {
        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        fis'16 g'16 fis'16 g'16 bes'8 a'16 g'16 |
        fis'16 g'16 a'8 ~ a'16 g'16 fis'16 ees'16 |

        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        c'16 ees'16 ees'16 c'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4 d'8 |
    }
}

melodysectionc = {
    \repeat volta 2 {
        g'16 g'16 g'16 g'16 bes'8 a'16 g'16 |
        a'16 a'16 a'16 a'16 a'8. ees'16 |
        d'16 d'16 d'16 d'16 g'8 fis'16 ees'16 |
        fis'16 fis'16 fis'16 fis'16 fis'4 |

        c'16 c'16 c'16 c'16 ees'8 d'16 c'16 |
        ees'16 ees'16 ees'16 ees'16 g'8 fis'16 ees'16 |
        fis'16 g'16 a'16 g'16 fis'8.-\trill ees'16 |
        ees'8 d'4 d'8 |
    }
}

melodysectiond = {
    \repeat volta 2 {
        g'16 a'16 bes'8 bes'8 bes'8 |
        c''8 c''8 bes'4 |
        c''4 g'8 g'8 |
        bes'16 c''16 bes'16 a'16 g'8. g'16 |

        fis'16 g'16 a'4 c''8 |
        c''16 bes'16 a'16 g'16 a'8. g'16 |
        fis'16 g'16 a'16 g'16 fis'8. ees'16 |
        ees'8 d'4. |
    }
}

melody = {
    \key g \minor
    \time 2/4
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
}

melodymidi = {
    \key g \minor
    \time 2/4
    \preintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslinesectiona = {
    \repeat volta 2 {
        fis'8.\mf ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 bes'16 a'16 g'16 |
        a'8. g'16 fis'16 ees'16 d'8 |

        fis'8. ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4. |
    }
}

basslinesectionb = {
    \repeat volta 2 {
        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        fis'16 g'16 fis'16 g'16 bes'8 a'16 g'16 |
        fis'16 g'16 a'8 ~ a'16 g'16 fis'16 ees'16 |

        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        c'16 ees'16 ees'16 c'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4 d'8 |
    }
}

basslinesectionc = {
    \repeat volta 2 {
        g'16 g'16 g'16 g'16 bes'8 a'16 g'16 |
        a'16 a'16 a'16 a'16 a'8. ees'16 |
        d'16 d'16 d'16 d'16 g'8 fis'16 ees'16 |
        fis'16 fis'16 fis'16 fis'16 fis'4 |

        c'16 c'16 c'16 c'16 ees'8 d'16 c'16 |
        ees'16 ees'16 ees'16 ees'16 g'8 fis'16 ees'16 |
        fis'16 g'16 a'16 g'16 fis'8. ees'16 |
        ees'8 d'4 d'8 |
    }
}

basslinesectiond = {
    \repeat volta 2 {
        g'16 a'16 bes'8 bes'8 bes'8 |
        c''8 c''8 bes'4 |
        c''4 g'8 g'8 |
        bes'16 c''16 bes'16 a'16 g'8. g'16 |

        fis'16 g'16 a'4 c''8 |
        c''16 bes'16 a'16 g'16 a'8. g'16 |
        fis'16 g'16 a'16 g'16 fis'8. ees'16 |
        ees'8 d'4. |
    }
}

bassline = \transpose c c, {
    \key g \minor
    \time 2/4
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
}

basslinemidi = \transpose c c, {
    \key g \minor
    \time 2/4
    \preintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarsectiona = {
    \repeat volta 2 {
        < d a d' fis' >8.\pp < d a d' fis' >16 < d a d' fis' >8 < d a d' fis' >8 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < d a d' fis' >4 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >8 |
        < d a d' fis' >8. < d a d' fis' >16 < d a d' fis' >8 < d a d' fis' >8 |

        < d a d' fis' >8. < d a d' fis' >16 < d a d' fis' >8 < d a d' fis' >8 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < d a d' fis' >4 |
        < d a d' fis' >8 < d a d' fis' >8 < c g c' ees' g' >8 < c g c' ees' g' >8 |
        < d a d' fis' >8 < d a d' fis' >4 r8 |
    }
}

guitarsectionb = {
    \repeat volta 2 {
        < d a d' fis' >8 < d a d' fis' >4 < d a d' fis' >8 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >4 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >16 < d a d' fis' >16 |
        < d a d' fis' >8 < d a d' fis' >4 < d a d' fis' >8 |

        < d a d' fis' >8 < d a d' fis' >4 < d a d' fis' >8 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >4 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < c g c' ees' g' >8 < c g c' ees' g' >8 |
        < d a d' fis' >8 < d a d' fis' >4 < d a d' fis' >8 |
    }
}

guitarsectionc = {
    \repeat volta 2 {
        < g, d g bes d' g' >8 < g, d g bes d' g' >8 < g, d g bes d' g' >8. < g, d g bes d' g' >16 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >8. < d a d' fis' >16 |
        < d a d' fis' >8 < d a d' fis' >8 < c g c' ees' g' >8. < c g c' ees' g' >16 |
        < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >4 |

        < c g c' ees' g' >8 < c g c' ees' g' >8 < c g c' ees' g' >8. < c g c' ees' g' >16 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < c g c' ees' g' >8. < c g c' ees' g' >16 |
        < d a d' fis' >8 < d a d' fis' >8 < c g c' ees' g' >8. < c g c' ees' g' >16 |
        < d a d' fis' >8 < d a d' fis' >4 < d a d' fis' >8 |
    }
}

guitarsectiond = {
    \repeat volta 2 {
        < g, d g bes d' g' >16 < g, d g bes d' g' >16 < g, d g bes d' g' >8 < g, d g bes d' g' >8 < g, d g bes d' g' >8 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < g, d g bes d' g' >4 |
        < c g c' ees' g' >4 < g, d g bes d' g' >8 < g, d g bes d' g' >8 |
        < d a c' fis' >8 < d a c' fis' >8 < g, d g bes d' g' >8. < g, d g bes d' g' >16 |

        < d a d' fis' >16 < d a d' fis' >16 < d a d' fis' >8 < d a d' fis' >8 < d a d' fis' >8 |
        < c g c' ees' g' >8 < c g c' ees' g' >8 < d a d' fis' >8. < d a d' fis' >16 |
        < d a d' fis' >8 < d a d' fis' >8 < c g c' ees' g' >8. < c g c' ees' g' >16 |
        < d a d' fis' >8 < d a d' fis' >4. |
    }
}

guitarnotes = {
    \key g \minor
    \time 2/4
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
}

guitarnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarstrumsectiona = {
    \repeat volta 2 {
        bes'8.\pp bes'16 bes'8 bes'8 |
        bes'8 bes'8 bes'4 |
        bes'8 bes'8 bes'8 bes'8 |
        bes'8. bes'16 bes'8 bes'8 |

        bes'8. bes'16 bes'8 bes'8 |
        bes'8 bes'8 bes'4 |
        bes'8 bes'8 bes'8 bes'8 |
        bes'8 bes'4 r8 |
    }
}

guitarstrumsectionb = {
    \repeat volta 2 {
        bes'8 bes'4 bes'8 |
        bes'8 bes'8 bes'4 |
        bes'8 bes'8 bes'8 bes'16 bes'16 |
        bes'8 bes'4 bes'8 |

        bes'8 bes'4 bes'8 |
        bes'8 bes'8 bes'4 |
        bes'8 bes'8 bes'8 bes'8 |
        bes'8 bes'4 bes'8 |
    }
}

guitarstrumsectionc = {
    \repeat volta 2 {
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'4 |

        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'4 bes'8 |
    }
}

guitarstrumsectiond = {
    \repeat volta 2 {
        bes'16 bes'16 bes'8 bes'8 bes'8 |
        bes'8 bes'8 bes'4 |
        bes'4 bes'8 bes'8 |
        bes'8 bes'8 bes'8. bes'16 |

        bes'16 bes'16 bes'8 bes'8 bes'8 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'8 bes'8. bes'16 |
        bes'8 bes'4. |
    }
}

guitarstrumnotes = {
    \key g \minor
    \time 2/4
    \improvisationOn
    \guitarstrumsectiona
    \guitarstrumsectionb
    \guitarstrumsectionc
    \guitarstrumsectiond
    \improvisationOff
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletterssectiona = \chordmode {
    \repeat volta 2 {
        d2 | c4:min d4 | d2 | d2 |
        d2 | c4:min d4 | d4 c4:min | d2 |
    }
}

chordletterssectionb = \chordmode {
    \repeat volta 2 {
        d2 | d2 | d2 | d2 |
        d2 | d2 | c2:min | d2 |
    }
}

chordletterssectionc = \chordmode {
    \repeat volta 2 {
        g2:min | d2 | d4 c4:min | d2 |
        c2:min | c2:min | d4 c4:min | d2 |
    }
}

chordletterssectiond = \chordmode {
    \repeat volta 2 {
        g2:min | c4:min g4:min | c4:min g4:min | d4:7 g4:min |
        d2 | c4:min d4 | d4 c4:min | d2 |
    }
}

chordletters = \chordmode {
    \time 2/4
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutesectiona = {
    \repeat volta 2 {
        fis'8.-\trill\f ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 bes'16 a'16 g'16 |
        a'8.-\trill g'16 fis'16 ees'16 d'8 |

        fis'8.-\trill ees'16 d'8 d'8 |
        ees'16 d'16 c'16 ees'16 d'4 |
        d'16 ees'16 fis'16 g'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4. |
    }
}

flutesectionb = {
    \repeat volta 2 {
        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        fis'16 g'16 fis'16 g'16 bes'8 a'16 g'16 |
        fis'16 g'16 a'8 ~ a'16 g'16 fis'16 ees'16 |

        fis'16 g'16 a'4 g'8 |
        fis'16 g'16 fis'16 ees'16 d'4 |
        c'16 ees'16 ees'16 c'16 a'16 g'16 fis'16 ees'16 |
        fis'16 ees'16 d'4 d'8 |
    }
}

flutesectionc = {
    \repeat volta 2 {
        g'16 g'16 g'16 g'16 bes'8 a'16 g'16 |
        a'16 a'16 a'16 a'16 a'8. ees'16 |
        d'16 d'16 d'16 d'16 g'8 fis'16 ees'16 |
        fis'16 fis'16 fis'16 fis'16 fis'4 |

        c'16 c'16 c'16 c'16 ees'8 d'16 c'16 |
        ees'16 ees'16 ees'16 ees'16 g'8 fis'16 ees'16 |
        fis'16 g'16 a'16 g'16 fis'8.-\trill ees'16 |
        ees'8 d'4 d'8 |
    }
}

flutesectiond = {
    \repeat volta 2 {
        g'16 a'16 bes'8 bes'8 bes'8 |
        c''8 c''8 bes'4 |
        c''4 g'8 g'8 |
        bes'16 c''16 bes'16 a'16 g'8. g'16 |

        fis'16 g'16 a'4 c''8 |
        c''16 bes'16 a'16 g'16 a'8. g'16 |
        fis'16 g'16 a'16 g'16 fis'8. ees'16 |
        ees'8 d'4. |
    }
}

flutenotes = \transpose c c' {
    \key g \minor
    \time 2/4
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
}

flutenotesmidi = \transpose c c' {
    \key g \minor
    \time 2/4
    \preintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinsectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

violinsectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

violinsectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

violinsectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

violinnotes = {
    \key g \minor
    \time 2/4
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
}

violinnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
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

accordionrightuppersectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightuppersectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightuppersectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightuppersectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightuppernotes = {
    \key g \minor
    \time 2/4
    \accordionrightuppersectiona
    \accordionrightuppersectionb
    \accordionrightuppersectionc
    \accordionrightuppersectiond
}

%-------------------------------------------------

accordionrightlowersectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightlowersectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightlowersectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightlowersectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionrightlowernotes = {
    \key g \minor
    \time 2/4
    \accordionrightlowersectiona
    \accordionrightlowersectionb
    \accordionrightlowersectionc
    \accordionrightlowersectiond
}

%-------------------------------------------------

accordionleftuppersectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftuppersectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftuppersectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftuppersectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftuppernotes = {
    \key g \minor
    \time 2/4
    \accordionleftuppersectiona
    \accordionleftuppersectionb
    \accordionleftuppersectionc
    \accordionleftuppersectiond
}

%-------------------------------------------------

accordionleftlowersectiona = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftlowersectionb = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftlowersectionc = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftlowersectiond = {
    \repeat volta 2 {
        s2 |
        s2 |
        s2 |
        s2 |

        s2 |
        s2 |
        s2 |
        s2 |
    }
}

accordionleftlowernotes = {
    \key g \minor
    \time 2/4
    \accordionleftlowersectiona
    \accordionleftlowersectionb
    \accordionleftlowersectionc
    \accordionleftlowersectiond
}

%-------------------------------------------------

accordionrightnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    <<
        { \accordionrightuppernotes }
        { \accordionrightlowernotes }
    >>
}

accordionleftnotesmidi = {
    \key g \minor
    \time 2/4
    \preintro
    <<
        { \accordionleftuppernotes }
        { \accordionleftlowernotes }
    >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

leadsheetnotes = {
    \melody
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { }
tenorharmony = { }
altoharmony = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    d2 | c4:min d4 | d2 | d2 |
}

previewnotes = {
    \key g \minor
    \time 2/4
    \tempo \tempostring
    \markA \positionA
    fis'8.-\trill ees'16 d'8 d'8 |
    ees'16 d'16 c'16 ees'16 d'4 |
    d'16 ees'16 fis'16 g'16 a'16 bes'16 a'16 g'16 |
    a'8.-\trill g'16 fis'16 ees'16 d'8 |
}

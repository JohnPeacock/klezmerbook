\version "2.18.0"

bandmNV = {
    \time 2/4

    \repeat volta 10 {
        \mark \markup "781 Freilachs" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }

    \repeat volta 10 {
        \mark \markup "782 Freilachs" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }

    \repeat volta 10 {
        \mark \markup "783 Freilachs" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }

    \repeat volta 10 {
        \mark \markup "784 Bulgar" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }

    \repeat volta 10 {
        \mark \markup "785 Bulgar" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }
    \repeat volta 10 {
        \mark \markup "Mayn shtetl Yas (Freilachs)" \RightMark \farmark
        s2 | s2 | s2 | s2 | \break
    }
    \repeat volta 10 {
        s2 | s2 | s2 | s2 | \break
    }
}

bandm = {
    \bandmNV
}

marks = {
    \bandmNV
}

metronome =  \context Voice = "metronome" {
    \time 2/4

    s1 |
    \tempo 4 = 130
    \bandmNV
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode {
    \time 2/4
    \stemUp

    % 781 Freilachs
    \repeat volta 10 {
        \repeat unfold 2 {
            << sna4 cymr4 >> << sna8 cymr8 >> sna8 |
            r8 << sna8 cymr8 >> << sna4 cymr4 >> |
        }
    }

    % 782 Freilachs
    \repeat volta 10 {
        \repeat unfold 2 {
            << cymr8 sna >> sna16 sna16 cymr8 << cymr8 sna >> |
            sna16 sna16 cymr8 << cymr8 sna >> sna16 sna16 |
        }
    }

    % 783 Freilachs
    \repeat volta 10 {
        \repeat unfold 2 {
            << cymr8 sna >> sna8 << cymr8 sna >> << cymr8 sna >>  |
            sna8 << cymr8 sna >>  << cymr8 sna >> sna8  |
        }
    }

    % 784 Bulgar
    \repeat volta 10 {
        \repeat unfold 2 {
            << rb8 sna >> sna8 sna8 << rb8 sna >>  |
            sna8 sna8 << rb8 sna >> sna8 |
        }
    }

    % 785 Bulgar
    \repeat volta 10 {
        \repeat unfold 2 {
            << hhc8 sna >> sna16 sna16 hhc8 << hhc8 sna >> |
            sna16 sna16 hhc8 << hhc8 sna >> sna8 |
        }
    }

    % Mayn shtetl Yas (Freilachs)
    \repeat volta 10 {
        \repeat unfold 2 {
            wbh8 wbh16 wbh16 wbh8 \drumhackseven |
            \drumhackeight wbh8 wbh16 wbh16 wbh8 |
        }
    }

    \repeat volta 10 {
        \repeat unfold 2 {
              hhc8 sna16 sna16 sna8 sna8 ~ |
              sna8 sna8 sna16 sna16 sna8 |
        }
    }

}

drumslow = \drummode {
    \time 2/4
    \stemDown

    \repeat volta 10 {
        bda4 bda8 bda8 | s8 bda8 bda4 |
        bda4 bda8 bda8 | s8 bda8 bda4 |
    }

    \repeat volta 10 {
        \repeat unfold 2 {
            bda4 bda8 bda8 ~ |
            bda8 bda8 bda4 |
        }
    }

    \repeat volta 10 {
        \repeat unfold 2 {
            bda4 bda8 bda8 ~ |
            bda8 bda8 bda4 |
        }
    }

    \repeat volta 10 {
        \repeat unfold 2 {
            bda4. bda8 ~ |
            bda4 bda4 |
        }
    }

    \repeat volta 10 {
        \repeat unfold 2 {
            bda4. bda8 ~ |
            bda4 bda4  |
        }
    }

    \repeat volta 10 {
        \repeat unfold 2 { bda4. bda8 ~ | bda4 bda4 | }
    }
    \repeat volta 10 {
        \repeat unfold 2 { bda4. bda8 ~ | bda4 bda4 | }
    }
}

druminstrumentmarkup = \markup { "Drums" }
druminstrmarkup = \markup { "Drm." }

drumsstaff = \new DrumStaff \with {
    instrument = \druminstrumentmarkup
    instr = \druminstrmarkup
    printPartCombineTexts = ##f
} \drummode {
    <<
        \clef percussion
        \bandm
        \new DrumVoice { \drumshigh }
        \new DrumVoice { \drumslow }
    >>
}

drumset = \context DrumStaff = "drumset" \with {
    midiInstrument = "drums"
} \drummode {
    <<
        \metronome
        \new DrumVoice { << { s1 | \drumshigh }
                            { s1 | \drumslow } >> }
    >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% prebuilt combined scores for midi and full ensemble
subscore = \simultaneous {
    \drumsstaff
}

midisubscore = \simultaneous {
    \drumset
}


\version "2.18.2"

bandm = {
    \time 2/4
    \tempo \tempoprefix 4 = 120
    s2*2 |
    \bar "||"

    \markA \positionA
    s2*39 |
    \markTC \positionTC
    s2 |
    \bar "||" \breakA

    \markB \positionB
    s2*40 |
    \bar "||" \breakB

    \markC \positionC
    s2*40 |
    \bar "||" \breakC
    \markToA \positionToA
    s2*2 |
    \markCC \positionCC
    \bar "|."
}

bandmscore = {
    \time 2/4
    \tempo \tempoprefix 4 = 120
    s2*2 |
    \bar "||"

    \markA \positionA
    s2*39 |
    \markTC \positionTC
    s2 |
    \bar "||" \breakA

    \markB \positionB
    s2*40 |
    \bar "||" \breakB

    \markC \positionC
    s2*4
    \breakCfor
    s2*36 |
    \bar "||" \breakC
    \markToA \positionToA
    s2*2 |
    \markCC \positionCC
    \bar "|."
}

clarinetbandm = {
    \time 2/4
    \tempo \tempoprefix 4 = 120
    s2*2 |
    \bar "||"

    \markA \positionA
    s2*32 |
    \markTC \positionTC
    s2*8 |
    \bar "||" \breakA

    \markB \positionB
    s2*40 |
    \bar "||" \breakB

    \markC \positionC
    s2*40 |
    \bar "||" \breakC
    \markToA \positionToA
    s2*2 |
    \markCC \positionCC
    \bar "|."
}

bandmNV = { \bandm }
leadsheetbandmNV = { \bandm }
metronome = { \bandm }

tenorharmony = { }

% track 2 in original midi
bassline = {
    \time 2/4
    \key e \minor
    % 1
    e,8\mp r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 5
    a,,8 r8 e,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 9
    d,8 r8 a,,8 r8 |
    g,8 r8 d,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 13
    d,8 r8 a,,8 r8 |
    g,8 r8 d,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 17
    b,,8 r8 fis,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 21
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    g,8 r8 d,8 r8 |
    d,8 r8 a,,8 r8 |
    % 25
    g,8 r8 d,8 r8 |
    b,8-. b,,8-. cis,8-. dis,8-. |
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    % 29
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    e,8 r8 b,,8 r8 |
    b,,8 r8 fis,,8 r8 |
    % 33
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    % 37
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    e,8 r8 b,,8 r8 |
    b,,8 r8 fis,,8 r8 |
    % 41
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 45
    a,,8 r8 e,,8 r8 |
    e,,8 r8 b,,8 r8 |
    e,,8 r8 b,,8 r8 |
    e,,8 r8 b,,8 r8 |
    % 49
    d,8 r8 a,,8 r8 |
    g,8 r8 d,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 53
    d,8 r8 a,,8 r8 |
    g,8 r8 d,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 57
    b,,8 r8 fis,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    % 61
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    g,8 r8 d,8 r8 |
    d,8 r8 a,,8 r8 |
    % 65
    g,8 r8 d,8 r8 |
    b,,8 r8 fis,,8 r8 |
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    % 69
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    e,8 r8 b,,8 r8 |
    b,,8 r8 fis,,8 r8 |
    % 73
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    % 77
    e,8 r8 b,,8 r8 |
    a,,8 r8 e,,8 r8 |
    e,8 r8 b,,8 r8 |
    b,,8 r8 fis,,8 r8 |
    % 81
    e,8 r8 b,,8 r8 |
    e,8 r8 b,,8 r8 |
    e,,8. b,,16 b,,8. e,,16 |
    e,8. b,16 b,8. gis,,16 |
    % 85
    a,,8. e,16 e,8. g,16 |
    e,8. e,16 b,8. e,16 |
    e,,8. b,,16 b,,8. e,,16 |
    e,,8. b,,16 b,,8. e,,16 |
    % 89
    d,8. d,16 a,8. d,16 |
    g,,8. d,16 d,8. g,,16 |
    e,8. b,16 b,8. e,16 |
    e,8. b,16 b,8. b,,16 |
    % 93
    d,8. d,16 a,8. d,16 |
    g,,8. d,16 d,8. f,,16 |
    e,8. b,16 b,8. e,16 |
    e,8. b,16 b,8. b,,16 |
    % 97
    b,,8. b,,16 b,,8. b,,16 |
    e,,8. e,,16 b,,8. e,,16 |
    e,,8. b,,16 b,,8. e,,16 |
    e,,8. b,,16 b,,8. e,,16 |
    % 101
    e,,8. b,,16 b,,8. e,16 |
    e,8. b,,16 b,,8. e,,16 |
    g,,8. d,16 d,8. g,,16 |
    d,8. d,16 a,8. d,16 |
    % 105
    g,8. b,16 b,8. c,16 |
    b,,8. b,,16 fis,,8 b,,16 dis,16 |
    e,,8. b,,16 b,,8. e,,16 |
    a,,8. e,16 e,8. dis,16 |
    % 109
    e,8 e,,8 e,,8 e,,8 |
    a,,8 gis,,8 g,,8 fis,,8 |
    e,,8. e,,16 b,,8. e,,16 |
    b,,8. fis,16 fis,8. b,,16 |
    % 113
    e,,8 e,,8 e,,8 e,,8 |
    b,,8. b,,16 fis,8. b,,16 |
    e,,8 e,,8 e,,8 e,,8 |
    a,,8 gis,,8 g,,8 fis,,8 |
    % 117
    e,,8 e,,8 e,,8 e,,8 |
    a,,8 a,,8 a,,8 a,,8 |
    e,,8 e,,8 e,,8 e,,8 |
    b,,8. fis,16 fis,8. fis,16 |
    % 121
    e,8. e,16 dis,8. f,16 |
    d,8 ( b,16 ) b,,16 cis,8. cis,16 |
    e,8. b,16 b,8 b,,8 |
    e,2 |
}

% track 3 in original midi
pianonotes = {
    \time 2/4
    \key e \minor
    % 1
    r8 < b e' g' >8-.\mp r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < e' g' >16 < dis' fis' >16 < e' g' >16 < dis' fis' >16 < e' g' >16 r16 |
    % 5
    r8 < e a e' >8-. r8 < e a e' >8-. |
    r8 < g b e' g' >8-. < g b e' g' >8-. < g b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    % 9
    r8 < a c' fis' >8-. r8 < a c' fis' >8-. |
    r8 < b d' >16 ( < ais cis' >16 < b d' >16 < ais cis' >16 ) < b d' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    % 13
    r8 < a c' fis' >8-. r8 < a c' fis' >8-. |
    r8 < b d' g' b' >8-. < b d' g' b' >8-. < b d' g' b' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    % 17
    r8 < fis a dis' >8-. r8 < fis a dis' >8-. |
    r8 < e' g' >16 < dis' fis' >16 < e' g' >16 < dis' fis' >16 < e' g' >16 r16 |
    r8 < g b e' g' >8-. r8 < g b e' g' >8-. |
    r8 < g e' g' >8-. < g e' g' >8-. < g b e' g' >8-.
    % 21
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b d' b' >8-. r8 < b d' b' >8-. |
    r8 < a c' d' fis' >8-. < a c' d' fis' >8-. < a c' d' fis' >8-. |
    % 25
    r8 < b d' b' >8-. r8 < b d' b' >8-. |
    r8 < fis a b dis' >8-. < fis a b dis' >8-. < fis a b dis' >8-. |
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < a c' >16 < gis b >16 < a c' >16 < gis b >16 < a c' >16 r16
    % 29
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < c e >16 ( c'16 ) < a c' >8-. < c' e' >8-. |
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < fis a b dis >8-. < fis a b dis >8-. < fis a b dis >8-. |
    % 33
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < b e' g' >8-. r8 < b e' g' >8-. |
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < e a c' e' >8-. < e a c' e' >8-. < e a c' e' >8-. |
    % 37
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < c e >16 ( c'16 ) < a c' >8-. < c' e' >8-. |
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < fis a b dis' >8-. < fis a b dis' >8-. < fis a b dis' >8-. |
    % 41
    r8 < g b g' >8-. r8 < g b g' >8-. |
    r8 < g b e' g' >8-. < g b e' g' >8-. < g b e' g' >8-. |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < g b e' >16 < g b e' >16 r8 < g b e' >8-. |
    % 45
    r8 < a c' e' >8-. r8 < a c' e' >8-. |
    r8 < g b e' >16 < g b e' >16 r8 < g b e' >8-. |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < g b e' >16 < g b e' >16 r8 < g b e' >8-. |
    % 49
    r8 < c' d' fis' a' >8-. r8 < c' d' fis' a' >8-. |
    r8 < g b d' >8-. < g b d' >8-. < g b d' >8-. |
    < g b e' >8 < g b e' >16 < g b e' >16 < g b e' >4 |
    r8 < g b e' >8-. r4 |
    % 53
    < c' d' fis' a' >4 < c' d' fis' a' >8-. r8 |
    < g b d' >2 |
    < g b e' >8 < g b e' >8 r8 < g b e' >8 ~ |
    < g b e' >4 < g b e' >4 |
    % 57
    < a b dis' fis' >4 < a b dis' fis' >8-. r8 |
    < g b e' >2 |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < g b e' >8-. < g b e' >8-. < g b e' >8-. |
    % 61
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < g b e' >16 < g b e' >16 r8 < g b e' >8-. |
    r8 < g b d' >8-. r8 < g b d' >8-. |
    r8 < c' d' fis' a' >16 < c' d' fis' a' >16 r8 < c' d' fis' a' >8 |
    % 65
    r8 < g b d' >8-. r8 < g b d' >8-. |
    r8 < a b dis' fis' >16 < a b dis' fis' >16 r8 < a b dis' fis' >8 |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < a c' e' >16 < a c' e' >16 r8 < a c e' >8-. |
    % 69
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < a c' e' >16 < a c' e' >16 r8 < a c e' >8-. |
    < g b e' >4 < g b e' >8-. r8 |
    < a b dis' fis' >4 < a b dis' fis' >8-. r8 |
    % 73
    < g b e' >8 < g b e' >8 r8 < g b e' >8 ~ |
    < g b e' >4 < g b e' >4 |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < a c' e' >16 < a c' e' >16 r8 < a c' e' >8-. |
    % 77
    r8 < g b e' >8-. r8 < g b e' >8-.
    r8 < a c' e' >16 < a c' e' >16 r8 < a c' e' >8-. |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < a b dis' fis' >16 < a b dis' fis' >16 r8 < a b dis' fis' >8-. |
    % 81
    r8 < g b e' >8-. r8 < g b e' >8-. |
    r8 < g b e' >16 < g b e' >16  r8 < g b e' >8-. |
    < g b e' >8 < g b e' >4 < g b e' >8 |
    < e' g' b' e '' >2 |
    % 85
    < a c' e' a' >2 |
    < g b e' >2 |
    < g b e' >8 < g b e' >4 < g b e' >8 |
    r8 < g b e' >8-. r8 < g b e' >8-. |
    % 89
    < c' fis' a' d'' >2 |
    < g b d' g' >2 |
    r8 < g b e' >4 < g b e' >8 |
    < g b e' >8 < g b e' >4 < g b e' >8 |
    % 93
    < c' fis' a' d'' >2 |
    b16 g'16 b'16 d''16 < b g' b' d'' >8 r8 |
    < e' g' b' e'' >2 ~ |
    < g' b' e'' >4 r16 e'16 g'16 b'16 |
    % 97
    < a b dis' fis' >2 |
    r8 < g b e' >4 < g b e' >8 |
    < g b e' >8 < g b e' >8 < g b e' >4 |
    < g b e' >8 r8 < g b e' >8 r8 |
    % 101
    R2 |
    e'''16 b''16 g''16 e''16 e'4 |
    < g b d' >8 < g b d' >4 < g b d' >8 |
    c'16 fis'16 a'16 d''16 < c' fis' a' d'' >8 r8 |
    % 105
    < g b d' g' >2 |
    < a c' dis' g' >2 |
    < g e' b' >2 |
    e16 c'16 e'16 a'16 < e c' e' a' >8 r8 |
    % 109
    < g b e' >8 < g d' fis' b' >4 < b cis' e' g' >8 |
    < a c' e' a' >8 < a c' e' a' >4 < a c e' >8 |
    g16 e'16 g'16 b'16 < g e' g' b' >8 r8 |
    < a c' dis' e' >2 |
    % 113
    < g e' b' >8 r8 < g b cis' e' >8 < b d' e' g' >8 |
    < a dis' fis' b >2 |
    < g e' b' >8 < g cis' e' b' >4 < g c' e' >8 |
    < a c' e' a' >8 < a c' e' a' >4 < a c' e' >8 |
    % 117
    < g e' b' >8 < g cis' e' b' >4 < g c' e' >8 |
    < a c' e' >8 < g c' e' b' >4 < c' e' fis' a' >8 |
    < g e' b' >8 < g cis' e' b' >4 < g c' e' >8 |
    r8 < a b dis' fis' >4 < a b dis' fis' >8 |
    % 121
    < g e' b' >4 < b dis' g' >4 |
    < g e' b' >4 < g b e >8 < g b e >8 |
    < g e' b' >8 < g e' b' >8 g'16 b'16 e''16 e''16 |
    < g e' b' >2 |
}

% track 1 in original midi
drumshigh = \drummode {
    \time 2/4
    % 1
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 5
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 9
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    % 13
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 hhc8 hhc8 hhc8 |
    cymc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    % 17
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 21
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 25
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 29
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc16 hhc16 hhc8 hhc8 |
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    % 33
    hhc8 < wbh hhc >8 hhc8 < wbh hhc >8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 37
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    hhc8 hhc8 hhc8 hhc8 |
    % 41
    hhc8 hhc8 hhc8 hhc8 |
    hho16 sna32 sna32 < sna hho >16 sna16 tommh16 toml16 hhc16 < tomfl sna >16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 45
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    cymr16 sna32 sna32 < sna hhc >16 sna32 sna32 sna16 sna16 < sna hhc >16 sna16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 49
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    cymr16 sna16 hhc16 sna32 sna32 sna16 sna16 sna16 sna16 |
    < cymc cymr >16 sna16 < sna cymr >8 cymr8 < sna cymr >8 |
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 |
    % 53
    cymr8 < sna cymr >16 sna16 cymr8 < sna cymr >8 |
    sna8 < sna hhc >16 sna16 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 |
    < cymc cymr >16 sna16 < sna cymr >8 cymr16 sna16 < sna cymr >8 |
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 |
    % 57
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 |
    cymr16 sna32 sna32 < sna hhc >16 sna32 sna32 sna16 sna16 < sna hhc >16 sna16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 61
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    cymr16 sna16 hhc16 sna32 sna32 sna16 sna16 sna16 sna16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 65
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    hho16 sna32 sna32 < sna hho >16 sna16 tommh16 toml16 hhc16 < sna tomfl >16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 69
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    sna8 < sna hhc >16 sna16 sna32 sna32 sna32 sna32 sna32 sna32 sna32 sna32 |
    < cymc cymr >16 sna16 < sna cymr >8 cymr8 < sna cymr >8 |
    cymr8 < sna cymr >8 cymr8 < sna cymr >8 |
    % 73
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 |
    cymr16 sna32 sna32 < sna hhc >16 sna32 sna32 sna16 sna16 < sna hhc >16 sna16 |
    cymc8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 77
    s8 < wbh hhc >16 wbh16 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    s8 < wbh hhc >8 s8 < wbh hhc >8 |
    % 81
    s8 < wbh hhc >16 wbh16 s8 < wbh hhc >8 |
% hand percussion starts here
    sna16 sna16 sna16 sna16 sna16 sna16 sna16 tomfl16 | 
    < wbh cymc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hho16 |
    hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 < hhc toml >16 |
    % 85
    wbh16 hhc16 hhc32 hhc32 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    < sna hho >8 tommh16 tommh16 tommh16 tommh16 tommh16 tommh16 |
    < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hho16 |
    % 89
    < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    sna16 sna16 sna16 sna16 sna16 sna16 sna16 < tomfl >16 |
    wbh16 hhc16 hhc16 < wbh hhc >16 hhc16 hho16 < wbh hhc >16 hhc16 |
    hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hho16 |
    % 93
    < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    toml16 toml16 tommh16 toml16 toml16 < sna toml >16 tomfl16 tomfl16 |
    < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 hhc16 |
    % 97
    wbh16 hhc16 hhc32 hhc32 < wbh hhc >16 hhc16 hho16 < wbh hhc >16 hhc16 |
    < sna tommh >16 toml16 sna16 < sna tommh >16 toml16 sna16 < sna toml >16 tomfl16 |
% congas and cowbell begin here.  hand drums continue
    < wbh cymr >16 cymr16 < tommh cymr >16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16  |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 < tomfl cymr >16 |
    % 101
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 |
    < sna hho >8 tommh16 tommh16 tommh16 tommh16 tommh16 tommh16 |
    < wbh cymc >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 cymr16 |
    % 105
    < wbh cymr >16 cymr16 < tommh cymr >16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    s8 tomfl16 s16 < sna tommh >16 toml8 tomfl16 |
    < wbh cymc >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 cymr16 |
    % 109
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    s8 tomfl16 s16 < sna tommh >16 toml8 tomfl16 |
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 cymr16 |
    % 113
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < cymr toml >16 |
    cymc8 r16 sna32 sna32 sna16 sna8 sna16 |
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 |
    % 117
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 cymr16 |
    < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    cymr16 cymr16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 cymr16 |
    % 121
    < wbh cymr >16 cymr16 < tommh cymr >16 < wbh cymr >16 cymr16 cymr16 < wbh cymr >16 < toml cymr >16 |
    cymc8 r16 sna32 sna32 sna16 sna16 r16 sna16 |
    < wbh hhc >16 hhc16 hhc32 hhc32 < wbh hhc >16 hhc16 hhc16 < wbh hhc >16 hhc16 |
    r4 cymc4 |
}

drumslow = \drummode {
    \time 2/4
    % 1
    bda4 bda4 |
    bda4 bda8 bda8 |
    bda4 bda4 |
    bda4 bda4 |
    % 5
    bda4 bda4 |
    bda4 bda8 bda8 |
    bda4 bda4 |
    bda4 bda4 |
    % 9
    bda4 bda4 |
    bda4 bda8 bda8 |
    bda4 bda4 |
    bda4 bda4 |
    % 13
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 17
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 21
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 25
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 29
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 33
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 37
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 41
    bda4 bda4 |
    bda4 s4 |
    bda4 bda4 |
    bda4 bda4 |
    % 45
    bda4 bda4 |
    bda4 s4 |
    bda4 bda4 |
    bda4 bda4 |
    % 49
    bda4 bda4 |
    bda4 bda4 |
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    % 53
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    bda4 bda4 |
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    % 57
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    bda4 s4 |
    bda4 bda4 |
    bda4 bda4 |
    % 61
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 65
    bda4 bda4 |
    bda4 s4 |
    bda4 bda4 |
    bda4 bda4 |
    % 69
    bda4 bda4 |
    bda4 bda4 |
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    < bda hhp >8 hhp8 < bda hhp >8 < bda hhp >8 |
    % 73
    < bda hhp >8 hhp8 < bda hhp >8 hhp8 |
    bda4 s4 |
    bda4 bda4 |
    bda4 bda4 |
    % 77
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    bda4 bda4 |
    % 81
    bda4 bda4 |
% hand percussion starts here
    bda8 s16 bda16 bda8 s16 bda16 | 
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 85
    bda8 s16 bda16 bda8 s16 bda16 |
    bda4 s4 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 89
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 93
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 s16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 97
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
% congas and cowbell begin here.  hand drums continue
    bda8 s16 bda16 bda8 s16 bda16  |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 101
    bda8 s16 bda16 bda8 s16 bda16 |
    bda4 s4 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 105
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 109
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 113
    bda8 s16 bda16 bda8 s16 bda16 |
    bda4 s4 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 117
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    bda8 s16 bda16 bda8 s16 bda16 |
    % 121
    bda8 s16 bda16 bda8 s16 bda16 |
    bda4 s4 |
    bda8 s16 bda16 bda8 s16 bda16 |
    s4 bda4 |
}

drumnotes = <<
    \drumshigh
    \drumslow
>>

guitarnotes = {
    \time 2/4
    \key e \minor
    r8 < g e' >8-. r8 < b g' >8-. |
    g'16-. r16 g'4 r8 |
    % 3
    r8 < e g >16 r16 < g b >8 r8 |
    r8 < e g >4 < g e' >8 |
    r8 < a c' >16 r16 < c' e' >8 r8 |
    r8 < e g >16 r16 < g b >4 |
    % 7
    r8 < g e' >8 r8 < b g' >8 |
    g'8 g'4 r8 |
    r8 < d' fis' >16 r16 < fis' a' >8 r8 |
    r8 < d' g' >16 r16 < g' b' >8 r8 |
    % 11
    r8 e'16 g'16 b'16-. r16 g'16-. r16 |
    e'8 b8 e'8 g'8 |
    d'8 d'8 e'8 fis'8 |
    b'4 g'4 |
    % 15
    b'4 e'4 |
    b4 g4 |
    fis'4 ees'4 |
    r8 e'16 g'16 b'16 r16 g'16 r16 |
    % 19
    r8 < g e' >8 r8 < b g' >8 |
    g'16 r16 g'4 r8 |
    r8 < g e' >8 r8 < b g' >8 |
    g'16 r16 g'4 r8 |
    % 23
    r8 < g b >4 < b g' >8 |
    r8 < a d' >8 r8 < c' fis' >8-. |
    r8 < b g' >8 r8 < d' b >8-. |
    < dis' fis' >8 < dis' fis' >8 < b e' >4 |
    % 27
    r8 < g e' >8 r8 < b g' >8-. |
    r8 < e c' >8 r8 < a e' >8-. |
    r8 < b e' >16 r16 < e' g' >8 r8 |
    r8 < a c' >16 r16 < c' e' >8 r8 |
    % 31
    g'4 e'4 |
    r8 dis'16 fis'16 b'16 r16 fis'16 r16 |
    r8 e'16 g'16 b'16 r16 g'16 r16 |
    e'16 r16 b16 r16 e'16 r16 g'16 r16 |
    % 35
    r8 < e g >4 < g e' >8 |
    r8 < a c' >16 r16 < c' e' >8 r8 |
    < e' g' >16 r16 < e' g' >16 r16 < b e' >4 |
    r8 < e c' >8 r8 < a e' >8 |
    % 39
    r8 < b e' >16 r16 < e' g' >8 r8 |
    r8 < b dis' >16 r16 < dis' fis' >8 r8 |
    r8 < g e' >8 r8 < b g' >8 |
    r8 < b e' >16 r16 < e' g' >8 r8 |
    % B
    % 83
    < g b e' >8 r16 < g b e' >16 r8 < g b e' >8 |
    < g b e' >8 r16 < g b e' >16 r8 < g b e' >8 |
    < a c' e' >2 |
    < g b e' >2 |
    % 87
    < g b e' >4 < g b e' g' >8. < b e' >32 g32 |
    < g b e' >2 |
    < c' d' fis' a' >2 |
    < g b d' >8 r16 < g b d' >16 r8 < g b d' >8 |
    % 51
    < g b e' g' >2 ~ |
    < g b e' g' >4 ~ < g b e' g'>4\arpeggio |
    < a c' d' fis' >2 |
    < g b d' >2 |
    % 55
    s2 |
    s2 |
    s2 |
    s2 |
    % 59
    s2 |
    s2 |
    s2 |
    s2 |
    % 63
    s2 |
    s2 |
    s2 |
    s2 |
    % 67
    s2 |
    s2 |
    s2 |
    s2 |
    % 71
    s2 |
    s2 |
    s2 |
    s2 |
    % 75
    s2 |
    s2 |
    s2 |
    s2 |
    % 79
    s2 |
    s2 |
    s2 |
    s2 |
    % C
    s2*40 |

    s2*2 |
}

% track 5 in original midi
stringsnotes = {
    \time 2/4
    \key e \minor
    % 1
    < g e' >2\mp |
    < b g' >2 |
    < g e' >2 |
    < g e' >2 |
    % 5
    < e c' >2 |
    < g e' >2 |
    < g e' >2 |
    < b g' >2 |
    % 9
    < a d' >2 |
    < b g' >2 |
    < e b >2 |
    g''2 |
    % 13
    < fis c a'' >2 |
    < g b g'' >2 |
    < e b e''' >2 |
    g''2 |
    % 17
    < fis a a' >2 |
    < e g e'' >2 |
    < g e' >2 |
    < b g' >2 |
    % 21
    < g e' >2 |
    < b g' >2 |
    < b g' >2 |
    < a d' >2 |
    % 25
    < b g' >2 |
    < fis b >2 |
    < g e' >2 |
    < e c' >2 |
    % 29
    < g e' >2 |
    < e c' >2 |
    < e b g'' >2 |
    < dis fis b' >2 |
    % 33
    < e g e'' >2-- |
    g''2 |
    < g e' >2 |
    < e c' >2 |
    % 37
    < g e' >2 |
    < e c' >2 |
    < g e' >2 |
    < fis b >2 |
    % 41
    < g e' >2 |
    < g e' >2 |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    % 45
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 49
    < a' c'' >8-. < a' c'' >8-. r8 < a' c'' >8-. |
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 53
    r8 < d'' fis'' >8-. r8 < d'' fis'' >8-. |
    r8 < g' b' >8-. r8 < g' b' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 57
    r8 < b' dis'' >8-. r8 < b' dis'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 61
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    < a' c'' >8-. < a' c'' >8-. r8 < a' c'' >8-. |
    % 65
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    < fis'' a'' >8-. < fis'' a'' >8-. r8 < fis'' a'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    % 69
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < b' dis'' >8-. r8 < b' dis'' >8-. |
    % 73
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    % 77
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < fis'' a'' >8-. < fis'' a'' >8-. r8 < fis'' a'' >8-. |
    % 81
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    R2*16 |
    < g'' e''' >2 ~ |
    < g'' e''' >4. g'''8 |
    % 101
    < g'' e''' >2 ~ |
    < b'' e''' >2 |
    < b'' g''' >4 d'''4 |
    < c''' fis''' >4 d'''4 |
    % 105
    < b'' g''' >2 |
    < dis''' fis''' >2 |
    < e''' b''' >2 |
    < c''' a''' >2 |
    % 109
    < g'' e''' >8 < g'' dis''' >8 < g'' d''' >8 < g'' cis''' >8 |
    < e'' c''' >8 < gis'' e''' >8 < e'' c''' >8 < e'' c''' >8 |
    < e''' b''' >2 |
    < dis''' a''' >2 |
    % 113
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < dis''' a''' >2 |
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < e'' c''' >8 < gis'' e''' >8 < e'' c''' >8 < e'' c''' >8
    % 117
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < e'' c''' >8 < gis'' c''' >8 < g'' c''' >8 < fis'' c''' >8 |
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < dis''' a''' >2 |
    % 121
    < e''' b''' >4 < dis''' b''' >4 |
    < g'' e''' >4 < g'' e''' >4 |
    < g'' e''' >2 |
    < g''' >2 |
}

% excerpted from track 5 in original midi
violinnotes = {
    \time 2/4
    \key e \minor
    % 1
    < e'' g'' >2\mp |
    < g'' b'' >2 |
    % A
    < e'' g'' >2 |
    < e'' g'' >2 |
    % 5
    < c'' e'' >2 |
    < e'' g'' >2 |
    < e'' g'' >2 |
    < g'' b'' >2 |
    % 9
    < a'' d''' >2 |
    < g'' b'' >2 |
    < e'' b'' >2 |
    g''2 |
    % 13
    < c''' a'' >2 |
    < b'' g'' >2 |
    < b'' e'' >2 |
    g''2 |
    % 17
    < fis'' a'' >2 |
    < g'' e'' >2 |
    < g'' e'' >2 |
    < b'' g'' >2 |
    % 21
    < g'' e'' >2 |
    < b'' g'' >2 |
    < b'' g'' >2 |
    < a'' d''' >2 |
    % 25
    < b'' g'' >2 |
    < fis'' b'' >2 |
    < g'' e'' >2 |
    < e'' c'' >2 |
    % 29
    < g'' e'' >2 |
    < e'' c'' >2 |
    < b'' g'' >2 |
    < dis'' fis'' >2 |
    % 33
    < g'' e'' >2-- |
    g''2 |
    < g'' e'' >2 |
    < e'' c'' >2 |
    % 37
    < g'' e'' >2 |
    < e'' c'' >2 |
    < g'' e'' >2 |
    < fis'' b'' >2 |
    % 41
    < g'' e'' >2 |
    < g'' e'' >2 |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    % 45
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 49
    < a' c'' >8-. < a' c'' >8-. r8 < a' c'' >8-. |
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 53
    r8 < d'' fis'' >8-. r8 < d'' fis'' >8-. |
    r8 < g' b' >8-. r8 < g' b' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 57
    r8 < b' dis'' >8-. r8 < b' dis'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 61
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    < a' c'' >8-. < a' c'' >8-. r8 < a' c'' >8-. |
    % 65
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    < fis'' a'' >8-. < fis'' a'' >8-. r8 < fis'' a'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    % 69
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < b' dis'' >8-. r8 < b' dis'' >8-. |
    % 73
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    % 77
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e' >8-. |
    < fis'' a'' >8-. < fis'' a'' >8-. r8 < fis'' a'' >8-. |
    % 81
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    % 85
    < a'' c''' >8-. < a'' c''' >8-. r8 < a'' c''' >8-. |
    < b' e'' >8-. < b' e'' >8-. r8 < b' e'' >8-. |
    < e'' g'' >8-. < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 89
    < a' c'' >8-. < a' c'' >8-. r8 < a' c'' >8-. |
    < g'' b'' >8-. < g'' b'' >8-. r8 < g'' b'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 93
    r8 < d'' fis'' >8-. r8 < d'' fis'' >8-. |
    r8 < g' b' >8-. r8 < g' b' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    % 97
    r8 < b' dis'' >8-. r8 < b' dis'' >8-. |
    r8 < e'' g'' >8-. r8 < e'' g'' >8-. |
    < g'' e'' >2 ~ |
    < g'' e'' >4. g''8 |
    % 101
    < g'' e'' >2 ~ |
    < b'' e'' >2 |
    < b'' g'' >4 d'''4 |
    < c''' fis''' >4 d'''4 |
    % 105
    < b'' g'' >2 |
    < dis'' fis'' >2 |
    < e''' b'' >2 |
    < c''' a'' >2 |
    % 109
    < g'' e''' >8 < g'' dis''' >8 < g'' d''' >8 < g'' cis''' >8 |
    < e'' c''' >8 < gis'' e''' >8 < e'' c''' >8 < e'' c''' >8 |
    < e'' b'' >2 |
    < dis''' a''' >2 |
    % 113
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < dis''' a''' >2 |
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < e'' c''' >8 < gis'' e''' >8 < e'' c''' >8 < e'' c''' >8
    % 117
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < e'' c''' >8 < gis'' c''' >8 < g'' c''' >8 < fis'' c''' >8 |
    < g'' e''' >8 < g'' e''' >8 < g'' cis''' >8 < g'' e''' >8 |
    < dis''' a''' >2 |
    % 121
    < e''' b''' >4 < dis''' b''' >4 |
    < g'' e''' >4 < g'' e''' >4 |
    < g'' e''' >2 |
    g'''2 |
}

% track 6 in original midi
flutenotes = {
    \time 2/4
    \key e \minor
    % 1
    R2 |
    r4 r8 b'8\mp^"Double melody" |
    b'8 b'8 b'8 b'8 |
    e''8 b'8 b'8 b'8 |
    % 5
    b'4-. a'8 g'8 |
    a'4-. g'4-. |
    b'4-. b'8 b'8 |
    e''4-. b'8 b'8 |
    % 9
    b'4-. a'8 g'8 |
    a'4-. g'4-. |
    g'8 a'8 b'8 a'8 |
    g'4-. g'8 g'8 |
    % 13
    a'4-. g'8 fis'8 |
    g'2 |
    g'8 a'8 b'8 a'8 |
    g'4-. g'8 g'8 |
    % 17
    a'4-. g'8 fis'8 |
    e'4-. e'4-. |
    b'8-- r8 b'4 ~ |
    b'4-. g'4-. |
    % 21
    b'4 b'4 ~ |
    b'4 e'4 |
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    % 25
    b'2 ~ |
    b'2 |
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    % 29
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 33
    b'2 ~ |
    b'4 r4 |
    b''4 b''8 b''8 |
    c'''4 b''8 a''8 |
    % 37
    b''4 b''8 b''8 |
    c'''4 b''8 a''8 |
    g''4 g''8 g''8 |
    a''4 g''8 fis''8-.
    % 41
    e''2 ~ |
    e''4 r8 b'8 |
    b'8 b'8 b'8 b'8 |
    e''8 b'8 b'8 b'8 |
    % 45
    b'4 a'8 g'8 |
    a'4 g'4 |
    b'4 b'8 b'8 |
    e''4 b'8 b'8 |
    % 49
    b'4 a'8 g' 8 |
    a'4 g'4 |
    g'8 a'8 b'8 a'8 |
    g'4 g'8 g'8 |
    % 53 |
    a'4 g'8 fis'8 |
    g'2 |
    g'8 a'8 b'8 g'8 |
    g'4 g'8 g'8 |
    % 57
    a'4 g'8 fis'8 |
    e'4 e'4 |
    b'4 b'4 ~ |
    b'4 e'4 |
    % 61
    b'4 b'4 ~ |
    b'4 e'4 |
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    % 65
    b'2 ~ |
    b'2 |
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    % 69
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 73
    b'2 ~ |
    b'4 r4 |
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    % 77
    b'4 b'8 b'8 |
    c''4 b'8 a'8 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 81
    e'2 ~ |
    e'2 |
    % C
    R2*8^"Harmony" |
    d''8 d''8 e''8 d''8 |
    d''4 d''8 d''8 |
    % 93
    d''4 c''8 c''8 |
    d''2 |
    d''8 d''8 e''8 d''8 |
    d''4 d''8 d''8 |
    % 97
    ees''4 cis''8 b'8 |
    b'4 b'4 |
    e''4 e''4 ~ |
    e''4 b'4 |
    % 101
    e''4 e''4 ~ |
    e''4 b'4 |
    e''4 e''8 e''8 |
    fis''4 e''8 d''8 |
    % 105
    e''2 |
    ees''2 |
    R2*8
    % 115
    e''4 e''8 e''8 |
    g''8 r8 e''8 e''8 |
    % 117
    e''4 e''8 e''8 |
    g''8 aes''8 e''8 e''8 |
    d''8 c''8 d''8 d''8 |
    ees''4 cis''8 b'8 |
    % 121
    b'2 ~ |
    b'2 |

    R2*2 |
}

% track 6 in original midi with substantial mods
vocalsectiona = {
    b'8 b'8 b'8 b'8 | % kha ni ke oy
    e''8 e''8 b'8 b'8 | % kha ni ke a
    % 5
    b'4-. a'8 g'8 | % yon tif a
    a'4-. g'8 b'8 | % sheyn er a
    b'8 b'8 b'8 b'8 | % lust ik er a
    e''8 e''8 b'8 b'8 | % frey lekh er ni
    % 9
    b'4-. a'8 g'8 | % to nokh a 
    a'4-. g'4-. | % zoyn er
    g'8 a'8 b'8 a'8 |  % al e naknt in
    g'4-. g'4-. | % dreyd lekh
    % 13
    a'4-. g'8 ( fis'8 ) | % shpil- n
    g'4 r4 | % mir
    g'8 a'8 b'8 a'8 | % zu dik heys e
    g'4-. g'4-. | % lat kes
    % 17
    a'8 a'8 g'8 fis'8 | % es- n on- e
    e'4-. e'4-. | % shir ge
    b'8-- r8 b'4 ~ | % shvind er
    b'4-. g'4-. | % - tsindt
    % 21
    b'4 b'4 ~ | % kind er
    b'4 e'4 | % - di
    b'8 b'8 b'4 | % din in ke
    c''4 b'8 a'8 | % likht e lehk
    % 25
    b'2 ~ | % on
    b'4 r4 |
    b'4 b'8 b'8 | % zogt al ha
    c''4 b'8 a'8 | % nis im loybt
    % 29
    b'4 b'8 b'8 | % got far di
    c''4 b'8 a'8 | % nis im un
    g'4 g'8 g'8 | % kumt gikh er
    a'4 g'8 fis'8 | % tants n in
    % 33
    b'2 ~ | % kon
    b'4 r4 |
    b''4 b''8 b''8 | % zogt al ha
    c'''4 b''8 a''8 | % nis im loybt
    % 37
    b''4 b''8 b''8 | % got far di
    c'''4 b''8 a''8 | % nis im un
    g''4 g''8 g''8 | % kumt gikh er
    a''4 g''8 fis''8-. | % tants n in
    % 81
    e''2 ~ | % kon
    e''4 r8 b'8 | % ye
}

vocalsectionb = {
    b'8 b'8 b'8 b'8 | % hu da hat far-
    e''4 b'8 b'8 | % trib n dem
    % 45
    b'8 b'8 a'8 g'8 | %soyn e dem rot-
    a'4 g'8 b'8 | % sey akh un
    b'8 b'8 b'8 b'8 | % hot in beys ha
    e''4 b'8 b'8 | % mik desh ge-
    % 49
    b'8 b'8 a'8 g'8 | % sung n lam nats
    a'4 g'8 g'8 | % ey akh di
    g'8 a'8 b'8 a'8 | % shtot ye ru sho
    g'4 g'8 g'8 | % lay im hot
    % 53 |
    a'8 a'8 g'8 fis'8 | % vid er oyf ge-
    g'4 r8 g'8 | % lebt un
    g'8 a'8 b'8 g'8 | % tsu a nay em
    g'4 g'8 g'8 | % leb n hot
    % 57
    a'8 a'8 g'8 fis'8 | % yed er er ge-
    e'4 e'4 | % shtrebt der
    b'4 b'4 ~ | % ib er
    b'4 e'4 | % dem
    % 61
    b'4 b'4 ~ | % gib er
    b'4 r8 e'8 | % ye
    b'8 b'8 b'8 b'8 | % hu do ha ma
    c''4 b'8 a'8 | % ka bi loybt
    % 65
    b'2 ~ | % hoykh
    b'4 r8 b'8 | % zol
    b'8 b'8 b'8 b'8 | % yed er er ba
    c''4 b'8 a'8 | % sun der ba
    % 69
    b'4 b'8 b'8 | % zing en dos
    c''4 b'8 a'8 | % vun der un
    g'8 g'8 g'8 g'8 | % lib hob n dos
    a'4 g'8 fis'8 | % folk zolt ir
    % 73
    b'2 ~ | % aykh
    b'4 r8 b'8 | % zol
    b'8 b'8 b'8 b'8 | % yed er er ba
    c''4 b'8 a'8 | % sun der ba
    % 77
    b'4 b'8 b'8 | % zing en dos
    c''4 b'8 a'8 | % vun der un
    g'8 g'8 g'8 g'8 | % lib hob n dos
    a'4 g'8 fis'8 | % folk zolt ir
    % 81
    e'2 ~ | % aykh
% this would be changed back if I go to vocals 3x in row.
%    e'4 r8 b'8 |
    e'4 r4 |
}

vocalsectionc = {
    b'8 b'8 b'8 b'8 | % kha ni ke oy
    e''8 e''8 b'8 b'8 | % kha ni ke a
    % 5
    b'4-. a'8 g'8 | % yon tif a
    a'4-. g'8 b'8 | % sheyn er a
    b'8 b'8 b'8 b'8 | % lust ik er a
    e''8 e''8 b'8 b'8 | % frey lekh er ni
    % 9
    b'4-. a'8 g'8 | % to nokh a 
    a'4-. g'4-. | % zoyn er
    g'8 a'8 b'8 a'8 |  % al e naknt in
    g'4-. g'4-. | % dreyd lekh
    % 13
    a'4-. g'8 ( fis'8 ) | % shpil- n
    g'4 r4 | % mir
    g'8 a'8 b'8 a'8 | % zu dik heys e
    g'4-. g'4-. | % lat kes
    % 17
    a'8 a'8 g'8 fis'8 | % es- n on- e
    e'4-. e'4-. | % shir ge
    b'8-- r8 b'4 ~ | % shvind er
    b'4-. g'4-. | % - tsindt
    % 21
    b'4 b'4 ~ | % kind er
    b'4 e'4 | % - di
    b'8 b'8 b'4 | % din in ke
    c''4 b'8 a'8 | % likht e lehk
    % 25
    b'2 ~ | % on
    b'4 r4 |
    b'4 b'8 b'8 | % zogt al ha
    c''4 b'8 a'8 | % nis im loybt
    % 29
    b'4 b'8 b'8 | % got far di
    c''4 b'8 a'8 | % nis im un
    g'4 g'8 g'8 | % kumt gikh er
    a'4 g'8 fis'8 | % tants n in
    % 33
    b'2 ~ | % kon
    b'4 r4 |
    b''4 b''8 b''8 | % zogt al ha
    c'''4 b''8 a''8 | % nis im loybt
    % 37
    b''4 b''8 b''8 | % got far di
    c'''4 b''8 a''8 | % nis im un
    g''4 g''8 g''8 | % kumt gikh er
    a''4 g''8 fis''8-. | % tants n in
    % 41
    e''2 ~ | % kon
    e''2 | % ye
}

vocalnotes = {
    \time 2/4
    \key e \minor
    % 1
    R2 |
    r4 r8 b'8\ff | % oy

    \vocalsectiona
    \vocalsectionb
%    \vocalsectionc
    R2*40

    R2*2 |
}

% track 7 in original midi
clarinetnotes = \transpose bes c'' {
    \time 2/4
    \key e \minor
    R2*18 |
    g'4-.\mp g'4 ~ |
    g'4-. d'4-. |
    % 21
    g'4 g'4 ~ |
    g'4 d'4 |
    g'2 |
    a'2 |
    % 25
    g'2 |
    s2 |
    g'4 g'8 g'8 |
    a'4 g'8 e'8 |
    % 29
    g'4 g'8 g'8 |
    a'4 g'8 e'8 |
    e'4 e'8 e'8 |
    fis'4 dis'8 e'8 |
    % 33
    g'2 ~ |
    g'4 r4 |
    % B
    R2*8 |
    g'8 g'8 g'8 g'8 |
    b'8 g'8 g'8 g'8 |
    % 45
    e'4 e'8 e'8 |
    e'4 e'4 |
    g'4 g'8 g'8 |
    b'4 g'8 g'8 |
    % 49
    fis'4 fis'8 d'8 |
    d'4 d'4 |
    e'8 e'8 g'8 e'8 |
    e'4 e'8 e'8 |
    % 53
    fis'4 d'8 c'8 |
    d'2 |
    e'8 e'8 g'8 e'8 |
    e'4 e'8 e'8 |
    % 57
    fis'4 dis'8 dis'8 |
    b4 b4 |
    g'4 g'4 ~ |
    g'4 b4 |
    % 61
    g'4 g'4 ~ |
    g'4 b4 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 65
    g'2 |
    fis'2 |
    g'4 g'8 g'8 |
    a'4 e'8 e'8 |
    % 69
    g'4 g'8 g'8 |
    a'4 e'8 e'8 |
    e'4 e'8 e'8 |
    fis'4 dis'8 dis'8 |
    % 73
    g'2 ~ |
    g'4 r4 |
    g'4 g'8 g'8 |
    a'4 e'8 e'8 |
    % 77
    g'4 g'8 g'8 |
    a'4 e'8 e'8 |
    e'4 e'8 e'8 |
    fis'4 dis'8 dis'8 |
    % 81
    b2 ~ |
    b2 |
    % C
    R2*8 |
    e'8 fis'8 g'8 fis'8 |
    e'4 e'8 e'8 |
    % 93
    fis'4 e'8 d'8 |
    e'2 |
    e'8 fis'8 g'8 fis'8 |
    e'4 e'8 e'8 |
    % 97
    fis'4 e'8 dis'8 |
    d'4 d'4 |
    g'4 g'4 ~ |
    g'4 d'4 |
    % 101
    g'4 g'4 ~ |
    g'4 d'4 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 105
    g'2 |
    fis'2 |
    R2*8 |
    g'4 g'8 g'8 |
    a'8 gis'8 g'8 g'8 |
    % 117
    g'4 g'8 g'8 |
    a'4 g'8 g'8 |
    e'4 e'8 e'8 |
    fis'4 e'8 dis'8 |
    % 121
    d'2 ~ |
    d'2 |
    R2*2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% track 8 in original midi
trumpetnotes = \transpose bes c' {
    \time 2/4
    \key e \minor
    R2*18 |
    e''4\p e''4 ~ |
    e''4 b'4 |
    % 21
    e''4 e''4 ~ |
    e''4 b'4 |
    e''2 |
    fis''2 |
    % 25
    e''2 |
    R2 |
    e''4 e''8 e''8 |
    e''4 d''8 c''8 |
    % 29
    e''4 e''8 e''8 |
    e''4 d''8 c''8 |
    b'4 b'8 b'8 |
    ees''4 a'8 a'8 |
    % 33
    e''2 ~ |
    e''4 r4 |
    e''2 |
    g''2 |
    % 37
    e''2 |
    g''2 |
    d''2 |
    ees''2 |
    % 41
    b'2 ~ |
    b'4 r4 |
    % B
    R2*16 |
    e''4 e''4 ~ |
    e''4 b'4 |
    % 61
    e''4 e''4 ~ |
    e''4 b'4 |
    e''2 |
    fis''2 |
    % 65
    e''2 |
    R2 |
    e''4 e''8 e''8 |
    e''4 d''8 c''8 |
    % 69
    e''4 e''8 e''8 |
    e''4 d''8 c''8 |
    b'4 b'8 b'8 |
    ees''4 a'8 a'8 |
    % 73
    e''2 ~ |
    e''4 r4 |
    e''2 |
    g''2 |
    % 77
    e''2 |
    g''2 |
    d''2 |
    ees''2 |
    % 81
    b'2 ~ |
% this would be changed back if I go to vocals 3x in row.
%    b'4 r4 |
    b'4 r8 b'8 |
    % C
    b'8^"Melody"\ff b'8 b'8 b'8 |
    e''8 b'8 b'8 b'8 |
    % 85
    b'4 a'8 g'8 |
    a'4 g'4 |
    b'4 b'8 b'8 |
    e''4 b'8 b'8 |
    % 89
    b'4 a'8 g'8 |
    a'4 g'4 |
    \transpose c c, {
    g''8 a''8 b''8 a''8 |
    g''4 g''8 g''8 |
    % 93
    a''4 g''8 fis''8 |
    g''2 |
    g''8 a''8 b''8 a''8 |
    g''4 g''8 g''8 |
    % 97
    a''4 g''8 fis''8 |
    e''4 e''4 |
    b''4 b''4 ~ |
    b''4 e''4 |
    % 101
    b''4 b''4 ~ |
    b''4 e''4 |
    b''4 b''8 b''8 |
    c'''4 b''8 a''8 |
    % 105
    b''2 ~ |
    b''2 |
    b''4 b''8 b''8 |
    c''4 b''8 a''8 |
    % 109
    b''4 b''8 b''8 |
    c''4 b''8 a''8 |
    g'4 g'8 g'8 |
    a'4 g'8 fis'8 |
    % 113
    b'2 ~ |
    b'4 r4 |
    b''4 b''8 b''8 |
    c'''4 b''8 a''8 |
    % 117
    b''4 b''8 b''8 |
    c'''4 b''8 a''8 |
    g''4 g''8 g''8 |
    a''4 g''8 fis''8 |
    % 121
    e''2 ~ |
    e''2 |
    }
    R2*2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% track 9 in original midi
tenorsaxnotes = \transpose bes c'' {
    \time 2/4
    \key e \minor
    R2*18 |
    d'4\mp d'4 ~ |
    d'4 g4 |
    % 21
    d'4 d'4 ~ |
    d'4 g4 |
    d'2 |
    d2 |
    % 25
    d2 |
    R2*9
    % 35
    d'2 |
    e'2 |
    % 37
    d'2 |
    e'2 |
    b2 |
    b2 |
    % 41
    g2 ~ |
    g4 r4 |
    % B
    R2*16 |
    d'4 d'4 ~ |
    d'4 g4 |
    % 61
    d'4 d'4 ~ |
    d'4 g4 |
    d'2 |
    d2 |
    % 65
    d2 |
    R2*9
    % 75
    d'2 |
    e'2 |
    % 77
    d'2 |
    e'2 |
    b2 |
    b2 |
    % 81
    g2 ~ |
    g4 r4 |
    % C
    R2*8
    b8 b8 d'8 b8 |
    b4 b8 b8 |
    % 93
    c'4 a8 a8 |
    b2 |
    b8 b8 d'8 b8 |
    b4 b8 b8 |
    % 97
    b4 bes8 a8 |
    g4 g4 |
    d'4 d'4 ~ |
    d'4 g4 |
    % 101
    d'4 d'4 ~ |
    d'4 g4 |
    d'4 d'8 d'8 |
    d'4 d'8 c'8 |
    % 105
    d'2 |
    ees'2 |
    R2*8 |
    % 115
    d'8 c'8 d'8 d'8 |
    e'4 d'8 c'8 |
    % 117
    d'8 c'8 d'8 d'8 |
    e'4 d'8 c'8 |
    b8 c'8 b8 b8 |
    b4 bes8 a8 |
    % 121
    g2 ~ |
    g2 |
    R2*2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% tracks 11, 12 & 13 in original midi
trombonenotes = \transpose c c, {
    \time 2/4
    \key e \minor
    R2*18 |
    b4 b4 ~ |
    b4 e4 |
    % 21
    b4 b4 ~ |
    b4 e4 |
    b4 b8 b8 |
    c'4 b8 a8 |
    % 25
    b2 ~ |
    b2 |
    b4 b8 b8 |
    c'4 b8 a8 |
    % 29
    b4 b8 b8 |
    c'4 b8 a8 |
    g4 g8 g8 |
    a4 g8 fis8 |
    % 33
    b2 ~ |
    b4 r4 |
    b'2 |
    c''2 |
    % 37
    b'2 |
    c''2 |
    g'2 |
    a'2 |
    % 41
    e'2 ~ |
    e'4 r4 |
    % B
    R2*16 |
    b4 b4 ~ |
    b4 e4 |
    % 61
    b4 b4 ~ |
    b4 e4 |
    b4 b8 b8 |
    c'4 b8 a8 |
    % 65
    b2 ~ |
    b2 |
    b4 b8 b8 |
    c'4 b8 a8 |
    % 69
    b4 b8 b8 |
    c'4 b8 a8 |
    g4 g8 g8 |
    a4 g8 fis8 |
    % 73
    b2 ~ |
    b4 r4 |
    b'2 |
    c''2 |
    % 77
    b'2 |
    c''2 |
    g'2 |
    a'2 |
    % 81
    e'2 ~ |
    e'4 r4 |
    % C
    R2*8
    g'8 a'8 b'8 a'8 |
    g'4 g'8 g'8 |
    % 93
    a'4 g'8 fis'8 |
    g'2 |
    g'8 a'8 b'8 a'8 |
    g'4 g'8 g'8 |
    % 97
    a'4 g'8 fis'8 |
    e'4 e'4 |
    b4 b4 ~ |
    b4 e4 |
    % 101
    b4 b4 ~ |
    b4 e4 |
    b4 b8 b8 |
    c'4 b8 a8 |
    % 105
    b2 ~ |
    b2 |
    % 107
    R2*8 |
    % 115
    b4 b8 b8 |
    c'4 b8 a8 |
    % 117
    b4 b8 b8 |
    c'4 b8 a8 |
    g4 g8 g8 |
    a4 g8 fis 8 |
    % 121
    e2 ~ |
    e2 |
    R2*2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verseone = \lyricmode {
    Oy kha- nu- ke, oy kha- nu- ke,
    A yon- tev a sheyn- er,
    A lust- ik- er, a frey- lekh- er,
    Ni- to nokh a- zoyn- er!

    Al- e nakht in dreyd- lekh
    Shpil- n mir,
    Zu- dik heys- e lat- kes
    Es- n on a shir!

    Ge- shvind- er tsindt, kind- er,
    Di din- in- ke likht- e- lekh on!

    Zogt "\"al" ha- nis- "im,\""
    Loybt Got far di nis- im,
    Un kumt gikh- er
    Tants- n in kon!

    Zogt "\"al" ha- nis- "im,\""
    Loybt Got far di nis- im,
    Un kumt gikh- er
    Tants- n in kon!
}
versetwo = \lyricmode {
    Ye- hu- do hot far- trib- n
    Dem soyn- e, dem rot- sey- akh,
    Un hot in Beys- ha- mik- desh
    Ge- sung- n "\"Lam-" nats- ey- "akh,\"" Di
    shtot Ye- ru- sho- lay- im
    Hot vid- er oyf- ge- lebt,
    Un tsu a nay- em leb- n
    Hot yed- er- er ge- shtrebt.

    Der- ib- er dem gib- er
    Ye- hu- do Ha- ma- ka- bi loybt hoykh!

    Zol yed- er- er ba- zund- er
    Ba- zing- en dem vun- der,
    Un lib hob- n dos folk
    Zolt ir aykh!

    Zol yed- er- er ba- zund- er
    Ba- zing- en dem vun- der,
    Un lib hob- n dos folk
    Zolt ir aykh!
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \transpose c e { \chordmode {
    \time 2/4
    s2*2 |
    % A
    c2:min |
    c2:min |
    % 5
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 9
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 13
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 17
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 29
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 33
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 37
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 41
    c2:min |
    c2:min |
    % B
    c2:min |
    c2:min |
    % 45
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 49
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 53
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 57
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 69
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 73
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    % C
    c2:min |
    c2:min |
    % 85
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 89
    c2:min6 |
    c2:min |
    c2:min |
    c2:min |
    % 93
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 97
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 101
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 105
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 109
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 113
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 117
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 121
    c2:min |
    c2:min |
    s2*2 |
} }

clarinetchordletters = \transpose bes, c { \transpose c e { \chordmode {
    \time 2/4
    s2*18 | % A
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 29
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 33
    ees2 |
    g2 |
    s2*8 |
    % B
    c2:min |
    c2:min |
    % 45
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 49
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 53
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 57
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 69
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 73
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    % C
    \chordChangesOff
    s2*8 |
    c2:min |
    \chordChangesOn
    c2:min |
    % 93
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 97
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 101
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 105
    ees2 |
    ees2 |
    s2*8 |
    c2:min |
    f2:min |
    % 117
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 121
    c2:min |
    c2:min |
    s2*2 |
} } }

tenorsaxchordletters = \transpose bes, c { \transpose c e { \chordmode {
    \time 2/4
    s2*18 | % A
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    s2*9 |
    c2:min |
    f2:min |
    % 37
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 41
    c2:min |
    c2:min |
    % B
    \chordChangesOff
    s2*16 |
    c2:min7 |
    \chordChangesOn
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    s2*9
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    % C
    \chordChangesOff
    s2*8
    c2:min |
    \chordChangesOn
    c2:min |
    % 93
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 97
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 101
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 105
    ees2 |
    ees2 |
    s2*8 |
    c2:min |
    f2:min |
    % 117
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 121
    c2:min |
    c2:min |
    s2*2 |
} } }

trumpetchordletters = \transpose bes, c { \transpose c e { \chordmode {
    \time 2/4
    s2*18 | % A
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 29
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 33
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 37
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 41
    c2:min |
    c2:min |
    % B
    \chordChangesOff
    s2*16 |
    c2:min7 |
    \chordChangesOn
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 69
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 73
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    % C
    \chordChangesOff
    s2*8 |
    c2:min |
    \chordChangesOn
    c2:min |
    % 93
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 97
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 101
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 105
    ees2 |
    ees2 |
    s2*8 |
    c2:min |
    f2:min |
    % 117
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 121
    c2:min |
    c2:min |
    s2*2 |
} } }

trombonechordletters = \transpose c e { \chordmode {
    \time 2/4
    s2*18 | % A
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 29
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 33
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 37
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 41
    c2:min |
    c2:min |
    % B
    \chordChangesOff
    s2*16 |
    c2:min7 |
    \chordChangesOn
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 69
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 73
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    % C
    \chordChangesOff
    s2*8 |
    c2:min |
    \chordChangesOn
    c2:min |
    % 93
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 97
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 101
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 105
    ees2 |
    ees2 |
    s2*8 |
    c2:min |
    f2:min |
    % 117
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 121
    c2:min |
    c2:min |
    s2*2 |
} }

leadsheetchordletters = \transpose c e { \chordmode {
    \time 2/4
    s2*2 |
    % A
    c2:min |
    c2:min |
    % 5
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 9
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 13
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 17
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 21
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 25
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 29
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 33
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 37
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 41
    c2:min |
    c2:min |
    % B
    c2:min |
    c2:min |
    % 45
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 49
    c2:min6 |
    g4:7 c4:min |
    c2:min |
    c2:min |
    % 53
    f2:min |
    c2:min |
    c2:min |
    c2:min |
    % 57
    g2:7 |
    c2:min7 |
    c2:min7 |
    c2:min7 |
    % 61
    c2:min7 |
    c2:min7 |
    c2:min7 |
    bes2:7 |
    % 65
    ees2 |
    ees2 |
    c2:min |
    f2:min |
    % 69
    ees2 |
    f2:min |
    aes2 |
    bes2 |
    % 73
    ees2 |
    g2 |
    c2:min |
    f2:min |
    % 77
    ees2 |
    f2:min |
    c2:min6
    g2:7 |
    % 81
    c2:min |
    c2:min |
    s2*40 |
    s2*2 |
} }

altosaxchordletters = \transpose ees c { \clarinetchordletters }
guitarchordletters = { \chordletters }
basschordletters = { \chordletters }
flutechordletters = { \chordletters }
violinchordletters = { \chordletters }
pianochordletters = { \chordletters }
melodychordletters = { \chordletters }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% instrument part assignments

% key change down above

leadsheetnotes = { \vocalnotes }
%leadsheetnotesmidi = { \melodymidi }

% bass transpose up
% will want to find the highest notes and adjust
bassnotes = \transpose c c' { \bassline }
%bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
%euphoniumnotesmidi = { \basslinemidi }

% these derive from already transposed part.
tenorforothersnotes = { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
tenorforaltonotes = \transpose ees bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { \trombonenotes }
countermidi = { \trombonenotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \transpose c e { \chordmode {
  \time 2/4
   s2*2 |
   c2:min |
   c2:min |
   c2:min6 |
   g4:7 c4:min |
} }

previewnotes = {
    \time 2/4
    \key e \minor
    \tempo \tempoprefix 4 = 120

    R2 |
    r4 r8 b'8\ff | % oy
    b'8 b'8 b'8 b'8 | % kha ni ke oy
    e''8 e''8 b'8 b'8 | % kha ni ke a
    b'4-. a'8 g'8 | % yon tif a
    a'4-. g'8 b'8 | % sheyn er a
}

textl = \lyricmode { \verseone  \versetwo }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppernotes = { \pianonotes }
accordionrightlowernotes = { }
accordionleftuppernotes = { \bassnotes }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotes = { \pianonotes }
pianorightlowernotes = { }
pianoleftuppernotes = { \bassnotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

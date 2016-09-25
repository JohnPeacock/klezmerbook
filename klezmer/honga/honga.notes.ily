\version "2.18.2"

% Lily was here -- automatically converted by /usr/bin/midi2ly from demo058.mid
% Manual fixup by Dick Schoeller

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = {
    s1 |
}

bandmsectionaa = {
  % 2
  s1 | \breakAone
  % 3
  s1 | \breakAtwo
  % 4
  s1 | \breakAtre
  % 5
  s1 | \breakAfor
  % 6
  s1 | \breakAfiv
  % 7
  s1 | \breakAsix
  % 8
  s1 | \breakAsev
  % 9
  s1 | \bar "||" \markB \positionB \breakAeit
  % 10
  s1 | \breakBone
  % 11
  s1 | \breakBtwo
  % 12
  s1 | \breakBtre
  % 13
  s1 | \breakBfor
  % 14
  s1 | \breakBfiv
  % 15
  s1 | \breakBsix
  % 16
  s1 | \breakBsev
  % 17
  s1 | \bar "||" \markC \positionC \breakBeit
  % 18
  s1 | \breakCone
  % 19
  s1 | \breakCtwo
  % 20
  s1 | \breakCtre
  % 21
  s1 | \breakCfor
  % 22
  s1 | \breakCfiv
  % 23
  s1 | \breakCsix
  % 24
  s1 | \breakCsev
  % 25
  s1 | \bar "||" \markD \positionD \breakCeit
  % 26
  s1 | \breakDone
  % 27
  s1 | \breakDtwo
  % 28
  s1 | \breakDtre
  % 29
  s1 | \breakDfor
  % 30
  s1 | \breakDfiv
  % 31
  s1 | \breakDsix
  % 32
  s1 | \breakDsev
  % 33
  s1 | \bar "||" \markE \positionE \breakDeit
  % 34
  s1 | \breakEone
  % 35
  s1 | \breakEtwo
  % 36
  s1 | \breakEtre
  % 37
  s1 | \breakEfor
  % 38
  s1 | \breakEfiv
  % 39
  s1 | \breakEsix
  % 40
  s1 | \breakEsev
  % 41
  s1 | \breakEeit
  % 42
  s1 | \breakEnin
  % 43
  s1 | \breakEten
  % 44
  s1 | \breakEelv
  % 45
  s1 | \breakEtwl
  % 46
  s1 | \breakEtht
}

bandmsectionab = {
  % 47
  s1 | \breakEfrt
  % 48
  s1 | \breakEfft
  % 49
  s1 | \breakEsxt
  % 50
  s1 | \breakEsvt
  % 51
  s1 | \breakEett
}

bandmcoda = {
  % 97
  s1 | \breakCDone
  % 98
  s1 | \breakCDtwo
  % 99
  s1 | \breakCDtre
  % 100
  s1 | \breakCDfor
  s1 |
}

blankmeasure = { \stopStaff s1 \breakBL \startStaff }

bandmNV = {
  \tempo \tempostring
  \bandmintro
  \markSA \positionSA \bar "||"
  \bandmsectionaa
  \markTC \positionTC \bar "||"
  \bandmsectionab
  \markDS \positionDS \bar "||"
  \blankmeasure
  \markCC \positionCC
  \bandmcoda
  \bar "|."
}
bandm = { \bandmNV }
leadsheetbandmNV = { \bandmNV }
metronome = {
  s1 |
  \tempo 4 = 130
  \bandmintro
  \bandmsectionaa
  \bandmsectionab
  \tempo 4 = 135
  \bandmsectionaa
  \bandmcoda
  \bandmNV |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

callintro = {
  s2. d''16\f c''16 bes'16 a'16 |
}

callsectionaa = {
  % 2
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 |
  % 3
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 |
  % 4
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 |
  % 5
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 r1 r1 r1 r2 r4 bes'4 |
  % 10
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 11
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 12
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 13
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 18
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 19
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'8 bes'8 d''8 g''8 |
  % 20
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 21
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 26
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 27
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'8 d''8 g''4 |
  % 28
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 29
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 g'8 bes'8 d''8 g''8 |
  % 34
  g''16 f''16 e''16 f''16 e''16 d''16 e''16 f''16 g''16 f''16 e''16 d''16 cis''16 bes'16 a'16 g'16 |
  % 35
  a'16 bes'16 a'16 bes'16 cis''16 bes'16 a'16 bes'16 g'4 g''4 |
  % 36
  g''16 f''16 e''16 d''16 e''16 d''16 e''16 f''16 g''16 f''16 e''16 d''16 cis''16 bes'16 a'16 g'16 |
  % 37
  a'16 bes'16 a'16 bes'16 cis''16 bes'16 a'16 bes'16 g'2 |
  % 38
  d''8 d''16 d''16 d''8 d''8 r8 d''8 r8 d''8 |
  % 39
  d''8 d''16 d''16 d''8 d''8 r8 d''8 r8 d''8 |
  % 40
  d''8 d''16 d''16 d''8 d''8 r4 bes'4 |
  % 41
  a'16 bes'16 a'16 bes'16 c''16 cis''16 c''16 bes'16 cis''16 c''16 bes'16 a'16 bes'16 c''16 bes'16 a'16 |
  % 42
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 43
  a'16 bes'16 a'16 bes'16 c''16 cis''16 c''16 bes'16 cis''16 c''16 bes'16 a'16 bes'16 c''16 bes'16 a'16 |
  % 44
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 |
  % 45
  g''8. g''16 d''8 g''8 r8 g''8 d''8 g''8 |
  % 46
  g''8. g''16 d''8 g''8 r8 g''8 d''8 g''8 |
}

callHIGHEsectionaa = {
  % 2
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 |
  % 3
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 |
  % 4
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 |
  % 5
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 r1 r1 r1 r2 r4 bes'4 |
  % 10
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 11
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 12
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 13
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 18
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 19
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'8 bes'8 d''8 g''8 |
  % 20
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 21
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 26
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 27
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'8 d''8 g''4 |
  % 28
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 29
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2
  \transpose c c' {
  \startOctVA
  \set Staff.ottavation = #"8va. optional"
                                                                g'8 bes'8 d''8 g''8 |
  % 34
  g''16 f''16 e''16 f''16 e''16 d''16 e''16 f''16 g''16 f''16 e''16 d''16 cis''16 bes'16 a'16 g'16 |
  % 35
  a'16 bes'16 a'16 bes'16 cis''16 bes'16 a'16 bes'16 g'4 g''4 |
  % 36
  g''16 f''16 e''16 d''16 e''16 d''16 e''16 f''16 g''16 f''16 e''16 d''16 cis''16 bes'16 a'16 g'16 |
  % 37
  a'16 bes'16 a'16 bes'16 cis''16 bes'16 a'16 bes'16 g'2 |
  % 38
  d''8 d''16 d''16 d''8 d''8 r8 d''8 r8 d''8 |
  % 39
  d''8 d''16 d''16 d''8 d''8 r8 d''8 r8 d''8 |
  % 40
  d''8 d''16 d''16 d''8 d''8 r4 bes'4 |
  % 41
  a'16 bes'16 a'16 bes'16 c''16 cis''16 c''16 bes'16 cis''16 c''16 bes'16 a'16 bes'16 c''16 bes'16 a'16 |
  % 42
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 43
  a'16 bes'16 a'16 bes'16 c''16 cis''16 c''16 bes'16 cis''16 c''16 bes'16 a'16 bes'16 c''16 bes'16 a'16 |
  % 44
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 |
  % 45
  g''8. g''16 d''8 g''8 r8 g''8 d''8 g''8 |
  % 46
  g''8. g''16 d''8 g''8 r8 g''8 d''8 g''8 |
  \stopOctVA
  }
}

callsectionab = {
  % 47
  g''8. g''16 d''8 g''8 r4 d''16 c''16 bes'16 a'16 |
  % 48
  g'8 bes'8 d'8 bes'8 g'8 bes'16 bes'16 d'8 bes'8 |
  % 49
  g'8 bes'8 d'8 bes'8 g'8 bes'16 bes'16 d'8 bes'8 |
  % 50
  g'8 g'16 g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  % 51
  d''8. dis''16 d''8. dis''16 d''8. c''16 d''16 c''16 bes'16 a'16 |
}

callHIGHEsectionab = { \transpose c c' {
  \startOctVA
  \set Staff.ottavation = #"8va. optional"
  % 47
  g''8. g''16 d''8 g''8 r4 d''16 c''16 bes'16 a'16 |
  % 48
  g'8 bes'8 d'8 bes'8 g'8 bes'16 bes'16 d'8 bes'8 |
  % 49
  g'8 bes'8 d'8 bes'8 g'8 bes'16 bes'16 d'8 bes'8 |
  % 50
  g'8 g'16 g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  % 51
  d''8. dis''16 d''8. dis''16 d''8. c''16 \stopOctVA } d''16 c''16 bes'16 a'16 |
}

callcoda = {
  % 97
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 f'2 ~ |
  f'1 |
  % 99
  g'1 ~ g'1 ~ g'1
}

callHIGHEcoda = \transpose c c' {
  \startOctVA
  \set Staff.ottavation = #"8va. optional"
  % 97
  bes''16 g''16 g''16 bes''16 bes''16 a''16 a''16 g''16 f''2 ~ |
  f''1 |
  % 99
  g''1 ~ g''1 ~ g''1
  \stopOctVA
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

responseintro = {
  s2. r4
}

responsesectionaa = {
  R1*3 r2 r4
  d''16\f c''16 bes'16 a'16 |
  % 6
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 |
  % 7
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 |
  % 8
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 |
  % 9
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 r1 r1 r1 r2 r4 bes'4 |
  % 14
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 15
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 16
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 17
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 22
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 23
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'8 bes'8 d''8 g''8 |
  % 24
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 25
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 30
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 31
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'8 d''8 g''4 |
  % 32
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 33
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 |
  % 34
  g'16 f'16 e'16 f'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 35
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g4 g'4 |
  % 36
  g'16 f'16 e'16 d'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 37
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g2 |
  % 38
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 39
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 40
  d'8 d'16 d'16 d'8 d'8 r4 bes4 |
  % 41
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 42
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g8 bes8 d'8 g'8 |
  % 43
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 44
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g2 |
  % 45
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  % 46
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
}

responseHIGHEsectionaa = {
  R1*3 r2 r4
  d''16\f c''16 bes'16 a'16 |
  % 6
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 |
  % 7
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 |
  % 8
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 |
  % 9
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 r1 r1 r1 r2 r4 bes'4 |
  % 14
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 15
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 16
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 17
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 22
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 23
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'8 bes'8 d''8 g''8 |
  % 24
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 25
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 30
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 31
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'8 d''8 g''4 |
  % 32
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 33
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 |
  \transpose c c' {
  % 34
  g'16 f'16 e'16 f'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 35
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g4 g'4 |
  % 36
  g'16 f'16 e'16 d'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 37
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g2 |
  % 38
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 39
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 40
  d'8 d'16 d'16 d'8 d'8 r4 bes4 |
  % 41
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 42
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g8 bes8 d'8 g'8 |
  % 43
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 44
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g2 |
  % 45
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  % 46
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  }
}

responsesectionab = {
  % 47
  g'8. g'16 d'8 g'8 r4 d'16 c'16 bes16 a16 |
  % 48
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 49
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 50
  g8 g16 g16 d8 g8 r8 g8 d8 g8 |
  % 51
  d'8. dis'16 d'8. dis'16 g'2 |
}

responseHIGHEsectionab = \transpose c c' {
  % 47
  g'8. g'16 d'8 g'8 r4 d'16 c'16 bes16 a16 |
  % 48
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 49
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 50
  g8 g16 g16 d8 g8 r8 g8 d8 g8 |
  % 51
  d'8. dis'16 d'8. dis'16 g'2 |
}

responsecoda = {
  % 97
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 f'2 ~ |
  f'1 |
  % 99
  g'1 ~ g'1 ~ g'1 |
}

responseHIGHEcoda = \transpose c c' {
  % 97
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 f'2 ~ |
  f'1 |
  % 99
  g'1 ~ g'1 ~ g'1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { }
tenorharmony = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassintro = {
  s2. r4 |
}

basssectionaa = {
  % 2
  g,4-. g,4-. g,4-. g,4-. |
  % 3
  c,4-. d,4-. g,4-. d,4-. |
  % 4
  g,4-. g,4-. g,4-. g,4-. |
  % 5
  c,4-. d,4-. g,4-. d,4-. |
  % 6
  g,4-. g,4-. g,4-. g,4-. |
  % 7
  c,4-. d,4-. g,4-. d,4-. |
  % 8
  g,4-. g,4-. g,4-. g,4-. |
  % 9
  c,4-. d,4-. g,4-. d,4-. |

  % 10
  g,4-. d,4-. g,4-. d,4-. |
  % 11
  c,4-. d,4-. g,4-. d,4-. |
  % 12
  g,4-. d,4-. g,4-. d,4-. |
  % 13
  c,4-. d,4-. g,4-. d,4-. |
  % 14
  g,4-. d,4-. g,4-. d,4-. |
  % 15
  c,4-. d,4-. g,4-. d,4-. |
  % 16
  g,4-. d,4-. g,4-. d,4-. |
  % 17
  c,4-. d,4-. g,4-. d,4-. |

  % 18
  g,4-. g,4-. g,4-. g,4-. |
  % 19
  c,4-. d,4-. g,4-. d,4-. |
  % 20
  g,4-. g,4-. g,4-. g,4-. |
  % 21
  c,4-. d,4-. g,4-. d,4-. |
  % 22
  g,4-. g,4-. g,4-. g,4-. |
  % 23
  c,4-. d,4-. g,4-. d,4-. |
  % 24
  g,4-. g,4-. g,4-. g,4-. |
  % 25
  c,4-. d,4-. g,4-. d,4-. |

  % 26
  g,4-. g,4-. g,4-. g,4-. |
  % 27
  g,4-. d,4-. g,4-. d,4-. |
  % 28
  g,4-. d,4-. g,4-. d,4-. |
  % 29
  g,4-. d,4-. g,4-. d,4-. |
  % 30
  g,4-. g,4-. g,4-. g,4-. |
  % 31
  g,4-. d,4-. g,4-. d,4-. |
  % 32
  g,4-. d,4-. g,4-. d,4-. |
  % 33
  g,4-. d,4-. g,4-. d,4-. |

  % 34
  g,4-. d,4-. g,4-. d,4-. |
  % 35
  a,4-. e,4-. g,4-. d,4-. |
  % 36
  g,4-. d,4-. g,4-. d,4-. |
  % 37
  a,4-. e,4-. g,4-. d,4-. |

  % 38
  d,4-. d,4-. d,4-. d,4-. |
  % 39
  d,4-. d,4-. d,4-. d,4-. |
  % 40
  d,4-. d,4-. d,4-. d,4-. |

  % 41
  g,4-. d,4-. g,4-. d,4-. |
  % 42
  a,4-. e,4-. g,4-. d,4-. |
  % 43
  g,4-. d,4-. g,4-. d,4-. |
  % 44
  a,4-. e,4-. g,4-. d,4-. |

  % 45
  g,4-. g,4-. g,4-. g,4-. |
  % 46
  g,4-. g,4-. g,4-. g,4-. |
}

basssectionab = {
  % 47
  g,4-. g,4-. g,4-. g,4-. |

  % 48
  g,4-. d,4-. g,4-. d,4-. |
  % 49
  g,4-. d,4-. g,4-. d,4-. |
  % 50
  g,4-. d,4-. g,4-. d,4-. |
  % 51
  g,4-. d,4-. g,2 |
}

basscoda = {
  % 97
  g,4-. g,4-. f,4-. f,4-. |
  % 98
  f,4-. f,4-. f,4-. d,4-. |
  % 99
  g,1 ~ g,1 ~ g,1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
  s2 s4 r4 |
}

drumshighsectionaa = \drummode {
  \set countPercentRepeats = ##t
  % 2
  \repeat percent 3 {
    cymr8\p < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 5
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 6
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 9
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 10
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 13
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 14
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 17
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 18
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 21
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 22
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 25
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 26
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 29
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 30
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 33
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  \repeat percent 2 {
    % 34
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
    % 35
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  }
  % 38
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 | % diff pattern goes here
  }
    % 41
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 44
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
  % 45
  \repeat percent 2 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 | % diff pattern goes here
  }
}

drumshighsectionab = \drummode {
  % 47
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 | % diff pattern goes here
  % 48
  \repeat percent 3 {
    cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymr16 cymr16 < cymr sna >16 cymr16 |
  }
  % 51
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 cymr8 < sna cymr >8 cymc4 |
}

drumshighcoda = \drummode {
  % 97
  cymr8 < sna cymr >16 cymr16 cymr8 < sna cymr >8 hhc4\mf hhc4 |
  % 98
  hhc4 hhc4 hhc4 hhc4 |
  % 99
  cymr4\f cymr4 cymr4 cymr4 |
  % 100
  cymr4 cymr4 cymr4 cymr4 |
  cymc4\ff r4 r2 |
}

drumslowintro = \drummode {
  s1 |
}

drumslowsectionaa = \drummode {
  % 2
  \repeat percent 3 {
    s4 hhp8\p bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 5
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 6
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 9
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 10
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 13
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 14
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 17
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 18
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 21
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 22
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 25
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 26
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 29
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 30
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 33
  s4 hhp8 bda8 s8 hhp8 bda4 |
  \repeat percent 2 {
    % 34
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
    % 35
    s4 hhp8 bda8 s8 hhp8 bda4 |
  }
  % 38
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 41
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 44
  s4 hhp8 bda8 s8 hhp8 bda4 |
  % 45
  \repeat percent 2 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
}

drumslowsectionab = \drummode {
  % 47
  s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  % 48
  \repeat percent 3 {
    s4 hhp8 bda8 s8 hhp8 hhp8 < hhp bda >8 |
  }
  % 51
  s4 hhp8 bda8 s8 hhp8 bda4 |
}

drumslowcoda = \drummode {
  % 97
  s4 hhp8 bda8 bda4 bda4 |
  % 98
  bda4 bda4 bda4 bda4 |
  % 99
  s1 |
  % 100
  s1 |
  s1 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutetwointro = {
  s2. r4
}

flutetwosectionaa = {
  R1*3 r2 r4
  d''16\f c''16 bes'16 a'16 |
  % 6
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 |
  % 7
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 |
  % 8
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 |
  % 9
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 r1 r1 r1 r2 r4 bes'4 |
  % 14
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 15
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'8 bes'8 d''8 g''8 |
  % 16
  a'16 bes'16 a'16 bes'16 c''8. bes'16 c''16 bes'16 a'16 g'16 bes'4 |
  % 17
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 22
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 23
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'8 bes'8 d''8 g''8 |
  % 24
  c''16 d''16 d''16 d''16 d''16 c''16 bes'16 a'16 bes'16 c''16 c''16 c''16 c''16 bes'16 a'16 g'16 |
  % 25
  a'16 bes'16 bes'16 a'16 c''16 bes'16 a'16 bes'16 g'2 r1 r1 r1 r2 r4 d''4 |
  % 30
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 31
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'8 d''8 g''4 |
  % 32
  b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 b'16 g'16 a'16 b'16 c''16 b'16 a'16 g'16 |
  % 33
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 g'2 |
  % 34
  \transpose c c' {
  g'16 f'16 e'16 f'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 35
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g4 g'4 |
  % 36
  g'16 f'16 e'16 d'16 e'16 d'16 e'16 f'16 g'16 f'16 e'16 d'16 cis'16 bes16 a16 g16 |
  % 37
  a16 bes16 a16 bes16 cis'16 bes16 a16 bes16 g2 |
  % 38
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 39
  d'8 d'16 d'16 d'8 d'8 r8 d'8 r8 d'8 |
  % 40
  d'8 d'16 d'16 d'8 d'8 r4 bes4 |
  % 41
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 42
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g8 bes8 d'8 g'8 |
  % 43
  a16 bes16 a16 bes16 c'16 cis'16 c'16 bes16 cis'16 c'16 bes16 a16 bes16 c'16 bes16 a16 |
  % 44
  bes16 g16 g16 bes16 bes16 a16 a16 g16 g2 |
  % 45
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  % 46
  g'8. g'16 d'8 g'8 r8 g'8 d'8 g'8 |
  }
}

flutetwosectionab = \transpose c c' {
  % 47
  g'8. g'16 d'8 g'8 r4 d'16 c'16 bes16 a16 |
  % 48
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 49
  g8 bes8 d8 bes8 g8 bes16 bes16 d8 bes8 |
  % 50
  g8 g16 g16 d8 g8 r8 g8 d8 g8 |
  % 51
  d'8. dis'16 d'8. dis'16 g'2 |
}

flutetwocoda = {
  % 97
  bes'16 g'16 g'16 bes'16 bes'16 a'16 a'16 g'16 f'2 ~ |
  f'1 |
  % 99
  g'1 ~ g'1 ~ g'1 |
}

flutetwonotes = \transpose c c' {
  \time 4/4 
  \key f \major

  \clef violin
  \flutetwointro
  \flutetwosectionaa
  \flutetwosectionab
  \blankmeasure
  \flutetwocoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetonenotes = \transpose bes c' {
  \time 4/4 
  \key f \major

  \clef violin
  \callintro
  \callHIGHEsectionaa
  \callHIGHEsectionab
  \blankmeasure
  \callHIGHEcoda
}

clarinetonenotes = \transpose bes c' {
  \time 4/4 
  \key f \major

  \clef violin
  \callintro
  \callsectionaa
  \callsectionab
  \blankmeasure
  \callcoda
}

altosaxonenotes = \transpose ees c' {
  \time 4/4 
  \key f \major

  \clef violin
  \callintro
  \callsectionaa
  \callsectionab
  \blankmeasure
  \callcoda
}

violinonenotes = {
  \time 4/4 
  \key f \major

  \clef violin
  \callintro
  \callHIGHEsectionaa
  \callHIGHEsectionab
  \blankmeasure
  \callHIGHEcoda
}

fluteonenotes = \transpose c c' {
  \time 4/4 
  \key f \major

  \clef violin
  \callintro
  \callsectionaa
  \callsectionab
  \blankmeasure
  \callcoda
}

trumpettwonotes = \transpose bes c' {
  \time 4/4 
  \key f \major

  \clef violin
  \responseintro
  \responseHIGHEsectionaa
  \responseHIGHEsectionab
  \blankmeasure
  \responseHIGHEcoda
}

clarinettwonotes = \transpose bes c' {
  \time 4/4 
  \key f \major

  \clef violin
  \responseintro
  \responsesectionaa
  \responsesectionab
  \blankmeasure
  \responsecoda
}

altosaxtwonotes = \transpose ees c' {
  \time 4/4 
  \key f \major

  \clef violin
  \responseintro
  \responsesectionaa
  \responsesectionab
  \blankmeasure
  \responsecoda
}

violintwonotes = {
  \time 4/4 
  \key f \major

  \clef violin
  \responseintro
  \responseHIGHEsectionaa
  \responseHIGHEsectionab
  \blankmeasure
  \responseHIGHEcoda
}

bassnotes = \transpose c c' {
  \time 4/4 
  \key f \major

  \clef bass
  \bassintro
  \basssectionaa
  \basssectionab
  \blankmeasure
  \basscoda
}

drumshigh = \drummode {
  \time 4/4 

  \clef percussion
  \stemUp
  \hideDynamics
  \drumshighintro
  \drumshighsectionaa
  \drumshighsectionab
  \blankmeasure
  \drumshighcoda
}

drumslow = \drummode {
  \time 4/4 

  \clef percussion
  \stemDown
  \hideDynamics
  \drumslowintro
  \drumslowsectionaa
  \drumslowsectionab
  \blankmeasure
  \drumslowcoda
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    s1 |
}

chordletterssectionaa = \chordmode {
    % 2
    \repeat unfold 3 {
        \chordChangesOff
        g1:min |
        \chordChangesOn
        c4:min d4 g2:min | g1:min | c4:min d4 g2:min |
        g1:min | c4:min d4 g2:min | g1:min | c4:min d4 g2:min |
    }
    % 26
    \repeat unfold 2 {
        g1 | g1 | g1 | g1:min |
    }
    % 34
    \chordChangesOff
    g1:min |
    \chordChangesOn
    a2:min g2:min | g1:min | a2:min g2:min |
    % 38
    d1 | d1 | d1 |
    % 41
    g1:min | a2:min g2:min | g1:min | a2:min g2:min |
    g1:min | g1:min |
}

chordletterssectionab = \chordmode {
    g1:min |
    g1:min | g1:min | g1:min | g1:min |
}

chordletterscoda = \chordmode {
    \chordChangesOff
    g2:min
    \chordChangesOn
    g2:min7 | g1:min7 | g1:min | g1:min | g1:min |
}

chordletters = \chordmode {
  \chordlettersintro
  \chordletterssectionaa
  \chordletterssectionab
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
    s1 | g1:min | c4:min d4 g2:min | g1:min | c4:min d4 g2:min |
}

previewnotes = {
  \time 4/4 
  \key f \major
  \clef violin
  s2. d''16 c''16 bes'16 a'16 | \noBreak
  g'8. f'16 g'8. f'16 g'8. f'16 g'16 a'16 a'16 bes'16 | \noBreak
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'8 g'16 g'16 d'8 g'8 | \noBreak
  g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 f'16 e'16 f'16 g'16 a'16 a'16 bes'16 | \noBreak
  c''16 bes'16 a'16 g'16 bes'16 a'16 fis'16 a'16 g'2 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotesmidi = \transpose bes c' {
  \time 4/4 
  s1 |
  \callintro
  \callsectionaa
  \callsectionab
  \callsectionaa
  \callcoda
}

clarinetnotesmidi = \transpose bes c' {
  \time 4/4 
  s1 |
  \responseintro
  \responsesectionaa
  \responsesectionab
  \bandmsectionaa
  \responsecoda
}

violinnotesmidi = {
  \time 4/4 
  s1 |
  \bandmintro
  \bandmsectionaa
  \bandmsectionab
  \responsesectionaa
  \responsecoda
}

bassnotesmidi = {
  \time 4/4
  s1 |
  \bassintro
  \basssectionaa
  \basssectionab
  \basssectionaa
  \basscoda
}

drumshighmidi = \drummode {
  \time 4/4 
  s1 |
  \drumshighintro
  \drumshighsectionaa
  \drumshighsectionab
  \drumshighsectionaa
  \drumshighcoda
}

drumslowmidi = \drummode {
  \time 4/4 
  s1 |
  \drumslowintro
  \drumslowsectionaa
  \drumslowsectionab
  \drumslowsectionaa
  \drumslowcoda
}

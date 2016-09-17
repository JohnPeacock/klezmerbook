\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorharmony = { }

tenorharmonymidi = { }

counter = { }

countermidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bandmintro = {
    s1 | \breakINone s1 | \breakINtwo s1 | \breakINtre s1 | \breakINfor
    s1 | \breakINfiv s1 | \breakINsix s1 | \breakINsev s1 | \breakIN
    \bar "||"
}

bandmintroNoBreaks = {
    s1*8 | \breakIN \bar "||"
}

bandmsectiona = {
    \markA \positionA
    s1 | \breakAone s1 | \breakAtwo s1 | \breakAtre s1 | \breakAfor
    s1 | \breakAfiv s1 | \breakAsix s1 | \breakAsev s1 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

trumpetbandmsectiona = {
    \markA \positionA
    s1*12 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

trombonebandmsectiona = {
    \markA \positionA
    s1*8 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

tenorsaxbandmsectiona = {
    \markA \positionA
    s1*8 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

violinbandmsectiona = {
    \markA \positionA
    s1*8 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

flutebandmsectiona = {
    \markA \positionA
    s1*8 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

clarinetbandmsectiona = {
    \markA \positionA
    s1*8 | \breakAeit
    s1 | \breakAnin s1 | \breakAten s1 | \breakAelv s1 | \breakAtwl
    s1 | \breakAtht s1 | \breakAfrt s1 | \breakAfft s1 | \breakA
    \bar "||"
}

bandmsectionb = {
    \markB \positionB
    s1 | \breakBone s1 | \breakBtwo s1 | \breakBtre s1 | \breakBfor
    s1 | \breakBfiv s1 | \breakBsix s1 | \breakBsev s1 | \breakBeit
    s1 | \breakBnin s1 | \breakBten s1 | \breakBelv s1 | \breakBtwl
    s1 | \breakBtht s1 | \breakBfrt s1 | \breakBfft s1 | \breakB
    \bar "||"
}

bandmsectionc = {
    \markC \positionC
    s1 | \breakCone s1 | \breakCtwo s1 | \breakCtre s1 | \breakCfor
    s1 | \breakCfiv s1 | \breakCsix s1 | \breakCsev s1 | \breakCeit
    s1 | \breakCnin s1 | \breakCten s1 | \breakCelv s1 | \breakCtwl
    s1 | \breakCtht s1 | \breakCfrt s1 | \breakCfft s1 | \breakC
    \bar "||"
}

bandmsectioncNoBreaks = {
    \markC \positionC
    s1*16 | \breakC
    \bar "||"
}

bandmsectiond = {
    \markD \positionD
    s1 | \breakDone s1 | \breakDtwo s1 | \breakDtre s1 | \breakDfor
    s1 | \breakDfiv s1 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

bandmsectiondNoBreaks = {
    \markD \positionD
    s1*16 | \breakD
    \bar "||"
}

trumpetbandmsectiond = {
    \markD \positionD
    s1*4 | \breakDfor
    s1 | \breakDfiv s1 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

trombonebandmsectiond = {
    \markD \positionD
    s1*6 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

tenorsaxbandmsectiond = {
    \markD \positionD
    s1*6 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

violinbandmsectiond = {
    \markD \positionD
    s1*4 | \breakDfor
    s1 | \breakDfiv s1 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

flutebandmsectiond = {
    \markD \positionD
    s1*4 | \breakDfor
    s1 | \breakDfiv s1 | \breakDsix s1 | \breakDsev s1 | \breakDeit
    s1 | \breakDnin s1 | \breakDten s1 | \breakDelv s1 | \breakDtwl
    s1 | \breakDtht s1 | \breakDfrt s1 | \breakDfft s1 | \breakD
    \bar "||"
}

bandmsectione = {
    \markE \positionE
    s1 | \breakEone s1 | \breakEtwo s1 | \breakEtre s1 | \breakEfor
    s1 | \breakEfiv s1 | \breakEsix s1 | \breakEsev s1 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

trumpetbandmsectione = {
    \markE \positionE
    s1*12 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

trombonebandmsectione = {
    \markE \positionE
    s1*8 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

tenorsaxbandmsectione = {
    \markE \positionE
    s1*8 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

violinbandmsectione = {
    \markE \positionE
    s1*8 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

flutebandmsectione = {
    \markE \positionE
    s1*8 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

clarinetbandmsectione = {
    \markE \positionE
    s1*8 | \breakEeit
    s1 | \breakEnin s1 | \breakEten s1 | \breakEelv s1 | \breakEtwl
    s1 | \breakEtht s1 | \breakEfrt s1 | \breakEfft s1 | \breakEsxt
    s1 | \breakEsvt s1 | \breakEett s1 | \breakEnnt s1 | \breakEtwy
    s1 | \breakEtwone s1 | \breakEtwtwo s1 | \breakEtwtre s1 | \breakEtwfor
    s1 | \breakEtwfiv s1 | \breakEtwsix s1 | \breakEswsev s1 | \breakEtweit
    s1 | \breakEtwnin s1 | \breakEthrty s1 | \breakEthone s1 | \breakEthtwo
    s1 | \breakEthtre s1 | \breakEthfor s1 |
    \bar "|."
}

bandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
}

bandmNV = { \bandm }

melodybandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
}

violinbandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \violinbandmsectiona
    \bandmsectionb
    \bandmsectionc
    \violinbandmsectiond
    \violinbandmsectione
}

flutebandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \flutebandmsectiona
    \bandmsectionb
    \bandmsectionc
    \flutebandmsectiond
    \flutebandmsectione
}

clarinetbandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintro
    \clarinetbandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \clarinetbandmsectione
}

altosaxbandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintroNoBreaks
    \trumpetbandmsectiona
    \bandmsectionb
    \bandmsectionc
    \trumpetbandmsectiond
    \trumpetbandmsectione
}

trombonebandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintroNoBreaks
    \trombonebandmsectiona
    \bandmsectionb
    \bandmsectionc
    \trombonebandmsectiond
    \trombonebandmsectione
}

tenorsaxbandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintroNoBreaks
    \tenorsaxbandmsectiona
    \bandmsectionb
    \bandmsectionc
    \tenorsaxbandmsectiond
    \tenorsaxbandmsectione
}

trumpetbandm = {
    \time 4/4
    \tempo \tempostring
    \bandmintroNoBreaks
    \trumpetbandmsectiona
    \bandmsectionb
    \bandmsectionc
    \trumpetbandmsectiond
    \trumpetbandmsectione
}

leadsheetbandmNV =  {
    \time 4/4
    \tempo \tempostring
    \bandmintroNoBreaks
    \bandmsectiona
    \bandmsectionb
    \bandmsectioncNoBreaks
    \bandmsectiondNoBreaks
    \bandmsectione
}

preintro = { \time 4/4 s1 | }

metronome = {
    \time 4/4
    \preintro
    \tempo 4 = 120
    \bandmintro
    \bandmsectiona
    \bandmsectionb
    \bandmsectionc
    \bandmsectiond
    \bandmsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordlettersintro = \chordmode {
    e2.:min e8:min a8:min | b1:7 | e2.:min e8:min a8:min | b1:7 |
    e2.:min e8:min a8:min | b1:7 | e1:min | b1:7 |
}

trumpetchordlettersintro = \chordmode {
    R1*2 | e2.:min e8:min a8:min | b1:7 |
    e2.:min e8:min a8:min | b1:7 | e1:min | b1:7 |
}

trombonechordlettersintro = \chordmode {
    R1*2 | e2.:min e8:min a8:min | b1:7 |
    e2.:min e8:min a8:min | b1:7 | e1:min | b1:7 |
}

tenorsaxchordlettersintro = \chordmode {
    R1*2 | e2.:min e8:min a8:min | b1:7 |
    e2.:min e8:min a8:min | b1:7 | e1:min | b1:7 |
}

leadsheetchordlettersintro = \chordmode {
    s1*7 | b1:7 |
}

chordletterssectiona = \chordmode {
    b1:7 | b1:7 | e2.:min e8:min c8 | e1:min6 |
    a1:min | b1:7 | e1:min | e1:min |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

trumpetchordletterssectiona = \chordmode {
    R1*12 |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

trombonechordletterssectiona = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

tenorsaxchordletterssectiona = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

violinchordletterssectiona = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

flutechordletterssectiona = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

clarinetchordletterssectiona = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e2:min a4:dim e4:min |
}

chordletterssectionb = \chordmode {
    a1:min | d1:13 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | e1:min |
}

chordletterssectionc = \chordmode {
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | d1:7 | d4:7 des4:dim c4:dim g4:min |
    c1:min6 | d1:7 | g1:min | g1:min |
}

chordletterssectiond = \chordmode {
    c2:min f2:9 | d2:7 f4:9 f4:7 | bes1 | bes1 |
    a1:7 | a1:7 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

trumpetchordletterssectiond = \chordmode {
    R1*4 |
    a1:7 | a1:7 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

trombonechordletterssectiond = \chordmode {
    s1*6 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

tenorsaxchordletterssectiond = \chordmode {
    s1*6 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

violinchordletterssectiond = \chordmode {
    R1*4 |
    a1:7 | a1:7 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

flutechordletterssectiond = \chordmode {
    R1*4 |
    a1:7 | a1:7 | d1:7 | d1:7 |
    c1:min | d1:7 | g1:min | g1:min |
    c1:min | d1:7 | g1:min | b1:7 |
}

leadsheetchordletterssectiond = \chordmode {
    s1*15 | b1:7 |
}

chordletterssectione = \chordmode {
    b1:7 | b1:7 | e2.:min e8:min c8 | e1:min6 |
    a1:min | b1:7 | e1:min | e1:min |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

trumpetchordletterssectione = \chordmode {
    R1*12 |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

trombonechordletterssectione = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

tenorsaxchordletterssectione = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

violinchordletterssectione = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

flutechordletterssectione = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

clarinetchordletterssectione = \chordmode {
    s1*8 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:min | b1:7 | e1:min | d2:min a4:dim e4:min |
    a1:min | d4:13 d2.:7 | g2 c2:maj7 | g1 |
    fis1:7 | fis1:7 | b1:7 | b1:7 |
    a1:min | b1:7 | e1:min | e1:min |
    c1:dim | b1:7 | e1:min | a1:min |
    b1:7 | c2:maj7 b2:7 | b1:7 |
}

chordletters = \chordmode {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
}

clarinetchordletters = \transpose bes, c {
    \time 4/4
    \chordlettersintro
    \clarinetchordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \clarinetchordletterssectione
}

tenorsaxchordletters = \transpose bes, c {
    \time 4/4
    \tenorsaxchordlettersintro
    \tenorsaxchordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \tenorsaxchordletterssectiond
    \tenorsaxchordletterssectione
}

trumpetchordletters = \transpose bes, c {
    \time 4/4
    \trumpetchordlettersintro
    \trumpetchordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \trumpetchordletterssectiond
    \trumpetchordletterssectione
}

altosaxchordletters = \transpose ees c {
    \time 4/4
    \bandmintroNoBreaks
    \trumpetchordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \trumpetchordletterssectiond
    \trumpetchordletterssectione
}

guitarchordletters = {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
}

basschordletters = {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
}

violinchordletters = {
    \time 4/4
    \chordlettersintro
    \violinchordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \violinchordletterssectiond
    \violinchordletterssectione
}

flutechordletters = {
    \time 4/4
    \chordlettersintro
    \flutechordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \flutechordletterssectiond
    \flutechordletterssectione
}

trombonechordletters = {
    \time 4/4
    \trombonechordlettersintro
    \trombonechordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \trombonechordletterssectiond
    \trombonechordletterssectione
}

leadsheetchordletters = {
    \time 4/4
    \leadsheetchordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \bandmsectioncNoBreaks
    \leadsheetchordletterssectiond
    \chordletterssectione
}

pianochordletters = {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
}

melodychordletters = {
    \time 4/4
    \chordlettersintro
    \chordletterssectiona
    \chordletterssectionb
    \chordletterssectionc
    \chordletterssectiond
    \chordletterssectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarintro = {
    \key e \minor
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectiona = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectionb = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectionc = {
    \key g \minor
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectiond = {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

guitarsectione = {
    \key e \minor
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
}

guitarnotes = {
    \time 4/4
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
    \guitarsectione
}

guitarnotesmidi = {
    \time 4/4
    \preintro
    \guitarintro
    \guitarsectiona
    \guitarsectionb
    \guitarsectionc
    \guitarsectiond
    \guitarsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vocals only

melodyintro = {
    \key e \minor
    R1*7 |
    r4 r8 b8 b'8-. a'4 g'16 fis'16 |
}

melodysectiona = {
    a'1 ~ |
    a'4 r8 b8 a'8-- gis'8-- g'8-- fis'8-- |
    g'1 ~ |
    g'4 r8 b8 g'8 fis'4 fis'16 f'16 |

    fis'1 ~ |
    fis'4 r8 b8 fis'8 e'8 e'8 dis'8 |
    e'4 ( b'2. ) |
    r4 r8 b8 b'8-. a'4 g'16 fis'16 |

    a'1 ~ |
    a'4 r8 b8 a'8-- gis'8-- g'8-- fis'8-- |
    g'1 ~ |
    g'4 g'4 fis'4 e'4 |

    fis'2. b4 |
    fis'2 r8 b8 fis'8 g'8 |
    e'1 ~ |
    e'4 e'4 fis'4 g'4 |
}

melodysectionb = {
    a'8 a'4. r8 a'8 gis'8 a'8 |
    b'4 a'4 r4 d'4 |
    c''4. b'8 b'4. ais'8 |
    c''4 b'4 r4 ais'8 b'8 |

    cis''2 r8 c''8 cis''8 dis''8 |
    e''2 r2 |
    fis''4 r8 b'8 b'4 ais'4 |
    c''8 b'4 b8 b'8 a'4 g'16 fis'16 |

    a'1 ~ |
    a'4 r8 b8 a'8 gis'8 g'8 fis'8 |
    g'1 ~ |
    g'4 g'4 fis'4 e'4 |

    fis'2. b4 |
    fis'2 r8 g'8 dis'8 fis'8 |
    e'1 ~ |
    e'4-. r4 r2 |
}

melodysectionc = {
    \key g \minor
    R1*16 |
}

melodysectiond = {
    R1*15 |
    r4 r8 d'8 b'8-. a'4 g'16 fis'16 |
}

melodysectione = {
    \key e \minor
    a'1 ~ |
    a'4 r8 b8 a'8-- gis'8-- g'8-- fis'8-- |
    g'1 ~ |
    g'4 r8 b8 g'8 fis'4 fis'16 f'16 |

    fis'1 ~ |
    fis'4 r8 b8 fis'8 e'8 e'8 dis'8 |
    e'4 b'2. |
    r4 r8 b8 b'8-. a'4 g'16 fis'16 |

    a'1 ~ |
    a'4 r8 b8 a'8-- fis'8-- g'8-- fis'8-- |
    g'1 ~ |
    g'4 g'4 fis'4 e'4 |

    fis'2. b4 |
    fis'2 r8 b8 fis'8 g'8 |
    e'1 ~ |
    e'4 e'4 fis'4 g'4 |

    a'8 a'4. r8 a'8 gis'8 a'8 |
    b'4 a'4 r4 d'4 |
    c''4. b'8 b'4. ais'8 |
    b'2 r4 ais'8 b'8 |

    cis''2 r8 c''8 cis''8 dis''8 |
    e''4 e''2 f''4 |
    fis''8 b'4 b'8 d''8 d''4 c''8 |
    b'4 r8 b8 b'8 a'4 g'16 fis'16 |

    a'1 ~ |
    a'4 r8 b8 a'8 gis'8 g'8 fis'8 |
    g'1 ~ |
    g'4 g'4 fis'4 e'4 |

    fis'2. b4 |
    fis'2 r8 g'8 dis'8 fis'8 |
    e'1 ~ |
    e'4 r4 r2 |

    R1*3 |
}

melody = {
    \time 4/4
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
}

melodymidi = {
    \time 4/4
    \preintro
    \melodyintro
    \melodysectiona
    \melodysectionb
    \melodysectionc
    \melodysectiond
    \melodysectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode {
    Ikh hob dikh tsu fil lib, __
    Ikh trog oyf dir kayn has, __
    Ikh hob dikh tsu fil lib, __
    Tsu zayn oyf dir in kas. __

    Ikh hob dikh tsu fil lib, __
    Tsu zayn oyf dir gor beyz, __
    A nar ikh heys ikh veys.
    Ikh hob dikh lib. __

    Kh'ob dir mayn le- bn, a- vek ge- ge- bn mayn harts un mayn ne- shu- meh.
    Ikh bin krank, nor mayn ge- dank trakht nit fun ne- ko- me.

    Ikh hob dikh tsu fil lib. __
    Tsu zayn oyf dir gor beyz, __
    A nar ikh heys ikh veys.
    Ikh hob dikh lib. __

    I love you much too much.  __
    I've known it from the start; __
    But yet my love is such;
    I can't con- trol my heart, dear.

    I love you much too much. __
    I ask my- self, "\"What" "for?\"" __
    Yet when we touch;
    I know, I love you more. __

    Per- haps I cra- dle your heart too tight- ly.
    But who am I to say?
    If I held your heart too light- ly,
    my dar- ling it might slip a- way.

    I love you much too much. __
    I ask my- self, "\"What" "for?\"" __
    Yet when we touch;
    I know, I love you more. __
}

textlb = \lyricmode {
}

textlc = \lyricmode {
}

textld = \lyricmode {
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightupperintro = {
    \key e \minor
    < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >8-. < e' a' c'' >8-^ |
    < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ |
    < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >8-. < e' a' c'' >8-^ |
    < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ |

    < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >4-. < e' g' b' >8-. < e' a' c'' >8-^ |
    < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ < dis' fis' b' >4-^ |
    < b e' g' b' >4 r4 r2 |
    < dis' fis' a' b' >4-^ r4 r2 |
}

pianorightuppersectiona = {
    < dis' fis' a' b' >4-. < dis' fis' a' b' >4-. < dis' fis' a' b' >4-. < dis' fis' a' b' >8-. < c' c'' >8-^ |
    < b dis' fis' b' >4-. < b dis' fis' b' >4-. < b dis' fis' b' >4-. < b dis' fis' b' >8-. < a a' >8-^ |
    < b e' g' >4-. < b e' g' >4-. < b e' g' >4-. < b e' g' >8-. < c' e' g' >8-^ |
    < b cis' e' g' >4-. < b cis' e' g' >4-. < b cis' e' g' >4-. < b cis' e' g' >4-. |

    <<
       { fis'1 ~ | fis'8 < b, b >4. ~ < b, b >2 } \\
       { s8 < a c' >4 < a c' >8 ~ < a c' >8 < a c' >4 < a c'>8 | < a b d' >8 }
    >>
    e'4-. < b e' g' b' >2. ~ |
    < b e' g' b' >4-. r4 r2 |

    < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >8-. < e' a' c'' >8-^ |
    < dis' fis' a' b' >4-. r4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >8-. < b b' >8-^ |
    < b e' g' b' >4 g'4 fis'4 e'4 |

    < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >8-. < c' dis' fis' >8-^ |
    < a b dis' fis' >2 < a b dis' g' >2 |
    < g b e' >4 r4 r2 |
    e'4 < g b e' >4 < a dis' fis' >4 < b e' g' >4 |
}

pianorightuppersectionb = {
    r4 r8 e'8 < c' a' >4 < c' e' >4 |
    < c' fis' b' >4 r8 c'8 < fis' a' >4 d'4 |
    < b g' >2 < c' e' g' b' >4. r8 |
    < d' g' b' >2 r2 |

    < e fis ais cis' >1 |
    < fis ais cis' e' >1 |
    < a b dis' fis' >4-^ b2. |
    r8 b4 r8 r2 |

    < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >8-. < e' a' c'' >8-^ |
    < dis' fis' a' b' >4-. r4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >8-. < b b' >8-^ |
    < b e' g' b' >4 g'4 fis'4 e'4 |

    < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >8-. < c' dis' fis' >8-^ |
    < a b dis' fis' >2 < a b dis' g' >2 |
    < g b e' >4 r4 b2 |
    e'4 r4 r2 |
}

pianorightuppersectionc = {
    \key g \minor
    < ees' g' c'' >4-. < ees' g' c'' >4-. < ees' g' c'' >4-. < ees' g' c'' >8-. < ees' g' c'' >8-^ |
    < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. |
    << { < g' bes' >1 } \\ { d'4. cis'16 d'16 ees'4. d'16 ees'16 } >> |
    e'4 r4 r2 |

    < c' ees' a' >4-. < c' ees' a' >4-. < c' ees' a' >4-. < c' ees' a' >8-. < g c' ees' a' >8-^ |
    < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. |
    g'8 < d' g' bes' d'' >4. < d' g' bes' d'' >4 < d' g' bes' d'' >4 |
    < d' g' bes' d'' >4 r4 r2 |

    < ees' g' c'' >4-. < ees' g' c'' >4-. < ees' g' c'' >4-. < ees' g' c'' >8-. < ees' g' c'' >8-^ |
    < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. |
    d'2 ees'2 |
    d'4 < e' bes' >4 < ees' a' >4 < d' g' >4 |

    < c' ees' g' a' >4-. < c' ees' g' a' >4-. < c' ees' g' a' >4-. < c' ees' g' a' >8-. < c' ees' g' a' >8-^ |
    < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. |
    < bes d' g' >4-. < bes d' g' >4-. < bes d' g' >4-. < bes d' g' >8-. < bes d' g' >8-^ |
    < bes d' g' >4 r4 r2 |
}

pianorightuppersectiond = {
    r4 r8 ees'8 < a ees' g' >4 < a ees' >4 |
    r4 r8 c'8 < a c' ees' g' >4 < a c' ees' f' >4 |
    r4 r8 f8 < g bes d' >4 f4 |
    r4 r8 f8 < g bes d' >4 f4 |

    r2 < a cis' g' >4 < a cis' g' >4 |
    r2 < a cis' g' >4 < a cis' g' >4 |
    < c' d' fis' a' >4 r4 \tuplet 3/2 { ees' f' ees' } |
    < d' d'' >2 r2 |

    < ees' g' c' >4-. < ees' g' c' >4-. < ees' g' c' >4-. < ees' g' c' >8-. < ees' g' c' >8-^ |
    < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. < c' fis' c'' >4-. |
    <<
       { < g' bes' >1 } \\
       { d'4. cis'16 d'16 ees'4. d'16 ees'16 } >> |
    e'4 r4 r2 |

    < c' ees' a' >4-. < c' ees' a' >4-. < c' ees' a' >4-. < c' ees' a' >8-. < c' ees' a' >8-^ |
    < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. < c' d' fis' a' >4-. |
   < bes d' g' >4 < bes d' g' >4 < bes d' g' >8 d''8 cis''8 c''8 |
    < ees' fis' b' >4. r8 r2 |
}

pianorightuppersectione = {
    \key e \minor
    < dis' fis' a' b' >4-. < dis' fis' a' b' >4-. < dis' fis' a' b' >4-. < dis' fis' a' b' >8-. < c' c'' >8-^ |
    < b dis' fis' b' >4-. < b dis' fis' b' >4-. < b dis' fis' b' >4-. < b dis' fis' b' >8-. < a a' >8-^ |
    < b e' g' >4-. < b e' g' >4-. < b e' g' >4-. < b e' g' >8-. < c' e' g' >8-^ |
    < b cis' e' g' >4-. < b cis' e' g' >4-. < b cis' e' g' >4-. < b cis' e' g' >4-. |

    <<
       { fis'1 ~ | fis'8 < b b, >4. ~ < b b, >2 } \\
       { s8 < a c' >4 < a c' >8 ~ < a c' >8 < a c' >4 < a c' >8 | < a b dis' >8 s4. s2 }
    >>
    e'4-. < b e' g' b' >2. ~ |
    < b e' g' b' >4-. r4 r2 |

    < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >8-. < e' a' c'' >8-^ |
    < dis' fis' b' >4-. r4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >8-. < b b' >8-^ |
    < b e' g' b' >4 g'4 fis'4 e'4 |

    < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >8-. < c' dis' fis' >8-^ |
    < a b dis' fis' >2 < a b dis' g' >2 |
    < g b e' >4 r4 r2 |
    e'4 < g b e' >4 < a dis' fis' >4 < b e' g' >4 |

    r4 r8 e'8 < c' a' >4 < c' e' >4 |
    < c' fis' b' >4 < c' fis' a' >4 r4 d'4 |
    < b g' >2 < c' e' g' b' >4. r8 |
    < d' g' b' >2 r2 |

    < e fis ais cis' >1 |
    < fis ais cis' e' >1 |
    < a b dis' fis' >4-^ b 2. |
    b4 r4 r2 |

    < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >4-. < e' a' c'' >8-. < e' a' c'' >8-^ |
    < dis' fis' a' b' >4-. r4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >4-. < b e' g' b' >8-. < b b' >8-> |
    < b e' g' b' >4 g'4 fis'4 e'4 |

    < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >4-. < c' dis' fis' >8-. < c' dis' fis' >8-^ |
    < a b dis' fis' >2 < a b dis' g' >2 |
    < g b e' >4 r4 r4 e'4 |
    < c' e' a' >4 r4 r4 < c' e' a' >4 |

    < b dis' fis' b' >4 < b dis' fis' b' >4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    < c' e' b' >4 < c' e' b' >4 < b dis' fis' b' >4 < b dis' fis' b' >4 |
    r8 < b b' >4.-\fermata r2 |
}

pianorightuppernotes = {
    \time 4/4
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
}

pianorightnotesmidi = {
    \preintro
    \pianorightupperintro
    \pianorightuppersectiona
    \pianorightuppersectionb
    \pianorightuppersectionc
    \pianorightuppersectiond
    \pianorightuppersectione
}

%-------------------------------------------------

pianoleftupperintro = {
    \key e \minor
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < f, f >8-^ |
    < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < f, f >8-^ |
    < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ |

    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < f, f >8-^ |
    < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ < fis, fis >4-^ |
    < e, e >4 r4 r2 |
    < b,, b, >4-^ r4 r2 |
}

pianoleftuppersectiona = {
    < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. < b,, b, >8-. < c, c >8-. |
    < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. |
    < g, g >4-. < e, e >4-. < e, e >4-. < e, e >4-. |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >4-. |

    r8 a,4 a,8 ~ a,8 a,4 a,8 |
    b,8 < b,, b, >4. ~ < b,, b, >2 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8 < e, e >8 |
    b,4-. r4 r2 |

    < a, a >4-. < a, a >4-. < a, a >4-. < a, a >8-. < a, a >8-^ |
    < b, b >4-. r4 < b, b >4 < b, b >4 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < e, e >8-^ |
    < e, e >4 r4 r2 |

    < fis, fis >4-. < fis, fis >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < b,, b, >4 < b,, b, >4 < b,, b, >4 < b,, b, >4 |
    < e, e >4 r2 r4 |
    < e, e >4 < e, e >4 < fis, fis >4 < g, g >4 |
}

pianoleftuppersectionb = {
    < a, a >4 r4 r4 < a, a >4 |
    < d, d >4 r4 < d, d >4 < d, d >4 |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |
    < b, b >4-- < b, b >4-. r2 |

    < fis, fis >4-. < fis, fis >4-. < fis, fis >4-. < fis, fis >4-. |
    < cis cis' >4-. < cis cis' >4-. < cis cis' >4-. < cis cis' >4-. |
    < b, b >4-^ < b,, b, >2. |
    r8 < b,, b, >4 r8 r2 |

    < a, a >4-. < a, a >4-. < a, a >4-. < a, a >8-. < a, a >8-^ |
    < b, b >4-. r4 < b, b >4 < b, b >4 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < e, e >8-^ |
    < e, e >4 r4 r2 |

    < fis, fis >4-. < fis, fis >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < b,, b, >4 < b,, b, >4 < b,, b, >4 < b,, b, >4 |
    < e, e >4 r4 b,,2 |
    < e, e >4 r4 r2 |
}

pianoleftuppersectionc = {
    \key g \minor
    < c c' >4-. < c c' >4-. < c c' >4-. < c c' >8-. < c c' >8-^ |
    < d d' >4-. < d d' >4-. < d d' >4-. < d d' >4-. |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |

    < c, c >4-. < c, c >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < d, d >4-. < d, d >4-. < d, d >4-. < d, d >4-. |
    g,8 < g, g >4. < g, g >4 < g, g >4 |
    < g, g >4 r4 r2 |

    < c c' >4-. < c c' >4-. < c c' >4-. < c c' >8-. < c c' >8-^ |
    < d d' >4-. < d d' >4-. < d d' >4-. < d d' >4-. |
    d2 ees2 |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |

    < c, c >4-. < c, c >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < d, d >4-. < d, d >4-. < d, d >4-. < d, d >4-. |
    < g, g >4-. < g, g >4-. < g, g >4-. < g, g >8-. < g, g >8-^ |
    < g, g >4 r4 r2 |
}

pianoleftuppersectiond = {
    < c, c >4 r4 r4 < c, c >4 |
    < f, f >4 r4 r4 < f, f >4 |
    < bes,, bes, >4 r4 r4 < bes,, bes, >4 |
    < bes,, bes, >4 r4 r4 < bes,, bes, >4 |

    < a,, a, >2 r4 < a,, a, >4 |
    < cis, cis >4 r4 r4 < cis, cis >4 |
    < d, d >4 r4 \tuplet 3/2 { ees4 f ees } |
    < d, d >2 r2 |

    < c c' >4-. < c c' >4-. < c c' >4-. < c c' >8-. < c c' >8-^ |
    < d d' >4-. < d d' >4-. < d d' >4-. < d d' >4-. |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |

    < c, c >4-. < c, c >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < d, d >4-. < d, d >4-. < d, d >4-. < d, d >4-. |
    < g, g >4 < g, g >4 < g, g >4 < c c' >4 |
    < b, b >4 r4 r2 |
}

pianoleftuppersectione = {
    \key e \minor
    < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. < b,, b, >8-. < c, c >8-^ |
    < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. < b,, b, >4-. |
    < g, g >4-. < e, e >4-. < e, e >4-. < e, e >4-. |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >4-. |

    r8 a,4 a,8 ~ a,8 a,4 a,8 |
    b,8 < b,, b, >4. ~ < b,, b, >2 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8 < e, e >8 |
    b,4-. r4 r2 |

    < a, a >4-. < a, a >4-. < a, a >4-. < a, a >8-. < a, a >8-^ |
    < b, b >4-. r4 < b, b >4 < b, b >4 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < e, e >8-^ |
    < e, e >4 r4 r2 |

    < fis, fis >4-. < fis, fis >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < b,, b, >4 < b,, b, >4 < b,, b, >4 < b,, b, >4 |
    < e, e >4 r4 r2 |
    < e, e >4 < e, e >4 < fis, fis >4 < g, g >4 |

    < a, a >4 r4 r4 < a, a >4 |
    < d, d >4 < d, d >4 < d, d >4 < d, d >4 |
    < g, g >4 < g, g >4 < g, g >4 < g, g >4 |
    < b, b >4-- < b, b >-. r2 |

    < fis, fis >4-. < fis, fis >4-. < fis, fis >4-. < fis, fis >4-. |
    < cis cis' >4-. < cis cis' >4-. < cis cis' >4-. < cis cis' >4-. |
    < b, b >4-^ < b,, b, >2. |
    < b,, b, >4 r4 r2 |

    < a, a >4-. < a, a >4-. < a, a >4-. < a, a >8-. < a, a >8-^ |
    < b, b >4-. r4 < b, b >4 < b, b >4 |
    < e, e >4-. < e, e >4-. < e, e >4-. < e, e >8-. < e, e >8-^ |
    < e, e >4 r4 r2 |

    < fis, fis >4-. < fis, fis >4-. < c, c >4-. < c, c >8-. < c, c >8-^ |
    < b,, b, >2 < b,, b, >2 |
    < e, e >4 r4 r4 < e, e >4 |
    < a, a >4 r4 r4 < a, a >4 |

    < b,, b, >4 < b,, b, >4 < b,, b, >4 < b,, b, >4 |
    < c, c >4 < c, c >4 < b,, b, >4 < b,, b, >4 |
    r8 < b,, b, >4.\fermata r2 |

}

pianoleftuppernotes = {
    \time 4/4
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
}

pianoleftnotesmidi = {
    \preintro
    \pianoleftupperintro
    \pianoleftuppersectiona
    \pianoleftuppersectionb
    \pianoleftuppersectionc
    \pianoleftuppersectiond
    \pianoleftuppersectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetintro = {
    \key a \major
    cis''2.\mp ~ cis''8 d''8-. |
    cis''1 |
    cis''2.\mf ~ cis''8 d''8-. |
    cis''1 |

    cis''8\f cis''8 ~ cis''4 ~ cis''8 cis''8 b'8 gis'8 |
    eis'1 |
    fis'16\ff ( eis'16 fis'16 gis'16 a'16 gis'16 a'16 b'16 cis''16 bis'16 cis''16 fis''16 gis''16 fis''8. |
    gis'4-^ ) r4 r2 |
}

clarinetsectiona = {
    R1*8 |
    b4.\p ( cis'8 d'4. fis'8 |
    eis'2 ) r2 |
    a4. ( b8 \tuplet 3/2 { cis'4 gis'4 fis'4 } |
    a'4 ) r4 r2 |

    eis'2. r4 |
    eis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) cis'4 eis'4 fis'4 |
}

clarinetsectionb = {
    fis'2 r2 |
    gis'4 gis'4 r2 |
    a'4. r8 a'4. r8 |
    a'4 a'4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 ) |
    gis'4-. r4 r2 |
    r8 cis''4 r8 r2 |

    \tuplet 3/2 { d'4 ( e'4 fis'4 ~ } fis'2 |
    eis'4 ) r4 r2 |
    a'4. eis'8 gis'4. fis'8 |
    a'4 a'4 gis'4 fis'4 |

    d'2. d'4 |
    eis'2 ( eis'2 |
    cis'1 ~ |
    cis'4-. ) r4 r2 |
}

clarinetsectionc = {
    \key a \minor
    r8\f a'4 a'8 c''4-- c''4-- |
    b'2 r2 |
    e'4.-> ( dis'16 e'16 f'4.-> e'16 f'16 |
    fis'4-> ) r4 a'8 e'8 e'8 e'8 |

    gis'1 ~ |
    gis'4. r8 gis'8 d'8 d'8 d'8 |
    r8 c''4. ~ c''2 ~ |
    c''4-. r4 r2 |

    r2 b'8 ( a'8 f'8 d'8 ) |
    gis'4-. r4 r2 |
    \tuplet 3/2 { a'4 ( a'4 a'4 } \tuplet 3/2 { c''4 d''4 b'4 } |
    c''4 ) fis'4 f'4 e'4 |

    f'2. e'4 |
    e'4. e'8 \tuplet 3/2 { gis'4 gis'4 gis'4 } |
    e'1 ~ |
    e'4 a'4 b'4 c''4 |
}

clarinetsectiond = {
    d''8 d''4. ( d''4 ) cis''8 d''8 |
    e''4 d''2 g'4 |
    f''4. e''8 e''4. dis''8 |
    \tuplet 3/2 { f''8 g''8 f''8 } e''4 ~ e''8 dis''8 e''8 f''8 |

    fis''2 ~ fis''4 r4 |
    r1 |
    gis''8-^ gis'4-> gis'8 \tuplet 3/2 { d''4 d''4 d''4 } |
    gis'4-. r8 e'8 e''8-. d''4-> c''16 b'16 |

    r8 a'4 ( a'8 c''4-- c''4-- |
    b'2 ) r2 |
    e'4. ( dis'16 e'16 f'4. e'16 f'16 |
    fis'4 ) r8 e'8 ( a'8 e'8 e'8 e'8 |

    gis'1 ~ |
    gis'4. ) e'8 gis'8 d'8 d'8 d'8 |
    e'2 e'8 r8 r4 |
    gis'4. r8 r2 |
}

clarinetsectione = {
    \key a \major
    R1*8 |
    b4.\mp ( cis'8 d'4. fis'8 |
    eis'2 ) r2 |
    a4. ( b8 \tuplet 3/2 { cis'4 gis'4 fis'4 } |
    a'4 ) r4 r2 |

    eis'2. r4 |
    eis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) cis'4 eis'4 fis'4 |

    fis'2 r2 |
    gis'4 gis'4 r2 |
    a'4. r8 a'4. r8 |
    a'4 a'4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 |
    gis'4-. ) r4 r2 |
    cis''4 r4 r2 |

    \tuplet 3/2 { d'4 ( e'4 fis'4 ~ } fis'2 |
    eis'4 ) r4 r2 |
    a'4. ( eis'8 gis'4. fis'8 |
    a'4 ) a'4 gis'4 fis'4 |

    d'2.\f d'4 ( |
    eis'2 eis'2 ) |
    R1 |
    b'16 ( ais'16 b'16 cis''16 d''16 cis''16 d''16 e''16 fis''4-^ ) r4 |

    gis'4. gis'8 gis'4. gis'8 |
    eis'4. eis'8 cis'8 d'8 dis'8 eis'8 |
    cis''8 c'4.-\fermata r2 |
}

clarinetnotes = {
    \time 4/4
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
}

clarinetnotesmidi = {
    \time 4/4
    \preintro
    \clarinetintro
    \clarinetsectiona
    \clarinetsectionb
    \clarinetsectionc
    \clarinetsectiond
    \clarinetsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinintro = {
    \key e \minor
    b'2.\mp ~ b'8 c''8-. |
    b'1 |
    b'2.\mf ~ b'8 c''8-. |
    b'1 |

    b'8\f fis''8 ~ fis''4 ~ fis''8 e''8 c''8 a'8 |
    b'1 |
    e'16\ff ( dis'16 e'16 fis'16 g'16 fis'16 g'16 a'16 b'16 ais'16 b'16 e''16 fis''16 e''8. |
    b''4-^ ) r4 r2 |
}

violinsectiona = {
    R1*8 |
    a4. ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    g'4 ) r4 r2 |

    dis'2. r4 |
    dis'2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-. ) b4 dis'4 e'4 |
}

violinsectionb = {
    a'2 r2 |
    b'4 a'4 r4 d'4 |
    c''4. r8 b'4. r8 |
    b'4 b'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 ) |
    fis'4-. r4 r2 |
    r8 b'4 r8 r2 |

    \tuplet 3/2 { c'4 ( d'4 e'4 ~ } e'2 |
    dis'4 ) r4 r2 |
    g'4. dis'8 fis'4. e'8 |
    g'4 g'4 fis'4 e'4 |

    c'2. c'4 |
    fis'2 ( g'2 |
    e'1 ~ |
    e'4-. ) r8 d'8 d''8 c''4-. ais'16 a'16 |
}

violinsectionc = {
    \key g \minor
    r8\f g''4 g''8 bes''4-- bes''4-- |
    a''2 r2 |
    d''4.-> ( cis''16 d''16 ees''4.-> d''16 ees''16 |
    e''4-> ) r4 g''8 d''8 d''8 d''8 |

    fis''1 ~ |
    fis''4. r8 fis''8 c''8 c''8 c''8 |
    r8 bes''4. ~ bes''2 ~ |
    bes''4-. r4 r2 |

    r2 a''8 ( g''8 ees''8 c''8 ) |
    fis''4-. r8 d'8 c''8 b'8 bes'8 a'8 |
    \tuplet 3/2 { bes'4 ( bes'4 c''4 } \tuplet 3/2 { d''4 ees''4 cis''4 } |
    d''4 ) bes'4 a'4 g'4 |

    a'2. d'4 |
    a'4. d'8 \tuplet 3/2 { a'4 bes'4 a'4 } |
    g'1 ~ |
    g'4 r4 r2 |
}

violinsectiond = {
    R1*4 |
    r2 r8 ees''8 e''8 fis''8 |
    g''2 ~ g''4 r4 |
    a''8-^ d''4-> d''8 \tuplet 3/2 { ees''4 f''4 ees''4 } |
    d''4-. r8 d'8 d''8-. c''4-> bes'16 a'16 |

    c''1 ~ |
    c''4 r8 d'8 ( c''8 b'8 bes'8 a'8 |
    bes'1 ~ |
    bes'4 ) r8 d'8 ( bes'8 a'8 g'8 fis'8 |

    a'1 ~ |
    a'4. ) d'8 a'8 g'8 g'8 fis'8 |
    g'2 g'8 d''8 cis''8 c''8 |
    b'4. r8 r2 |
}

violinsectione = {
    \key e \minor
    R1*8
    a'4.\mp ( b'8 c''4. e''8 |
    dis''2 ) r2 |
    g'4. ( a'8 \tuplet 3/2 { b'4 fis''4 e''4 } |
    g''4 ) r4 r2 |

    dis'2. r4 |
    dis'2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-.) b4 dis'4 e'4 |

    e'2 r2 |
    b'4 a'4 r4 d'4 |
    c''4. r8 b'4. r8 |
    b'4 b'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 |
    fis'4-. ) r4 r2 |
    b''4 r4 r2 |

    \tuplet 3/2 { c''4 ( d''4 e''4 ~ } e''2 |
    dis''4 ) r4 r2 |
    g''4. ( dis''8 fis''4. e''8 |
    g''4 ) g''4 fis''4 e''4 |

    c''2.\f c''4 ( |
    fis''2 g''2 ) |
    e''16 ( dis''16 e''16 fis''16 g''16 fis''16 g''16 a''16 a''4-^ ) r4 |
    a''16 ( gis''16 a''16 b''16 c'''16 b''16 c'''16 d'''16 e'''4-^ ) r4 |

    b''4. c'''8 b''4. c'''8 |
    b''4. c'''8 b''8 c'''8 cis'''8 dis'''8 |
    e'''8 b''4.-\fermata r2 |
}

violinnotes = {
    \time 4/4
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
}

violinnotesmidi = {
    \time 4/4
    \preintro
    \violinintro
    \violinsectiona
    \violinsectionb
    \violinsectionc
    \violinsectiond
    \violinsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fluteintro = {
    \key e \minor
    b'2.\mp ~ b'8 c''8-. |
    b'1 |
    b'2.\mf ~ b'8 c''8-. |
    b'1 |

    b'8\f fis''8 ~ fis''4 ~ fis''8 e''8 c''8 a'8 |
    b'1 |
    e'16\ff ( dis'16 e'16 fis'16 g'16 fis'16 g'16 a'16 b'16 ais'16 b'16 e''16 fis''16 e''8. |
    b''4-^ ) r4 r2 |
}

flutesectiona = \transpose c c' {
    R1*8 |
    a4. ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    g'4 ) r4 r2 |

    dis'2. r4 |
    dis'2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-. ) b4 dis'4 e'4 |
}

flutesectionb = \transpose c c' {
    a'2 r2 |
    b'4 a'4 r4 d'4 |
    c''4. r8 b'4. r8 |
    b'4 b'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 ) |
    fis'4-. r4 r2 |
    r8 b'4 r8 r2 |

    \tuplet 3/2 { c'4 ( d'4 e'4 ~ } e'2 |
    dis'4 ) r4 r2 |
    g'4. dis'8 fis'4. e'8 |
    g'4 g'4 fis'4 e'4 |

    c'2. c'4 |
    fis'2 ( g'2 |
    e'1 ~ |
    e'4-. ) r8 d'8 d''8 c''4-. ais'16 a'16 |
}

flutesectionc = {
    \key g \minor
    r8\f g''4 g''8 bes''4-- bes''4-- |
    a''2 r2 |
    d''4.-> ( cis''16 d''16 ees''4.-> d''16 ees''16 |
    e''4-> ) r4 g''8 d''8 d''8 d''8 |

    fis''1 ~ |
    fis''4. r8 fis''8 c''8 c''8 c''8 |
    r8 bes''4. ~ bes''2 ~ |
    bes''4-. r4 r2 |

    r2 a''8 ( g''8 ees''8 c''8 ) |
    fis''4-. r8 d''8 c'''8 b''8 bes''8 a''8 |
    \tuplet 3/2 { bes''4 ( bes''4 c'''4 } \tuplet 3/2 { d'''4 ees'''4 cis'''4 } |
    d'''4 ) bes''4 a''4 g''4 |

    a''2. d''4 |
    a''4. d''8 \tuplet 3/2 { a''4 bes''4 a''4 } |
    g''1 ~ |
    g''4 r4 r2 |
}

flutesectiond = {
    R1*4 |
    r2 r8 ees''8 e''8 fis''8 |
    g''2 ~ g''4 r4 |
    a''8-^ d''4-> d''8 \tuplet 3/2 { ees''4 f''4 ees''4 } |
    d''4-. r8 d''8 d'''8-. c'''4-> bes''16 a''16 |

    c'''1 ~ |
    c'''4 r8 d''8 ( c'''8 b''8 bes''8 a''8 |
    bes''1 ~ |
    bes''4 ) r8 d''8 ( bes''8 a''8 g''8 fis''8 |

    a''1 ~ |
    a''4. ) d''8 a''8 g''8 g''8 fis''8 |
    g''2 g''8 d'''8 cis'''8 c'''8 |
    b''4. r8 r2 |
}

flutesectione = {
    \key e \minor
    R1*8
    a'4.\mp ( b'8 c''4. e''8 |
    dis''2 ) r2 |
    g'4. ( a'8 \tuplet 3/2 { b'4 fis''4 e''4 } |
    g''4 ) r4 r2 |
    \transpose c c' {
        dis'2. r4 |
        dis'2 r2 |
        e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
        e'4-.) b4 dis'4 e'4 |

        e'2 r2 |
        b'4 a'4 r4 d'4 |
        c''4. r8 b'4. r8 |
        b'4 b'4 r2 |

        cis'2 ( dis'2 |
        e'2 f'2 |
        fis'4-. ) r4 r2 |
    }
    b''4 r4 r2 |

    \tuplet 3/2 { c''4 ( d''4 e''4 ~ } e''2 |
    dis''4 ) r4 r2 |
    g''4. ( dis''8 fis''4. e''8 |
    g''4 ) g''4 fis''4 e''4 |

    c''2.\f c''4 ( |
    fis''2 g''2 ) |
    e''16 ( dis''16 e''16 fis''16 g''16 fis''16 g''16 a''16 a''4-^ ) r4 |
    a''16 ( gis''16 a''16 b''16 c'''16 b''16 c'''16 d'''16 e'''4-^ ) r4 |

    b''4. c'''8 b''4. c'''8 |
    b''4. c'''8 b''8 c'''8 cis'''8 dis'''8 |
    e'''8 b''4.-\fermata r2 |
}

flutenotes = {
    \time 4/4
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \flutesectione
}

flutenotesmidi = {
    \time 4/4
    \preintro
    \fluteintro
    \flutesectiona
    \flutesectionb
    \flutesectionc
    \flutesectiond
    \flutesectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetintro = {
    \key a \major
    R1*2 |
    a'2.\mf a'8 a'8-. |
    gis'1 |

    cis''8\f gis''8 ~ gis''4 gis''8 fis''8 d''8 b'8 |
    cis''1 |
    fis'16\ff ( eis'16 fis'16 gis'16 a'16 gis'16 a'16 b'16 cis''16 bis'16 cis''16 fis''16 gis''16 fis''16 d''16 b'16 |
    cis''4-^ ) r4 r2 |
}

trumpetsectiona = {
    R1*12 |

    gis'2. r4 |
    gis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) fis'4 gis'4 a'4 |
}

trumpetsectionb = {
    b'2 r2 |
    cis''4 b'4 r4 e'4 |
    d''4. r8 cis''4. r8 |
    cis''4 cis''4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 ) |
    gis'4-. r4 r2 |
    r8 cis''4 r8 r2 |

    r2 \tuplet 3/2 { b'4 ( cis''4 d''4 } |
    cis''4 ) r4 r2 |
    a'4. eis'8 gis'4. fis'8 |
    a'4 a'4 gis'4 fis'4 |

    d'2. d'4 |
    gis'2 ( a'2 |
    fis'1 ~ |
    fis'4-. ) r8 e'8 e''8 d''4-. bis'16 b'16 |
}

trumpetsectionc = {
    \key a \minor
    d''1\f ~ |
    d''4 r8 e'8 d''8 ( cis''8 c''8 b'8 |
    c''1-> ~ |
    c''4-> ) r8 e'8 c''8 b'8 a'8 gis'8 |

    b'1 ~ |
    b'4. e'8 b'8 a'8 a'8 gis'8 |
    a'8 e''4. ~ e''2 ~ |
    e''4-. r4 r2 |

    R1 |
    r4 r8 e'8 d''8 cis''8 c''8 b'8 |
    \tuplet 3/2 { c''4 ( c''4 d''4 } \tuplet 3/2 { e''4 f''4 dis''4 } |
    e''4 ) c''4 b'4 a'4 |

    b'2. e'4 |
    b'4. e'8 \tuplet 3/2 { b'4 c''4 b'4 } |
    a'1 ~ |
    a'4 r4 r2 |
}

trumpetsectiond = {
    R1*4 |

    r2 r8 f''8 fis''8 gis''8 |
    a''2 ~ a''4 r4 |
    b''8-^ e''4-> e''8 \tuplet 3/2 { f''4 g''4 f''4 } |
    e''4-. r8 e'8 e''8-. d''4-> c''16 b'16 |

    d''1 ~ |
    d''4 r8 e'8 ( d''8 cis''8 c''8 b'8 |
    c''1 ~ |
    c''4 ) r8 e'8 ( c''8 b'8 a'8 gis'8 |

    b'1 ~ |
    b'4. ) e'8 b'8 a'8 a'8 gis'8 |
    a'2 a'8 e''8 dis''8 d''8 |
    cis''4. r8 r2 |
}

trumpetsectione = {
    \key a \major
    R1*12 |

    gis'2. r4 |
    gis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) fis'4 gis'4 a'4 |

    b'2 r2 |
    cis''4 b'4 r4 e'4 |
    d''4. r8 cis''4. r8 |
    cis''4 cis''4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 |
    gis'4-. ) r4 r2 |
    cis''4 r4 r2 |

    r2 \tuplet 3/2 {  b'4 ( cis''4 d''4 } |
    cis''4 ) r4 r2 |
    a'4. ( eis'8 gis'4. fis'8 |
    a'4 ) a'4 gis'4 fis'4 |

    d'2. d'4 ( |
    fis'2 a'2 ) |
    fis'16 ( eis'16 fis'16 gis'16 a'16 gis'16 a'16 b'16 cis''4-^ ) r4 |
    R1 |

    cis''4. d''8 cis''4. d''8 |
    cis''4. d''8 cis''8 d''8 dis''8 eis''8 |
    fis''8 cis''4.-\fermata r2 |
}

trumpetnotes = {
    \time 4/4
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
}

trumpetnotesmidi = {
    \time 4/4
    \preintro
    \trumpetintro
    \trumpetsectiona
    \trumpetsectionb
    \trumpetsectionc
    \trumpetsectiond
    \trumpetsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxintro = {
    \key a \major
    R1*2 |
    a'2.\mf a'8 a'8-. |
    gis'1 |

    cis''8\f gis''8 ~ gis''4 gis''8 fis''8 d''8 b'8 |
    cis''1 |
    fis'16\ff ( eis'16 fis'16 gis'16 a'16 gis'16 a'16 b'16 cis''16 bis'16 cis''16 fis''16 gis''16 fis''16 d''16 b'16 |
    cis''4-^ ) r4 r2 |
}

altosaxsectiona = {
    R1*12 |

    gis'2. r4 |
    gis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) fis'4 gis'4 a'4 |
}

altosaxsectionb = {
    b'2 r2 |
    cis''4 b'4 r4 e'4 |
    d''4. r8 cis''4. r8 |
    cis''4 cis''4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 ) |
    gis'4-. r4 r2 |
    r8 cis''4 r8 r2 |

    r2 \tuplet 3/2 { b'4 ( cis''4 d''4 } |
    cis''4 ) r4 r2 |
    a'4. eis'8 gis'4. fis'8 |
    a'4 a'4 gis'4 fis'4 |

    d'2. d'4 |
    gis'2 ( a'2 |
    fis'1 ~ |
    fis'4-. ) r8 e'8 e''8 d''4-. bis'16 b'16 |
}

altosaxsectionc = {
    \key a \minor
    d''1\f ~ |
    d''4 r8 e'8 d''8 ( cis''8 c''8 b'8 |
    c''1-> ~ |
    c''4-> ) r8 e'8 c''8 b'8 a'8 gis'8 |

    b'1 ~ |
    b'4. e'8 b'8 a'8 a'8 gis'8 |
    a'8 e''4. ~ e''2 ~ |
    e''4-. r4 r2 |

    R1 |
    r4 r8 e'8 d''8 cis''8 c''8 b'8 |
    \tuplet 3/2 { c''4 ( c''4 d''4 } \tuplet 3/2 { e''4 f''4 dis''4 } |
    e''4 ) c''4 b'4 a'4 |

    b'2. e'4 |
    b'4. e'8 \tuplet 3/2 { b'4 c''4 b'4 } |
    a'1 ~ |
    a'4 r4 r2 |
}

altosaxsectiond = {
    R1*4 |

    r2 r8 f'8 fis'8 gis'8 |
    a'2 ~ a'4 r4 |
    b'8-^ e'4-> e'8 \tuplet 3/2 { f'4 g'4 f'4 } |
    e'4-. r8 e'8 e''8-. d''4-> c''16 b'16 |

    d''1 ~ |
    d''4 r8 e'8 ( d''8 cis''8 c''8 b'8 |
    c''1 ~ |
    c''4 ) r8 e'8 ( c''8 b'8 a'8 gis'8 |

    b'1 ~ |
    b'4. ) e'8 b'8 a'8 a'8 gis'8 |
    a'2 a'8 e''8 dis''8 d''8 |
    cis''4. r8 r2 |
}

altosaxsectione = {
    \key a \major
    R1*12 |

    gis'2. r4 |
    gis'2 r2 |
    fis'8 ( eis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 |
    fis'4-. ) fis'4 gis'4 a'4 |

    b'2 r2 |
    cis''4 b'4 r4 e'4 |
    d''4. r8 cis''4. r8 |
    cis''4 cis''4 r2 |

    dis'2 ( eis'2 |
    fis'2 g'2 |
    gis'4-. ) r4 r2 |
    cis''4 r4 r2 |

    r2 \tuplet 3/2 {  b'4 ( cis''4 d''4 } |
    cis''4 ) r4 r2 |
    a'4. ( eis'8 gis'4. fis'8 |
    a'4 ) a'4 gis'4 fis'4 |

    d'2. d'4 ( |
    fis'2 a'2 ) |
    fis'16 ( eis'16 fis'16 gis'16 a'16 gis'16 a'16 b'16 cis''4-^ ) r4 |
    R1 |

    cis''4. d''8 cis''4. d''8 |
    cis''4. d''8 cis''8 d''8 dis''8 eis''8 |
    fis''8 cis''4.-\fermata r2 |
}

altosaxnotes = \transpose ees bes {
    \time 4/4
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
}

altosaxnotesmidi = \transpose ees bes {
    \time 4/4
    \preintro
    \altosaxintro
    \altosaxsectiona
    \altosaxsectionb
    \altosaxsectionc
    \altosaxsectiond
    \altosaxsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneintro = {
    \key e \minor
    R1*2 |
    e'2.\mf e'8 e'8-. |
    dis'1 |

    b8\sf g'8 ~ g'4 g'8 g'8 e'8 c'8 |
    a1 |
    R1 |
    a4-^\ff r4 r2 |
}

trombonesectiona = {
    R1*8 |

    a4.\p ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    g4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    R1 |
    e'4-. g4 a4 b4 |
}

trombonesectionb = {
    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 ) |
    fis'4-. r4 r2 |
    r8 b4 r8 r2 |

    a2 g2 |
    fis4 r4 r2 |
    g'4. dis'8 fis'4. e'8 |
    g'4 g'4 fis'4 e'4 |

    c'2. c'4 |
    a2 ( a2 |
    g2 b,2 \glissando \noBreak |
    g4-. ) r4 r2 |
}

trombonesectionc = {
    \key g \minor
    r8\f ees'4 ees'8 g'4-- g'4-- |
    fis'2 r2 |
    g1-> ~ |
    g4-> r4 d'8 bes8 bes8 bes8  |

    c'2 ( ees'2 |
    c'4. ) r8 c'8 a8 a8 a8 |
    r8 g'4. g'2 ~ |
    g'4-. r8 d8 d'8-. c'4-> bes16 a16 |

    c'8 ( d'8 ees'8 c'8 a'8 g'8 ees'8 c'8 |
    a4-. ) r4 r2 |
    \tuplet 3/2 { d'4 ( d'4 ees'4 } \tuplet 3/2 { g'4 fis'4 fis'4 } |
    g'4 ) r4 r2 |

    c'2. d'4 |
    c'4. d'8 \tuplet 3/2 { c'4 c'4 c'4 } |
    bes1 ~ |
    bes4 r4 r2 |
}

trombonesectiond = {
    R1*6 |
    a8-^ c'4-> c'8 \tuplet 3/2 { g'4 a'4 g'4 } |
    c'4-. r4 r2 |

    r8 ees'4 ( ees'8 g'4-- g'4-- |
    fis'2 ) r2 |
    g1 ~ |
    g4 r8 d8 d'8 bes8 bes8 bes8 |

    c'2 ( ees'2 |
    c'4. ) d8 c'8 a8 a8 a8 |
    bes2 bes8 r8 r4 |
    a4. r8 r2 |
}

trombonesectione = {
    \key e \minor
    R1*8 |

    a4.\mp ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    b4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-. ) g4 a4 b4 |

    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 |
    fis'4-. ) r4 r2 |
    b4 r4 r2 |

    a2 ( g2 |
    fis4 ) r4 r2 |
    g'4. ( dis'8 fis'4. e'8 |
    g'4 ) g'4 fis'4 e'4 |

    c'2.\f c'4 ( |
    a2 a2 ) |
    e4 r4 r4 e4 \glissando \noBreak |
    a4 r4 r4 a4 |

    dis'4. dis'8 c'4. c'8 |
    a4. c'8 r2 |
    g'8 b,4.-\fermata r2 |
}

trombonenotes = {
    \override Glissando.style = #'zigzag
    \override Glissando.thickness = #1.75
    \override Glissando.gap = #0.4
    \time 4/4
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
}

trombonenotesmidi = {
    \time 4/4
    \preintro
    \tromboneintro
    \trombonesectiona
    \trombonesectionb
    \trombonesectionc
    \trombonesectiond
    \trombonesectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxintro = {
    \key e \minor
    R1*2 |
    e'2.\mf e'8 e'8-. |
    dis'1 |

    b8\sf g'8 ~ g'4 g'8 g'8 e'8 c'8 |
    a1 |
    R1 |
    a4-^\ff r4 r2 |
}

tenorsaxsectiona = {
    R1*8 |

    a4.\p ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    g4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    R1 |
    e'4-. g4 a4 b4 |
}

tenorsaxsectionb = {
    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 ) |
    fis'4-. r4 r2 |
    r8 b4 r8 r2 |

    a2 g2 |
    fis4 r4 r2 |
    g'4. dis'8 fis'4. e'8 |
    g'4 g'4 fis'4 e'4 |

    c'2. c'4 |
    a2 ( a2 |
    g2 b,2 |
    g4-. ) r4 r2 |
}

tenorsaxsectionc = {
    \key g \minor
    r8\f ees'4 ees'8 g'4-- g'4-- |
    fis'2 r2 |
    g1-> ~ |
    g4-> r4 d'8 bes8 bes8 bes8  |

    c'2 ( ees'2 |
    c'4. ) r8 c'8 a8 a8 a8 |
    r8 g'4. g'2 ~ |
    g'4-. r8 d8 d'8-. c'4-> bes16 a16 |

    c'8 ( d'8 ees'8 c'8 a'8 g'8 ees'8 c'8 |
    a4-. ) r4 r2 |
    \tuplet 3/2 { d'4 ( d'4 ees'4 } \tuplet 3/2 { g'4 fis'4 fis'4 } |
    g'4 ) r4 r2 |

    c'2. d'4 |
    c'4. d'8 \tuplet 3/2 { c'4 c'4 c'4 } |
    bes1 ~ |
    bes4 r4 r2 |
}

tenorsaxsectiond = {
    R1*6 |
    a8-^ c'4-> c'8 \tuplet 3/2 { g'4 a'4 g'4 } |
    c'4-. r4 r2 |

    r8 ees'4 ( ees'8 g'4-- g'4-- |
    fis'2 ) r2 |
    g1 ~ |
    g4 r8 d8 d'8 bes8 bes8 bes8 |

    c'2 ( ees'2 |
    c'4. ) d8 c'8 a8 a8 a8 |
    bes2 bes8 r8 r4 |
    a4. r8 r2 |
}

tenorsaxsectione = {
    \key e \minor
    R1*8 |

    a4.\mp ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    b4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-. ) g4 a4 b4 |

    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 |
    fis'4-. ) r4 r2 |
    b4 r4 r2 |

    a2 ( g2 |
    fis4 ) r4 r2 |
    g'4. ( dis'8 fis'4. e'8 |
    g'4 ) g'4 fis'4 e'4 |

    c'2.\f c'4 ( |
    a2 a2 ) |
    e4 r4 r4 e4 |
    a4 r4 r4 a4 |

    dis'4. dis'8 c'4. c'8 |
    a4. c'8 r2 |
    g'8 b,4.-\fermata r2 |
}

tenorsaxnotes = \transpose bes c'' {
    \time 4/4
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
}

tenorsaxnotesmidi = \transpose bes c'' {
    \time 4/4
    \preintro
    \tenorsaxintro
    \tenorsaxsectiona
    \tenorsaxsectionb
    \tenorsaxsectionc
    \tenorsaxsectiond
    \tenorsaxsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorforaltoclarinetintro = {
    \key e \minor
    R1*2 |
    e'2.\mf e'8 e'8-. |
    dis'1 |

    b8\sf g'8 ~ g'4 g'8 g'8 e'8 c'8 |
    a1 |
    R1 |
    a4-^\ff r4 r2 |
}

tenorforaltoclarinetsectiona = {
    R1*8 |

    a4.\p ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    g4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    R1 |
    e'4-. g4 a4 b4 |
}

tenorforaltoclarinetsectionb = {
    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 ) |
    fis'4-. r4 r2 |
    r8 b4 r8 r2 |

    a2 g2 |
    fis4 r4 r2 |
    g'4. dis'8 fis'4. e'8 |
    g'4 g'4 fis'4 e'4 |

    c'2. c'4 |
    a2 ( a2 |
    g2 b2 |
    g4-. ) r4 r2 |
}

tenorforaltoclarinetsectionc = {
    \key g \minor
    r8\f ees'4 ees'8 g'4-- g'4-- |
    fis'2 r2 |
    g1-> ~ |
    g4-> r4 d'8 bes8 bes8 bes8  |

    c'2 ( ees'2 |
    c'4. ) r8 c'8 a8 a8 a8 |
    r8 g'4. g'2 ~ |
    g'4-. r8 d8 d'8-. c'4-> bes16 a16 |

    c'8 ( d'8 ees'8 c'8 a'8 g'8 ees'8 c'8 |
    a4-. ) r4 r2 |
    \tuplet 3/2 { d'4 ( d'4 ees'4 } \tuplet 3/2 { g'4 fis'4 fis'4 } |
    g'4 ) r4 r2 |

    c'2. d'4 |
    c'4. d'8 \tuplet 3/2 { c'4 c'4 c'4 } |
    bes1 ~ |
    bes4 r4 r2 |
}

tenorforaltoclarinetsectiond = {
    R1*6 |
    a8-^ c'4-> c'8 \tuplet 3/2 { g'4 a'4 g'4 } |
    c'4-. r4 r2 |

    r8 ees'4 ( ees'8 g'4-- g'4-- |
    fis'2 ) r2 |
    g1 ~ |
    g4 r8 d8 d'8 bes8 bes8 bes8 |

    c'2 ( ees'2 |
    c'4. ) d8 c'8 a8 a8 a8 |
    bes2 bes8 r8 r4 |
    a4. r8 r2 |
}

tenorforaltoclarinetsectione = {
    \key e \minor
    R1*8 |

    a4.\mp ( b8 c'4. e'8 |
    dis'2 ) r2 |
    g4. ( a8 \tuplet 3/2 { b4 fis'4 e'4 } |
    b4 ) r4 r2 |

    a2. r4 |
    a2 r2 |
    e'8 ( dis'8 e'8 fis'8 g'8 a'8 fis'8 g'8 |
    e'4-. ) g4 a4 b4 |

    c'2 r2 |
    c'4 c'4 r2 |
    d'4. r8 c'4. r8 |
    d'4 d'4 r2 |

    cis'2 ( dis'2 |
    e'2 f'2 |
    fis'4-. ) r4 r2 |
    b4 r4 r2 |

    a2 ( g2 |
    fis4 ) r4 r2 |
    g'4. ( dis'8 fis'4. e'8 |
    g'4 ) g'4 fis'4 e'4 |

    c'2.\f c'4 ( |
    a2 a2 ) |
    e4 r4 r4 e4 |
    a4 r4 r4 a4 |

    dis'4. dis'8 c'4. c'8 |
    a4. c'8 r2 |
    g'8 b4.-\fermata r2 |
}

tenorforaltoclarinetnotes = \transpose bes c'' {
    \time 4/4
    \tenorforaltoclarinetintro
    \tenorforaltoclarinetsectiona
    \tenorforaltoclarinetsectionb
    \tenorforaltoclarinetsectionc
    \tenorforaltoclarinetsectiond
    \tenorforaltoclarinetsectione
}

tenorforaltoclarinetnotesmidi = \transpose bes c'' {
    \time 4/4
    \preintro
    \tenorforaltoclarinetintro
    \tenorforaltoclarinetsectiona
    \tenorforaltoclarinetsectionb
    \tenorforaltoclarinetsectionc
    \tenorforaltoclarinetsectiond
    \tenorforaltoclarinetsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

basslineintro = {
    \key g \major
    e,4-. e,4-. e,4-. e,8-. f,8-^ |
    fis,4-^ fis,4-^ fis,4-^ fis,4-^ |
    e,4-. e,4-. e,4-. e,8-. f,8-^ |
    fis,4-^ fis,4-^ fis,4-^ fis,4-^ |

    e,4-. e,4-. e,4-. e,8-. f,8-^ |
    fis,4-^ fis,4-^ fis,4-^ fis,4-^ |
    e,4 r4 r2 |
    b,4-^ r4 r2 |
}

basslinesectiona = {
    b,4-. b,4-. b,4-. b,8-. c8-^ |
    b,4-. b,4-. b,4-. b,4-. |
    g4-. e4-. e4-. e4-. |
    e4-. e4-. e4-. e4-. |

    r8 a4 a8 ~ a8 a4 a8 |
    b8 b,4. ~ b,2 |
    e4-. e4-. e4-. e8 e8 |
    b4-. r4 r2 |

    a4-. a4-. a4-. a8-. a8-^ |
    b4-. r4 b4 b4 |
    e4-. e4-. e4-. e8-. e8-^ |
    e4 r4 r2 |

    fis4-. fis4-. c4-. c8-. c8-^ |
    b,4 b,4 b,4 b,4 |
    e4 r4 r2 |
    e4 e4 fis4 g4 |
}

basslinesectionb = {
    a4 r4 r4 a4 |
    d2 d2 |
    g2 g2 |
    b,4-- b,4-. r2 |

    fis,4-. fis,4-. fis,4-. fis,4-. |
    cis4-. cis4-. cis4-. cis4-. |
    b4-^ b,2. |
    b,4 r4 r2 |

    a,4-. a,4-. a,4-. a,8-. a,8-^ |
    b,4-. r4 b,4 b,4 |
    e4-. e4-. e4-. e8-. e8-^ |
    e4 r4 r2 |

    fis4-. fis4-. c4-. c8-. c8-^ |
    b,2 b,2 |
    e4 r4 r2 |
    e4 r4 r2 |
}

basslinesectionc = {
    \key g \minor
    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    g,4 g,4 g,4 g,4 |
    g,4 g,4 g,4 g,4 |

    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    g8 g4. g4 g4 |
    g4 r4 r2 |

    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    d2 ees2 |
    g,4 g,4 g,4 g,4 |

    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    g,4-. g,4-. g,4-. g,8-. g,8-^ |
    g,4 r4 r2 |
}

basslinesectiond = {
    c4 r4 r4 c4 |
    f4 r4 r4 f4 |
    bes,4 r4 r4 bes,4 |
    bes,4 r4 r4 bes,4 |

    a,2 r4 a,4 |
    cis4 r4 r4 cis4 |
    d4 r4 r2 |
    d2 r2 |

    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    g,4 g,4 g,4 g,4 |
    g,4 g,4 g,4 g,4 |

    c4-. c4-. c4-. c8-. c8-^ |
    d4-. d4-. d4-. d4-. |
    g,4 g,4 g,4 c4 |
    b,4 r4 r2 |
}

basslinesectione = {
    \key g \major
    b,4-. b,4-. b,4-. b,8-. c8-^ |
    b,4-. b,4-. b,4-. b,4-. |
    g4-. e4-. e4-. e4-. |
    e4-. e4-. e4-. e4-. |

    r8 a,4 a,8 ~ a,8 a,4 a,8 |
    b8 b,4. ~ b,2 |
    e4-. e4-. e4-. e8 e8 |
    b4-. r4 r2 |

    a,4-. a,4-. a,4-. a,8-. a,8-^ |
    b,4-. r4 b,4 b,4 |
    e,4-. e,4-. e,4-. e,8-. e,8-^ |
    e,4 r4 r2 |

    fis4-. fis4-. c4-. c8-. c8-^ |
    b,4 b,4 b,4 b,4 |
    e4 r4 r2 |
    e4 e4 fis4 g4 |

    a4 r4 r4 a4 |
    d2 d2 |
    g2 g2 |
    b,4-- b,4-. r2 |

    fis,4-. fis,4-. fis,4-. fis,4-. |
    cis4-. cis4-. cis4-. cis4-. |
    b,4-^ b,2. |
    b,4 r4 r2 |

    a,4-. a,4-. a,4-. a,8-. a,8-^ |
    b,4-. r4 b,4 b,4 |
    e,4-. e,4-. e,4-. e,8-. e,8-^ |
    e,4 r4 r2 |

    fis4-. fis4-. c4-. c8-. c8-^ |
    b,2 b,2 |
    e4 r4 r4 e4 |
    a4 r4 r4 a4 |

    b,4 b,4 b,4 b,4 |
    c4 c4 b,4 b,4 |
    r8 b,4.-\fermata r2 |
}

bassline = {
    \time 4/4
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
}

basslinemidi = {
    \time 4/4
    \preintro
    \basslineintro
    \basslinesectiona
    \basslinesectionb
    \basslinesectionc
    \basslinesectiond
    \basslinesectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshighintro = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectionb = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectionc = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectiond = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumshighsectione = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
}

drumshigh = \drummode {
    \time 4/4
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
}

drumshighmidi = \drummode {
    \time 4/4
    \preintro
    \drumshighintro
    \drumshighsectiona
    \drumshighsectionb
    \drumshighsectionc
    \drumshighsectiond
    \drumshighsectione
}

%-------------------------------------------------

drumslowintro = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectiona = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectionb = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectionc = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectiond = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |
}

drumslowsectione = \drummode {
    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
    s1 |

    s1 |
    s1 |
    s1 |
}

drumslow = \drummode {
    \time 4/4
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
}

drumslowmidi = \drummode {
    \time 4/4
    \preintro
    \drumslowintro
    \drumslowsectiona
    \drumslowsectionb
    \drumslowsectionc
    \drumslowsectiond
    \drumslowsectione
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% instrument part assignments

% key change down above

leadsheetnotes = { \melody }
leadsheetnotesmidi = { \melodymidi }

% bass transpose up
% will want to find the highest notes and adjust
bassnotes = { \bassline }
bassnotesmidi = { \basslinemidi }

euphoniumnotes = { \bassline }
euphoniumnotesmidi = { \basslinemidi }

% these derive from already transposed part.
tenorforothersnotes = \transpose c bes, { \tenorsaxnotes }
tenorforclarinetnotes = { \tenorsaxnotes }
tenorfortrumpetnotes = { \tenorsaxnotes }
clarinetforaltonotes = \transpose ees bes { \clarinetnotes }
tenorforaltonotes = \transpose ees bes { \tenorsaxnotes }
tenorforviolinnotes = \transpose c bes, { \tenorsaxnotes }
tenorforflutenotes = \transpose c bes { \tenorsaxnotes }

altoclarinetchordletters = \transpose ees bes { \clarinetchordletters }
altoclarinetonenotes = \transpose ees bes { \clarinetnotes }
altoclarinettwonotes = \transpose ees bes, { \tenorforaltoclarinetnotes }

altoflutenotes = \transpose g c' { \flutenotes }
altoflutetenorharmony = \transpose g c { \tenorforflutenotes }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

counter = { \trombonenotes }
countermidi = { \trombonenotesmidi }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% put the instrument Voices into staves for printing and for
% midi

vocalsstaff = \context Staff = "vocalss" \with {
    minimumVerticalExtent = #'(-4.0 . 4.0)
    instrument = ""
    instr = ""
}  <<
    \override MultiMeasureRest.expand-limit = #1
    \clef violin
    \bandm
    \new Voice { \melody }
>>

%combinestaff = \context Staff = "combinestaff" <<
%    \override MultiMeasureRest.expand-limit = #1
%    \clef violin
%    \bandm
%    \new Voice { \combinenotes }
%>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode {
  \time 4/4
  b1:7 | 
  b1:7 | b1:7 | e2.:min e8:min c8 | e1:min6 |
}

previewnotes = {
  \time 4/4
  \key e \minor

  \tempo \tempostring
  r4 r8 b8 b'8-. a'4 g'16 fis'16 |
  \markA \positionA
  \bar "||"
  a'1 ~ |
  a'4 r8 b8 a'8-- gis'8-- g'8-- fis'8-- |
  g'1 ~ |
  g'4 r8 b8 g'8 fis'4 fis'16 f'16 |
}

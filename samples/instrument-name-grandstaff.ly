\version "2.11.57"


\score {
  
   \context GrandStaff <<
    \context Staff = "treble"    {
      \set GrandStaff.instrumentName = "Violini  "
      \set Staff.instrumentName = " vn I" { c''4 }}
    \context Staff = "bass" { \set Staff.instrumentName = " vn II" c''4 }>>


\layout {
ragged-right = ##t
\context { \Staff
  \consists "Instrument_name_engraver"
  }
\context { \GrandStaff \consists "Instrument_name_engraver" }
}}
%% new-chords-done %%

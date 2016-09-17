\renameinput "/usr/src/redhat/BUILD/lilypond-2.0.2/input/test/repeat-shorter-bracket.ly"

% Generated automatically by: lilypond-book.py
% options are filename=/usr/src/redhat/BUILD/lilypond-2.0.2/input/test/repeat-shorter-bracket.ly printfilename
#(set-global-staff-size 16)
\layout  {
  line-width = 455.244096\pt
  
  
}
#(ly:set-option 'old-relative)
\version "2.11.57"
\header{
	texidoc="

@cindex shorter volta bracket

By setting @code{voltaSpannerDuration} the length of a volta bracket
can be shortened.

"

}


\score {
	<<
		\context Staff \relative c''{
			c c c c
			% coda-klugde: let volta span only one bar
			\set Staff.voltaSpannerDuration = #(ly:make-moment 1 1)
			\repeat "volta" 5 { d d d d }
				\alternative { { e e e e f f f f }
			{ g g g g } }
		}
		\context Lyrics \lyricmode{
			intro1
			\repeat fold 5 { }
			\alternative {
				{ chorus1 one verse1 }
				{ chorus1 two verse1 }
				{ chorus1 three verse }
				{ chorus1 four verse }
			}
			five1
		}
	>>
\layout{ragged-right = ##t}
}


% 


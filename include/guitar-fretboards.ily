\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%=====================================================================
%
% Creation: 7 December 2003
%
% History:
%    1 February 2009 - Dick Schoeller
%        o Upgrade to 2.12.0
%
%    7 December 2008 - Dick Schoeller
%        o Creation
%
%=====================================================================

\include "predefined-guitar-fretboards.ly"

%========================================
% unusual chords
%----------------------------------------
% assign shapes to chord letters.
%----------------------------------------
\storePredefinedDiagram #default-fret-table \chordmode {a:7/+cis} #guitar-tuning #"x;4-3;2-2;o;2-1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {c:7/+e} #guitar-tuning #"o;3-3;2-2;3-4;1-1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {d:min6} #guitar-tuning #"x;x;o;2-2;o;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode {e:min7/+b} #guitar-tuning #"x;2-1;o;o;o;o;"
\storePredefinedDiagram #default-fret-table \chordmode {ees:m/c} #guitar-tuning #"x;x;x;2-2-(;4-4;2-1-);"
\storePredefinedDiagram #default-fret-table \chordmode {g:min7+} #guitar-tuning #"x;x;4;3;3;1;"
\storePredefinedDiagram #default-fret-table \chordmode {g:min7/+d} #guitar-tuning #"x;5-3;3-1-(;3-1;3-1;3-1-);"
\storePredefinedDiagram #default-fret-table \chordmode {g:min6} #guitar-tuning #"x;x;2-2;3-3;3-4;1-1;"

%========================================
% small chords
%----------------------------------------
% assign shapes to chord letters.
% note, smalls are an octave above normal.
%----------------------------------------
\storePredefinedDiagram #default-fret-table \chordmode {bes'} #guitar-tuning #"x;x;x;3-2;3-3;1-1;"
\storePredefinedDiagram #default-fret-table \chordmode {bes':aug} #guitar-tuning #"x;x;x;3-2;3-3;2-1;"
\storePredefinedDiagram #default-fret-table \chordmode {bes':6} #guitar-tuning #"x;x;x;3-2;3-3;3-4;"
\storePredefinedDiagram #default-fret-table \chordmode {c':7} #guitar-tuning #"x;3-3;2-2;3-4;1-1;o;"
\storePredefinedDiagram #default-fret-table \chordmode {f'} #guitar-tuning #"x;x;3-3;2-2;1-1-(;1-1-);"

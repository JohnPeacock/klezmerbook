\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2003-2008, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

snareflameight = \drummode { \acciaccatura { sna16 } sna8 }
snareruffeight = \drummode { \acciaccatura { sna16 [ sna16 ] } sna8 }
snarerolleight = \drummode { \repeat unfold 4 { sna32\p } }
snarerollshorteight = \drummode { \repeat unfold 4 { sna64\p } r16 }
snarerollhalf = \drummode { \repeat unfold 15 { sna32\p } r32 }
snarerolltwohalves = \drummode { \repeat unfold 31 { sna32\p } r32 }
snarerollwhole = \drummode { \repeat unfold 31 { sna32\p } r32 }

snareeightrolleightaccenttie = \drummode { sna8\mf \repeat tremolo 4 sna32^> ~ }
snareeightrolleighttie =  \drummode { sna8\p \repeat tremolo 4 sna32\p ~ }
snarerolleighteight = \drummode { \repeat tremolo 4 sna32\mf sna8 }
snarerollquarter = \drummode { \repeat tremolo 8 sna32\mf }
snarerollhalfdot = \drummode {
 \repeat tremolo 8 sna32\p
 \repeat tremolo 8 sna32\p
 \repeat tremolo 8 sna32\p
}
snarerollhalfaccent = \drummode { \repeat tremolo 16 sna32^>\mf }

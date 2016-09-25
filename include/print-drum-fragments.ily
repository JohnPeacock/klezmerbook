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
snarerolleight = \drummode { \repeat tremolo 4 sna32 }
snarerollshorteight = \drummode { \repeat tremolo 4 sna32 }
snarerollhalf = \drummode { sna2:32 }
snarerolltwohalves = \drummode { sna2:32 ~ | sna:32 }
snarerollwhole = \drummode { sna1:32 }

snareeightrolleightaccenttie = \drummode { sna8 [ sna8:32^> ~ ] }
snareeightrolleighttie = \drummode { sna8 [ sna8:32 ~ ] }
snarerolleighteight = \drummode { sna8:32 [ sna8 ] }
snarerollquarter = \drummode { sna4:32 }
snarerollhalfdot = \drummode { sna2.:32 }
snarerollhalfaccent = \drummode { sna2:32^> }

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

tempostring = \markup {
  \small \italic \tempoprefix \small "(" \tiny \temponote  \small " = " \small \tempovalue \small ")"
}

markupT = \tempostring

markupTstacked = \markup {
  \column \left-align {
    { \small \italic \tempoprefix }
    { \line { \small "(" \tiny \temponote  \small " = " \small \tempovalue \small ")" } }
  }
}

markupAT =   \markup {
  \column \left-align { { \tempostring } " " { \box \bold \huge "A" } }
}

markupATstacked = \markup {
  \column \left-align {
    { \small \italic \tempoprefix }
    { \line { \small "(" \tiny \temponote  \small " = " \small \tempovalue \small ")" } }
    " "
    { \box \bold \huge "A" }
  }
}

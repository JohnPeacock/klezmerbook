\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2003-2006, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%=====================================================================
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\context {
    \Staff \RemoveEmptyStaves
    \consists Ambitus_engraver
    \override VoltaBracket.staff-padding = #6.0
    \override VoltaBracket.padding = #0.0
    \override Script.padding = #0.9
    \override OttavaBracket.padding = #2.5
}

\context {
    \DrumStaff
    \remove "Axis_group_engraver"
    \consists "Hara_kiri_engraver"
    \override Beam.auto-knee-gap = #'()
    \override VoltaBracket.staff-padding = #6.0
    \override VoltaBracket.padding = #0.0
    \override Script.padding = #0.9
    \override VerticalAxisGroup.remove-empty = ##t
    drumStyleTable = #(alist->hash-table mydrums)
}

\context {
    \Score
%    \override BreakAlignment.break-align-orders = #(make-vector 3 '(
%        instrument-name
%        left-edge
%        ambitus
%        span-bar
%        breathing-sign
%        clef
%        key-signature
%        staff-bar
%        time-signature
%        custos
%    ))
    \override MultiMeasureRest.expand-limit = #1
    \override Score.skipBars = ##t
}

\context {
    \Voice
    \override Glissando.thickness = #2.0
    \override Glissando.gap = #-0.4
}

latexoptions=twoside

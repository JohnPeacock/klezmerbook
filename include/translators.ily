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

\context {
    \Staff \RemoveEmptyStaves
    \override VoltaBracket.staff-padding = #6.0
    \override VoltaBracket.padding = #0.0
    \override Script.padding = #0.9
    \override OttavaBracket.padding = #2.5
    \override VerticalAxisGroup.remove-first = ##t
}

\context {
    \DrumStaff
    \RemoveEmptyStaves
    \override Beam.auto-knee-gap = #'()
    \override VoltaBracket.staff-padding = #6.0
    \override VoltaBracket.padding = #0.0
    \override Script.padding = #0.9
    \override VerticalAxisGroup.remove-empty = ##t
    drumStyleTable = #(alist->hash-table mydrums)
    \override VerticalAxisGroup.remove-first = ##t
}

\context {
    \Score
    \override MetronomeMark.outside-staff-priority = #4
    \override VoltaBracketSpanner.outside-staff-priority = #3
    \override RehearsalMark.outside-staff-priority = #2

    \override MultiMeasureRest.expand-limit = #1
    \override Score.skipBars = ##t
}

\context {
    \Voice
    \override Glissando.thickness = #2.0
    \override Glissando.gap = #-0.4
}

latexoptions=twoside

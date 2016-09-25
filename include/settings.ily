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

startOctVA = { \ottava #1 }
stopOctVA =  { \ottava #0 }
startOctVB = { \ottava #-1 }
stopOctVB =  { \ottava #0 }

slurStem = \override Slur.attachment = #'(stem . stem)
slurHead = \override Slur.attachment = #'(head . head)
slurNeutral = \revert Slur.attachment

hideBeams = \override Beam.transparent = ##t
unHideBeams = \override Beam.transparent = ##f

hideSlurs = \override Slur.transparent = ##t
unHideSlurs = \override Slur.transparent = ##f

hideDynamics = \sequential {
    \override DynamicText.transparent = ##t
    \override DynamicLineSpanner.transparent = ##t
    \override Hairpin.transparent = ##t
}
unHideDynamics = \sequential {
    \override DynamicText.transparent = ##f
    \override DynamicLineSpanner.transparent = ##f
    \override Hairpin.transparent = ##f
}

glissandosetup = {
}

glissnogap = {
    \once \override Glissando.gap = #-1.0
}

voltasetup = {
    \override Staff.VoltaBracket.height = #3.0
}

% mark rendering controls.

closemark = {
    \override Score.RehearsalMark.padding = #.8
}

lowmidmark = {
    \override Score.RehearsalMark.padding = #2.0
}

middlemark = {
    \override Score.RehearsalMark.padding = #3.2
}

farmidmark = {
    \override Score.RehearsalMark.padding = #4.4
}

farmark = {
    \override Score.RehearsalMark.padding = #5.6
}

reallyfarmark = {
    \override Score.RehearsalMark.padding = #6.8
}

superfarmark = {
    \override Score.RehearsalMark.padding = #8.0
}

CenterMark = {
    \override Score.RehearsalMark.self-alignment-X = #0
    \override Score.RehearsalMark.break-visibility = #end-of-line-invisible
}

RightMark = {
    \override Score.RehearsalMark.self-alignment-X = #-1
    \override Score.RehearsalMark.break-visibility = #end-of-line-invisible
}

LeftMark = {
    \override Score.RehearsalMark.self-alignment-X = #1
    \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
}

CenterMarkOnce = {
    \once \override Score.RehearsalMark.self-alignment-X = #0
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-invisible
}

RightMarkOnce = {
    \once \override Score.RehearsalMark.self-alignment-X = #-1
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-invisible
}

LeftMarkOnce = {
    \once \override Score.RehearsalMark.self-alignment-X = #1
    \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
}

KeyAlignMark = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(key-signature)
}

TimeAlignMark = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
}

ClefAlignMark = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(clef)
}

BarAlignMark = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(staff-bar)
}

inote = {
    \once \override Stem.transparent = ##t
    \once \override NoteHead.transparent = ##t
    \once \override Beam.transparent = ##t
}

barnumberpadextra = { \override Score.BarNumber.padding = #2.0 }
barnumberpadnone = {  }

GSH = \once \override Slur.attachment = #'(head . head)

graceSlash = \once \override Flag.stroke-style = #"grace"

bnPad = { \barnumberpadnone }

chordChangesOn = \set chordChanges = ##t
chordChangesOff = \set chordChanges = ##f

CMString  = {
  <c e g>-\markup { \whiteout { \hspace #-2.3 "No Chord" } }
  <c e g b>-\markup { \whiteout { \hspace #-2.3 "N.C.  " } }
}
CMStringX = #(append (sequential-music-to-chord-exceptions CMString #t)
           ignatzekExceptions)
noChordStringOn = { \set chordNameExceptions = #CMStringX }
noChordStringOff = { \unset chordNameExceptions }

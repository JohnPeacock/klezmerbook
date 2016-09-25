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
    #(set-paper-size "letter")
%    obsolete-after-title-space = .5\cm  markup-system-spacing #'basic-distance = #(/ obsolete-after-title-space staff-space)
    print-page-number = ##t
    top-margin = .5\cm
    head-separation = .1\cm
%    obsolete-page-top-space = #1.0  top-system-spacing #'basic-distance = #(/ obsolete-page-top-space staff-space)
    left-margin = 2.0\cm
    line-width = \paper-width - 4.0\cm
    foot-separation = .1\cm
    bottom-margin = .8\cm
    ragged-bottom = ##t
%    obsolete-between-system-space = 1.5\cm  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
%    obsolete-between-system-padding = #2.0  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)

oddHeaderMarkup = \markup \fill-line {
    \on-the-fly #not-first-page \oddTitleHeaderMarkup
    \on-the-fly #not-first-page \fromproperty #'header:instrument
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
}

evenHeaderMarkup = \markup \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \on-the-fly #not-first-page \fromproperty #'header:instrument
    \on-the-fly #not-first-page \evenTitleHeaderMarkup
}

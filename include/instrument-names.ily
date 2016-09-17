\version "2.18.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Copyright 2003-2011, Richard J. Schoeller
% 
% Fill in GPL boilerplate here.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% strings for the standard transpositions.

flatstring = \markup { \fontsize #-2 \flat }
bflatstring = \markup { "( B" \flatstring ")" }
eflatstring = \markup { "( E" \flatstring ")" }

% instrumentName names

bassintrumentmarkup = \markup { "Bass" }
bassinstrumentmarkup = \markup { "Bass" }
clarinetinstrumentmarkup = \markup { \column { "Clarinet" \bflatstring } }
clarinetoneinstrumentmarkup = \markup { \column { "Clarinet 1" \bflatstring } }
clarinettwoinstrumentmarkup = \markup { \column { "Clarinet 2" \bflatstring } }
clarinetthreeinstrumentmarkup = \markup { \column { "Clarinet 3" \bflatstring } }
fluteinstrumentmarkup = \markup { "Flute" }
fluteoneinstrumentmarkup = \markup { "Flute 1" }
flutetwoinstrumentmarkup = \markup { "Flute 2" }
flutethreeinstrumentmarkup = \markup { "Flute 3" }
altofluteinstrumentmarkup = \markup { "Alto Flute" }
druminstrumentmarkup = \markup { "Drums" }
trumpetinstrumentmarkup = \markup { \column { "Trumpet" \bflatstring } }
trumpetoneinstrumentmarkup = \markup { \column { "Trumpet 1" \bflatstring } }
trumpettwoinstrumentmarkup = \markup { \column { "Trumpet 2" \bflatstring } }
trumpetthreeinstrumentmarkup = \markup { \column { "Trumpet 3" \bflatstring } }
tenorsaxinstrumentmarkup = \markup { \column { "Tenor Sax." \bflatstring } }
altoclarinetinstrumentmarkup = \markup { \column { "Alto Clarinet" \eflatstring } }
altoclarinetoneinstrumentmarkup = \markup { \column { "Alto Clarinet 1" \eflatstring } }
altoclarinettwoinstrumentmarkup = \markup { \column { "Alto Clarinet 2" \eflatstring } }
altosaxinstrumentmarkup = \markup { \column { "Alto Sax" \eflatstring } }
altosaxoneinstrumentmarkup = \markup { \column { "Alto Sax 1" \eflatstring } }
altosaxtwoinstrumentmarkup = \markup { \column { "Alto Sax 2" \eflatstring } }
tromboneinstrumentmarkup = \markup { "Trombone" }
tubainstrumentmarkup = \markup { "Tuba" }
euphoniuminstrumentmarkup = \markup { "Euphonium" }
violininstrumentmarkup = \markup { "Violin" }
violinoneinstrumentmarkup = \markup { "Violin 1" }
violintwoinstrumentmarkup = \markup { "Violin 2" }
violinthreeinstrumentmarkup = \markup { "Violin 3" }
guitarinstrumentmarkup = \markup { "Guitar" }
pianoinstrumentmarkup = \markup { "Piano  " }
accordioninstrumentmarkup = \markup { "Accordion  " }
vocalmelodyinstrumentmarkup = \markup { \column { "Vocals" "Melody" } }

% instrumentName name abbreviations

bassinstrmarkup = \markup { "B." }
clarinetinstrmarkup = \markup { \column { "Cla." \bflatstring } }
clarinetoneinstrmarkup = \markup { \column { "Cl. 1" \bflatstring } }
clarinettwoinstrmarkup = \markup { \column { "Cl. 2" \bflatstring } }
clarinetthreeinstrmarkup = \markup { \column { "Cl. 3" \bflatstring } }
fluteinstrmarkup = \markup { "Flu." }
fluteoneinstrmarkup = \markup { "Fl. 1" }
flutetwoinstrmarkup = \markup { "Fl. 2" }
flutethreeinstrmarkup = \markup { "Fl. 3" }
altofluteinstrmarkup = \markup { "A. Fl." }
druminstrmarkup = \markup { "Drm." }
trumpetinstrmarkup = \markup { \column { "Tru." \bflatstring } }
trumpetoneinstrmarkup = \markup { \column { "Tr. 1" \bflatstring } }
trumpettwoinstrmarkup = \markup { \column { "Tr. 2" \bflatstring } }
trumpetthreeinstrmarkup = \markup { \column { "Tr. 3" \bflatstring } }
tenorsaxinstrmarkup = \markup { \column { "Ten." \bflatstring } }
altoclarinetinstrmarkup = \markup { \column { "A.C" \eflatstring } }
altoclarinetoneinstrmarkup = \markup { \column { "A.C. 1" \eflatstring } }
altoclarinettwoinstrmarkup = \markup { \column { "A.C. 2" \eflatstring } }
altosaxinstrmarkup = \markup { \column { "A.S." \eflatstring } }
altosaxoneinstrmarkup = \markup { \column { "A.S. 1" \eflatstring } }
altosaxtwoinstrmarkup = \markup { \column { "A.S. 2" \eflatstring } }
tromboneinstrmarkup = \markup { "Tro." }
tubainstrmarkup = \markup { "Tub." }
euphoniuminstrmarkup = \markup { "Eup." }
violininstrmarkup = \markup { "Vio." }
violinoneinstrmarkup = \markup { "Vi. 1" }
violintwoinstrmarkup = \markup { "Vi. 2" }
violinthreeinstrmarkup = \markup { "Vi. 3" }
guitarinstrmarkup = \markup { "Gt." }
pianoinstrmarkup = \markup { "P.  " }
accordioninstrmarkup = \markup { "Acc.  " }
vocalmelodyinstrmarkup = \markup { "Mel." }


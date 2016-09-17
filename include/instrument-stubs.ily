\version "2.18.0"

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

#(define mydrums '(
        (acousticbassdrum default  #f              -3)
        (bassdrum         default  #f              -3)
        (acousticsnare    default  #f              1)
        (snare            default  #f              1)
        (sidestick        cross    #f              1)
        (lowtom           default  #f              -1)
        (himidtom         default  #f              2)
        (hightom          default  #f              3)
        (hihat            cross    #f              5)
        (openhihat        cross    "open"          5)
        (closedhihat      cross    "stopped"       5)
        (pedalhihat       cross    #f              -5)
        (crashcymbal      cross    #f              6)
        (ridecymbal       cross    #f              4)
        (ridebell         cross    #f              4)
        (hiwoodblock      triangle #f              2)
        (lowoodblock      triangle #f              1)
        (cowbell          triangle #f              5)
        )
)

marks = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melodynotes = { }

leadsheetnotes = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

flutenotes = { }
altoflutenotes = { }
altoflutealtoharmony = { }
altoflutetenorharmony = { }
baritoneforflutenotes = { }
tenorforflutenotes = { }
altoforflutenotes = { }
flutenotesmidi = { }
fluteonenotes = { }
fluteonenotesmidi = { }
flutetwonotes = { }
flutetwonotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinetnotes = { }
tenorforclarinetnotes = { }
altoforclarinetnotes = { }
clarinetnotesmidi = { }
clarinetonenotes = { }
clarinetonenotesmidi = { }
clarinettwonotes = { }
clarinettwonotesmidi = { }
clarinetthreenotes = { }
clarinetthreenotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altosaxnotes = { }
altosaxonenotes = { }
altosaxtwonotes = { }
clarinetforaltonotes = { }
tenorforaltonotes = { }
altosaxnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoclarinetnotes = { }
altoclarinetonenotes = { }
altoclarinettwonotes = { }
tenorforclarinetnotes = { }
altoclarinetnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorsaxnotes = { }
tenorsaxnotesmidi = { }
clarinetfortenornotes = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tromboneforbassclarinetnotes = { }
bassforbassclarinetnotes = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trumpetnotes = { }
baritonefortrumpetnotes = { }
tenorfortrumpetnotes = { }
altofortrumpetnotes = { }
trumpetnotesmidi = { }
trumpetonenotes = { }
trumpetonenotesmidi = { }
trumpettwonotes = { }
trumpettwonotesmidi = { }
trumpetthreenotes = { }
trumpetthreenotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trombonemelodynotes = { }
trombonenotes = { }
trombonenotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

euphoniumnotes = { }
euphoniumnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tubanotes = { }
tubanotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinnotes = { }
tenorforviolinnotes = { }
altoforviolinnotes = { }
violinnotesmidi = { }
violinonenotes = { }
violinonenotesmidi = { }
violintwonotes = { }
violintwonotesmidi = { }
violinthreenotes = { }
violinthreenotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

chordletters = \chordmode { }
flutechordletters = \chordmode { }
altoflutechordletters = \chordmode { }
clarinetchordletters = \chordmode { }
altoclarinetchordletters = \chordmode { }
altosaxchordletters = \chordmode { }
tenorsaxchordletters = \chordmode { }
trumpetchordletters = \chordmode { }
trombonechordletters = \chordmode { }
euphoniumchordletters = \chordmode { }
violinchordletters = \chordmode { }
guitarchordletters = \chordmode { }
basschordletters = \chordmode { }
pianochordletters = \chordmode { }
accordionchordletters = \chordmode { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

guitarnotes = { }
guitarstrumnotes = { }
guitarnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassnotes = { }
bassnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianorightuppernotes = { }
pianorightlowernotes = { }
pianorightnotesmidi = { }
pianoleftnotes = { }
pianoleftuppernotes = { }
pianoleftlowernotes = { }
pianoleftnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

accordionrightuppernotes = { }
accordionrightlowernotes = { }
accordionrightnotesmidi = { }
accordionleftnotes = { }
accordionleftuppernotes = { }
accordionleftlowernotes = { }
accordionleftnotesmidi = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drumshigh = \drummode { }
drumshighmidi = \drummode { }
cymbals = \drummode { }
cymbalsmidi = \drummode { }
drumslow = \drummode { }
drumslowmidi = \drummode { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violingroup = { }
trumpetgroup = { }
clarinetgroup = { }
flutegroup = { }
trombonegroup = { }
altosaxgroup = { }
tenorsaxgroup = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previewchordletters = \chordmode { }
previewnotes = { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textl = \lyricmode { }
textla = \lyricmode { }
textlb = \lyricmode { }
textlc = \lyricmode { }
textld = \lyricmode { }
textle = \lyricmode { }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

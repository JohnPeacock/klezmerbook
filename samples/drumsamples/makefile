# -*-Makefile-*- Makefile mode for Emacs

 SONG_NAME = drumsamples

 # always want the score file first, then the parts
 # this makes the book organize right.
 SCORE =
 LYS = $(wildcard *.ly)

 # these do not have an order requirement.
 LYHS = $(wildcard *.ily)

 # straight derivation from the sources
 PSS = $(LYS:.ly=.ps)
 PDFS = $(PSS:.ps=.pdf)

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

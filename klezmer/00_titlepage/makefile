# -*-Makefile-*- Makefile mode for Emacs

 SONG_NAME = 00_titlepage

 # always want the score file first, then the parts
 # this makes the book organize right.
 SCORE = $(SONG_NAME).score.ly
 LYS = $(SCORE) $(filter-out $(SCORE) , $(wildcard *.ly))

 # these do not have an order requirement.
 LYHS = $(wildcard *.ily) $(wildcard *.lyh)

 # straight derivation from the sources
 PSS = $(LYS:.ly=.ps)
 PDFS = $(PSS:.ps=.pdf)

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

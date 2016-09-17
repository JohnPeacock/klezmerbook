# -*-Makefile-*- Makefile mode for Emacs

 SONG_NAME = sids_freylekhs

 # always want the score file first, then the parts
 # this makes the book organize right.
 SCORE = $(SONG_NAME).score.ly
 PREVSRC = $(SONG_NAME).prev.ly
 LYS = $(SCORE) $(filter-out $(PREVSRC) $(SCORE) , $(wildcard *.ly))

 # these do not have an order requirement.
 LYHS = $(wildcard *.ily) $(wildcard *.lyh)

 # straight derivation from the sources
 PSS = $(LYS:.ly=.ps)
 PDFS = $(PSS:.ps=.pdf)
 PNGS = $(PREVSRC:.ly=.png)

 SHTMLS = $(SONG_NAME).shtml

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

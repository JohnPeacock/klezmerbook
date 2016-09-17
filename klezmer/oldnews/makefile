# -*-Makefile-*- Makefile mode for Emacs

 SHTMLS = $(wildcard *.shtml)

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

all:: oldnews.shtml

oldnews.shtml::
	ls news*.shtml | sort -r | sed -e 's/news2/<!--#include virtual="news2/' -e 's/shtml/shtml" -->/' > oldnews.shtml

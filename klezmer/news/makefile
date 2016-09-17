# -*-Makefile-*- Makefile mode for Emacs

 SHTMLS = $(wildcard *.shtml)

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

all:: news.shtml

news.shtml::
	ls news2*.shtml | sort -r | sed -e 's/news2/<!--#include virtual="news2/' -e 's/shtml/shtml" -->/' > news.shtml

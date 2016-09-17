# -*-Makefile-*- Makefile mode for Emacs

 SUBDIRS = \
        klezmer \
	samples

include $(LILYPOND_INCLUDE_DIR)/makefile.incl

install::
	$(CP) -r images/books images/instruments images/recordings $(TARGET)/images

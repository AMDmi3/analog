# This Makefile is only provided for convenience if no options need to
# be passed. You should usually edit src/Makefile and run make from the
# src/ directory.

PROGRAM = analog

$(PROGRAM): ALWAYS
	cd src && $(MAKE)

clean:
	cd src && $(MAKE) clean

ALWAYS:

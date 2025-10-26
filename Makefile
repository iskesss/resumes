LATEXMK=latexmk
OUTDIR=build

swe:
	$(LATEXMK) -pdf -output-directory=$(OUTDIR) \
	  -jobname=resume-SWE entry-swe.tex && \
	cp $(OUTDIR)/resume-SWE.pdf ./resume-SWE.pdf

pm:
	$(LATEXMK) -pdf -output-directory=$(OUTDIR) \
	  -jobname=resume-PM entry-pm.tex && \
	cp $(OUTDIR)/resume-PM.pdf ./resume-PM.pdf

sa:
	$(LATEXMK) -pdf -output-directory=$(OUTDIR) \
	  -jobname=resume-SA entry-sa.tex && \
	cp $(OUTDIR)/resume-SA.pdf ./resume-SA.pdf

clean:
	$(LATEXMK) -C -output-directory=$(OUTDIR)
	rm -rf $(OUTDIR) resume-*.pdf

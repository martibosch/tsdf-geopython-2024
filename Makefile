.PHONY: slides

PANDOC_FLAGS = --slide-level 2 \
	-t revealjs -f markdown+emoji \
	--css=custom.css \
	--css=https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css
REVEALJS_VARIABLES = -V transition=fade \
	-V controls=true \
	-V slideNumber=true \
	-V revealjs-url=https://unpkg.com/reveal.js@4.0.0

index.html: slides.md
	pandoc $(PANDOC_FLAGS) $(REVEALJS_VARIABLES) -s $< -o $@

slides: index.html

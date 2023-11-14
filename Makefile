.PHONY: serve pdf

# make serve talk=ua_overview
serve:
	cd slides && \
	quarto preview $(talk).qmd --host "0.0.0.0" --port "4000"

# make pdf talk=ua_overview
pdf:
	cd docs/slides && \
		decktape \
			automatic \
			--chrome-arg=--no-sandbox \
			-s 1280x960 \
			$(talk).html $(talk).pdf

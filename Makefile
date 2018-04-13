title:
	mkdir -p slides
	echo "<h1> Python slides </h1>" > index.html

notebooks = $(shell find math-python -type f -name "*.ipynb")
slides = $(patsubst math-python%.ipynb, slides%, $(notebooks))

.PHONY:all
all: title $(slides)

slides/% : math-python/%.ipynb
	@jupyter nbconvert $< --to slides --reveal-prefix reveal.js --output ../$@
	@echo "<li><a href=\"$@.slides.html\">$(patsubst slides/%, %, $@)</a></li>" >> index.html


#math-python/01.Introduction.ipynb
#math-python/02.Strings.ipynb
#math-python/03.Lists.ipynb
#math-python/04.Control.Flow.Tools.ipynb
#math-python/05.Modules.ipynb
#math-python/06.Input.And.Output.ipynb
#math-python/07.Errors.and.Exceptions.ipynb

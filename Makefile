default: title 00

title:
	echo "<h1> Python slides </h1>" > index.html

00: math-python/00.Installation.ipynb title
	jupyter nbconvert $< --to slides --reveal-prefix reveal.js --output ../$@
	echo "<a href=\"$@.slides.html\">$@</a>" >> index.html

#math-python/01.Introduction.ipynb
#math-python/02.Strings.ipynb
#math-python/03.Lists.ipynb
#math-python/04.Control.Flow.Tools.ipynb
#math-python/05.Modules.ipynb
#math-python/06.Input.And.Output.ipynb
#math-python/07.Errors.and.Exceptions.ipynb

default: public/index.html public/ulysses.css

valid: 
	xmllint --dtdvalid schema/tei_all.dtd --xinclude header.xml --noout            

chars.txt: 
	ag --nofilename -o "(?<=<said who=\")[\w\'\. ]*" *.xml | sort | uniq > $@

circe_speakers: 
	ag --nofilename -o "(?<=<sp who=\")[\w\'\. ]*" u15_circe.xml | sort | uniq

public/index.html: stylesheets/ulysses.xsl header.xml
	xsltproc --xinclude $^ > $@

public/ulysses.css:
	cp stylesheets/ulysses.css $@

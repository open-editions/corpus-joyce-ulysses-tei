default: index.html

valid: 
	xmllint --dtdvalid schema/tei_all.dtd --xinclude header.xml --noout            

chars.txt: 
	ag --nofilename -o "(?<=<said who=\")[\w\'\. ]*" *.xml | sort | uniq > $@

index.html: stylesheets/ulysses.xsl header.xml
	xsltproc --xinclude $^ > $@

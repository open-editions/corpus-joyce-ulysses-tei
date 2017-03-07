default: index.html

valid: 
	xmllint --dtdvalid schema/tei_all.dtd --xinclude header.xml --noout            

chars: 
	ag --nofilename -o "(?<=<said who=\")[\w\'\. ]*" *.xml | sort | uniq

circe_speakers: 
	ag --nofilename -o "(?<=<sp who=\")[\w\'\. ]*" u15_circe.xml | sort | uniq

index.html: stylesheets/ulysses.xsl header.xml
	xsltproc --xinclude $^ > $@

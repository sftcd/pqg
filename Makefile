##

XML2RFC =xml2rfc
DATE=`date +%s`

all: core 

core: 
	$(XML2RFC) --text draft-farrell-tls-pqg.xml

upload:
	scp draft-farrell-tls-pqg.txt  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-tls-pqg.txt
	scp draft-farrell-tls-pqg.xml  down.dsg.cs.tcd.ie:/var/www/misc/draft-farrell-tls-pqg.xml

clean:
	rm -f   draft-farrell-tls-pqg.txt *~


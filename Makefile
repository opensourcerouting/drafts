DRAFTS=
DRAFTS+=draft-baker-ipv6-isis-dst-src-routing.xml
DRAFTS+=draft-lamparter-rtgwg-dst-src-routing.xml
DRAFTS+=draft-franke-isis-over-ipv6.xml
DRAFTS+=draft-franke-isis-p2mp.xml


.PHONY: love clean
love: $(patsubst %.xml,%.txt,$(DRAFTS))
clean:
	rm -f $(patsubst %.xml,%.txt,$(DRAFTS))
	rm -f $(patsubst %.xml,%.html,$(DRAFTS))

%.txt: %.xml
	xml2rfc --text -o $@ $^
%.html: %.xml
	xml2rfc --html -o $@ $^


.PHONY:	all clean greet

all: cesky.test cizo.test

%.test:	%.draft
	perl make_test.pl $< $@;

%.draft:	%.chosen
	perl make_draft.pl < $< > $@;

cesky.chosen:	slovnik.list
	cat slovnik.list | grep -v '^$$' | shuf | head -n 10 > cesky.chosen;

cizo.chosen:	slovnik.list
	cat slovnik.list | grep -v '^$$'| shuf | tail -n 10 | perl swap_ord.pl > cizo.chosen;

clean:
	rm -f *.chosen *.draft

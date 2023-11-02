SVG 				:= 	devmorning_large.svg 		\
								devmorning.svg 					\
								devmorning_github.svg

BACKGROUND 	:= \#ffffff

INKSCAPE 		:= inkscape

PNG 				:= $(SVG:.svg=.png)

DEST 			 	:= build

%.png : %.svg
	@echo -e "------\nExporting $<\n------"
	$(INKSCAPE) --export-type="png" --export-background=$(BACKGROUND) -o $<

all: move

move: pngs
	mkdir -p $(DEST)
	mv -t $(DEST) $(PNG)
	@echo -e "------\nMoved to build folder\n------"

pngs: $(PNG)
	@echo -e "------\nBuilt all pngs\n------"

clean:
	rm -rf $(DEST)


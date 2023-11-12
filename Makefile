SVG 				:= 	devmorning.svg 					\
								devmorning_github.svg		\
								devmorning_large.svg

BACKGROUND 	:=	\#ffffff

INKSCAPE 		:=	inkscape

PNG 				:=	$(SVG:.svg=.png)

DEST 			 	:=	build

BUILT_PNG		:=	$(addprefix $(DEST)/, $(PNG))

DEFAULT			:=	fg bg all

CITY				:= 	bangkok

EMPTY				:=

SPACE				:= $(EMPTY) $(EMPTY)

%.png : %.svg
	@echo -e "------\nExporting $<\n------"
	$(INKSCAPE) \
		--export-id="$(subst $(SPACE),;,$(DEFAULT));$(CITY)"\
		--export-id-only		\
		--export-area-page	\
		--export-type="png" \
		--export-background=$(BACKGROUND) \
		-o $@ $<

$(BUILT_PNG): pngs
	mkdir -p $(DEST)
	mv -t $(DEST) $(PNG)
	@echo -e "------\nMoved to build folder\n------"

pngs: $(PNG)
	@echo -e "------\nBuilt all pngs\n------"

clean:
	rm -rf $(DEST)


DELAY=1000
MORPHDELAY=8
MORPHFRAMES=19

OPTS=--view axes,scales --imgsize 600,360

OUTDIR=output

bosl_pngs := $(patsubst %.scad,%.png,$(wildcard BOSL/*.scad))
bolts_pngs := $(patsubst %.scad,%.png,$(wildcard BOLTS/*.scad))
dotscad_pngs := $(patsubst %.scad,%.png,$(wildcard dotSCAD/*.scad))
all_pngs := $(bosl_pngs) $(bolts_pngs) $(dotscad_pngs)

all : bosl.gif bolts.gif dotscad.gif

bosl.gif : $(bosl_pngs)
bolts.gif : $(bolts_pngs)
dotscad.gif : $(dotscad_pngs)

.INTERMEDIATE: $(all_pngs)

%.gif :
	mkdir -p $(OUTDIR)
	convert \( $^ \) \( -clone 0 \) -loop 0 -morph $(MORPHFRAMES) -delete -1 -set delay '%[fx:(t%($(MORPHFRAMES)+1)==0)?$(DELAY):$(MORPHDELAY)]' -layers Optimize $(OUTDIR)/$@

_%.png : %.scad Makefile
	openscad-nightly $(OPTS) -o $@ $<

%.png : _%.png
	convert $< -background gray80 -font Open-Sans -gravity South -pointsize 28 -splice 0x40 -annotate +0+2 "$(subst /,: ,$(patsubst %.png,%,$@))" -gravity Center -append $@

clean:
	rm -rf output */*.png

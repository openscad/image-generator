DELAY=1000
MORPHDELAY=8
MORPHFRAMES=19

OPTS=--view axes,scales --imgsize 600,360

OUTDIR=output

bosl_pngs := $(patsubst %.scad,%.png,$(wildcard BOSL/*.scad))
bolts_pngs := $(patsubst %.scad,%.png,$(wildcard BOLTS/*.scad))
dotscad_pngs := $(patsubst %.scad,%.png,$(wildcard dotSCAD/*.scad))
marksencl_pngs := $(patsubst %.scad,%.png,$(wildcard MarksEnclosureHelper/*.scad))
roundanything_pngs := $(patsubst %.scad,%.png,$(wildcard RoundAnything/*.scad))
rcolyer_smooth_prim_pngs :=  $(patsubst %.scad,%.png,$(wildcard rcolyer-smooth-prim/*.scad))
rcolyer_closepoints_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-closepoints/*.scad))
rcolyer_plot_function_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-plot-function/*.scad))
rcolyer_threads_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-threads/*.scad))

all_pngs := \
	$(bosl_pngs) \
	$(bolts_pngs) \
	$(dotscad_pngs) \
	$(marksencl_pngs) \
	$(roundanything_pngs) \
	$(rcolyer_smooth_prim_pngs) \
	$(rcolyer_closepoints_pngs) \
	$(rcolyer_plot_function_pngs) \
	$(rcolyer_threads_pngs)

all : \
	bosl.gif \
	bolts.gif \
	dotscad.gif \
	marks-enclosure-helper.gif \
	round-anything.gif \
	rcolyer_smooth_prim.gif \
	rcolyer_closepoints.gif \
	rcolyer_plot_function.gif \
	rcolyer_threads.gif

bosl.gif : $(bosl_pngs)
bolts.gif : $(bolts_pngs)
dotscad.gif : $(dotscad_pngs)
marks-enclosure-helper.gif : $(marksencl_pngs)
round-anything.gif : $(roundanything_pngs)
rcolyer_smooth_prim.gif : $(rcolyer_smooth_prim_pngs)
rcolyer_closepoints.gif : $(rcolyer_closepoints_pngs)
rcolyer_plot_function.gif : $(rcolyer_plot_function_pngs)
rcolyer_threads.gif : $(rcolyer_threads_pngs)

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

DELAY=1000
MORPHDELAY=8
MORPHFRAMES=19

OPTS=--view axes,scales --imgsize 600,360

OUTDIR=output

bosl_pngs := $(patsubst %.scad,%.png,$(wildcard BOSL/*.scad))
bosl2_pngs := $(patsubst %.scad,%.png,$(wildcard BOSL2/*.scad))
bolts_pngs := $(patsubst %.scad,%.png,$(wildcard BOLTS/*.scad))
dotscad_pngs := $(patsubst %.scad,%.png,$(wildcard dotSCAD/*.scad))
marksencl_pngs := $(patsubst %.scad,%.png,$(wildcard MarksEnclosureHelper/*.scad))
roundanything_pngs := $(patsubst %.scad,%.png,$(wildcard RoundAnything/*.scad))
rcolyer_smooth_prim_pngs :=  $(patsubst %.scad,%.png,$(wildcard rcolyer-smooth-prim/*.scad))
rcolyer_closepoints_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-closepoints/*.scad))
rcolyer_plot_function_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-plot-function/*.scad))
rcolyer_threads_pngs := $(patsubst %.scad,%.png,$(wildcard rcolyer-threads/*.scad))
ub_pngs := $(patsubst %.scad,%.png,$(wildcard UB/*.scad))
funcutils_pngs := $(patsubst %.scad,%.png,$(wildcard funcutils/*.scad))
sofian_tray_pngs := $(patsubst %.scad,%.png,$(wildcard sofian_tray/*.scad))
yapp_pngs := $(patsubst %.scad,%.png,$(wildcard YAPP/*.scad))
stemfie_pngs := $(patsubst %.scad,%.png,$(wildcard Stemfie/*.scad))

all_pngs := \
	$(bosl_pngs) \
	$(bosl2_pngs) \
	$(bolts_pngs) \
	$(dotscad_pngs) \
	$(marksencl_pngs) \
	$(roundanything_pngs) \
	$(rcolyer_smooth_prim_pngs) \
	$(rcolyer_closepoints_pngs) \
	$(rcolyer_plot_function_pngs) \
	$(rcolyer_threads_pngs) \
	$(ub_pngs) \
	$(funcutils_pngs) \
	$(sofian_tray_pngs) \
	$(yapp_pngs) \
	$(stemfie_pngs)

all : \
	bosl.gif \
	bosl2.gif \
	bolts.gif \
	dotscad.gif \
	marks-enclosure-helper.gif \
	round-anything.gif \
	rcolyer_smooth_prim.gif \
	rcolyer_closepoints.gif \
	rcolyer_plot_function.gif \
	rcolyer_threads.gif \
	ub.gif \
	funcutils.gif \
	sofian_tray.gif \
	yapp.gif \
	stemfie.gif

bosl.gif : $(bosl_pngs)
bosl2.gif : $(bosl2_pngs)
bolts.gif : $(bolts_pngs)
dotscad.gif : $(dotscad_pngs)
marks-enclosure-helper.gif : $(marksencl_pngs)
round-anything.gif : $(roundanything_pngs)
rcolyer_smooth_prim.gif : $(rcolyer_smooth_prim_pngs)
rcolyer_closepoints.gif : $(rcolyer_closepoints_pngs)
rcolyer_plot_function.gif : $(rcolyer_plot_function_pngs)
rcolyer_threads.gif : $(rcolyer_threads_pngs)
ub.gif : $(ub_pngs)
funcutils.gif : $(funcutils_pngs)
sofian_tray.gif : $(sofian_tray_pngs)
yapp.gif : $(yapp_pngs)
stemfie.gif : $(stemfie_pngs)

.INTERMEDIATE: $(all_pngs)

%.gif :
	mkdir -p $(OUTDIR)
	convert \( $^ \) \( -clone 0 \) -loop 0 -morph $(MORPHFRAMES) -delete -1 -set delay '%[fx:(t%($(MORPHFRAMES)+1)==0)?$(DELAY):$(MORPHDELAY)]' -layers Optimize $(OUTDIR)/$@

_%.png : %.scad Makefile
	openscad-nightly $(OPTS) -o $@ $<

%.png : _%.png
	convert $< -background gray80 -font Open-Sans -gravity South -pointsize 28 -splice 0x40 -annotate +0+2 "$$(echo $(subst /,: ,$(patsubst %.png,%,$@)) | sed -e 's/[0-9][0-9]_//')" -gravity Center -append $@

clean:
	rm -rf output */*.png

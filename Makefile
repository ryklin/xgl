# XGL Graphics Library # # Copyright (C) 2006 # Center for Perceptual Systems
# University of Texas at Austin
#
# jsp Tue Oct  3 11:50:54 CDT 2006

.PHONY: build check clean

entry:
	mexgen -e xgl.mg

mfiles:
	mexgen -m xgl.mg

build:
	$(MAKE) -C vc8

check:
	$(MAKE) -C vc8 check

clean:
	rm -f .deps
	rm -f xglmex.mexw32
	rm -f xglmex.mexw64
	rm -f xglmex.cpp
	rm -f xglinit.m
	rm -f xglblit.m
	rm -f xglclear.m
	rm -f xglclearbuffer.m
	rm -f xglcopybuffer.m
	rm -f xglcreatebuffer.m
	rm -f xglcurrentmode.m
	rm -f xgldevices.m
	rm -f xglflip.m
	rm -f xglfontname.m
	rm -f xglgetcursor.m
	rm -f xglgetmode.m
	rm -f xglgetrasterstatus.m
	rm -f xglhwconversion.m
	rm -f xglinfo.m
	rm -f xglinit.m
	rm -f xglinitdevice.m
	rm -f xglpfgs.m
	rm -f xglpfrgb10.m
	rm -f xglpfrgb8.m
	rm -f xglpfrgbf32.m
	rm -f xglpfyv12.m
	rm -f xglrect.m
	rm -f xglrelease.m
	rm -f xglreleasebuffer.m
	rm -f xglreleasebuffers.m
	rm -f xglreleasedevice.m
	rm -f xglrgb10.m
	rm -f xglrgb8.m
	rm -f xglsetbgcolor.m
	rm -f xglsetbgtrans.m
	rm -f xglsetcursor.m
	rm -f xglsetescapement.m
	rm -f xglsetfont.m
	rm -f xglsetitalic.m
	rm -f xglsetlut.m
	rm -f xglsetpointsize.m
	rm -f xglsetstrikeout.m
	rm -f xglsettextcolor.m
	rm -f xglsetunderline.m
	rm -f xglshowcursor.m
	rm -f xgltext.m
	rm -f xgltextheight.m
	rm -f xgltextwidth.m
	rm -f xgltotalfonts.m
	rm -f xgltotalmodes.m

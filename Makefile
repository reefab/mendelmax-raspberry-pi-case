OSCAD=openscad
INPUT=case.scad
FLAGS=-D DRAWfull=0

all: top bottom

top: top.stl
	$(OSCAD) -o $@.stl  $(FLAGS) -D DRAWtop=1 -D DRAWbottom=0 $(INPUT)

bottom: bottom.stl
	$(OSCAD) -o $@.stl  $(FLAGS) -D DRAWtop=0 -D DRAWbottom=1 $(INPUT)

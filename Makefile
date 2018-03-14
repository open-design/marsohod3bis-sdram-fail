#Auto generated by FuseSoC
all: sta

include config.mk

project: $(DESIGN_NAME).tcl qsys
	quartus_sh $(QUARTUS_OPTIONS) -t $(DESIGN_NAME).tcl

map: project
	quartus_map $(QUARTUS_OPTIONS) $(DESIGN_NAME)

fit: map
	quartus_fit $(QUARTUS_OPTIONS) $(DESIGN_NAME)

asm: fit
	quartus_asm $(QUARTUS_OPTIONS) $(DESIGN_NAME)

sta: asm
	quartus_sta $(QUARTUS_OPTIONS) $(DESIGN_NAME)

clean:
	rm -rf *.* db incremental_db

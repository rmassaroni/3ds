cmd_arch/arm/boot/dts/nintendo3ds_ctr.dtb := gcc -E -Wp,-MMD,arch/arm/boot/dts/.nintendo3ds_ctr.dtb.d.pre.tmp -nostdinc -I./scripts/dtc/include-prefixes -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.nintendo3ds_ctr.dtb.dts.tmp arch/arm/boot/dts/nintendo3ds_ctr.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/nintendo3ds_ctr.dtb -b 0 -iarch/arm/boot/dts/ -i./scripts/dtc/include-prefixes -Wno-interrupt_provider -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm/boot/dts/.nintendo3ds_ctr.dtb.d.dtc.tmp arch/arm/boot/dts/.nintendo3ds_ctr.dtb.dts.tmp ; cat arch/arm/boot/dts/.nintendo3ds_ctr.dtb.d.pre.tmp arch/arm/boot/dts/.nintendo3ds_ctr.dtb.d.dtc.tmp > arch/arm/boot/dts/.nintendo3ds_ctr.dtb.d

source_arch/arm/boot/dts/nintendo3ds_ctr.dtb := arch/arm/boot/dts/nintendo3ds_ctr.dts

deps_arch/arm/boot/dts/nintendo3ds_ctr.dtb := \
  arch/arm/boot/dts/nintendo3ds.dtsi \
  scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  scripts/dtc/include-prefixes/dt-bindings/input/input.h \
  scripts/dtc/include-prefixes/dt-bindings/input/linux-event-codes.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \

arch/arm/boot/dts/nintendo3ds_ctr.dtb: $(deps_arch/arm/boot/dts/nintendo3ds_ctr.dtb)

$(deps_arch/arm/boot/dts/nintendo3ds_ctr.dtb):

# SCELBI-8B Minicomputer

The SCELBI Minicomputer is considered to be the first general purpose computer to be offered to the general public.

Reference the [SCELBI Computer Museum](https://www.scelbi.com/) website for documentation, images and software related to the SCELBI computer.

Note on parts: Unless specified, all resistors are 1/4W.

## PCBs

The PCBs were re-created by tracing the original PCBs in KiCAD. PCB sets are available at [www.kalinchuk.com](https://www.kalinchuk.com/product-page/scelbi-8b-pcb-set-8-boards). Additional RAM boards and other I/O boards are also available at www.kalinchuk.com.

### Gerbers

Coming soon

### Front Panel

The front panel is available at [www.kalinchuk.com](https://www.kalinchuk.com/product-page/scelbi-8b-front-panel).

If you would like to make your own front panel, you can upload the [CAD file](front_panel/cad/scelbi8b_without_text.iges) to [PCBWay](www.pcbway.com) and have them fabricate it for you.

## Power Supply

<img width="600" alt="PSU" src="https://github.com/user-attachments/assets/f03d63a8-a1db-4fd1-8358-180f6fddc767"/>

The SCELBI requires a +5V power supply and a -12V power supply. The +5V line requires a maximum 1.5A with just the basic boards installed and no memory. The -9V line requires 100mA. The 8H uses 1K RAM boards and each one requires an additional 200mA on both the +5V and -9V lines. Because we're building an 8B SCELBI, the 4K RAM boards do not use -9V so we just need an additional 600mA on the +5 line for each RAM board that we have installed. The 8B also has a memory expansion board (750mA on +5V) and a ROM board (1.5A on +5V and 1.5A on -9V).

In summary, a fully stacked SCEBI 8B (without peripherals) requires a _maximum_ of 5.4A on the +5 line and 1.6A on the -9 line. Because we'll be adding additional peripherals, I think it's safe to use a 6A +5 power supply and a 1.7A -12V power supply (adjusted to -9V). I will be using two Power-One power supplies in my case. You can also use a single one such as the [Power-One CP131-A](https://www.ebay.com/itm/226141595668).

### Tools

Basic tools will be required to make holes in the enclosure. I used a 3" hole saw drill bit to drill a hole for the fan. I also used a [1-11/64" chassis key punch](https://www.ebay.com/itm/267044392025) to make a hole for the main power connector. This tool is also used to make holes in the main SCELBI enclosure.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| Bud Enclosure (12"x10"x3") | 1 | [Bud Industries AC-413](https://www.digikey.com/en/products/detail/bud-industries/AC-413/386939) |
| +5 6A Power Supply | 1 | [Power-One C5-6](https://www.ebay.com/itm/286241095332) |
| -12 1.7A Power Supply | 1 | [Power-One HB12](https://www.ebay.com/itm/167299382045) |
| 120V Fan | 1 | [Qualtek FAA1-08025NBMT31](https://www.digikey.com/en/products/detail/qualtek/FAA1-08025NBMT31/2599974) |
| Fan Guard | 1 | [Qualtek 09080-G](https://www.digikey.com/en/products/detail/qualtek/09080-G/250523?so=90773917) |
| Red Binding Post | 2 | [DigiKey](https://www.digikey.com/en/products/detail/sparkfun-electronics/PRT-09739/7393680) |
| Black Binding Post | 1 | [DigiKey](https://www.digikey.com/en/products/detail/sparkfun-electronics/PRT-09740/7393681) |
| Amphenol Connector | 1 | [Amphenol 78-S4](https://www.ebay.com/itm/153626967601) |
| Fuse Holder | 1 | [Littelfuse Inc. 82000000005](https://www.digikey.com/en/products/detail/littelfuse-inc/82000000005/653481) |
| 750mA to 1A Fuse | 1 | [SCHURTER Inc. 0034.3773](https://www.digikey.com/en/products/detail/schurter-inc/0034-3773/1730487) |
| Power Switch | 1 | [NKK Switches S1AWB](https://www.digikey.com/en/products/detail/nkk-switches/S1AWB/9698988) |
| Cable Gland | 1 | Large enough to fit power cord |
| Lamp Holder | 2 | Holders for lamps ([Amazon](https://www.amazon.com/dp/B08FBVRL8V)) |
| Lamp | 2 | Any 5V lamp or LED will do |
| Rubber feet | 4 | [DigiKey](https://www.digikey.com/en/products/detail/3m/SJ-5523-BLACK/30833) |
| Power Cord | 1 | A standard computer power cable |
| Wire | N/A | 14AWG wire (~2ft) & 18AWG wire (~5ft) |
| Hardware | N/A | Bolts to mount power supplies and fan |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=4Gl4igGJyTs) for detailed assembly instructions.

*Important*: The 12V power supply R13 needs to be replaced with a 2W 4700K - 10K resistor. This will allow the voltage to be adjusted to the desired 9V. Also, for the 12V power supply, connect the + terminal to the ground binding post and the - terminal to the -9V binding post.

Follow the following wiring diagram when wiring up the power supply. **Also, connect Earth to common ground**. Be careful when working with high voltage lines.

<img width="663" alt="Wiring diagram" src="https://github.com/user-attachments/assets/ec25b8b4-c335-4664-9e4f-ee872ca0ab41" />

## Chassis

<img width="800" alt="Enclosure" src="https://github.com/user-attachments/assets/8171e115-c577-46ef-a04e-bd4b1df90a7d"/>

The SCELBI 8B chassis was 12" x 10" x 3-1/2" plus the front panel. I have not found a chassis with those dimensions yet although you can get one custom made. The closest chassis that is on the open market is [BUD AC-413](https://www.digikey.com/en/products/detail/bud-industries/AC-413/386939) which is 12" x 10" x 3" - it works quite well.

### Files

Below you will find a list of files that you might find helpful in the construction of the chassis.

[CAD files](front_panel/cad)

[I/O template](chassis/rear_template)

[Labels](front_panel/labels) (Use [StickyLife](https://www.stickylife.com/) to print)

### Tools

The following tools will be required for the assembly of the chassis:

| Tool        | Purpose   |
| ------------|-----------|
| [Rotary Dremel](https://www.amazon.com/Milwaukee-2460-20-ROTARY-TOOL-ONLY/dp/B008XLLIPY) | Cutting out the holes for the backplane |
| Drill & Bits | Drilling holes for switches and screws |
| [1-11/64" Chassis Key Punch](https://www.ebay.com/itm/267044392025) | Punching out holes for the I/O and power ports |
| Soldering Equipment | Soldering connectors and wires |

### Parts

These are the parts that I used. Feel free to use the same or go with something else.

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| Bud Enclosure (12"x10"x3") | 1 | [Bud Industries AC-413](https://www.digikey.com/en/products/detail/bud-industries/AC-413/386939) |
| Edge Connectors | 18 | [EDAC 305-044-520-202](https://www.digikey.com/en/products/detail/edac-inc/305-044-520-202/107517) |
| Card Guides | 18 | [Vector Electronics BR27D](https://www.digikey.com/en/products/detail/vector-electronics/BR27D/1886457) (comes in set of 2 so only 9 needed) |
| Push Buttons | 3 | [E-Switch PS1024ARED](https://www.digikey.com/en/products/detail/e-switch/PS1024ARED/44577) |
| Toggle Switches | 8 | [CIT Relay and Switch ANT11SEBQE](https://www.digikey.com/en/products/detail/cit-relay-and-switch/ANT11SEBQE/12503360) |
| Amphenol 78-S4 | 1 | [eBay](https://www.ebay.com/itm/153626967601) |
| Amphenol 78-S11 | 14 | [eBay](https://www.ebay.com/itm/172869587250) |
| Amphenol 86-CP4 | 2 | [eBay](https://www.ebay.com/itm/285970790977) |
| Wrapping Wire | ~ 20-30' | [Blue Electronic Wire DM-30-1000](https://www.amazon.com/dp/B0BJ85C8CH) |
| 14 AWG Wire | ~ 3' | Black, Red, Yellow |
| Power Cable | ~ 3' | [Belden 8747](https://marvac.com/products/25-belden-8747-6-pair-22-gauge-unshielded-cable-25-foot-6pr-22awg) |
| Hardware | N/A | Bolts to mount backplane and card edge guides |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=AvSoqtRcYo0) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for specifics.

## Front Panel Board

<img width="800" alt="Front Panel Board" src="https://github.com/user-attachments/assets/9244f3c4-c255-41e3-a43f-925428a2b5fb"/>

The front panel board is the first board in the SCELBI-8B minicomputer set, although it's model number is 1104.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 74L04    | 2    | [eBay](https://www.ebay.com/itm/315317055583) |
| 7416     | 3    | [Jameco](https://www.jameco.com/z/DM7416N-National-Semiconductor-IC-7416-HEX-INVERTER-BUFFER-DRIVER-Open-Collector_49630.html) |
| 7475     | 2    | [Jameco](https://www.jameco.com/z/SN7475N-Texas-Instruments-IC-7475-4-BIT-BI-STABLE-LATCH_50577.html) |
| 14-pin Socket | 5 | [Electronic Surplus : AUGAT - 714AG12D](https://www.electronicsurplus.com/augat-714ag12d-connector-ic-sockets-14-pin-package-of-10) |
| 16-pin Socket | 2 | [Electronic Surplus : AUGAT - 716AG12D](https://www.electronicsurplus.com/augat-716ag12d-ic-socket-machined-16-pin-package-of-10) |
| 560 Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/CF1-4W561JRC-Jameco-ValuePro-Resistor-Carbon-Film-560-Ohm-1-4-Watt-5-_690806.html) |
| 1K Ohm Resistor | 30 | [Jameco](https://www.jameco.com/z/CF1-4W102JRC-Jameco-ValuePro-Resistor-Carbon-Film-1k-Ohm-1-4-Watt-5-_690865.html) |
| 5V LED | 29 | [Jameco](https://www.jameco.com/z/5WR4-Y-T-SB-Jameco-ValuePro-LED-Super-Bright-Red-Water-Clear-5mm-T-1-3-4-630nm-12000mcd_2274831.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 2 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 1 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 3/8A 8AG Fuse | 1 | [eBay](https://www.ebay.com/itm/387477612501) |
| Fuse Clip | 2 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=fweK1kXFhk4) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

### Bugs

The first version of the front panel board had Z6 pin 8 connected to ground. That trace needs to be cut. This is fixed in later versions.

<img width="400" alt="Front Panel Bug" src="https://github.com/user-attachments/assets/21315871-9aef-4a2b-8a8c-b448b586a530"/>

## CPU Board

<img width="800" alt="CPU Board" src="https://github.com/user-attachments/assets/339f00da-0ebd-4b89-9ca8-cadc739ccb0e"/>

The CPU board is the brains of the computer. It's the most complex board of the set and requires the most work to assemble and tune. A good oscilloscope, capable of capturing two separate waves simultaneously and measuring the wave frequency, will be required to tune the CPU board.

### Tuning

Refer to the manual for tuning instructions as it has a pretty detailed writeup on it. I think the [YouTube video](https://www.youtube.com/watch?v=oiwlf3kk3fg) is a good source for tuning instructions as well.

### Parts

The parts list contains sources of each part but I actually used time-period or higher quality parts for my build. For example, the list contains potential sources of the ICs but I got the J version of each IC which has a ceramic package. The source for those was usually eBay.

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7400     | 4 | [Jameco](https://www.jameco.com/z/7400-Major-Brands-IC-7400-QUAD-2-INPUT-POSITIVE-NAND-GATE_48979.html)
| 7402     | 1 | [Jameco](https://www.jameco.com/z/7402-Major-Brands-IC-7402-QUAD-2-INPUT-POSITIVE-NOR-GATE_49015.html) |
| 7403     | 2 | [eBay](https://www.ebay.com/itm/256025349651) |
| 7404     | 4 | [Jameco](https://www.jameco.com/z/7404-Major-Brands-IC-7404-Hex-Inverter-Six-Independent-Inverters-DIP-14_49040.html) |
| 74L04    | 2 | [eBay](https://www.ebay.com/itm/315317055583) |
| 7410     | 2 | [Jameco](https://www.jameco.com/z/7410-Major-Brands-IC-7410-Triple-3-Input-Positive-NAND-Gate_49189.html) |
| 7420     | 1 | [Jameco](https://www.jameco.com/z/7420-Major-Brands-IC-7420-DUAL-4-INPUT-NAND-GATE_50008.html) |
| 7442     | 1 | [Jameco](https://www.jameco.com/z/7442-Major-Brands-IC-7442-4-LINE-BCD-to-10-LINE-DECIMAL-DECODER_50374.html) |
| 7474     | 3 | [Jameco](https://www.jameco.com/z/7474-Major-Brands-IC-7474-DUAL-D-TYPE-FLIP-FLOP_50551.html) |
| 7476     | 1 | [Jameco](https://www.ebay.com/itm/176866116165) |
| 74121    | 5 | [Jameco](https://www.jameco.com/z/74121-Major-Brands-IC-74121-MONOSTABLE-MULTIVIBRATOR_49322.html)
| Intel 8008 | 1 | [eBay](https://www.ebay.com/itm/135002532400) |
| 14-pin Socket | 25 | [Electronic Surplus : AUGAT - 714AG12D](https://www.electronicsurplus.com/augat-714ag12d-connector-ic-sockets-14-pin-package-of-10) |
| 16-pin Socket | 3 | [Electronic Surplus : AUGAT - 716AG12D](https://www.electronicsurplus.com/augat-716ag12d-ic-socket-machined-16-pin-package-of-10) |
| 1K Ohm Resistor | 8 | [Jameco](https://www.jameco.com/z/CF1-4W102JRC-Jameco-ValuePro-Resistor-Carbon-Film-1k-Ohm-1-4-Watt-5-_690865.html) |
| 3.3K Ohm Resistor | 9 | [Jameco](https://www.jameco.com/z/CF1-4W332JRC-Jameco-ValuePro-Resistor-Carbon-Film-3-3k-Ohm-1-4-Watt-5-_690988.html) |
| 10K Ohm Resistor | 18 | [Jameco](https://www.jameco.com/z/RC0410K0JT-Jameco-ValuePro-10k-Ohm-Resistor-5-1-4-Watt-Carbon-Film-Axial_691104.html) |
| 33K Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/RC0433K0JT-Jameco-ValuePro-Resistor-Carbon-Film-33k-Ohm-1-4-Watt-5-_691227.html) |
| 5K Trimpot | 4 | [DigiKey](https://www.digikey.com/en/products/detail/bourns-inc/3006P-1-502/83390) |
| 1N914 Diode | 9 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N914/978749) |
| 2N2907 Trans. | 1 | [DigiKey](https://www.digikey.com/en/products/detail/microchip-technology/2N2907/16560083) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 7 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 1 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 330 pF Disk Cap. | 4 | [Jameco](https://www.jameco.com/z/DC330-50-Y5V-James-Electronics-Ceramic-Disc-Capacitor-330pF-50-VDC-10-4mm-Body-Diameter_2301487.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 12.0V Zener (NTE5127A) | 1 | [eBay](https://www.ebay.com/itm/234933379025) |
| 3/4A 8AG Fuse | 1 | [eBay](https://www.ebay.com/itm/325161801779) |
| 1/8A 8AG Fuse | 1 | [eBay](https://www.ebay.com/itm/165757392783) |
| Fuse Clip | 4 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=oiwlf3kk3fg) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

## DBB & Output Board

<img width="800" alt="DBB & Output Board" src="https://github.com/user-attachments/assets/0cc6101f-a09a-49f2-a407-c06ca4ff0e04"/>

The DBB & Output board controls the flow of data out of the computer. The board buffers data going out and then strobes the strobe line, for the specific output port, when data is ready to be released.

### Parts

The parts list contains sources of each part but I actually used time-period or higher quality parts for my build. For example, the list contains potential sources of the ICs but I got the J version of each IC which has a ceramic package. The source for those was usually eBay.

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7400     | 2 | [Jameco](https://www.jameco.com/z/7400-Major-Brands-IC-7400-QUAD-2-INPUT-POSITIVE-NAND-GATE_48979.html)
| 7402     | 4 | [Jameco](https://www.jameco.com/z/7402-Major-Brands-IC-7402-QUAD-2-INPUT-POSITIVE-NOR-GATE_49015.html) |
| 7416     | 2 | [Jameco](https://www.jameco.com/z/DM7416N-National-Semiconductor-IC-7416-HEX-INVERTER-BUFFER-DRIVER-Open-Collector_49630.html) |
| 7417     | 2 | [Jameco](https://www.jameco.com/z/SN7417N-Texas-Instruments-IC-7417-HEX-BUFFER-DRIVER_49728.html) |
| 7442     | 4 | [Jameco](https://www.jameco.com/z/7442-Major-Brands-IC-7442-4-LINE-BCD-to-10-LINE-DECIMAL-DECODER_50374.html) |
| 7475     | 4 | [Jameco](https://www.jameco.com/z/SN7475N-Texas-Instruments-IC-7475-4-BIT-BI-STABLE-LATCH_50577.html) |
| 14-pin Socket | 10 | [Electronic Surplus : AUGAT - 714AG12D](https://www.electronicsurplus.com/augat-714ag12d-connector-ic-sockets-14-pin-package-of-10) |
| 16-pin Socket | 8 | [Electronic Surplus : AUGAT - 716AG12D](https://www.electronicsurplus.com/augat-716ag12d-ic-socket-machined-16-pin-package-of-10) |
| 1K Ohm Resistor | 54 | [Jameco](https://www.jameco.com/z/CF1-4W102JRC-Jameco-ValuePro-Resistor-Carbon-Film-1k-Ohm-1-4-Watt-5-_690865.html) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 3 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 2 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 1A 8AG Fuse | 1 | [eBay](https://www.ebay.com/itm/175020931101) |
| Fuse Clip | 2 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=k7UnR6UNYbQ) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

### Bugs

There appears to be a bug in the DBB & Output card. The trace that connects R33, R30, R27, R24, R34, R31, R28, R25 and C4 is the +5 net (according to the schematic) but it's not connected to the +5 trace on the PCB.

<img width="400" alt="DBB Bug" src="https://github.com/user-attachments/assets/0f95a7c8-e1c0-4441-99eb-aac187207cdb"/>

The original boards seem to overlook this bug as it appears to be non-critical but I decided to run a jumper wire from that trace to the +5 net.

<img width="400" alt="DBB Bug Fix" src="https://github.com/user-attachments/assets/f04d01dd-7aa7-40e8-b0b4-51d25d405cfc"/>

## Input Board

<img width="800" alt="Input Board" src="https://github.com/user-attachments/assets/f18f5153-cae0-4f20-bd4a-82e9c48872a7"/>

The input board controls the data coming into the computer and uses multiplexers to select the input port to read.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7400     | 1 | [Jameco](https://www.jameco.com/z/7400-Major-Brands-IC-7400-QUAD-2-INPUT-POSITIVE-NAND-GATE_48979.html) |
| 7404     | 1 | [Jameco](https://www.jameco.com/z/7404-Major-Brands-IC-7404-Hex-Inverter-Six-Independent-Inverters-DIP-14_49040.html) |
| 7410     | 1 | [Jameco](https://www.jameco.com/z/7410-Major-Brands-IC-7410-Triple-3-Input-Positive-NAND-Gate_49189.html) |
| 74151    | 8 | [Jameco](https://www.jameco.com/z/74151APC-Fairchild-onsemi-IC-74151-DATA-SELECTOR-MULTIPLEXER_49525.html) |
| 10K Ohm Resistor | 65 | [Jameco](https://www.jameco.com/z/RC0410K0JT-Jameco-ValuePro-10k-Ohm-Resistor-5-1-4-Watt-Carbon-Film-Axial_691104.html) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 2 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 2 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 3/8A 8AG Fuse | 1 | [DigiKey](https://www.digikey.com/en/products/detail/eaton-electronics-division/BK-AGX-3-8/264563) |
| Fuse Clip | 2 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=-d9uxNrD9ss) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

## Memory Expansion Board

<img width="800" alt="Memory Expansion Board" src="https://github.com/user-attachments/assets/055b4dfc-f498-4d46-a5fb-32ae1a0b6c2b"/>

The memory expansion board contains memory address logic for selecting the correct page of memory. This board enables the SCELBI 8B to use up to 16KB of RAM.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7417     | 1 | [Jameco](https://www.jameco.com/z/SN7417N-Texas-Instruments-IC-7417-HEX-BUFFER-DRIVER_49728.html) |
| 7442     | 9 | [Jameco](https://www.jameco.com/z/7442-Major-Brands-IC-7442-4-LINE-BCD-to-10-LINE-DECIMAL-DECODER_50374.html) |
| 10K Ohm Resistor | 67 | [Jameco](https://www.jameco.com/z/RC0410K0JT-Jameco-ValuePro-10k-Ohm-Resistor-5-1-4-Watt-Carbon-Film-Axial_691104.html) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 3 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 1-1/2A 8AG Fuse | 1 | [DigiKey](https://www.digikey.com/en/products/detail/eaton-electronics-division/BK-AGX-1-1-2/264552) |
| Fuse Clip | 2 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=2aKlp8RueaE) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

## 4K RAM Board

<img width="800" alt="RAM Board" src="https://github.com/user-attachments/assets/fb493a11-f5f8-479f-9304-cb7807dca72e"/>

The RAM board supports up to 4KB of memory. The SCELBI-8B will accept up to four of these RAM boards (for a total of 16KB of memory). 12KB of RAM (3 RAM boards) and 4KB of ROM is the typical setup.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7400     | 2 | [Jameco](https://www.jameco.com/z/7400-Major-Brands-IC-7400-QUAD-2-INPUT-POSITIVE-NAND-GATE_48979.html) |
| 7404     | 1 | [Jameco](https://www.jameco.com/z/7404-Major-Brands-IC-7404-Hex-Inverter-Six-Independent-Inverters-DIP-14_49040.html) |
| 7420     | 2 | [Jameco](https://www.jameco.com/z/7420-Major-Brands-IC-7420-DUAL-4-INPUT-NAND-GATE_50008.html) |
| 2102 1K STATIC RAM | 32 (min 8) | [ArcadeShop](https://www.arcadeshop.com/i/1739/2102-ram-ic.htm) or Jameco |
| 10K Ohm Resistor | 12 | [Jameco](https://www.jameco.com/z/RC0410K0JT-Jameco-ValuePro-10k-Ohm-Resistor-5-1-4-Watt-Carbon-Film-Axial_691104.html) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 16 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 1-1/2A 8AG Fuse | 1 | [DigiKey](https://www.digikey.com/en/products/detail/eaton-electronics-division/BK-AGX-1-1-2/264552) |
| Fuse Clip | 2 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://youtu.be/759pWHT4bfM) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

## 4K ROM Board

<img width="800" alt="ROM Board" src="https://github.com/user-attachments/assets/f625f640-6337-4615-9f56-a8053c928de0"/>

The ROM board supports up to 4KB of ROM chips. The board accepts up to 16 1602 or 1702 PROMs. The SCELBI 8B ROMs that can be used to flash each PROM can be found [here](https://www.scelbi.com/software).

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 1602 or 1702 PROM | 1-16 | [eBay](https://www.ebay.com/itm/234969999718) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 16 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 1 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 12.0V Zener (NTE5127A) | 1 | [eBay](https://www.ebay.com/itm/234933379025) |
| 1-1/2A 8AG Fuse | 2 | [DigiKey](https://www.digikey.com/en/products/detail/eaton-electronics-division/BK-AGX-1-1-2/264552) |
| Fuse Clip | 4 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video](https://www.youtube.com/watch?v=uv_KajHFlYM) for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

### PROMs & Programming

The SCELBI computer accepts 16 1702 EPROMs which you can download from the [SCELBI](https://scelbi.com/software) website. These EPROM Intel HEX files can be programmed to 16 1702 EPROMs and inserted into the ROM board.

I [assembled a 1702 EPROM programmer](https://www.youtube.com/watch?v=S2KC_Ulbl84) that Martin Eberhard designed. If you're interested in building this programmer, contact Martin at mfeberhard (at) gmail.com. You can also find the latest manual for it [here](literature/ME1702A%20Manual%20Complete.pdf). I used this programmer to program my 1702s with the SCELBI PROM data.

<img width="800" alt="1702 Programmer Top" src="https://github.com/user-attachments/assets/bf3575c3-be14-403e-9389-b4d71b17d6e1"/>

<img width="800" alt="1702 Programmer Inside" src="https://github.com/user-attachments/assets/8c0ecfe0-f2e0-46cc-b102-ae5d1b7c7d9a"/>

## TTY Interface Board

<img width="800" alt="TTY Interface" src="https://github.com/user-attachments/assets/b6bd0947-f1ea-40fd-8f43-8f5b91b9d708"/>

<img width="800" alt="TTY PCB" src="https://github.com/user-attachments/assets/586f3cc9-bf83-4516-9e05-781122459b16"/>

The TTY interface board is used to connect the SCELBI to a teletype. To use this board, the monitor ROMS (60-63), TTY ROM (76) and Cassette ROM (77) will be required.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| 7400     | 2 | [Jameco](https://www.jameco.com/z/7400-Major-Brands-IC-7400-QUAD-2-INPUT-POSITIVE-NAND-GATE_48979.html) |
| 7475     | 2    | [Jameco](https://www.jameco.com/z/SN7475N-Texas-Instruments-IC-7475-4-BIT-BI-STABLE-LATCH_50577.html) |
| 120 Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/CF1-4W121JRC-Jameco-ValuePro-Resistor-Carbon-Film-120-Ohm-1-4-Watt-5-_690646.html) |
| 330 Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/RC04330EJT-Jameco-ValuePro-Resistor-Carbon-Film-330-Ohm-1-4-Watt-5-_690742.html) |
| 470 Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/CF1-4W471JRC-Jameco-ValuePro-Resistor-Carbon-Film-470-Ohm-1-4-Watt-5-_690785.html) |
| 1K Ohm Resistor | 4 | [Jameco](https://www.jameco.com/z/CF1-4W102JRC-Jameco-ValuePro-Resistor-Carbon-Film-1k-Ohm-1-4-Watt-5-_690865.html) |
| 2K Ohm Resistor | 2 | [Jameco](https://www.jameco.com/z/CF1-4W202JRC-Jameco-ValuePro-Resistor-Carbon-Film-2k-Ohm-1-4-Watt-5-_690937.html) |
| 5.6K Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/CF1-4W562JRC-Jameco-ValuePro-Resistor-Carbon-Film-5-6k-Ohm-1-4-Watt-5-_691041.html) |
| 6.8K Ohm Resistor | 1 | [Jameco](https://www.jameco.com/z/CF1-4W682JRC-Jameco-ValuePro-Resistor-Carbon-Film-6-8k-Ohm-1-4-Watt-5-_691067.html) |
| 10K Ohm Resistor | 2 | [DigiKey](https://www.digikey.com/en/products/detail/stackpole-electronics-inc/CF14JT10K0/1741265) |
| 10 uF Ele. Cap. | 1 | [Jameco](https://www.jameco.com/z/106TTA100M-JVP-Jameco-ValuePro-10-uF-100V-Axial-Electrolytic-Capacitor-20-_2341471.html) |
| 0.1 uF Disk Cap. | 1 | [Jameco](https://www.jameco.com/z/DC-1-25-Y5V-James-Electronics-Ceramic-Disc-Capacitor-0-1uF-25-VDC-20-80-6mm-Body-Diameter_2300983.html) |
| 0.02 uF Disk Cap. | 1 | [Jameco](https://www.jameco.com/z/DC-02-50-Z5V-James-Electronics-Ceramic-Disc-Capacitor-0-02uF-50-VDC-80-20-7mm-Body-Diameter_2301935.html) |
| 2N2222 Trans. | 1 | [DigiKey](https://www.digikey.com/en/products/detail/stmicroelectronics/2N2222/654412) |
| 2N2907 Trans. | 2 | [DigiKey](https://www.digikey.com/en/products/detail/rochester-electronics-llc/2N2907/12094713) |
| 1N914 Diode | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N914/978749) |
| 6.2V Zener | 1 | [DigiKey](https://www.digikey.com/en/products/detail/onsemi/1N5341BRLG/918032) |
| 12.0V Zener (NTE5127A) | 1 | [eBay](https://www.ebay.com/itm/234933379025) |
| 3/4A 8AG Fuse | 2 | [DigiKey](https://www.digikey.com/en/products/detail/eaton-electronics-division/BK-AGX-1-1-2/264552) |
| Fuse Clip | 4 | [DigiKey](https://www.digikey.com/en/products/detail/littelfuse-inc/01220088Z/2498891) |

### Instructions

Refer to the [YouTube video]() for detailed assembly instructions. Reference the [assembly manual](literature/SCELBI-8BAssemblyInstructions.pdf) for the parts layout and additional details.

### Serial Interface

Because of the way the SCELBI software sends and receives data bits (bit banging), it's possible to convert the bits to serial using a simple latch and a serial tranceiver (MAX232). You can find the schematics for a SCELBI serial interface and the Gerber file for the PCB [here](https://github.com/agentorange96/SCELBI/tree/main/SCELBI-TTY-Interface).

The nice thing about the above serial board is that it's a direct replacement of the TTY board. In my build, I actually have both the TTY board and the serial board in one enclosure with a switch to toggle between TTY and serial. The switch just toggles the power for each board. It works quite well.

<img width="800" alt="TTY and Serial Switch" src="https://github.com/user-attachments/assets/1deaf672-d6b6-4c9a-9ae0-d779a7899bd7"/>

## Cassette Interface Boards

Coming soon

## Keyboard Interface Board

Coming soon

## Video Board

Coming soon

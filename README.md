# SCELBI-8B Minicomputer

The SCELBI Minicomputer is considered to be the first general purpose computer to be offered to the general public.

Reference the [SCELBI Computer Museum](https://www.scelbi.com/) website for documentation, images and software related to the SCELBI computer.

## PCBs

The PCBs were re-created by tracing the original PCBs in KiCAD. PCB sets are available at [www.kalinchuk.com](https://www.kalinchuk.com/product-page/scelbi-8b-pcb-set-8-boards). Additional RAM boards and other I/O boards are also available at www.kalinchuk.com.

### Gerbers

Coming soon

### Front Panel

The front panel is available at [www.kalinchuk.com](https://www.kalinchuk.com/product-page/scelbi-8b-front-panel).

If you would like to make your own front panel, you can upload the [CAD file](front_panel/scelbi8b.iges) to [PCBWay](www.pcbway.com) and have them fabricate it for you.

## Backplane

Coming soon

## Front Panel Board

Coming soon

## CPU Board

Coming soon

## DBB & Output Board

Coming soon

## Input Board

Coming soon

## Memory Expansion Board

Coming soon

## 4K RAM Board

Coming soon

## 4K ROM Board

Coming soon

## Chassis

Coming soon

## Power Supply

<img width="600" alt="PSU" src="https://github.com/user-attachments/assets/f03d63a8-a1db-4fd1-8358-180f6fddc767"/>

The SCELBI requires a +5V power supply and a -12V power supply. The +5V line requires a maximum 1.5A with just the basic boards installed and no memory. The -9V line requires 100mA. The 8H uses 1K RAM boards and each one requires an additional 200mA on both the +5V and -9V lines. Because we're building an 8B SCELBI, the 4K RAM boards do not use -9V so we just need an additional 600mA on the +5 line for each RAM board that we have installed. The 8B also has a memory expansion board (750mA on +5V) and a ROM board (1.5A on +5V and 1.5A on -9V).

In summary, a fully stacked SCEBI 8B (without peripherals) requires a _maximum_ of 5.4A on the +5 line and 1.6A on the -9 line. Because we'll be adding additional peripherals, I think it's safe to use a 6A +5 power supply and a 1.7A -12V power supply (adjusted to -9V). I will be using two Power-One power supplies in my case. You can also use a single one such as the [Power-One CP131-A](https://www.ebay.com/itm/226141595668).

### Tools

Basic tools will be required to make holes in the enclosure. I used a 3" hole saw drill bit to drill a hole for the fan. I also used a [1-11/64" chassis key punch](https://www.ebay.com/itm/267044392025) to make a hole for the main power connector. This tool is also used to make holes in the main SCELBI enclosure.

### Parts

| Part     | Quantity | Source  |
| -------- | ---- | ------------|
| Bud Enclosure (12"x12"x3") | 1 | [Bud Industries AC-413](https://www.digikey.com/en/products/detail/bud-industries/AC-413/386939) |
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

Follow the following wiring diagram when wiring up the power supply. Be careful when working with high voltage lines.

<img width="663" alt="Wiring diagram" src="https://github.com/user-attachments/assets/ec25b8b4-c335-4664-9e4f-ee872ca0ab41" />

## Cassette Interface Boards

Coming soon

## Keyboard Interface Board

Coming soon

## Video Board

Coming soon

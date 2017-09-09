
Termometer
ds18b20
sumergible

Regulator
SOT-223
TO-220

Connectors
0.1 inch pitch "pin header"

Other devboards

Impresoinante:
http://linksprite.com/wiki/index.php5?title=LinkNode_R4:_Arduino-compatible_WiFi_relay_controller



### GPIO behaviour at boot

https://www.mjt.me.uk/posts/esp8266-gpio-deep-sleep-and-reset/

### MOSFET

http://elinux.org/RPi_GPIO_Interface_Circuits

https://en.wikipedia.org/wiki/Category:Commercial_transistors

### Adafruit Huzzah

https://cdn-learn.adafruit.com/assets/assets/000/043/912/original/adafruit_products_schem.png?1500079207

https://github.com/adafruit/Adafruit-Huzzah-ESP8266-Basic-Breakout-PCB

### NodeMCU

https://raw.githubusercontent.com/nodemcu/nodemcu-devkit/master/Documents/NODEMCU_DEVKIT_SCH.png

https://github.com/nodemcu/nodemcu-devkit
https://github.com/nodemcu/nodemcu-devkit-v1.0


### Martin relay board

El blog tiene cosas interesantes como FOTA (firmware over the air).

http://harizanov.com/wiki/wiki-home/three-channel-wifi-relaythermostat-board/esp8266_relay_board_sch/#main


https://hackaday.io/project/5841-ignore-this-esp8266-board



check and test CTS and DTR signals - nodeMCU uses transistor magic and
adafruit huzza doesn't care, esptool uses auto reset with rts/cts as well as
the arduino version - worst case: just not populate the resistors and reset
manually



GPIO2 needs to be pulled high, and GPIO15 pulled low for both SPI Flash boot
and Serial Bootloader modes. GPIO0 is then high for SPI Flash Boot and low
for Serial Bootloader.

People are getting away with not pulling GPIO 0&2 high because the pins have
internal weak pullups that are enabled by default.

There's some more info on the bootselect strapping in some of the Espressif
documentation. GPIO2 pulled low enables some of the SDIO modes which are not
usable with these modules the way they are connected (SDIO lines are already
connected to the on-module flash chip).


https://hackaday.io/project/26823-lameboy-another-esp12-handheld

When it comes to power, I've wanted it all, meaning the board needs to be able to charge a LiPo with the help of an MCP73831 but also stay on when I plugin USB or remove it. For this I've integrated the TPS2113A, a power mux chip that does just that and keeps me from throwing in diodes at everything (that chip was also featured in a 3hours youtube live stream by David Watts - great watch!)


### Autoreset

https://www.esp32.com/viewtopic.php?t=430

The transistors are for the case where both DTR & RTS are asserted together. When either RTS or DTS are asserted (goes low) it still pulls EN or GPIO0 (respectively) low, the same if they were wired directly. However if both are asserted at the same time, neither pin is pulled low. There's a little logic truth table in the schematic that shows this.

The reason for wanting this behaviour is that many common serial terminal programs will assert DTR & RTS by default. If you have these wired directly, it will permanently hold the chip in reset unless you reconfigure the serial program not to assert RTS.

This design was first popularised with the NodeMCU board for ESP8266.


http://www.esp8266.com/viewtopic.php?f=13&t=8430


### Capacitors

On general electronic devices, only 0.1uF decoupling is usually used.
But since ESP is a power hungry beast, you need both, the 0.1uF for filtering, and the 47uF for power reserve for when spikes occured.
Both need to be near the ESP simply because of wire resistance.
The value 47uF is not really high, I'm personally using even bigger 220uF

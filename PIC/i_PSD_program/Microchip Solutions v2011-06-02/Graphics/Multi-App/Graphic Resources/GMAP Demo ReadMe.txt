
=======================================================================
Hex files:
- Use GraphicsMultiAppExternalFlashData.hex to program the Graphics PICtail Flash Memory.

Applications:
- Use "PIC18_RGB_Demo_Board.hex" to program the PIC18 RGB board.
- Use "PIC24FJ128GA010_PICtail 2.hex” for General Purpose PIC24F 
  using Graphics PICtail™ Plus Board Version 2
- Use "PIC24FJ128GA010_PICtail 3.hex” for General Purpose PIC24F 
  using Graphics PICtail™ Plus Board Version 3
- Use "PIC24FJ256GA110_SDMDD_PICtail 2.hex" for General Purpose 
  PIC24F using Graphics PICtail™ Plus Board Version 2 and PICtail™ Board for SD&MMC
- Use "PIC24FJ256GA110_SDMDD_PICtail 3.hex" for General Purpose 
  PIC24F using Graphics PICtail™ Plus Board Version 3 and PICtail™ Board for SD&MMC
- Use "PIC24FJ256GB110_HID_SDMDD_PICtail 3.hex" for USB PIC24F 
  using Graphics PICtail™ Plus Board Version 3 and PICtail™ Board for SD&MMC
- Use "PIC24FJ256GB110_HID_USBMDD_PICtail 3.hex" for USB PIC24F 
  using Graphics PICtail™ Plus Board Version 3 and USB PICtail™ Plus Daughter Board
- Use "PIC32MX360F512L_SDMDD_PICtail 2.hex" for General Purpose PIC32MX 
  using Graphics PICtail™ Plus Board Version 2 and PICtail™ Board for SD&MMC
- Use "PIC32MX360F512L_SDMDD_PICtail 3.hex" for General Purpose PIC32MX 
  using Graphics PICtail™ Plus Board Version 3 and PICtail™ Board for SD&MMC
- Use "PIC32MX460F512L_HID_USBMDD_PICtail 3.hex" for USB PIC32 
  using Graphics PICtail™ Plus Board Version 3 and USB PICtail™ Plus Daughter Board

=======================================================================
Limitations:
1. Do not use RD1 for Flash Chip Select. Use RD11 instead.
2. Some limitiations:
   - PIC24FJ128GA010 - cannot run USB and SD demos.
   - PIC24FJ256GA110 - cannot run USB (not a USB device)
   - PIC24FJ256GB110 - cannot run on Graphics PICtail Board version 2
   - PIC32MX360F512L - cannot run USB (not a USB device)			
   - PIC32MX460F512L - cannot run on Graphics PICtail Board version 2 			
                     - cannot run SD demo (not yet supported)

=======================================================================

Here is the list of PICtail™ Plus Daughter Boards
1. Graphics PICtail™ Plus Daughter Board (AC164127)
2. USB PICtail™ Plus Daughter Board (AC164131)
3. PICtail™ Board for SD&MMC (AC164122)

=======================================================================
PIC Devices that can be used are the following:
1. PIC24FJ256GB110 (MA240014)
2. PIC24FJ256GA110 (MA240015)
3. PIC24FJ128GA010 (MA240011)
4. PIC32MX360F512L (MA320001)


=======================================================================
Instructions to program Flash memory on Graphics PICtail Board:
The demo utilizes the on board Flash memory on the Graphics PICtail™. 
Icons in the menu and images displayed in the "External Flash Demo" 
is stored in the Flash memory. The demo automatically reads the flash 
memory to retrieve the images and display the accessed images to the 
screen. 
The instructions to to program this memory are as follows:
1. Connect Explorer 16 to PC with RS232 cable and power up Explorer 16.
2. Attach Graphics PICtail™ Plus Board to Explorer 16 with expansion connector J9.
3. Open the Graphics PICtail™ Flash memory programmer utility "prg.exe" in your 
   host PC. This utility is included in the installation of the Graphics Library 
   and can be found in the 
   "..\Microchip Solutions\Microchip\Graphics\Utilities\External Memory Programmer" 
   directory of your Graphics Library installation directory.
4. Browse the correct hex (GraphicsMultiAppExternalFlashData.hex) file to program 
   to the flash memory on the Graphics PICtail™. This hex file can be found in the 
   "\Graphics MultiApp Demo\Demo Data" directory.
5. Select the correct serial port.
6. On the Explorer 16 board, press switch "S6" and "MCLR" at the same time. 
   With "S6" still pressed, release "MCLR" button wait for about half a second 
   and release "S6". This procedure will erase the current contents of the 
   on board flash memory and enable the programming application. Now the set 
   up is ready to receive programming data.
7. On the PC press the "Start" button on the "prg.exe" utility. Data will 
   sent to the set up. Status of the download can be monitored in the 
   utility. While programming, the LEDs in the explorer 16 board will light up:
   - Ready to accept: LED D6 is ON
   - While receiving data: LEDs D6 and D5 will toggle ON and OFF
   - Done or no data: Both D6 and D5 LEDs will be ON if programming is 
     done or no data has been received for more than 5 seconds.
8. After programming is done press the reset (MCLR or S1) switch.
9. Verify that the icons and external flash images are displayed.

For all other information please refer to the Graphics Library Help file included in the
installation of the Graphics Library. Look under 
"Demo Projects/Graphics Multi Application Demo" section for other information on the demo.
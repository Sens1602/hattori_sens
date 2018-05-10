#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 
# Macros
CND_CONF=PIC24_GB210_GFXv3_EX16_16PMP_WQVGAv1_USBMSD

ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf
endif
# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}
# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/DrawTool.o ${OBJECTDIR}/_ext/1472/ECG.o ${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/1472/GraphShow.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o ${OBJECTDIR}/_ext/549097302/usb_host.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/1472/UART.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/DemoSteps.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1472/DemoSelection.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ${OBJECTDIR}/_ext/803622919/RadioButton.o ${OBJECTDIR}/_ext/1788384718/FSIO.o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/1472/Games.o ${OBJECTDIR}/_ext/1472/RGBDemo.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/1472/Animation.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o ${OBJECTDIR}/_ext/1687970324/EEPROM.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_20\\jre/bin/
OS_ORIGINAL="MINGW32_NT-5.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC24_GB210_GFXv3_EX16_16PMP_WQVGAv1_USBMSD.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ256GB210
MP_LINKER_FILE_OPTION=,-Tp24FJ256GB210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DrawTool.o.d -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DrawTool.o.d > ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DrawTool.o.d > ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
endif
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ECG.o.d -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ECG.o.d > ${OBJECTDIR}/_ext/1472/ECG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECG.o.tmp ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ECG.o.d > ${OBJECTDIR}/_ext/1472/ECG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECG.o.tmp ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.tmp
endif
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GraphShow.o.d -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GraphShow.o.d > ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GraphShow.o.d > ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/172487899/usb_host_msd.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/172487899 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d -o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_host.o: ../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_host.o.d -o ${OBJECTDIR}/_ext/549097302/usb_host.o ../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_host.o.d > ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/549097302/usb_host.o.d > ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DemoSteps.o.d -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DemoSteps.o.d > ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DemoSteps.o.d > ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
endif
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d > ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d > ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d > ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d > ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DemoSelection.o.d -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DemoSelection.o.d > ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DemoSelection.o.d > ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/FSIO.o.d -o ${OBJECTDIR}/_ext/1788384718/FSIO.o ../../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/SD-SPI.o: ../../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d -o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o ../../../Microchip/MDD\ File\ System/SD-SPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d > ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d > ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d > ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d > ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d > ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d > ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d > ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d > ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Games.o.d -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Games.o.d > ${OBJECTDIR}/_ext/1472/Games.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Games.o.tmp ${OBJECTDIR}/_ext/1472/Games.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Games.o.d > ${OBJECTDIR}/_ext/1472/Games.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Games.o.tmp ${OBJECTDIR}/_ext/1472/Games.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.tmp
endif
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/RGBDemo.o.d -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/RGBDemo.o.d > ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/RGBDemo.o.d > ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o: ../ResourcesInternalFlash\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d -o ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o ../ResourcesInternalFlash\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d > ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d > ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o: ../ResourcesExternalSPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d -o ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o ../ResourcesExternalSPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d > ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d > ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp
endif
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Animation.o.d -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Animation.o.d > ${OBJECTDIR}/_ext/1472/Animation.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Animation.o.tmp ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Animation.o.d > ${OBJECTDIR}/_ext/1472/Animation.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Animation.o.tmp ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/172487899 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d -o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/EEPROM.o: ../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d -o ${OBJECTDIR}/_ext/1687970324/EEPROM.o ../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/DrawTool.o: ../DrawTool.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DrawTool.o.d -o ${OBJECTDIR}/_ext/1472/DrawTool.o ../DrawTool.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DrawTool.o.d > ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DrawTool.o.d > ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp ${OBJECTDIR}/_ext/1472/DrawTool.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DrawTool.o.tmp
endif
${OBJECTDIR}/_ext/1472/ECG.o: ../ECG.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ECG.o.d -o ${OBJECTDIR}/_ext/1472/ECG.o ../ECG.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ECG.o.d > ${OBJECTDIR}/_ext/1472/ECG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECG.o.tmp ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ECG.o.d > ${OBJECTDIR}/_ext/1472/ECG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECG.o.tmp ${OBJECTDIR}/_ext/1472/ECG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECG.o.tmp
endif
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/GraphShow.o: ../GraphShow.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GraphShow.o.d -o ${OBJECTDIR}/_ext/1472/GraphShow.o ../GraphShow.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GraphShow.o.d > ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GraphShow.o.d > ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp ${OBJECTDIR}/_ext/1472/GraphShow.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GraphShow.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/172487899/usb_host_msd.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/172487899 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d -o ${OBJECTDIR}/_ext/172487899/usb_host_msd.o ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_host.o: ../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_host.o.d -o ${OBJECTDIR}/_ext/549097302/usb_host.o ../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_host.o.d > ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/549097302/usb_host.o.d > ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp ${OBJECTDIR}/_ext/549097302/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/1472/UART.o: ../UART.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UART.o.d -o ${OBJECTDIR}/_ext/1472/UART.o ../UART.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UART.o.d > ${OBJECTDIR}/_ext/1472/UART.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/UART.o.tmp ${OBJECTDIR}/_ext/1472/UART.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/UART.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1472/DemoSteps.o: ../DemoSteps.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DemoSteps.o.d -o ${OBJECTDIR}/_ext/1472/DemoSteps.o ../DemoSteps.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DemoSteps.o.d > ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DemoSteps.o.d > ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp ${OBJECTDIR}/_ext/1472/DemoSteps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSteps.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
endif
${OBJECTDIR}/_ext/1472/MultiFontsDemo.o: ../MultiFontsDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d -o ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o ../MultiFontsDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d > ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d > ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MultiFontsDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/ECGBitmaps.o: ../ECGBitmaps.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d -o ${OBJECTDIR}/_ext/1472/ECGBitmaps.o ../ECGBitmaps.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d > ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d > ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ECGBitmaps.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1472/DemoSelection.o: ../DemoSelection.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/DemoSelection.o.d -o ${OBJECTDIR}/_ext/1472/DemoSelection.o ../DemoSelection.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/DemoSelection.o.d > ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/DemoSelection.o.d > ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp ${OBJECTDIR}/_ext/1472/DemoSelection.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/DemoSelection.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/FSIO.o.d -o ${OBJECTDIR}/_ext/1788384718/FSIO.o ../../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/SD-SPI.o: ../../../Microchip/MDD\ File\ System/SD-SPI.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d -o ${OBJECTDIR}/_ext/1788384718/SD-SPI.o ../../../Microchip/MDD\ File\ System/SD-SPI.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d > ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d > ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/SD-SPI.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/TimeDateDemo.o: ../TimeDateDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d -o ${OBJECTDIR}/_ext/1472/TimeDateDemo.o ../TimeDateDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d > ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d > ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/TimeDateDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/SlideShowDemo.o: ../SlideShowDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d -o ${OBJECTDIR}/_ext/1472/SlideShowDemo.o ../SlideShowDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d > ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d > ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SlideShowDemo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1472/JPEGDemo.o: ../JPEGDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d -o ${OBJECTDIR}/_ext/1472/JPEGDemo.o ../JPEGDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d > ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d > ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp ${OBJECTDIR}/_ext/1472/JPEGDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/JPEGDemo.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1472/Games.o: ../Games.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Games.o.d -o ${OBJECTDIR}/_ext/1472/Games.o ../Games.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Games.o.d > ${OBJECTDIR}/_ext/1472/Games.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Games.o.tmp ${OBJECTDIR}/_ext/1472/Games.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Games.o.d > ${OBJECTDIR}/_ext/1472/Games.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Games.o.tmp ${OBJECTDIR}/_ext/1472/Games.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Games.o.tmp
endif
${OBJECTDIR}/_ext/1472/RGBDemo.o: ../RGBDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/RGBDemo.o.d -o ${OBJECTDIR}/_ext/1472/RGBDemo.o ../RGBDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/RGBDemo.o.d > ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/RGBDemo.o.d > ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp ${OBJECTDIR}/_ext/1472/RGBDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/RGBDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o: ../ResourcesInternalFlash\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d -o ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o ../ResourcesInternalFlash\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d > ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d > ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesInternalFlash\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o: ../ResourcesExternalSPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d -o ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o ../ResourcesExternalSPIFlash.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d > ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d > ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ResourcesExternalSPIFlash.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp
endif
${OBJECTDIR}/_ext/1472/Animation.o: ../Animation.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Animation.o.d -o ${OBJECTDIR}/_ext/1472/Animation.o ../Animation.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Animation.o.d > ${OBJECTDIR}/_ext/1472/Animation.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Animation.o.tmp ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Animation.o.d > ${OBJECTDIR}/_ext/1472/Animation.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Animation.o.tmp ${OBJECTDIR}/_ext/1472/Animation.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Animation.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o: ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/172487899 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d -o ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o ../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/172487899/usb_host_msd_scsi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/EEPROM.o: ../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_16PMP_USBMSD_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../Common" -I"../../../Microchip/Include/Image Decoders" -I"../../../Microchip/Include/MDD File System" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -mconst-in-code -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d -o ${OBJECTDIR}/_ext/1687970324/EEPROM.o ../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_GB210_GFXv3_EX16_16PMP_WQVGAv1_USBMSD
	${RM} -r dist/PIC24_GB210_GFXv3_EX16_16PMP_WQVGAv1_USBMSD

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

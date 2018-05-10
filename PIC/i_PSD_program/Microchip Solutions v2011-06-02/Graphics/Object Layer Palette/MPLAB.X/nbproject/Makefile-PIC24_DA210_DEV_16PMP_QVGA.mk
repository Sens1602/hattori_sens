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
CND_CONF=PIC24_DA210_DEV_16PMP_QVGA

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
OBJECTFILES=${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/1472/GOLPalette.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1472/Fonts.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/803622919/Palette.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1472/Monofont.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ${OBJECTDIR}/_ext/803622919/RadioButton.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_QVGA.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
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
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
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
${OBJECTDIR}/_ext/1472/GOLPalette.o: ../GOLPalette.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GOLPalette.o.d -o ${OBJECTDIR}/_ext/1472/GOLPalette.o ../GOLPalette.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GOLPalette.o.d > ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GOLPalette.o.d > ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
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
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
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
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
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
${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o: ../GOLPaletteSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o ../GOLPaletteSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d > ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d > ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
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
${OBJECTDIR}/_ext/1472/Fonts.o: ../Fonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Fonts.o.d -o ${OBJECTDIR}/_ext/1472/Fonts.o ../Fonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Fonts.o.d > ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Fonts.o.d > ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
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
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RoundDial.o.d -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
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
${OBJECTDIR}/_ext/803622919/Palette.o: ../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Palette.o.d -o ${OBJECTDIR}/_ext/803622919/Palette.o ../../../Microchip/Graphics/Palette.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Palette.o.d > ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Palette.o.d > ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
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
${OBJECTDIR}/_ext/1472/Monofont.o: ../Monofont.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Monofont.o.d -o ${OBJECTDIR}/_ext/1472/Monofont.o ../Monofont.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
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
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
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
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
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
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
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
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
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
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
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
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
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
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
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
${OBJECTDIR}/_ext/1472/Pictures\ C30.o: ../Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ../Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
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
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
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
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
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
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
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
${OBJECTDIR}/_ext/1472/CustomControlDemo.o: ../CustomControlDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d -o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ../CustomControlDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
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
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
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
else
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
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
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
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
${OBJECTDIR}/_ext/1472/GOLPalette.o: ../GOLPalette.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GOLPalette.o.d -o ${OBJECTDIR}/_ext/1472/GOLPalette.o ../GOLPalette.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GOLPalette.o.d > ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GOLPalette.o.d > ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp ${OBJECTDIR}/_ext/1472/GOLPalette.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPalette.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
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
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
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
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
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
${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o: ../GOLPaletteSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o ../GOLPaletteSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d > ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d > ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/GOLPaletteSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
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
${OBJECTDIR}/_ext/1472/Fonts.o: ../Fonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Fonts.o.d -o ${OBJECTDIR}/_ext/1472/Fonts.o ../Fonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Fonts.o.d > ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Fonts.o.d > ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp ${OBJECTDIR}/_ext/1472/Fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Fonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
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
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RoundDial.o.d -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
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
${OBJECTDIR}/_ext/803622919/Palette.o: ../../../Microchip/Graphics/Palette.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Palette.o.d -o ${OBJECTDIR}/_ext/803622919/Palette.o ../../../Microchip/Graphics/Palette.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Palette.o.d > ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Palette.o.d > ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp ${OBJECTDIR}/_ext/803622919/Palette.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Palette.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
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
${OBJECTDIR}/_ext/1472/Monofont.o: ../Monofont.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Monofont.o.d -o ${OBJECTDIR}/_ext/1472/Monofont.o ../Monofont.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
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
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
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
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
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
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
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
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
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
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
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
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
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
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
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
${OBJECTDIR}/_ext/1472/Pictures\ C30.o: ../Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C30.o ../Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
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
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
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
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
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
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
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
${OBJECTDIR}/_ext/1472/CustomControlDemo.o: ../CustomControlDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d -o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ../CustomControlDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
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
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -mlarge-code -mlarge-data -mlarge-scalar -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
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
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_QVGA
	${RM} -r dist/PIC24_DA210_DEV_16PMP_QVGA

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

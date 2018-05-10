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
CND_CONF=PIC32_USB_SK_GFXv3_8PMP_QVGAv1

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
OBJECTFILES=${OBJECTDIR}/_ext/803622919/CheckBox.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/803622919/ListBox.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/803622919/Picture.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/RoundDial.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1472/Monofont.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/1472/rtcc.o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ${OBJECTDIR}/_ext/1472/SideButtons.o ${OBJECTDIR}/_ext/803622919/Grid.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/803622919/Window.o ${OBJECTDIR}/_ext/803622919/Meter.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ${OBJECTDIR}/_ext/1687970324/EEPROM.o ${OBJECTDIR}/_ext/803622919/RadioButton.o


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
MP_CC=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C32\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC32_USB_SK_GFXv3_8PMP_QVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX360F512L
MP_LINKER_FILE_OPTION=
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/RoundDial.o.d -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/Monofont.o: ../Monofont.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Monofont.o.d -o ${OBJECTDIR}/_ext/1472/Monofont.o ../Monofont.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C32.o: ../Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ../Pictures\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
endif
${OBJECTDIR}/_ext/1472/ChineseFonts.o: ../ChineseFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d -o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ../ChineseFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d > ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
endif
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomControlDemo.o: ../CustomControlDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d -o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ../CustomControlDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/EEPROM.o: ../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d -o ${OBJECTDIR}/_ext/1687970324/EEPROM.o ../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
endif
else
${OBJECTDIR}/_ext/803622919/CheckBox.o: ../../../Microchip/Graphics/CheckBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/CheckBox.o.d -o ${OBJECTDIR}/_ext/803622919/CheckBox.o ../../../Microchip/Graphics/CheckBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/CheckBox.o.d > ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp ${OBJECTDIR}/_ext/803622919/CheckBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/CheckBox.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ListBox.o: ../../../Microchip/Graphics/ListBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/ListBox.o.d -o ${OBJECTDIR}/_ext/803622919/ListBox.o ../../../Microchip/Graphics/ListBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ListBox.o.d > ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp ${OBJECTDIR}/_ext/803622919/ListBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ListBox.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Picture.o: ../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Picture.o.d -o ${OBJECTDIR}/_ext/803622919/Picture.o ../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Picture.o.d > ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp ${OBJECTDIR}/_ext/803622919/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Picture.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RoundDial.o: ../../../Microchip/Graphics/RoundDial.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/RoundDial.o.d -o ${OBJECTDIR}/_ext/803622919/RoundDial.o ../../../Microchip/Graphics/RoundDial.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RoundDial.o.d > ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp ${OBJECTDIR}/_ext/803622919/RoundDial.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RoundDial.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/Monofont.o: ../Monofont.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Monofont.o.d -o ${OBJECTDIR}/_ext/1472/Monofont.o ../Monofont.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Monofont.o.d > ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp ${OBJECTDIR}/_ext/1472/Monofont.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Monofont.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C32.o: ../Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ../Pictures\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
endif
${OBJECTDIR}/_ext/803622919/ProgressBar.o: ../../../Microchip/Graphics/ProgressBar.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d -o ${OBJECTDIR}/_ext/803622919/ProgressBar.o ../../../Microchip/Graphics/ProgressBar.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d > ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp ${OBJECTDIR}/_ext/803622919/ProgressBar.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/ProgressBar.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/rtcc.o: ../rtcc.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/rtcc.o.d -o ${OBJECTDIR}/_ext/1472/rtcc.o ../rtcc.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/rtcc.o.d > ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp ${OBJECTDIR}/_ext/1472/rtcc.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/rtcc.o.tmp
endif
${OBJECTDIR}/_ext/1472/ChineseFonts.o: ../ChineseFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d -o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ../ChineseFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d > ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
endif
${OBJECTDIR}/_ext/1472/SideButtons.o: ../SideButtons.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/SideButtons.o.d -o ${OBJECTDIR}/_ext/1472/SideButtons.o ../SideButtons.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SideButtons.o.d > ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp ${OBJECTDIR}/_ext/1472/SideButtons.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SideButtons.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Grid.o: ../../../Microchip/Graphics/Grid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Grid.o.d -o ${OBJECTDIR}/_ext/803622919/Grid.o ../../../Microchip/Graphics/Grid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Grid.o.d > ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp ${OBJECTDIR}/_ext/803622919/Grid.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Grid.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Window.o: ../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Window.o.d -o ${OBJECTDIR}/_ext/803622919/Window.o ../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Window.o.d > ${OBJECTDIR}/_ext/803622919/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Window.o.tmp ${OBJECTDIR}/_ext/803622919/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Window.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Meter.o: ../../../Microchip/Graphics/Meter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/Meter.o.d -o ${OBJECTDIR}/_ext/803622919/Meter.o ../../../Microchip/Graphics/Meter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Meter.o.d > ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp ${OBJECTDIR}/_ext/803622919/Meter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Meter.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/CustomControlDemo.o: ../CustomControlDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d -o ${OBJECTDIR}/_ext/1472/CustomControlDemo.o ../CustomControlDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d > ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/CustomControlDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/803622919/DigitalMeter.o: ../../../Microchip/Graphics/DigitalMeter.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d -o ${OBJECTDIR}/_ext/803622919/DigitalMeter.o ../../../Microchip/Graphics/DigitalMeter.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d > ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/DigitalMeter.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/EEPROM.o: ../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d -o ${OBJECTDIR}/_ext/1687970324/EEPROM.o ../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d > ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp ${OBJECTDIR}/_ext/1687970324/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_QVGAv1 -I"../" -I"../../../Board Support Package" -I"../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=3000 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_USB_SK_GFXv3_8PMP_QVGAv1
	${RM} -r dist/PIC32_USB_SK_GFXv3_8PMP_QVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

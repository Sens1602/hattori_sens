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
CND_CONF=PIC32MX795F512L_PIM

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
OBJECTFILES=${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ${OBJECTDIR}/_ext/2020629477/SST39VF040.o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1847857110/EditBox.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ${OBJECTDIR}/_ext/2020629477/Beep.o ${OBJECTDIR}/_ext/366188474/SSD1926.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o ${OBJECTDIR}/_ext/1847857110/Primitive.o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ${OBJECTDIR}/_ext/1847857110/StaticText.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1847857110/Picture.o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ${OBJECTDIR}/_ext/1847857110/GroupBox.o ${OBJECTDIR}/_ext/1847857110/Window.o ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o ${OBJECTDIR}/_ext/1847857110/Button.o ${OBJECTDIR}/_ext/1847857110/GOL.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_24\\jre/bin/
OS_ORIGINAL="MINGW32_NT-6.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin\\pic32-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\ Suite\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC32MX795F512L_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ../../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST39VF040.o: ../../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d -o ${OBJECTDIR}/_ext/2020629477/SST39VF040.o ../../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d > ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ../../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/EditBox.o: ../../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/EditBox.o.d -o ${OBJECTDIR}/_ext/1847857110/EditBox.o ../../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/EditBox.o.d > ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/EEPROM.o: ../../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d -o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ../../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/Beep.o.d -o ${OBJECTDIR}/_ext/2020629477/Beep.o ../../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
endif
${OBJECTDIR}/_ext/366188474/SSD1926.o: ../../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/366188474/SSD1926.o.d -o ${OBJECTDIR}/_ext/366188474/SSD1926.o ../../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/SSD1926.o.d > ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_primitives.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_primitives.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Primitive.o.d -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/StaticText.o.d -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/StaticText.o.d > ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Picture.o.d -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Picture.o.d > ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ../../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ../../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d > ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GroupBox.o: ../../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d -o ${OBJECTDIR}/_ext/1847857110/GroupBox.o ../../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d > ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Window.o: ../../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Window.o.d -o ${OBJECTDIR}/_ext/1847857110/Window.o ../../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Window.o.d > ${OBJECTDIR}/_ext/1847857110/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Window.o.tmp ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.tmp
endif
${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o: ../Print\ Screen\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o ../Print\ Screen\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Button.o.d -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOL.o.d -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
endif
else
${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o: ../../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o ../../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST39VF040.o: ../../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d -o ${OBJECTDIR}/_ext/2020629477/SST39VF040.o ../../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d > ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/SST25VF016.o: ../../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d -o ${OBJECTDIR}/_ext/2020629477/SST25VF016.o ../../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d > ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o: ../../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o ../../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/EditBox.o: ../../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/EditBox.o.d -o ${OBJECTDIR}/_ext/1847857110/EditBox.o ../../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/EditBox.o.d > ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp ${OBJECTDIR}/_ext/1847857110/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/EEPROM.o: ../../../../Board\ Support\ Package/EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d -o ${OBJECTDIR}/_ext/2020629477/EEPROM.o ../../../../Board\ Support\ Package/EEPROM.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d > ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp ${OBJECTDIR}/_ext/2020629477/EEPROM.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/EEPROM.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/Beep.o: ../../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/Beep.o.d -o ${OBJECTDIR}/_ext/2020629477/Beep.o ../../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/Beep.o.d > ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp ${OBJECTDIR}/_ext/2020629477/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/Beep.o.tmp
endif
${OBJECTDIR}/_ext/366188474/SSD1926.o: ../../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/366188474/SSD1926.o.d -o ${OBJECTDIR}/_ext/366188474/SSD1926.o ../../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/SSD1926.o.d > ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp ${OBJECTDIR}/_ext/366188474/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_primitives.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_primitives.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_primitives.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Primitive.o: ../../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Primitive.o.d -o ${OBJECTDIR}/_ext/1847857110/Primitive.o ../../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Primitive.o.d > ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp ${OBJECTDIR}/_ext/1847857110/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o: ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/366188474 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o ../../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/366188474/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/TimeDelay.o: ../../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d -o ${OBJECTDIR}/_ext/2048740170/TimeDelay.o ../../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d > ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/StaticText.o: ../../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/StaticText.o.d -o ${OBJECTDIR}/_ext/1847857110/StaticText.o ../../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/StaticText.o.d > ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp ${OBJECTDIR}/_ext/1847857110/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Picture.o: ../../../../Microchip/Graphics/Picture.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Picture.o.d -o ${OBJECTDIR}/_ext/1847857110/Picture.o ../../../../Microchip/Graphics/Picture.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Picture.o.d > ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp ${OBJECTDIR}/_ext/1847857110/Picture.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Picture.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o: ../../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o ../../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/drv_spi.o: ../../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d -o ${OBJECTDIR}/_ext/2020629477/drv_spi.o ../../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d > ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp ${OBJECTDIR}/_ext/2020629477/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/2020629477/TouchScreen.o: ../../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2020629477 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d -o ${OBJECTDIR}/_ext/2020629477/TouchScreen.o ../../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d > ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/2020629477/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GroupBox.o: ../../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d -o ${OBJECTDIR}/_ext/1847857110/GroupBox.o ../../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d > ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp ${OBJECTDIR}/_ext/1847857110/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Window.o: ../../../../Microchip/Graphics/Window.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Window.o.d -o ${OBJECTDIR}/_ext/1847857110/Window.o ../../../../Microchip/Graphics/Window.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Window.o.d > ${OBJECTDIR}/_ext/1847857110/Window.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Window.o.tmp ${OBJECTDIR}/_ext/1847857110/Window.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Window.o.tmp
endif
${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o: ../Print\ Screen\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o ../Print\ Screen\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Print\ Screen\ Demo.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/Button.o: ../../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/Button.o.d -o ${OBJECTDIR}/_ext/1847857110/Button.o ../../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/Button.o.d > ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp ${OBJECTDIR}/_ext/1847857110/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/Button.o.tmp
endif
${OBJECTDIR}/_ext/1847857110/GOL.o: ../../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1847857110 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include" -I"../../../../Board Support Package" -MMD -MF ${OBJECTDIR}/_ext/1847857110/GOL.o.d -o ${OBJECTDIR}/_ext/1847857110/GOL.o ../../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1847857110/GOL.o.d > ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp ${OBJECTDIR}/_ext/1847857110/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/1847857110/GOL.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32MX795F512L_PIM
	${RM} -r dist/PIC32MX795F512L_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

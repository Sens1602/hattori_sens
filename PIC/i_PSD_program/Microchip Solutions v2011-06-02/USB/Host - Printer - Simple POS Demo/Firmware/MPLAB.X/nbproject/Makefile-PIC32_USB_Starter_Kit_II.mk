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
CND_CONF=PIC32_USB_Starter_Kit_II

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
OBJECTFILES=${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ${OBJECTDIR}/_ext/1472/pictures32.o ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o


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
	${MAKE}  -f nbproject/Makefile-PIC32_USB_Starter_Kit_II.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
${OBJECTDIR}/_ext/1472/pictures32.o: ../pictures32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/pictures32.o.d -o ${OBJECTDIR}/_ext/1472/pictures32.o ../pictures32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pictures32.o.d > ${OBJECTDIR}/_ext/1472/pictures32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures32.o.tmp ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.tmp
endif
${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o: ../Simple\ POS\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o ../Simple\ POS\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp
endif
else
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_esc_pos.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_esc_pos.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
${OBJECTDIR}/_ext/1472/pictures32.o: ../pictures32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/pictures32.o.d -o ${OBJECTDIR}/_ext/1472/pictures32.o ../pictures32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pictures32.o.d > ${OBJECTDIR}/_ext/1472/pictures32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures32.o.tmp ${OBJECTDIR}/_ext/1472/pictures32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures32.o.tmp
endif
${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o: ../Simple\ POS\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_USB_STARTER_KIT -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o ../Simple\ POS\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ POS\ Demo.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=2000 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=2000
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_USB_Starter_Kit_II
	${RM} -r dist/PIC32_USB_Starter_Kit_II

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

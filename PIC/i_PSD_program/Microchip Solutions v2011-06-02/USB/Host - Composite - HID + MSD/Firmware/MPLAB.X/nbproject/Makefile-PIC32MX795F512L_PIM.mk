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
OBJECTFILES=${OBJECTDIR}/_ext/1472/Delay.o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o ${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/921800108/usb_host_msd.o ${OBJECTDIR}/_ext/491339551/FSIO.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

OS_ORIGINAL="MINGW32_NT-6.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin\\pic32-gcc.exe
MP_AS=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin\\pic32-as.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin\\pic32-ld.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin\\pic32-ar.exe
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C32\\bin
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC32MX795F512L_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Delay.o: ../Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Delay.o.d -o ${OBJECTDIR}/_ext/1472/Delay.o ../Delay.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Delay.o.d > ${OBJECTDIR}/_ext/1472/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Delay.o.tmp ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.tmp}
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp}
endif
${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o: ../composite_hid_msd_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d -o ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o ../composite_hid_msd_demo.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d > ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
endif
${OBJECTDIR}/_ext/921800108/usb_host_msd.o: ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/921800108 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d -o ${OBJECTDIR}/_ext/921800108/usb_host_msd.o ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d > ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp}
endif
${OBJECTDIR}/_ext/491339551/FSIO.o: ../../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/491339551 
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/491339551/FSIO.o.d -o ${OBJECTDIR}/_ext/491339551/FSIO.o ../../../../Microchip/MDD\ File\ System/FSIO.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/491339551/FSIO.o.d > ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/LCDBlocking.o: ../../../../Microchip/Common/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ../../../../Microchip/Common/LCDBlocking.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
endif
${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o: ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/921800108 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d -o ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp}
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${MP_CC} -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp}
endif
else
${OBJECTDIR}/_ext/1472/Delay.o: ../Delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/Delay.o.d -o ${OBJECTDIR}/_ext/1472/Delay.o ../Delay.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Delay.o.d > ${OBJECTDIR}/_ext/1472/Delay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Delay.o.tmp ${OBJECTDIR}/_ext/1472/Delay.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Delay.o.tmp}
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp}
endif
${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o: ../composite_hid_msd_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d -o ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o ../composite_hid_msd_demo.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d > ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/composite_hid_msd_demo.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
endif
${OBJECTDIR}/_ext/921800108/usb_host_msd.o: ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/921800108 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d -o ${OBJECTDIR}/_ext/921800108/usb_host_msd.o ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d > ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${CP} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.d 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd.o.tmp}
endif
${OBJECTDIR}/_ext/491339551/FSIO.o: ../../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/491339551 
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/491339551/FSIO.o.d -o ${OBJECTDIR}/_ext/491339551/FSIO.o ../../../../Microchip/MDD\ File\ System/FSIO.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/491339551/FSIO.o.d > ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp ${OBJECTDIR}/_ext/491339551/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/491339551/FSIO.o.tmp}
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
endif
${OBJECTDIR}/_ext/2048740170/LCDBlocking.o: ../../../../Microchip/Common/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o ../../../../Microchip/Common/LCDBlocking.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d > ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/LCDBlocking.o.tmp}
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_config.o.d > ${OBJECTDIR}/_ext/1472/usb_config.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.tmp}
endif
${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o: ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/921800108 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d -o ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o ../../../../Microchip/USB/MSD\ Host\ Driver/usb_host_msd_scsi.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d > ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${CP} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.d 
	${RM} ${OBJECTDIR}/_ext/921800108/usb_host_msd_scsi.o.tmp}
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${MP_CC}  -x c -c -mprocessor=32MX795F512L -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp}
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC}  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=32MX795F512L  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}      -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC}  -mprocessor=32MX795F512L  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}      -Wl,--defsym=__MPLAB_BUILD=1
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf 
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32MX795F512L_PIM
	${RM} -r dist
# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

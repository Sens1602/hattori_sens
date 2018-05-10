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
CND_CONF=PIC24FJ64GB004_PIM

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
OBJECTFILES=${OBJECTDIR}/_ext/1472/keyboard_demo.o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ${OBJECTDIR}/_ext/1472/lcd_demo.o ${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o


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
MP_CC=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
MP_LD_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
MP_AR_DIR=C:\\Program\ Files\ \(x86\)\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC24FJ64GB004_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ64GB004
MP_LINKER_FILE_OPTION=,-Tp24FJ64GB004.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/keyboard_demo.o: ../keyboard_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d -o ${OBJECTDIR}/_ext/1472/keyboard_demo.o ../keyboard_demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d > ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d > ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
endif
${OBJECTDIR}/_ext/1472/lcd_demo.o: ../lcd_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/lcd_demo.o.d -o ${OBJECTDIR}/_ext/1472/lcd_demo.o ../lcd_demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/lcd_demo.o.d > ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/lcd_demo.o.d > ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
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
${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/keyboard_demo.o: ../keyboard_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d -o ${OBJECTDIR}/_ext/1472/keyboard_demo.o ../keyboard_demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d > ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d > ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp ${OBJECTDIR}/_ext/1472/keyboard_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/keyboard_demo.o.tmp
endif
${OBJECTDIR}/_ext/890994393/usb_host_hid.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid.o.tmp
endif
${OBJECTDIR}/_ext/1472/lcd_demo.o: ../lcd_demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/lcd_demo.o.d -o ${OBJECTDIR}/_ext/1472/lcd_demo.o ../lcd_demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/lcd_demo.o.d > ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/lcd_demo.o.d > ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp ${OBJECTDIR}/_ext/1472/lcd_demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lcd_demo.o.tmp
endif
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/926206843/usb_host.o.d > ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${CP} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/2048740170/uart2.o.d > ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${CP} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_config.o: ../usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_config.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
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
${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o: ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/890994393 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -I".." -I"../../../../Microchip/Include" -MMD -MF ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d -o ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o ../../../../Microchip/USB/HID\ Host\ Driver/usb_host_hid_parser.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d > ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${CP} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.d 
	${RM} ${OBJECTDIR}/_ext/890994393/usb_host_hid_parser.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=2000,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24FJ64GB004_PIM
	${RM} -r dist/PIC24FJ64GB004_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

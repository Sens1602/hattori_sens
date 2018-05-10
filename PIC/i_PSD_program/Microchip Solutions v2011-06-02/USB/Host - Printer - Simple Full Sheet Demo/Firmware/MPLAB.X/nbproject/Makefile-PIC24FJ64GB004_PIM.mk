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
OBJECTFILES=${OBJECTDIR}/_ext/926206843/usb_host.o ${OBJECTDIR}/_ext/1472/pictures.o ${OBJECTDIR}/_ext/2048740170/uart2.o ${OBJECTDIR}/_ext/1472/usb_config.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o


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
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
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
${OBJECTDIR}/_ext/1472/pictures.o: ../pictures.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/pictures.o.d -o ${OBJECTDIR}/_ext/1472/pictures.o ../pictures.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pictures.o.d > ${OBJECTDIR}/_ext/1472/pictures.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures.o.tmp ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/pictures.o.d > ${OBJECTDIR}/_ext/1472/pictures.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures.o.tmp ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
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
${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
endif
${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o: ../Simple\ Full\ Sheet\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o ../Simple\ Full\ Sheet\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
else
${OBJECTDIR}/_ext/926206843/usb_host.o: ../../../../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${RM} ${OBJECTDIR}/_ext/926206843/usb_host.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/926206843/usb_host.o.d -o ${OBJECTDIR}/_ext/926206843/usb_host.o ../../../../Microchip/USB/usb_host.c  
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
${OBJECTDIR}/_ext/1472/pictures.o: ../pictures.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/pictures.o.d -o ${OBJECTDIR}/_ext/1472/pictures.o ../pictures.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pictures.o.d > ${OBJECTDIR}/_ext/1472/pictures.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures.o.tmp ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/pictures.o.d > ${OBJECTDIR}/_ext/1472/pictures.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pictures.o.tmp ${OBJECTDIR}/_ext/1472/pictures.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pictures.o.tmp
endif
${OBJECTDIR}/_ext/2048740170/uart2.o: ../../../../Microchip/Common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2048740170 
	${RM} ${OBJECTDIR}/_ext/2048740170/uart2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/2048740170/uart2.o.d -o ${OBJECTDIR}/_ext/2048740170/uart2.o ../../../../Microchip/Common/uart2.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/usb_config.o.d -o ${OBJECTDIR}/_ext/1472/usb_config.o ../usb_config.c  
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
${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_postscript.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_postscript.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer_pcl_5.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer_pcl_5.o.tmp
endif
${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o: ../Simple\ Full\ Sheet\ Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d -o ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o ../Simple\ Full\ Sheet\ Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d > ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Simple\ Full\ Sheet\ Demo.o.tmp
endif
${OBJECTDIR}/_ext/90607120/usb_host_printer.o: ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/90607120 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I".." -I"../../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d -o ${OBJECTDIR}/_ext/90607120/usb_host_printer.o ../../../../Microchip/USB/Printer\ Host\ Driver/usb_host_printer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d > ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${CP} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.d 
	${RM} ${OBJECTDIR}/_ext/90607120/usb_host_printer.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=4096,-L"../../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=4096,-L"../../../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
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

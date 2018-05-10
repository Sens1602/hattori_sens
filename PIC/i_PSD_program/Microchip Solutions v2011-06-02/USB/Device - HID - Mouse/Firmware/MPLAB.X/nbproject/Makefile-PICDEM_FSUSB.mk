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
CND_CONF=PICDEM_FSUSB

ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof
endif
# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}
# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/mouse.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o


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
MP_CC=C:\\MCC18\\bin\\mcc18.exe
MP_AS=C:\\MCC18\\bin\\..\\mpasm\\MPASMWIN.exe
MP_LD=C:\\MCC18\\bin\\mplink.exe
MP_AR=C:\\MCC18\\bin\\mplib.exe
MP_CC_DIR=C:\\MCC18\\bin
MP_AS_DIR=C:\\MCC18\\bin\\..\\mpasm
MP_LD_DIR=C:\\MCC18\\bin
MP_AR_DIR=C:\\MCC18\\bin
# This makefile will use a C preprocessor to generate dependency files
MP_CPP=C:/Program\ Files\ \(x86\)/Microchip/MPLAB\ X\ IDE/mplab_ide/mplab_ide/modules/../../bin/mplab-cpp
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PICDEM_FSUSB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

# ------------------------------------------------------------------------------------
# Rules for buildStep: createRevGrep
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
else
__revgrep__:   nbproject/Makefile-${CND_CONF}.mk
	@echo 'grep -q $$@' > __revgrep__
	@echo 'if [ "$$?" -ne "0" ]; then' >> __revgrep__
	@echo '  exit 0' >> __revgrep__
	@echo 'else' >> __revgrep__
	@echo '  exit 1' >> __revgrep__
	@echo 'fi' >> __revgrep__
	@chmod +x __revgrep__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/mouse.o: ../mouse.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/mouse.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC}  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/mouse.o ../mouse.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/mouse.o.temp ../mouse.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/mouse.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/mouse.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/mouse.o.d
else
	cat ${OBJECTDIR}/_ext/1472/mouse.o.temp >> ${OBJECTDIR}/_ext/1472/mouse.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC}  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp ../usb_descriptors.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
else
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC}  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_device.o.temp ../../../../Microchip/USB/usb_device.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_device.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC}  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ../../../../Microchip/USB/usb_hal_pic24.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp ../../../../Microchip/USB/usb_hal_pic24.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1785203669/usb_function_hid.o: ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1785203669 
	${MP_CC}  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1785203669 > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
else
	cat ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp >> ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/1472/mouse.o: ../mouse.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/mouse.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC}  -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/mouse.o ../mouse.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/mouse.o.temp ../mouse.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/mouse.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/mouse.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/mouse.o.d
else
	cat ${OBJECTDIR}/_ext/1472/mouse.o.temp >> ${OBJECTDIR}/_ext/1472/mouse.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC}  -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp ../usb_descriptors.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
else
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC}  -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o ../../../../Microchip/USB/usb_device.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_device.o.temp ../../../../Microchip/USB/usb_device.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_device.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC}  -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o ../../../../Microchip/USB/usb_hal_pic24.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp ../../../../Microchip/USB/usb_hal_pic24.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1785203669/usb_function_hid.o: ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1785203669 
	${MP_CC}  -p18F4550 -I".." -I"../../../../Microchip/Include" -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c 
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp ../../../../Microchip/USB/HID\ Device\ Driver/usb_function_hid.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I C:\\Microchip\ Solutions\\USB\\Device\ -\ HID\ -\ Mouse\\Firmware -I C:\\Microchip\ Solutions\\Microchip\\Include -I C:\\MCC18\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1785203669 > ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\\\\/g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
else
	cat ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.temp >> ${OBJECTDIR}/_ext/1785203669/usb_function_hid.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD}   -p18f4550  -w -x  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1  -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD}   -p18f4550  -w   -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}     
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PICDEM_FSUSB
	${RM} -r dist
# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

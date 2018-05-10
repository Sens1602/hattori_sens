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
CND_CONF=PIC18F87J50_PIM

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
OBJECTFILES=${OBJECTDIR}/_ext/1472/Files.o ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/123996954/usb_function_msd.o ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=C:\\Program\ Files\\Java\\jdk1.6.0_16\\jre/bin/
OS_ORIGINAL="MINGW32_NT-5.1"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mcc18.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm\\MPASMWIN.exe
MP_LD=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplink.exe
MP_AR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\mplib.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin\\..\\mpasm
MP_LD_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin
# MP_BC_DIR is not defined
# This makefile will use a C preprocessor to generate dependency files
MP_CPP=C:/Program\ Files/Microchip/MPLABX/mplab_ide/mplab_ide/modules/../../bin/mplab-cpp
.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-PIC18F87J50_PIM.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof

MP_PROCESSOR_OPTION=18F87J50
MP_PROCESSOR_OPTION_LD=18f87j50
MP_LINKER_DEBUG_OPTION=
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
${OBJECTDIR}/_ext/1472/Files.o: ../Files.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/Files.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Files.o   ../Files.c  > ${OBJECTDIR}/_ext/1472/Files.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/Files.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/Files.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/Files.o.temp ../Files.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/Files.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/Files.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/Files.o.d
else
	cat ${OBJECTDIR}/_ext/1472/Files.o.temp >> ${OBJECTDIR}/_ext/1472/Files.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/491339551/Internal\ Flash.o: ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/491339551 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o   ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c  > ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/491339551 > ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
else
	cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp >> ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c  > ${OBJECTDIR}/_ext/1472/main.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/main.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/main.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/main.o.temp ../main.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/main.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/main.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/main.o.d
else
	cat ${OBJECTDIR}/_ext/1472/main.o.temp >> ${OBJECTDIR}/_ext/1472/main.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb_descriptors.o   ../usb_descriptors.c  > ${OBJECTDIR}/_ext/1472/usb_descriptors.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/usb_descriptors.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/usb_descriptors.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp ../usb_descriptors.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
else
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/123996954/usb_function_msd.o: ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/123996954 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/123996954/usb_function_msd.o   ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  > ${OBJECTDIR}/_ext/123996954/usb_function_msd.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/123996954 > ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
else
	cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp >> ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o   ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  > ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/2065199231 > ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
else
	cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp >> ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o   ../../../../Microchip/USB/usb_device.c  > ${OBJECTDIR}/_ext/926206843/usb_device.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/926206843/usb_device.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/926206843/usb_device.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_device.o.temp ../../../../Microchip/USB/usb_device.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_device.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o   ../../../../Microchip/USB/usb_hal_pic24.c  > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp ../../../../Microchip/USB/usb_hal_pic24.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
endif
	${RM} __temp_cpp_output__
else
${OBJECTDIR}/_ext/1472/Files.o: ../Files.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/Files.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/Files.o   ../Files.c  > ${OBJECTDIR}/_ext/1472/Files.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/Files.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/Files.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/Files.o.temp ../Files.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/Files.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/Files.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/Files.o.d
else
	cat ${OBJECTDIR}/_ext/1472/Files.o.temp >> ${OBJECTDIR}/_ext/1472/Files.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/491339551/Internal\ Flash.o: ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/491339551 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o   ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c  > ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp ../../../../Microchip/MDD\ File\ System/Internal\ Flash.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/491339551 > ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
else
	cat ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.temp >> ${OBJECTDIR}/_ext/491339551/Internal\ Flash.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/main.o   ../main.c  > ${OBJECTDIR}/_ext/1472/main.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/main.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/main.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/main.o.temp ../main.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/main.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/main.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/main.o.d
else
	cat ${OBJECTDIR}/_ext/1472/main.o.temp >> ${OBJECTDIR}/_ext/1472/main.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1472/usb_descriptors.o   ../usb_descriptors.c  > ${OBJECTDIR}/_ext/1472/usb_descriptors.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/1472/usb_descriptors.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/1472/usb_descriptors.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp ../usb_descriptors.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/1472 > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
else
	cat ${OBJECTDIR}/_ext/1472/usb_descriptors.o.temp >> ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/123996954/usb_function_msd.o: ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/123996954 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/123996954/usb_function_msd.o   ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c  > ${OBJECTDIR}/_ext/123996954/usb_function_msd.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp ../../../../Microchip/USB/MSD\ Device\ Driver/usb_function_msd.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/123996954 > ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
else
	cat ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.temp >> ${OBJECTDIR}/_ext/123996954/usb_function_msd.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/2065199231/usb_function_generic.o: ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/2065199231 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o   ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  > ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp ../../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/2065199231 > ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
else
	cat ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.temp >> ${OBJECTDIR}/_ext/2065199231/usb_function_generic.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o   ../../../../Microchip/USB/usb_device.c  > ${OBJECTDIR}/_ext/926206843/usb_device.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/926206843/usb_device.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/926206843/usb_device.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_device.o.temp ../../../../Microchip/USB/usb_device.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_device.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_device.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_device.o.d
endif
	${RM} __temp_cpp_output__
${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o: ../../../../Microchip/USB/usb_hal_pic24.c  nbproject/Makefile-${CND_CONF}.mk
	${RM} ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d 
	${MKDIR} ${OBJECTDIR}/_ext/926206843 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I".." -I"../../../../Microchip/Include"  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o   ../../../../Microchip/USB/usb_hal_pic24.c  > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err 2>&1 ; if [ $$? -eq 0 ] ; then cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err | sed 's/\(^.*:.*:\)\(Warning\)\(.*$$\)/\1 \2:\3/g' ; else cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.err | sed 's/\(^.*:.*:\)\(Error\)\(.*$$\)/\1 \2:\3/g' ; exit 1 ; fi
	${MP_CPP}  -MMD ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp ../../../../Microchip/USB/usb_hal_pic24.c __temp_cpp_output__ -D __18F87J50 -D __18CXX -I E:\\Projects\\Microchip\ Solutions\\USB\\Device\ -\ Composite\ -\ WinUSB\ +\ MSD\\Firmware -I E:\\Projects\\Microchip\ Solutions\\Microchip\\Include -I C:\\Program\ Files\\Microchip\\mplabc18\\v3.38\\bin/../h  -D__18F87J50
	printf "%s/" ${OBJECTDIR}/_ext/926206843 > ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
ifneq (,$(findstring MINGW32,$(OS_CURRENT)))
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp | sed -e 's/\\\ /__SPACES__/g' -e's/\\$$/__EOL__/g' -e 's/\\/\//g' -e 's/__SPACES__/\\\ /g' -e 's/__EOL__/\\/g' >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
else
	cat ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.temp >> ${OBJECTDIR}/_ext/926206843/usb_hal_pic24.o.d
endif
	${RM} __temp_cpp_output__
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) ../18f87j50_g_WinUSB_MSD_wHIDBoot.lkr  -p$(MP_PROCESSOR_OPTION_LD)  -w -x   -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_REAL_ICE=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) ../18f87j50_g_WinUSB_MSD_wHIDBoot.lkr  -p$(MP_PROCESSOR_OPTION_LD)  -w    -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.cof ${OBJECTFILES}      
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC18F87J50_PIM
	${RM} -r dist/PIC18F87J50_PIM

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=usb_descriptors.c "../i_PSD_program/Microchip/USB/CDC Device Driver/usb_function_cdc.c" ../i_PSD_program/Microchip/USB/usb_device.c main_CDC_I2C.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o ${OBJECTDIR}/_ext/1848812489/usb_device.o ${OBJECTDIR}/main_CDC_I2C.o
POSSIBLE_DEPFILES=${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o.d ${OBJECTDIR}/_ext/1848812489/usb_device.o.d ${OBJECTDIR}/main_CDC_I2C.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o ${OBJECTDIR}/_ext/1848812489/usb_device.o ${OBJECTDIR}/main_CDC_I2C.o

# Source Files
SOURCEFILES=usb_descriptors.c ../i_PSD_program/Microchip/USB/CDC Device Driver/usb_function_cdc.c ../i_PSD_program/Microchip/USB/usb_device.c main_CDC_I2C.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2550
MP_PROCESSOR_OPTION_LD=18f2550
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x3F4:0x3FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descriptors.o   usb_descriptors.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o: ../i_PSD_program/Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2106573380" 
	@${RM} ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o   "../i_PSD_program/Microchip/USB/CDC Device Driver/usb_function_cdc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1848812489/usb_device.o: ../i_PSD_program/Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1848812489" 
	@${RM} ${OBJECTDIR}/_ext/1848812489/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1848812489/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1848812489/usb_device.o   ../i_PSD_program/Microchip/USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1848812489/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1848812489/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_CDC_I2C.o: main_CDC_I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_CDC_I2C.o.d 
	@${RM} ${OBJECTDIR}/main_CDC_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_CDC_I2C.o   main_CDC_I2C.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_CDC_I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/main_CDC_I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descriptors.o   usb_descriptors.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descriptors.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o: ../i_PSD_program/Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2106573380" 
	@${RM} ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o   "../i_PSD_program/Microchip/USB/CDC Device Driver/usb_function_cdc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2106573380/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1848812489/usb_device.o: ../i_PSD_program/Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1848812489" 
	@${RM} ${OBJECTDIR}/_ext/1848812489/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1848812489/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1848812489/usb_device.o   ../i_PSD_program/Microchip/USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1848812489/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1848812489/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_CDC_I2C.o: main_CDC_I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_CDC_I2C.o.d 
	@${RM} ${OBJECTDIR}/main_CDC_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -I"../../../../../Apps/Microchip/Microchip/Include/USB" -I"../../../../../Apps/Microchip/Microchip/Include" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_CDC_I2C.o   main_CDC_I2C.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_CDC_I2C.o 
	@${FIXDEPS} "${OBJECTDIR}/main_CDC_I2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"C:/Program Files (x86)/Microchip/mplabc18/v3.47/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"C:/Program Files (x86)/Microchip/mplabc18/v3.47/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PulseForNeuronCircuit_3.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

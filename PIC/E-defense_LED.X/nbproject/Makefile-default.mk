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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=usb_descripter.c ../../../../Microchip/USB/usb_device.c "../../../../Microchip/USB/CDC Device Driver/usb_function_cdc.c" main_usb.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/usb_descripter.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o ${OBJECTDIR}/main_usb.o
POSSIBLE_DEPFILES=${OBJECTDIR}/usb_descripter.o.d ${OBJECTDIR}/_ext/926206843/usb_device.o.d ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o.d ${OBJECTDIR}/main_usb.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/usb_descripter.o ${OBJECTDIR}/_ext/926206843/usb_device.o ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o ${OBJECTDIR}/main_usb.o

# Source Files
SOURCEFILES=usb_descripter.c ../../../../Microchip/USB/usb_device.c ../../../../Microchip/USB/CDC Device Driver/usb_function_cdc.c main_usb.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2553
MP_PROCESSOR_OPTION_LD=18f2553
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x3F4:0x3FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/usb_descripter.o: usb_descripter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descripter.o.d 
	@${RM} ${OBJECTDIR}/usb_descripter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descripter.o   usb_descripter.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descripter.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descripter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/926206843" 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o   ../../../../Microchip/USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/926206843/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o: ../../../../Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1083301514" 
	@${RM} ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o   "../../../../Microchip/USB/CDC Device Driver/usb_function_cdc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_usb.o: main_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_usb.o.d 
	@${RM} ${OBJECTDIR}/main_usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_usb.o   main_usb.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_usb.o 
	@${FIXDEPS} "${OBJECTDIR}/main_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/usb_descripter.o: usb_descripter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb_descripter.o.d 
	@${RM} ${OBJECTDIR}/usb_descripter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/usb_descripter.o   usb_descripter.c 
	@${DEP_GEN} -d ${OBJECTDIR}/usb_descripter.o 
	@${FIXDEPS} "${OBJECTDIR}/usb_descripter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/926206843/usb_device.o: ../../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/926206843" 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/926206843/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/926206843/usb_device.o   ../../../../Microchip/USB/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/926206843/usb_device.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/926206843/usb_device.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o: ../../../../Microchip/USB/CDC\ Device\ Driver/usb_function_cdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1083301514" 
	@${RM} ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o   "../../../../Microchip/USB/CDC Device Driver/usb_function_cdc.c" 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1083301514/usb_function_cdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/main_usb.o: main_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main_usb.o.d 
	@${RM} ${OBJECTDIR}/main_usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -I"C:/Users/nano/Documents/Microchip/Include" -I"C:/Users/nano/Documents/Microchip/Include/USB" -I"C:/Program Files (x86)/Microchip/mplabc18/v3.47/h" -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/main_usb.o   main_usb.c 
	@${DEP_GEN} -d ${OBJECTDIR}/main_usb.o 
	@${FIXDEPS} "${OBJECTDIR}/main_usb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"C:/Program Files (x86)/Microchip/mplabc18/v3.47/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map" -l"C:/Program Files (x86)/Microchip/mplabc18/v3.47/lib"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/E-defense_LED.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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

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
CND_CONF=PIC32_USB_SK_GFXv3e_EX16_16PMP_VGA

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
OBJECTFILES=${OBJECTDIR}/_ext/1472/upload_screen.o ${OBJECTDIR}/_ext/803622919/Chart.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1472/comfort_screen.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/1472/gradient_screen.o ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1472/security_screen.o ${OBJECTDIR}/_ext/1472/performance_screen.o ${OBJECTDIR}/_ext/1472/lighting_screen.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/1472/energy_screen.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/549097302/usb_device.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ${OBJECTDIR}/_ext/1472/gfx_strings.o ${OBJECTDIR}/_ext/1472/timer_tick.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/803622919/EditBox.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1472/config_screen.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ${OBJECTDIR}/_ext/1472/main_screen.o ${OBJECTDIR}/_ext/1472/info_screen.o ${OBJECTDIR}/_ext/803622919/GroupBox.o ${OBJECTDIR}/_ext/1472/panel_screen.o ${OBJECTDIR}/_ext/1472/smallicons\ C32.o ${OBJECTDIR}/_ext/803622919/Transitions.o ${OBJECTDIR}/_ext/803622919/RadioButton.o


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
	${MAKE}  -f nbproject/Makefile-PIC32_USB_SK_GFXv3e_EX16_16PMP_VGA.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/upload_screen.o.d -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/upload_screen.o.d > ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/comfort_screen.o.d -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/comfort_screen.o.d > ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gradient_screen.o.d -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gradient_screen.o.d > ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o: ../gfx_resources_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d -o ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o ../gfx_resources_fonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d > ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/security_screen.o.d -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/security_screen.o.d > ${OBJECTDIR}/_ext/1472/security_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/security_screen.o.tmp ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/performance_screen.o.d -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/performance_screen.o.d > ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/lighting_screen.o.d -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/lighting_screen.o.d > ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/energy_screen.o.d -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/energy_screen.o.d > ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d > ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C32.o: ../Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ../Pictures\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d > ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_strings.o.d -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_strings.o.d > ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp
endif
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/timer_tick.o.d -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/timer_tick.o.d > ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d > ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/ChineseFonts.o: ../ChineseFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d -o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ../ChineseFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d > ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d > ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ../../../Board\ Support\ Package/TouchScreenAR1020.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d > ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d > ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d > ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/config_screen.o.d -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/config_screen.o.d > ${OBJECTDIR}/_ext/1472/config_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/config_screen.o.tmp ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/main_screen.o.d -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main_screen.o.d > ${OBJECTDIR}/_ext/1472/main_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main_screen.o.tmp ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/info_screen.o.d -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/info_screen.o.d > ${OBJECTDIR}/_ext/1472/info_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/info_screen.o.tmp ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/panel_screen.o.d -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/panel_screen.o.d > ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/smallicons\ C32.o: ../smallicons\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d -o ${OBJECTDIR}/_ext/1472/smallicons\ C32.o ../smallicons\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d > ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Transitions.o.d -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Transitions.o.d > ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/RadioButton.o.d > ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/upload_screen.o: ../upload_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/upload_screen.o.d -o ${OBJECTDIR}/_ext/1472/upload_screen.o ../upload_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/upload_screen.o.d > ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp ${OBJECTDIR}/_ext/1472/upload_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/upload_screen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Chart.o: ../../../Microchip/Graphics/Chart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Chart.o.d -o ${OBJECTDIR}/_ext/803622919/Chart.o ../../../Microchip/Graphics/Chart.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Chart.o.d > ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp ${OBJECTDIR}/_ext/803622919/Chart.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Chart.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1472/comfort_screen.o: ../comfort_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/comfort_screen.o.d -o ${OBJECTDIR}/_ext/1472/comfort_screen.o ../comfort_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/comfort_screen.o.d > ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp ${OBJECTDIR}/_ext/1472/comfort_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/comfort_screen.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/1472/gradient_screen.o: ../gradient_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gradient_screen.o.d -o ${OBJECTDIR}/_ext/1472/gradient_screen.o ../gradient_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gradient_screen.o.d > ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp ${OBJECTDIR}/_ext/1472/gradient_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gradient_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o: ../gfx_resources_fonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d -o ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o ../gfx_resources_fonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d > ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_resources_fonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/security_screen.o: ../security_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/security_screen.o.d -o ${OBJECTDIR}/_ext/1472/security_screen.o ../security_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/security_screen.o.d > ${OBJECTDIR}/_ext/1472/security_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/security_screen.o.tmp ${OBJECTDIR}/_ext/1472/security_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/security_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/performance_screen.o: ../performance_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/performance_screen.o.d -o ${OBJECTDIR}/_ext/1472/performance_screen.o ../performance_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/performance_screen.o.d > ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp ${OBJECTDIR}/_ext/1472/performance_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/performance_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/lighting_screen.o: ../lighting_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/lighting_screen.o.d -o ${OBJECTDIR}/_ext/1472/lighting_screen.o ../lighting_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/lighting_screen.o.d > ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp ${OBJECTDIR}/_ext/1472/lighting_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/lighting_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1472/energy_screen.o: ../energy_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/energy_screen.o.d -o ${OBJECTDIR}/_ext/1472/energy_screen.o ../energy_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/energy_screen.o.d > ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp ${OBJECTDIR}/_ext/1472/energy_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/energy_screen.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/pre_load_screen.o: ../pre_load_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d -o ${OBJECTDIR}/_ext/1472/pre_load_screen.o ../pre_load_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d > ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp ${OBJECTDIR}/_ext/1472/pre_load_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/pre_load_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/Pictures\ C32.o: ../Pictures\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d -o ${OBJECTDIR}/_ext/1472/Pictures\ C32.o ../Pictures\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d > ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Pictures\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/AnalogClock.o: ../../../Microchip/Graphics/AnalogClock.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d -o ${OBJECTDIR}/_ext/803622919/AnalogClock.o ../../../Microchip/Graphics/AnalogClock.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d > ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp ${OBJECTDIR}/_ext/803622919/AnalogClock.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/AnalogClock.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_strings.o: ../gfx_strings.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_strings.o.d -o ${OBJECTDIR}/_ext/1472/gfx_strings.o ../gfx_strings.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_strings.o.d > ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp ${OBJECTDIR}/_ext/1472/gfx_strings.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_strings.o.tmp
endif
${OBJECTDIR}/_ext/1472/timer_tick.o: ../timer_tick.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/timer_tick.o.d -o ${OBJECTDIR}/_ext/1472/timer_tick.o ../timer_tick.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/timer_tick.o.d > ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp ${OBJECTDIR}/_ext/1472/timer_tick.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/timer_tick.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1472/alpha_blend_screen.o: ../alpha_blend_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d -o ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o ../alpha_blend_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d > ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/alpha_blend_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/ChineseFonts.o: ../ChineseFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d -o ${OBJECTDIR}/_ext/1472/ChineseFonts.o ../ChineseFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d > ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp ${OBJECTDIR}/_ext/1472/ChineseFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/ChineseFonts.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Transitions_weak.o: ../../../Microchip/Graphics/Transitions_weak.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d -o ${OBJECTDIR}/_ext/803622919/Transitions_weak.o ../../../Microchip/Graphics/Transitions_weak.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d > ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions_weak.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o: ../../../Board\ Support\ Package/TouchScreenAR1020.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o ../../../Board\ Support\ Package/TouchScreenAR1020.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenAR1020.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/S1D13517.o: ../../../Microchip/Graphics/Drivers/S1D13517.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d -o ${OBJECTDIR}/_ext/1919882987/S1D13517.o ../../../Microchip/Graphics/Drivers/S1D13517.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d > ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp ${OBJECTDIR}/_ext/1919882987/S1D13517.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/S1D13517.o.tmp
endif
${OBJECTDIR}/_ext/1472/gfx_schemes.o: ../gfx_schemes.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d -o ${OBJECTDIR}/_ext/1472/gfx_schemes.o ../gfx_schemes.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d > ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp ${OBJECTDIR}/_ext/1472/gfx_schemes.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gfx_schemes.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
${OBJECTDIR}/_ext/803622919/EditBox.o: ../../../Microchip/Graphics/EditBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/EditBox.o.d -o ${OBJECTDIR}/_ext/803622919/EditBox.o ../../../Microchip/Graphics/EditBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/EditBox.o.d > ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp ${OBJECTDIR}/_ext/803622919/EditBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/EditBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1472/gol_callbacks.o: ../gol_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d -o ${OBJECTDIR}/_ext/1472/gol_callbacks.o ../gol_callbacks.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d > ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp ${OBJECTDIR}/_ext/1472/gol_callbacks.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/gol_callbacks.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1472/config_screen.o: ../config_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/config_screen.o.d -o ${OBJECTDIR}/_ext/1472/config_screen.o ../config_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/config_screen.o.d > ${OBJECTDIR}/_ext/1472/config_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/config_screen.o.tmp ${OBJECTDIR}/_ext/1472/config_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/config_screen.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
${OBJECTDIR}/_ext/1472/main_screen.o: ../main_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/main_screen.o.d -o ${OBJECTDIR}/_ext/1472/main_screen.o ../main_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/main_screen.o.d > ${OBJECTDIR}/_ext/1472/main_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/main_screen.o.tmp ${OBJECTDIR}/_ext/1472/main_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/main_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/info_screen.o: ../info_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/info_screen.o.d -o ${OBJECTDIR}/_ext/1472/info_screen.o ../info_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/info_screen.o.d > ${OBJECTDIR}/_ext/1472/info_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/info_screen.o.tmp ${OBJECTDIR}/_ext/1472/info_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/info_screen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GroupBox.o: ../../../Microchip/Graphics/GroupBox.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GroupBox.o.d -o ${OBJECTDIR}/_ext/803622919/GroupBox.o ../../../Microchip/Graphics/GroupBox.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GroupBox.o.d > ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp ${OBJECTDIR}/_ext/803622919/GroupBox.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GroupBox.o.tmp
endif
${OBJECTDIR}/_ext/1472/panel_screen.o: ../panel_screen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/panel_screen.o.d -o ${OBJECTDIR}/_ext/1472/panel_screen.o ../panel_screen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/panel_screen.o.d > ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp ${OBJECTDIR}/_ext/1472/panel_screen.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/panel_screen.o.tmp
endif
${OBJECTDIR}/_ext/1472/smallicons\ C32.o: ../smallicons\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d -o ${OBJECTDIR}/_ext/1472/smallicons\ C32.o ../smallicons\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d > ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/smallicons\ C32.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Transitions.o: ../../../Microchip/Graphics/Transitions.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Transitions.o.d -o ${OBJECTDIR}/_ext/803622919/Transitions.o ../../../Microchip/Graphics/Transitions.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Transitions.o.d > ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp ${OBJECTDIR}/_ext/803622919/Transitions.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Transitions.o.tmp
endif
${OBJECTDIR}/_ext/803622919/RadioButton.o: ../../../Microchip/Graphics/RadioButton.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/RadioButton.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3e_PIC32_SK_16PMP_VGAv1 -I".." -I"../../common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/RadioButton.o.d -o ${OBJECTDIR}/_ext/803622919/RadioButton.o ../../../Microchip/Graphics/RadioButton.c  
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=4000,--defsym=_min_stack_size=4000 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4000,--defsym=_min_stack_size=4000
	${MP_CC_DIR}\\pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf  
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC32_USB_SK_GFXv3e_EX16_16PMP_VGA
	${RM} -r dist/PIC32_USB_SK_GFXv3e_EX16_16PMP_VGA

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

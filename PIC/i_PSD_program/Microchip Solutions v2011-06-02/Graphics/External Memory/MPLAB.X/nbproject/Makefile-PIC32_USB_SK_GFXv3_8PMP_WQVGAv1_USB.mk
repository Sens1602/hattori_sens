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
CND_CONF=PIC32_USB_SK_GFXv3_8PMP_WQVGAv1_USB

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
OBJECTFILES=${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ${OBJECTDIR}/_ext/549097302/usb_device.o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1472/internalfont\ C32.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/1472/externalref.o ${OBJECTDIR}/_ext/1472/usb_callback.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o


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
	${MAKE}  -f nbproject/Makefile-PIC32_USB_SK_GFXv3_8PMP_WQVGAv1_USB.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

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
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o: ../internalbitmap\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o ../internalbitmap\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1472/internalfont\ C32.o: ../internalfont\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C32.o ../internalfont\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1472/externalref.o: ../externalref.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
else
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1473877872/usb_function_generic.o: ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1473877872 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d -o ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o ../../../Microchip/USB/Generic\ Device\ Driver/usb_function_generic.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d > ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${CP} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.d 
	${RM} ${OBJECTDIR}/_ext/1473877872/usb_function_generic.o.tmp
endif
${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o: ../internalbitmap\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d -o ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o ../internalbitmap\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d > ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/internalbitmap\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_descriptors.o: ../usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d -o ${OBJECTDIR}/_ext/1472/usb_descriptors.o ../usb_descriptors.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d > ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp ${OBJECTDIR}/_ext/1472/usb_descriptors.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_descriptors.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o: ../../Common/FlashProgrammer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d -o ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o ../../Common/FlashProgrammer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d > ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/FlashProgrammer.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt.o: ../../Common/comm_pkt.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt.o ../../Common/comm_pkt.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39LF400.o: ../../../Board\ Support\ Package/SST39LF400.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39LF400.o ../../../Board\ Support\ Package/SST39LF400.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d > ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39LF400.o.tmp
endif
${OBJECTDIR}/_ext/549097302/usb_device.o: ../../../Microchip/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/549097302 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/549097302/usb_device.o.d -o ${OBJECTDIR}/_ext/549097302/usb_device.o ../../../Microchip/USB/usb_device.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/549097302/usb_device.o.d > ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${CP} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp ${OBJECTDIR}/_ext/549097302/usb_device.o.d 
	${RM} ${OBJECTDIR}/_ext/549097302/usb_device.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST39VF040.o: ../../../Board\ Support\ Package/SST39VF040.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d -o ${OBJECTDIR}/_ext/1687970324/SST39VF040.o ../../../Board\ Support\ Package/SST39VF040.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d > ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST39VF040.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1472/internalfont\ C32.o: ../internalfont\ C32.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d -o ${OBJECTDIR}/_ext/1472/internalfont\ C32.o ../internalfont\ C32.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d > ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/internalfont\ C32.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/1472/externalref.o: ../externalref.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/externalref.o.d -o ${OBJECTDIR}/_ext/1472/externalref.o ../externalref.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/externalref.o.d > ${OBJECTDIR}/_ext/1472/externalref.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/externalref.o.tmp ${OBJECTDIR}/_ext/1472/externalref.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/externalref.o.tmp
endif
${OBJECTDIR}/_ext/1472/usb_callback.o: ../usb_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/usb_callback.o.d -o ${OBJECTDIR}/_ext/1472/usb_callback.o ../usb_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/usb_callback.o.d > ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp ${OBJECTDIR}/_ext/1472/usb_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/usb_callback.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o: ../../Common/comm_pkt_callback.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/2049610667 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_PIC32_SK_8PMP_WQVGAv1 -I"../" -I"../../Common" -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -Wall -MMD -MF ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d -o ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o ../../Common/comm_pkt_callback.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d > ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${CP} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.d 
	${RM} ${OBJECTDIR}/_ext/2049610667/comm_pkt_callback.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1 
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
	${RM} -r build/PIC32_USB_SK_GFXv3_8PMP_WQVGAv1_USB
	${RM} -r dist/PIC32_USB_SK_GFXv3_8PMP_WQVGAv1_USB

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

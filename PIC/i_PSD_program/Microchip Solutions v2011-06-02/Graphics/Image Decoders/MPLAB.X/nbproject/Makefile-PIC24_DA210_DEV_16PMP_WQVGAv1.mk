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
CND_CONF=PIC24_DA210_DEV_16PMP_WQVGAv1

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
OBJECTFILES=${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1472/FlashImage.o ${OBJECTDIR}/_ext/1472/Application.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1472/FlashImageData.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1626048738/jidctint.o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o


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
MP_CC=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-gcc.exe
# MP_BC is not defined
MP_AS=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-as.exe
MP_LD=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-ld.exe
MP_AR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin\\pic30-ar.exe
# MP_BC is not defined
MP_CC_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
MP_AS_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
MP_LD_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
MP_AR_DIR=C:\\Program\ Files\\Microchip\\MPLAB\ C30\\bin
# MP_BC_DIR is not defined
.build-conf: ${BUILD_SUBPROJECTS}
ifneq ($(OS_CURRENT),$(OS_ORIGINAL))
	@echo "***** WARNING: This make file contains OS dependent code. The OS this makefile is being run is different from the OS it was created in."
endif
	${MAKE}  -f nbproject/Makefile-PIC24_DA210_DEV_16PMP_WQVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ256DA210
MP_LINKER_FILE_OPTION=,-Tp24FJ256DA210.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1472/FlashImage.o: ../FlashImage.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
endif
${OBJECTDIR}/_ext/1472/Application.o: ../Application.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/1472/FlashImageData.o: ../FlashImageData.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
else
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOLFontDefault.o: ../../../Microchip/Graphics/GOLFontDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1472/FlashImage.o: ../FlashImage.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImage.o.d -o ${OBJECTDIR}/_ext/1472/FlashImage.o ../FlashImage.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImage.o.d > ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp ${OBJECTDIR}/_ext/1472/FlashImage.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImage.o.tmp
endif
${OBJECTDIR}/_ext/1472/Application.o: ../Application.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Application.o.d -o ${OBJECTDIR}/_ext/1472/Application.o ../Application.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Application.o.d > ${OBJECTDIR}/_ext/1472/Application.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/Application.o.tmp ${OBJECTDIR}/_ext/1472/Application.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/Application.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/1472/FlashImageData.o: ../FlashImageData.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/FlashImageData.o.d -o ${OBJECTDIR}/_ext/1472/FlashImageData.o ../FlashImageData.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/FlashImageData.o.d > ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp ${OBJECTDIR}/_ext/1472/FlashImageData.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/FlashImageData.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d > ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/jidctint.o: ../../../Microchip/Image\ Decoders/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/jidctint.o.d -o ${OBJECTDIR}/_ext/1626048738/jidctint.o ../../../Microchip/Image\ Decoders/jidctint.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/jidctint.o.d > ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp ${OBJECTDIR}/_ext/1626048738/jidctint.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/jidctint.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/GifDecoder.o: ../../../Microchip/Image\ Decoders/GifDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/GifDecoder.o ../../../Microchip/Image\ Decoders/GifDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/GifDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/BmpDecoder.o: ../../../Microchip/Image\ Decoders/BmpDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o ../../../Microchip/Image\ Decoders/BmpDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/BmpDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/ImageDecoder.o: ../../../Microchip/Image\ Decoders/ImageDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o ../../../Microchip/Image\ Decoders/ImageDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/ImageDecoder.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -mlarge-code -mlarge-arrays -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o ../../../Microchip/Graphics/Drivers/mchpGfxDrvBuffer.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d > ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrvBuffer.o.tmp
endif
${OBJECTDIR}/_ext/1626048738/JpegDecoder.o: ../../../Microchip/Image\ Decoders/JpegDecoder.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1626048738 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_DA210_BRD_16PMP_WQVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d -o ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o ../../../Microchip/Image\ Decoders/JpegDecoder.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d > ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${CP} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.d 
	${RM} ${OBJECTDIR}/_ext/1626048738/JpegDecoder.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_DA210_DEV_16PMP_WQVGAv1
	${RM} -r dist/PIC24_DA210_DEV_16PMP_WQVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

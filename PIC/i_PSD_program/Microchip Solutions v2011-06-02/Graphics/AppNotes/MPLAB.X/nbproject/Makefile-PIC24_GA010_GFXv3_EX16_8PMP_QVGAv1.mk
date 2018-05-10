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
CND_CONF=PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1

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
OBJECTFILES=${OBJECTDIR}/_ext/1472/AN1136Demo.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ${OBJECTDIR}/_ext/803622919/Button.o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ${OBJECTDIR}/_ext/803622919/TextEntry.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ${OBJECTDIR}/_ext/803622919/StaticText.o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/803622919/Slider.o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o ${OBJECTDIR}/_ext/1687970324/Beep.o ${OBJECTDIR}/_ext/803622919/GOL.o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o


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
	${MAKE}  -f nbproject/Makefile-PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,-Tp24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/AN1136Demo.o: ../AN1136Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
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
${OBJECTDIR}/_ext/1472/HelloWorldFonts.o: ../HelloWorldFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1182Demo.o: ../AN1182Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
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
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o: ../AppNotesDemoResources\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o ../AppNotesDemoResources\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
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
${OBJECTDIR}/_ext/1472/AppNotesDemo.o: ../AppNotesDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1227Demo.o: ../AN1227Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
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
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o: ../AN1136\ Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o ../AN1136\ Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
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
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
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
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
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
${OBJECTDIR}/_ext/1472/AN1246Demo.o: ../AN1246Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o: ../AN1182\ Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o ../AN1182\ Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
endif
else
${OBJECTDIR}/_ext/1472/AN1136Demo.o: ../AN1136Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1136Demo.o ../AN1136Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1136Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136Demo.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
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
${OBJECTDIR}/_ext/1472/HelloWorldFonts.o: ../HelloWorldFonts.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d -o ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o ../HelloWorldFonts.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d > ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/HelloWorldFonts.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/drv_spi.o: ../../../Board\ Support\ Package/drv_spi.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d -o ${OBJECTDIR}/_ext/1687970324/drv_spi.o ../../../Board\ Support\ Package/drv_spi.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d > ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp ${OBJECTDIR}/_ext/1687970324/drv_spi.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/drv_spi.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreen.o: ../../../Board\ Support\ Package/TouchScreen.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreen.o ../../../Board\ Support\ Package/TouchScreen.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreen.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Button.o: ../../../Microchip/Graphics/Button.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Button.o.d -o ${OBJECTDIR}/_ext/803622919/Button.o ../../../Microchip/Graphics/Button.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Button.o.d > ${OBJECTDIR}/_ext/803622919/Button.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Button.o.tmp ${OBJECTDIR}/_ext/803622919/Button.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Button.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1182Demo.o: ../AN1182Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1182Demo.o ../AN1182Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1182Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182Demo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/TextEntry.o: ../../../Microchip/Graphics/TextEntry.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/TextEntry.o.d -o ${OBJECTDIR}/_ext/803622919/TextEntry.o ../../../Microchip/Graphics/TextEntry.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/TextEntry.o.d > ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp ${OBJECTDIR}/_ext/803622919/TextEntry.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/TextEntry.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
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
${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o: ../../../Microchip/Graphics/GOLSchemeDefault.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o ../../../Microchip/Graphics/GOLSchemeDefault.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d > ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOLSchemeDefault.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o: ../../../Board\ Support\ Package/TouchScreenResistive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d -o ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o ../../../Board\ Support\ Package/TouchScreenResistive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d > ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/TouchScreenResistive.o.tmp
endif
${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o: ../AppNotesDemoResources\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o ../AppNotesDemoResources\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemoResources\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
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
${OBJECTDIR}/_ext/1472/AppNotesDemo.o: ../AppNotesDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d -o ${OBJECTDIR}/_ext/1472/AppNotesDemo.o ../AppNotesDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d > ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AppNotesDemo.o.tmp
endif
${OBJECTDIR}/_ext/803622919/StaticText.o: ../../../Microchip/Graphics/StaticText.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/StaticText.o.d -o ${OBJECTDIR}/_ext/803622919/StaticText.o ../../../Microchip/Graphics/StaticText.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/StaticText.o.d > ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp ${OBJECTDIR}/_ext/803622919/StaticText.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/StaticText.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1227Demo.o: ../AN1227Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1227Demo.o ../AN1227Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1227Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1227Demo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/SST25VF016.o: ../../../Board\ Support\ Package/SST25VF016.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d -o ${OBJECTDIR}/_ext/1687970324/SST25VF016.o ../../../Board\ Support\ Package/SST25VF016.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d > ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/SST25VF016.o.tmp
endif
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o.d -o ${OBJECTDIR}/_ext/803622919/GOLFontDefault.o ../../../Microchip/Graphics/GOLFontDefault.c  
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
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
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
${OBJECTDIR}/_ext/803622919/Slider.o: ../../../Microchip/Graphics/Slider.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Slider.o.d -o ${OBJECTDIR}/_ext/803622919/Slider.o ../../../Microchip/Graphics/Slider.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/Slider.o.d > ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp ${OBJECTDIR}/_ext/803622919/Slider.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Slider.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o: ../AN1136\ Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o ../AN1136\ Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1136\ Pictures\ C30.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/Beep.o: ../../../Board\ Support\ Package/Beep.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/Beep.o.d -o ${OBJECTDIR}/_ext/1687970324/Beep.o ../../../Board\ Support\ Package/Beep.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/Beep.o.d > ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp ${OBJECTDIR}/_ext/1687970324/Beep.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/Beep.o.tmp
endif
${OBJECTDIR}/_ext/803622919/GOL.o: ../../../Microchip/Graphics/GOL.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/GOL.o.d -o ${OBJECTDIR}/_ext/803622919/GOL.o ../../../Microchip/Graphics/GOL.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/803622919/GOL.o.d > ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp ${OBJECTDIR}/_ext/803622919/GOL.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/GOL.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o: ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o.d -o ${OBJECTDIR}/_ext/1919882987/mchpGfxDrv.o ../../../Microchip/Graphics/Drivers/mchpGfxDrv.c  
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
${OBJECTDIR}/_ext/1919882987/drvTFT001.o: ../../../Microchip/Graphics/Drivers/drvTFT001.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/drvTFT001.o.d -o ${OBJECTDIR}/_ext/1919882987/drvTFT001.o ../../../Microchip/Graphics/Drivers/drvTFT001.c  
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
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
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
${OBJECTDIR}/_ext/1472/AN1246Demo.o: ../AN1246Demo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d -o ${OBJECTDIR}/_ext/1472/AN1246Demo.o ../AN1246Demo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d > ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp ${OBJECTDIR}/_ext/1472/AN1246Demo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1246Demo.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o: ../../../Board\ Support\ Package/MCHP25LC256.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d -o ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o ../../../Board\ Support\ Package/MCHP25LC256.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d > ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/MCHP25LC256.o.tmp
endif
${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o: ../AN1182\ Pictures\ C30.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I"../../../Board Support Package" -I".." -I"../../../Microchip/Include" -I"../../../Microchip/Include/Graphics" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d -o ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o ../AN1182\ Pictures\ C30.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp}
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d > ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/AN1182\ Pictures\ C30.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=3000,-L"../../../../../../Program Files/Microchip/MPLAB C30/lib",-Map="$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1
	${RM} -r dist/PIC24_GA010_GFXv3_EX16_8PMP_QVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

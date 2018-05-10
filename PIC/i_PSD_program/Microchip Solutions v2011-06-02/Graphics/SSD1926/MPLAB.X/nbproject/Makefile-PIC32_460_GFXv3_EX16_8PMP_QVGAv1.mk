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
CND_CONF=PIC32_460_GFXv3_EX16_8PMP_QVGAv1

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
OBJECTFILES=${OBJECTDIR}/_ext/803622919/Primitive.o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ${OBJECTDIR}/_ext/1687970324/cpld.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ${OBJECTDIR}/_ext/1788384718/FSIO.o


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
	${MAKE}  -f nbproject/Makefile-PIC32_460_GFXv3_EX16_8PMP_QVGAv1.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=32MX460F512L
MP_LINKER_FILE_OPTION=
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
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o: ../SSD1926_SDCard.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d -o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o ../SSD1926_SDCard.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d > ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp
endif
${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o: ../SSD1926_JPEG.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d -o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ../SSD1926_JPEG.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d > ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/FSIO.o.d -o ${OBJECTDIR}/_ext/1788384718/FSIO.o ../../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
endif
else
${OBJECTDIR}/_ext/803622919/Primitive.o: ../../../Microchip/Graphics/Primitive.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/803622919 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/803622919/Primitive.o.d -o ${OBJECTDIR}/_ext/803622919/Primitive.o ../../../Microchip/Graphics/Primitive.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/803622919/Primitive.o.d > ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${CP} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp ${OBJECTDIR}/_ext/803622919/Primitive.o.d 
	${RM} ${OBJECTDIR}/_ext/803622919/Primitive.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o: ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d -o ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o ../../../Microchip/Graphics/Drivers/TCON_SSD1289.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d > ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/TCON_SSD1289.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/SSD1926.o: ../../../Microchip/Graphics/Drivers/SSD1926.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d -o ${OBJECTDIR}/_ext/1919882987/SSD1926.o ../../../Microchip/Graphics/Drivers/SSD1926.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d > ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp ${OBJECTDIR}/_ext/1919882987/SSD1926.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/SSD1926.o.tmp
endif
${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o: ../SSD1926_SDCard.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d -o ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o ../SSD1926_SDCard.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d > ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_SDCard.o.tmp
endif
${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o: ../SSD1926_JPEG.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d -o ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o ../SSD1926_JPEG.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d > ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/SSD1926_JPEG.o.tmp
endif
${OBJECTDIR}/_ext/1687970324/cpld.o: ../../../Board\ Support\ Package/cpld.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1687970324 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1687970324/cpld.o.d -o ${OBJECTDIR}/_ext/1687970324/cpld.o ../../../Board\ Support\ Package/cpld.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1687970324/cpld.o.d > ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${CP} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp ${OBJECTDIR}/_ext/1687970324/cpld.o.d 
	${RM} ${OBJECTDIR}/_ext/1687970324/cpld.o.tmp
endif
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1472 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1860783399 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ../../../Microchip/Common/TimeDelay.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d > ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${CP} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.tmp
endif
${OBJECTDIR}/_ext/1919882987/gfxepmp.o: ../../../Microchip/Graphics/Drivers/gfxepmp.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1919882987 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d -o ${OBJECTDIR}/_ext/1919882987/gfxepmp.o ../../../Microchip/Graphics/Drivers/gfxepmp.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d > ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${CP} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.d 
	${RM} ${OBJECTDIR}/_ext/1919882987/gfxepmp.o.tmp
endif
${OBJECTDIR}/_ext/1788384718/FSIO.o: ../../../Microchip/MDD\ File\ System/FSIO.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1788384718 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE)  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DCFG_INCLUDE_MPLAB_X -DCFG_INCLUDE_GFXv3_EX16_8PMP_QVGAv1 -I".." -I"../../../Board Support Package" -I"../../../Microchip/Include" -Os -MMD -MF ${OBJECTDIR}/_ext/1788384718/FSIO.o.d -o ${OBJECTDIR}/_ext/1788384718/FSIO.o ../../../Microchip/MDD\ File\ System/FSIO.c  
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	 sed -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1788384718/FSIO.o.d > ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${CP} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp ${OBJECTDIR}/_ext/1788384718/FSIO.o.d 
	${RM} ${OBJECTDIR}/_ext/1788384718/FSIO.o.tmp
endif
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1 
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
	${RM} -r build/PIC32_460_GFXv3_EX16_8PMP_QVGAv1
	${RM} -r dist/PIC32_460_GFXv3_EX16_8PMP_QVGAv1

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

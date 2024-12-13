###############################################################################
## General Envirionmental Set 
###############################################################################
set SHELL = /bin/csh
limit coredumpsize unlimited

umask 022 # chmod 755 default set
setenv LANG C
setenv CDS_LIC_FILE 5280@localhost
setenv LM_LICENSE_FILE {$CDS_LIC_FILE}
setenv CDS_LIC_ONLY 1
setenv CDS_INST_DIR /eda_tools/cadence
set path=(/usr/lib64/qt-3.3/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin )
setenv LD_LIBRARY_PATH /usr/lib:/usr/:/lib:/lib64
###############################################################################

###############################################################################
## Cadence Semi Custom Solution
###############################################################################
#1. XCELIUM env config ##
setenv XCELIUM_ROOT {$CDS_INST_DIR}/XCELIUM2303
#setenv XCELIUM_ROOT {$CDS_INST_DIR}/XCELIUM2309
setenv CDS_AUTO_64BIT ALL
set path = ( $path {$XCELIUM_ROOT}/tools/bin/64bit {$XCELIUM_ROOT}/tools/bin )
#set path = ( $path $XCELIUM_ROOT/tools/bin $XCELIUM_ROOT/tools/cdsgcc/gcc/bin )
	# 1.1. Verisium Debuuger Connection
	setenv VERISIUM_DEBUG_ROOT {$CDS_INST_DIR}/VERISIUMDEBUG2303

#2. Digital Design Implementation
setenv DDI_ROOT {$CDS_INST_DIR}/DDI221
set path = ( $path {$DDI_ROOT}/bin )
setenv OA_HOME $DDI_ROOT/INNOVUS221/oa_v22.60.095

#3. LEC(Logical Equivalence Check)
setenv CONFRML_ROOT {$CDS_INST_DIR}/CONFRML221
set path = ( $path {$CONFRML_ROOT}/bin )


#4. SSV(Silicon Singoff and Verification)
setenv SSV_ROOT {$CDS_INST_DIR}/SSV221
set path = ( $path {$SSV_ROOT}/bin )


#5. Stratus HLS IDE
setenv STRATUS_ROOT {$CDS_INST_DIR}/STRATUS213
set path = ( $path {$STRATUS_ROOT}/bin )


#6. sign-off
setenv PVS_HOME $CDS_INST_DIR/PVS221
set path=( $path {$PVS_HOME}//bin {$PVS_HOME}/tools/bin )
setenv SUBSTRATESTORHOME $PVS_HOME

#7. LPE
setenv QRC_HOME $CDS_INST_DIR/QUANTUS212
set path=( $path {$QRC_HOME}/bin )
setenv QRC_ENABLE_EXTRACTION





#setenv LANG en_US.UTF-8

#setenv CDS_Netlisting_Mode Analog
#setenv CDS_PALETTE_TYPE MultiAssistance

echo "Welcome to Hell"

alias cl 'clear'
alias ll 'ls -al'



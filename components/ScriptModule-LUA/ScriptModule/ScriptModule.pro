######################################################################
# Automatically generated by qmake (2.01a) ?? ?? 24 16:29:36 2014
######################################################################

TEMPLATE = lib
TARGET = scriptmodule-lua

!LIB_ALL:!COM_LIB{
	RC_FILE += ScriptModule-Lua.rc
}
else{
	CONFIG += staticlib
}

DEPENDPATH += . exports
INCLUDEPATH += . \
			   ../lua-51 \
			   ../../../soui/include \
			   ../../../utilities/include \


dir = ../../..
include($$dir/common.pri)


CONFIG(debug,debug|release){
	LIBS += lua-51d.lib souid.lib utilitiesd.lib
}
else{
	LIBS += lua-51.lib soui.lib utilities.lib
}
scriptmodule-lua.depends = utilities soui lua-51

PRECOMPILED_HEADER = stdafx.h

# Input
HEADERS += require.h \
           ScriptModule-Lua.h \
           exports/exp_app.h \
           exports/exp_Basic.h \
           exports/exp_eventArgs.h \
           exports/exp_hostwnd.h \
           exports/exp_msgbox.h \
           exports/exp_pugixml.h \
           exports/exp_ResProvider.h \
           exports/exp_ScriptModule.h \
           exports/exp_strcpcvt.h \
           exports/exp_string.h \
           exports/exp_Window.h \
           exports/exp_Object.h \
           exports/exp_ctrls.h \
           ../lua_tinker/lua_tinker.h

SOURCES += ScriptModule-Lua.cpp \
           exports/exp_soui.cpp \
           ../lua_tinker/lua_tinker.cpp

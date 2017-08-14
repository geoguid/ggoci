TARGET = ggoci

SOURCES = main.cpp
OTHER_FILES += ggoci.json
include(../../../sql/drivers/oci/qsql_oci.pri)

PLUGIN_CLASS_NAME = QOCIDriverPlugin
include(../qsqldriverbase.pri)
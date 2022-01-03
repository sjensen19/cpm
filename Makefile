COMPILER = dart

FILENAME = cpm.dart

OUTPUTDIR = build
OUTPUTFILE = cpm

OUTPUT = ${OUTPUTDIR}/${OUTPUTFILE}

TARGET = exe

build_project:
	${COMPILER} compile ${TARGET} ${FILENAME} -o ${OUTPUT}
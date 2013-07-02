#!/bin/bash
CURDIR="$0"
if [[ ${CURDIR} = -* ]];
then
    CURDIR=${BASH_SOURCE[0]}
fi

BASEDIR="`dirname ${CURDIR}`/.."

GRINDER_PROPERTIES=${BASEDIR}/conf/grinder.properties
export GRINDER_PROPERTIES

## SETS CLASSPATH
CLASSPATH=${BASEDIR}/config
if [ -d ${BASEDIR}/lib ]
then
    for i in `find ${BASEDIR}/lib -name "*.jar"`
    do
      CLASSPATH=${CLASSPATH}:${i}
    done
fi

echo $CLASSPATH


export CLASSPATH


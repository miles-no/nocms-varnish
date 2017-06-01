#!/bin/sh
varnishd -s malloc,${MEMORY_LIMIT} -f ${VCL_PATH} ${VARNISH_OPTS}
sleep 1
varnishlog

#!/bin/sh
varnishd -F -s malloc,${MEMORY_LIMIT} -f ${VCL_PATH} ${VARNISH_OPTS}

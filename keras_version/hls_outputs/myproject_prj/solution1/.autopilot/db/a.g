#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /storage/sa21722/stablediffusion/keras_version/hls_outputs/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
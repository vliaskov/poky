#See https://git.openembedded.org/openembedded-core/commit/?id=30cc9f5192436f5498ff9c55c0545eebb50fa423
LICENSE = "GPLv2+"
PACKAGECONFIG[libkeyutils] = "--enable-libkeyutils,--disable-libkeyutils,keyutils"
PACKAGECONFIG:remove = "libkeyutils"

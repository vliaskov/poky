# Explicitly disable econf to prevent host contamination leaks
# Force configure to skip libeconf auto-detection by mocking a negative result
# Force the Autotools macro to believe libeconf does not exist on both target and native host builds
# Override the leaked host macro at the compiler level for the host tool
# Cover the target compilation just in case the leak cascades there
# See https://patchwork.yoctoproject.org/project/oe-core/patch/20251203062704.138197-1-changqing.li@windriver.com/
CACHED_CONFIGUREVARS:class-native += "ac_cv_lib_econf_econf_readDirs=no"


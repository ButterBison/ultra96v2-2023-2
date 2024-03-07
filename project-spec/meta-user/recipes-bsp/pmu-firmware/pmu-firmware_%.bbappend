#Add debug for PMUFW
#XSCTH_BUILD_DEBUG = "1"

ULTRA96_VERSION = "2"
YAML_COMPILER_FLAGS:append:ultra96-zynqmp = "-DENABLE_MOD_ULTRA96 -DENABLE_SCHEDULER"
YAML_COMPILER_FLAGS:append:ultra96-zynqmp = "${@bb.utils.contains('ULTRA96_VERSION', '2', ' -DULTRA96_VERSION=2', ' -DULTRA96_VERSION=1', d)}"

YAML_COMPILER_FLAGS:append:zub1cg-sbc = "-DENABLE_MOD_ULTRA96 -DENABLE_SCHEDULER"
YAML_COMPILER_FLAGS:append:zub1cg-sbc = "${@bb.utils.contains('ULTRA96_VERSION', '2', ' -DULTRA96_VERSION=2', ' -DULTRA96_VERSION=1', d)}"
YAML_COMPILER_FLAGS:append:zub1cg-sbc = " -DBOARD_SHUTDOWN_PIN=2 -DBOARD_SHUTDOWN_PIN_STATE=0"


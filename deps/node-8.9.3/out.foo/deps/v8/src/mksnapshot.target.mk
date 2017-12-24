# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := mksnapshot
DEFS_Debug := \
	'-DV8_GYP_BUILD' \
	'-DV8_TARGET_ARCH_IA32' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT' \
	'-Dv8_promise_internal_field_count' \
	'-D_GLIBCXX_USE_C99_MATH' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DV8_TRACE_MAPS' \
	'-DENABLE_HANDLE_ZAPPING' \
	'-DENABLE_SLOW_DCHECKS' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m32 \
	-fPIC \
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/. \
	-I$(srcdir)/deps/v8/include

DEFS_Release := \
	'-DV8_GYP_BUILD' \
	'-DV8_TARGET_ARCH_IA32' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_PROMISE_INTERNAL_FIELD_COUNT' \
	'-Dv8_promise_internal_field_count' \
	'-D_GLIBCXX_USE_C99_MATH'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m32 \
	-fPIC \
	-msse2 \
	-mfpmath=sse \
	-mmmx \
	-m32 \
	-fdata-sections \
	-ffunction-sections \
	-O2 \
	-fno-omit-frame-pointer \
	-fPIE

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I$(srcdir)/deps/v8 \
	-I$(srcdir)/. \
	-I$(srcdir)/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/deps/v8/src/snapshot/mksnapshot.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/v8/src/libv8_base.a $(obj).target/deps/v8/src/libv8_builtins_setup.a $(obj).target/deps/v8/src/libv8_libbase.a $(obj).target/deps/v8/src/libv8_libplatform.a $(obj).target/deps/v8/src/libv8_nosnapshot.a $(obj).target/deps/v8/src/libv8_libsampler.a $(obj).target/deps/v8/src/inspector/protocol_generated_sources.stamp $(obj).target/deps/v8/src/inspector/protocol_compatibility.stamp $(obj).target/deps/v8/src/inspector/inspector_injected_script.stamp $(obj).target/deps/v8/src/inspector/inspector_debugger_script.stamp $(obj).target/deps/v8/src/libv8_builtins_generators.a $(obj).target/deps/v8/src/js2c.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-rdynamic \
	-m32 \
	-m32

LDFLAGS_Release := \
	-rdynamic \
	-m32 \
	-m32 \
	-fPIE \
	-pie

LIBS := \
	-llog

#$(builddir)/mksnapshot: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
#$(builddir)/mksnapshot: LIBS := $(LIBS)
#$(builddir)/mksnapshot: LD_INPUTS := $(OBJS) $(obj).target/deps/v8/src/libv8_base.a $(obj).target/deps/v8/src/libv8_builtins_setup.a $(obj).target/deps/v8/src/libv8_libbase.a $(obj).target/deps/v8/src/libv8_libplatform.a $(obj).target/deps/v8/src/libv8_nosnapshot.a $(obj).target/deps/v8/src/libv8_libsampler.a $(obj).target/deps/v8/src/libv8_builtins_generators.a
#$(builddir)/mksnapshot: TOOLSET := $(TOOLSET)
#$(builddir)/mksnapshot: $(OBJS) $(obj).target/deps/v8/src/libv8_base.a $(obj).target/deps/v8/src/libv8_builtins_setup.a $(obj).target/deps/v8/src/libv8_libbase.a $(obj).target/deps/v8/src/libv8_libplatform.a $(obj).target/deps/v8/src/libv8_nosnapshot.a $(obj).target/deps/v8/src/libv8_libsampler.a $(obj).target/deps/v8/src/libv8_builtins_generators.a FORCE_DO_CMD
#	$(call do_cmd,link)

all_deps += $(builddir)/mksnapshot
# Add target alias
.PHONY: mksnapshot
mksnapshot: $(builddir)/mksnapshot

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/mksnapshot


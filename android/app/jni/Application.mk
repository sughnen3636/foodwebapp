# Application.mk - Global settings for all native modules

# ---------------------------------------------------------
# Set minimum Android API level
# ---------------------------------------------------------
APP_PLATFORM := android-21

# ---------------------------------------------------------
# Target CPU ABIs
# Flutter supports only armeabi-v7a and arm64-v8a
# Exclude x86/x86_64 since Flutter doesn't build them
# ---------------------------------------------------------
APP_ABI := arm64-v8a armeabi-v7a

# ---------------------------------------------------------
# Page size alignment (important for 16KB page-size devices)
# Ensures native .so files work properly on modern devices
# ---------------------------------------------------------
APP_LDFLAGS := -Wl,--max-page-size=16384

# ---------------------------------------------------------
# C++ configuration
# Enable exceptions & RTTI (required by most C++ libs)
# ---------------------------------------------------------
APP_CPPFLAGS := -fexceptions -frtti

# ---------------------------------------------------------
# Use LLVM's libc++ shared library
# Required for Flutter engine and most modern C++ libs
# ---------------------------------------------------------
APP_STL := c++_shared

# ---------------------------------------------------------
# ARM optimizations
# Enable NEON SIMD instructions for faster math & graphics
# ---------------------------------------------------------
APP_ARM_NEON := true

# ---------------------------------------------------------
# Build type
# Can be: release, debug, or both
# ---------------------------------------------------------
APP_OPTIM := release

#!/bin/bash
set -eu

if [ "$( arch )" = "armv7l" ]; then
  scons -j4 platform=server target=release_debug tools=yes use_llvm=yes CCFLAGS="-mcpu=cortex-a72 -mtune=cortex-a72 -mfpu=neon-fp-armv8 -mfloat-abi=hard -mlittle-endian -munaligned-access"
else
  scons -j4 platform=server target=release_debug tools=yes use_llvm=yes
fi
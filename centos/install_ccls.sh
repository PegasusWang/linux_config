# ccls https://github.com/MaskRay/ccls/wiki/Build

git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls

# Download "Pre-Built Binaries" from https://releases.llvm.org/download.html
# and unpack to /path/to/clang+llvm-xxx.
# Do not unpack to a temporary directory, as the clang resource directory is hard-coded
# into ccls at compile time!
# See https://github.com/MaskRay/ccls/wiki/FAQ#verify-the-clang-resource-directory-is-correct
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=/path/to/clang+llvm-xxx
cmake --build Release

cmake -H. -BRelease -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_CXX_FLAGS="--gcc-toolchain=$HOME/.local" -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=lld -DCMAKE_PREFIX_PATH="$LLVM/Release;$LLVM/llvm;$LLVM/clang" 
&& ninja -C Release


export PATH=CMAKEHOME/bin:CMAKE_HOME/bin:CMAKE

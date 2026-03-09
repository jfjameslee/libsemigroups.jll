# libsemigroups_jll

Julia binary package for [libsemigroups](https://github.com/libsemigroups/libsemigroups), a C++ library for semigroups and monoids.

## Building

This package uses [BinaryBuilder.jl](https://docs.binarybuilder.org/) to create cross-platform binaries.

##  Quick Start

1. Setup Docker environment.
2. Copy build_tarballs.jl to [Yggrasil](https://github.com/JuliaPackaging/Yggdrasil)/L/libsemigroups/
3. From the root of the forked repo, run:
   `julia L/libsemigroups/build_tarballs.jl <target-platform?>`
4. Output tarballs can be found in the products/ folder

For a list of supported BinaryBuilder platforms, see [this documentation page](https://docs.binarybuilder.org/dev/building/#Platforms).

##  Contributions

- [First PR to Yggdrasil](https://github.com/JuliaPackaging/Yggdrasil/pull/13203) : Add libsemigroups v3.4.0
- [Latest PR to Yggrasil](https://github.com/JuliaPackaging/Yggdrasil/pull/13239) : upgrade libsemigroups to v3.5.1 & disable HPCombi on all platforms

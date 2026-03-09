# BinaryBuilder Docker environment for building libsemigroups_jll
# BinaryBuilder requires Julia 1.7
FROM julia:1.7

# Install required system dependencies
RUN apt-get update && apt-get install -y \
  git \
  curl \
  wget \
  && rm -rf /var/lib/apt/lists/*

# Set up Julia depot path
ENV JULIA_DEPOT_PATH=/root/.julia

# Install and Precompile BinaryBuilder.jl
RUN julia -e 'using Pkg; Pkg.add("BinaryBuilder"); using BinaryBuilder'

# Set working directory
WORKDIR /workspace

# Copy the build script
COPY build_tarballs.jl /workspace/

# Default command shows help
CMD ["julia", "--help"]

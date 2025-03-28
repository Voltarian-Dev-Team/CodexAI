#!/bin/bash

# Enable exit on error
set -e

# Define the output directory
OUTPUT_DIR=$(pwd)

# Warp to sdldoom-1.10 directory
cd sdldoom-1.10

# Define source directory
SOURCE_DIR="."

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Find all .c files in the source directory
SRC_FILES=$(find "$SOURCE_DIR" -name '*.c')

# Set the output HTML file
OUTPUT_HTML="$OUTPUT_DIR/build/index.html"

# Compile with emcc (Emscripten compiler)
emcc $SRC_FILES -o "$OUTPUT_HTML" --preload-file "$SOURCE_DIR" --preload-file doom.wad -s ALLOW_MEMORY_GROWTH=1 --shell-file "$OUTPUT_DIR/shell.html" -s USE_SDL=1 2>../error.log
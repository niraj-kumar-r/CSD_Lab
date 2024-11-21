#!/bin/bash

# Ensure a file path is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>.joi"
  exit 1
fi

# Extract the input file and validate extension
INPUT_FILE="$1"
EXTENSION="${INPUT_FILE##*.}"
BASENAME="${INPUT_FILE%.*}"

if [ "$EXTENSION" != "joi" ]; then
  echo "Error: Input file must have a .joi extension."
  exit 1
fi

# Define output files
COMPILED_FILE="${BASENAME}.vm"
VM_OUTPUT="${BASENAME}.asm"
ASSEMBLER_OUTPUT="${BASENAME}.bin"

# Step 1: Run the compiler
echo "Running compiler on $INPUT_FILE..."
python ./JOICompiler/main.py "$INPUT_FILE" "$COMPILED_FILE"
if [ $? -ne 0 ]; then
  echo "Error: Compilation failed."
  exit 1
fi

# Step 2: Run the VM
echo "Running VM on $COMPILED_FILE..."
python3 ./joi_virtual_machine-main/main.py "$COMPILED_FILE" "$VM_OUTPUT"
if [ $? -ne 0 ]; then
  echo "Error: VM execution failed."
  exit 1
fi

# Step 3: Run the assembler
echo "Running assembler on $VM_OUTPUT..."
python3 ./src_v3/main.py "$VM_OUTPUT" "$ASSEMBLER_OUTPUT"
if [ $? -ne 0 ]; then
  echo "Error: Assembler execution failed."
  exit 1
fi

echo "Process completed successfully!"
echo "Output files: $COMPILED_FILE, $VM_OUTPUT, $ASSEMBLER_OUTPUT"

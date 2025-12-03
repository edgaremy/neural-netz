#!/bin/bash

# Script to export Typst example files to PNG images
# Usage: ./export-examples.sh

set -e  # Exit on error

# Configuration
DPI=300  # Adjust DPI as needed (e.g., 150, 300, 600)
OUTPUT_DIR="gallery"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting Typst export process...${NC}"
echo "DPI: $DPI"
echo "Output directory: $OUTPUT_DIR"
echo ""

# Create output directories if they don't exist
mkdir -p "$OUTPUT_DIR/features"
mkdir -p "$OUTPUT_DIR/networks"

# Export features examples
echo -e "${GREEN}Exporting features examples...${NC}"
for file in examples/features/*.typ; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .typ)
        typst compile "$file" "$OUTPUT_DIR/features/$filename.png" --ppi "$DPI" --root "."
        echo "✓ Exported $filename.typ"
    fi
done

# Export network examples
echo -e "${GREEN}Exporting network examples...${NC}"
for file in examples/networks/*.typ; do
    if [ -f "$file" ]; then
        filename=$(basename "$file" .typ)
        typst compile "$file" "$OUTPUT_DIR/networks/$filename.png" --ppi "$DPI" --root "."
        echo "✓ Exported $filename.typ"
    fi
done

echo ""
echo -e "${BLUE}Export complete! Images saved to $OUTPUT_DIR/${NC}"

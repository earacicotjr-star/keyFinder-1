#!/bin/bash
# Build script for keyFinder extensions

set -e

BUILD_DIR="build"
rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR

# Chrome (use manifest.json)
echo "Building Chrome extension..."
cp -r . $BUILD_DIR/chrome
cd $BUILD_DIR/chrome
rm -f manifest.firefox.json manifest.edge.json manifest.safari.json README.md LICENSE .gitignore scripts/
cd ../..

# Firefox (use manifest.firefox.json)
echo "Building Firefox extension..."
cp -r . $BUILD_DIR/firefox
cd $BUILD_DIR/firefox
rm -f manifest.json manifest.edge.json manifest.safari.json README.md LICENSE .gitignore scripts/
mv manifest.firefox.json manifest.json
cd ../..

# Edge (use manifest.edge.json)
echo "Building Edge extension..."
cp -r . $BUILD_DIR/edge
cd $BUILD_DIR/edge
rm -f manifest.json manifest.firefox.json manifest.safari.json README.md LICENSE .gitignore scripts/
mv manifest.edge.json manifest.json
cd ../..

# Safari (use manifest.safari.json)
echo "Building Safari extension..."
cp -r . $BUILD_DIR/safari
cd $BUILD_DIR/safari
rm -f manifest.json manifest.firefox.json manifest.edge.json README.md LICENSE .gitignore scripts/
mv manifest.safari.json manifest.json
cd ../..

# Create zip files
echo "Creating zip archives..."
cd $BUILD_DIR
zip -r keyfinder-chrome.zip chrome
zip -r keyfinder-firefox.zip firefox
zip -r keyfinder-edge.zip edge
zip -r keyfinder-safari.zip safari
cd ..

echo "✅ Build complete!"
echo "Output files:"
ls -la $BUILD_DIR/*.zip

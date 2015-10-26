#/bin/sh
# Generate zip files for Thingiverse release

# Create release dir if it doesn't exist
mkdir -p release

# Remove any old zip files
rm release/*.zip 2> /dev/null

# Change to STL directory
cd STL

# Step through directories/files
for i in *
do
    zip $i ./$i/*
done

# Back to root
cd ..

# Move zips
mv STL/*.zip release/

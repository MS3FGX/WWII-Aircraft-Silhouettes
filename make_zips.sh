#/bin/sh
# Generate zip files for Thingiverse release

# Create release dir if it doesn't exist
mkdir -p release

# Remove any old zip files
rm release/*.zip 2> /dev/null

# Change to STL directory
cd STL

# Step through directories
for i in *
do
    # CD into country
    cd $i
    # Add STLs to zip in /release
    zip ../../release/$i *    
    # Go back a dir before loop
    cd ..
done

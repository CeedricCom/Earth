---- when root -----
sudo apt-get upgrade screen zip wget -y

-- install map ----
mkdir map
cd map
wget -i ../map.txt
cat earth_1-500_osm-based_without-features_1-16-5.zip.* > map.zip
unzip map.zip
cd ..
mv map/earth_1-500_osm-based_without-features_1-16-5 world
rm -r map

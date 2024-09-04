#!/bin/bash
echo "============== This is a message from script.sh ==============="
node fetchEarthquakeDataw.js
git add .
git commit -m "2024-09-04"
git push -u origin main
echo "============== New Earthquake Data Added =============="
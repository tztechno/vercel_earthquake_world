#!/bin/bash
echo "This is a message from script.sh"
node fetchEarthquakeData.js
git add .
git commit -m "2024-08-18"
git push -u origin main
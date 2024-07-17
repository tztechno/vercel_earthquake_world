$ node fetchEarthquakeData
$ bash script.sh

now.json & now.js are generated.
now.js is read in emap_now.html.
only one command operation is everything required.


https://github.com/tztechno/tz_js_20240217_leaflet

git push -f origin main


git init 
git remote add origin https://github.com/tztechno/tz_js_20240124_leaflet.git 
git add .
git commit -m "Add all files"
git push -u origin main


circleci local execute build -c .circleci/config.yml
git add now.json now.js
git commit -m "Add generated files"
git push -u origin main



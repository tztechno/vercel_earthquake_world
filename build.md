
---
```
node fetchEarthquakeData
bash script.sh

now.json & now.js are generated.
now.js is read in emap_now.html.


https://github.com/tztechno/vercel_earthquake

git init
git remote add origin https://github.com/tztechno/vercel_earthquake.git
git pull origin main  

git add .
git commit -m "2024-08-18"
git push -u origin main

git push -f origin main


データ更新はこれで行う

bash script.sh
-------------------------
node fetchEarthquakeData.js
git add .
git commit -m "2024-08-18"
git push -u origin main
-------------------------

新規設定
crontab -e
-----------------------
0 0 1 * * ./script.sh
------------------------
毎月1日にscript.shを実行
vimで設定完了

設定閲覧
crontab -l


```
---
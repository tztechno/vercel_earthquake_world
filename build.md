
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
git commit -m "2024-07-18"
git push -u origin main

git push -f origin main
git add now.json now.js


```
---

vercel.json

1. 静的ファイルの明示的な処理:
   新しい `vercel.json` では、HTMLファイルとJSファイルを明示的に静的ファイルとして処理するように指定しました。
   ```json
   { "src": "*.html", "use": "@vercel/static" },
   { "src": "*.js", "use": "@vercel/static" }
   ```
   これにより、これらのファイルが適切に処理され、サーバーに正しくデプロイされることが保証されました。

2. ファイルシステムの優先的なハンドリング:
   ```json
   { "handle": "filesystem" }
   ```
   この設定により、実際のファイルが存在する場合、それが優先的に提供されるようになりました。これは特に静的アセット（JS、CSS、画像ファイルなど）へのアクセスに重要です。

3. フォールバックルートの維持:
   ```json
   { "src": "/(.*)", "dest": "/index.html" }
   ```
   この設定は元の `vercel.json` にもありましたが、ファイルシステムのハンドリングの後に配置することで、実際のファイルが存在しない場合にのみ `index.html` にフォールバックするようになりました。これはSPA（シングルページアプリケーション）のルーティングに特に有効です。

4. Node.js と静的ファイルの両立:
   新しい設定では、Node.jsのビルド（`@vercel/node`）と静的ファイルの処理（`@vercel/static`）を組み合わせています。これにより、サーバーサイドのロジックと静的アセットの両方を適切に処理できるようになりました。

5. 明確な優先順位:
   新しい設定では、ビルドと経路の処理の優先順位が明確になりました。これにより、Vercelが各リソースをどのように処理すべきかをより正確に理解できるようになりました。

新しい `vercel.json` の設定は、あなたのプロジェクトの構造とニーズにより適した形になりました。静的ファイルとNode.jsの処理を明示的に指定し、かつファイルシステムの優先的なハンドリングを導入したことで、すべてのリソースが適切に処理され、アクセス可能になったのです。

このような設定の調整は、デプロイメントの問題を解決する上で非常に効果的です。プロジェクトの特性に合わせて `vercel.json` を適切に設定することの重要性が、この事例からよく分かりますね。


---


---
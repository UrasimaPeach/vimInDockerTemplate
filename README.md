# vimInDockerTemplate

dockerの中でvimを使う環境を構築するためのテンプレートです。

# 使用方法

vimで編集するプロジェクトを新しく始めたい場合、以下のコマンドを使う

```
cp -r TEMPLATE_DEVELOP_DOCKER ../newPrj
cd ../newPrj
vim scripts/init.sh # ファイル先頭の変数3つを埋める
./scripts/init.sh
```

# LICENSE

MIT Lisence

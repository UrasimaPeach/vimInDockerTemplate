# vimInDockerTemplate

dockerの中でvimを使う環境を構築するためのテンプレートです。
nodejsを使うことを想定しており、ホストOSの3000ポートでアクセスするとゲストOSの8080ポートにつながるようにDockerfileとdocker-compose.ymlが書いてあります。

# Requirements

git, sed, docker, sh

# 事前準備

## rootでないユーザーでdockerを実行するようにする。

dockerはホスト側のrootユーザー以外で使うほうが通常望ましいです。
特に理由がない場合、ホスト側のOSで下記1を実行してから再起動してください。

### 1. dockerグループに自身を追加

dockerのユーザーとして自身を追加することで、rootでないユーザーでもdockerを動かせます。
下記のコマンドを使用してください。

```
sudo groupadd docker
sudo usermod -aG docker `whoami`;grep docker /etc/group
```

# 使用方法

vimで編集するプロジェクトを新しく始めたい場合、以下のコマンドを使います。
その後は、新しいプロジェクト内のREADME.mdを参照してください。

```
cp -r TEMPLATE_DEVELOP_DOCKER ../newPrj
cd ../newPrj
vim scripts/init.sh # ファイル先頭の変数3つを埋める
./scripts/init.sh
```

# LICENSE

MIT Lisence

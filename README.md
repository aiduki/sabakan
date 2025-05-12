## 鯖缶（サーバ設定ファイル管理）

### 目的

サーバの設定ファイルを一元管理し、再現性と保守性を高める。

### ディレクトリ構成ルール

- sabakan/ 配下にサーバー名のディレクトリを作成する。

- その中に実際のサーバーのファイルパスと同じ構成で設定ファイルを配置。

- 各サーバーディレクトリには run.sh を配置し適用処理を自動化する。

```path
sabakan/
├── my-server/
│   ├── etc/
│   │   └── nginx/
│   │       └── nginx.conf
│   └── run.sh
└── other-server/
```

### 導入手順
サーバー構築時、sabakan をルートディレクトリ直下に配置します。

```bash
cd /
git clone git@github.com:aiduki/sabakan.git
```

### 設定の反映方法

各サーバーディレクトリ内の run.sh を実行してください。

```
cd /sabakan/my-server
chmod 777 ./run.sh
sudo ./run.sh
```

run.sh 内では例えば以下のような link コマンドを使用して設定を反映します。
```
#!/bin/bash
server=my-server
sudo ln -nfs /sabakan/${server}/etc/nginx/conf.d/my-server.conf /etc/nginx/conf.d/my-server.conf
```

### 注意事項

- 本番環境では十分にテストした後に適用してください。
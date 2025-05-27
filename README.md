## 鯖缶

### 概要

鯖缶(さばかん)はサーバーの設定ファイルの管理をするリポジトリです。
各サーバーに分散されている設定ファイルを一元的に整理、共有、適用することが目的になります。
いつでもどこでも開けて使える状態にしたい、という願いを込めサーバー管理を略し鯖缶と命名しました。

### 使い方

- sabakan/ 配下にサーバーごとのフォルダを作成（例：my-server）

- その下に実際のサーバーと同じパス構成で設定ファイルを配置

- run.sh（設定ファイルの適用処理を書いたもの）を作成

```path
sabakan/
├── my-server/
│   ├── etc/
│   │   └── nginx/
│   │       └── nginx.conf
│   └── run.sh
└── other-server/
```

### インストール

sabakanリポジトリをクローンし、run.shを実行します。

```bash
cd /
git clone git@github.com:aiduki/sabakan.git
cd /sabakan/my-server
chmod 777 ./run.sh
sudo ./run.sh
```

### 注意

- 本番環境では十分な試験をしたうえで適用してください。
- run.shは目的や環境に応じて編集してください。

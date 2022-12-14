# gqlgen-todos

- 以下のファイルに `shiroemons/gqlgen-todos` が含まれているため変更が必要です。
  - Makefile
  - README.md
  - cmd/server/main.go
  - go.mod
  - gqlgen.yml
  - graph/generated/generated.go
  - graph/resolver/schema.resolvers.go

## 環境構築

1. init を実行する
    ```shell
    make init
    ```
2. DB のセットアップ
  - 2.1. DBを起動する
    ```shell
    make db-up
    ```
  - 2.2. 別のシェルでマイグレーションを実行する
    ```shell
    make migrate
    ```
3. サーバーを起動する
  - バックグラウンドで実行する
    ```shell
    make up
    ```
  - 実行ログを確認する
    ```shell
    make logs
    ```
  - 停止する場合は以下を実行する
    ```shell
    make down
    ```

## gqlgen開発手順

1. テーブルを定義する
  - `db/schema/schema.sql`
2. マイグレーションを実行する
    ```shell
    make migrate
    ```
3. モデルを作成する
  - `graph/model/[モデル名].go`
4. スキーマを定義する
  - `schema.graphqls`
5. (必要な場合) リゾルバーの設定を追加する
  - `gqlgen.yml`
6. `generate` コマンドを実行する
    ```shell
    make generate
    ```
7. リゾルバーを実装する
  - `graph/resolver/schema.resolvers.go`

refs: https://gqlgen.com/getting-started/

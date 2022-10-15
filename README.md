# gqlgen-todos

## 環境構築

1. init を実行する
    ```shell
    make init
    ```
2. DB のセットアップ
   - 2.1. DBを起動する
     ```shell
     make database-up
     ```
   - 2.2. 別のシェルでマイグレーションを実行する
     ```shell
     make migrate
     ```
   - 2.3. DBを停止する
     - `Ctrl` + `C`
3. サーバーを起動する
   - 通常実行
     ```shell
     make server-up
     ```
     - `Ctrl` + `C` で停止する
   - バックグラウンドで実行する場合
     ```shell
     make server-upbg
     ```
     - 停止する場合は以下を実行する
     ```shell
     make server-down
     ```

## gqlgen開発手順

1. スキーマを定義する
    - `graph/schema.graphqls`
2. テーブルを定義する
    - `db/schema/schema.sql`
3. マイグレーションを実行する
    ```shell
    make migrate
    ```
4. モデルを作成する
    - `graph/model/[モデル名].go`
5. (必要な場合) リゾルバーの設定を追加する
    - `gqlgen.yml`
6. `generate` コマンドを実行する
    ```shell
    make generate
    ```
7. リゾルバーを実装する
    - `schema.resolvers.go`

refs: https://gqlgen.com/getting-started/

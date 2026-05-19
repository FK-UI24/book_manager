データのバックアップ
1.アプリケーションを停止する
rails server -d # 必要に応じて停止
2.関連ファイルをコピーする
cp storage/development.sqlite3 storage/development_backup.sqlite3
cp storage/development.sqlite3-wal storage/development_backup.sqlite3-wal
cp storage/development.sqlite3-shm storage/development_backup.sqlite3-shm

データの復元
cp storage/development_backup.sqlite3 storage/development.sqlite3
cp storage/development_backup.sqlite3-wal storage/development.sqlite3-wal
cp storage/development_backup.sqlite3-shm storage/development.sqlite3-shm

＊新しいカラムに対して必須バリデーションを設定した場合、バックアップを復元した時点でそのカラムがNULLのままだとバリデーションエラーが発生します。マイグレーションを適用して新しいカラムをデータベースに追加することが重要です。必須バリデーションを設定する際はデフォルト値を設定することで、既存のレコードへの影響を減らせます。

データの全削除（中身だけ）
1.railsコンソールを開く
rails c
2.全データの削除する（Comicの箇所は削除したいテーブル名）
Comic.delete_all
3.railsコンソールの終了
exit
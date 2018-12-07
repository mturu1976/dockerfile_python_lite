# 軽量版python3用のDockerfileを作る

# ブランチを作る
ブランチの一覧を見る
git branch -a

ブランチを作成
git checkout -b ブランチ名
git checkout -b develop_dockerfile_0

#今のディレクトリ内にあるDockerfileを起動させる
docker build --force-rm=true -t my_image .

[memo]
    --force-rm=true: ビルド中に作成される中間コンテナを削除するようにします。初回からbuildがうまくいくことは稀なので、失敗時に半端なコンテナを残さないようにしておきます
        このオプションをつけていない場合、後述の後始末をしっかりと行う必要があります
    -t: 作成するimageの名前(タグ)を設定します
    最後にDockerfileがあるディレクトリ(カレントディレクトリの場合.)を指定します。

#出来ているか確認
docker images

#runテスト
docker run -p 8080:8080 --rm my_image
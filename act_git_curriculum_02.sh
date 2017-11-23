#!/bin/sh
# gitカリキュラムクローン用ディレクトリ作成
mkdir /c/pull_test
# 一時的に移動
cd /c/pull_test
# gitカリキュラムをクローン
git clone https://github.com/is-mgmt-dept/test.git
# クローンしたリポジトリに移動
cd /c/pull_test/test
git checkout -b feature_test
git pull
# ダミーのユーザ名とユーザメールアドレスを設定
git config user.name "is-mgmt-dept"
git config user.email ""
# 更新が発生するようにREADME.mdにdateコマンドの結果を追加
echo -e "\n 更新日は`date`\n" >> README.md
echo -e "\n私の名前は`whoami`\n" >> README.md
# リモートリポジトリへプッシュ
git add README.md
git commit -m "gitカリキュラム pull用コミット"
git push origin master
git checkout master
# ディレクトリを削除
rm -rf /c/pull_test

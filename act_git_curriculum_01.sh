#!/bin/sh
# gitカリキュラムクローン用ディレクトリ作成
mkdir /c/pull_test
# 一時的に移動
cd /c/pull_test
# gitカリキュラムをクローン
git clone https://github.com/is-mgmt-dept/test.git
# クローンしたリポジトリに移動
cd /c/pull_test/test
# ダミーのユーザ名とユーザメールアドレスを設定
git config user.name "test"
git config user.email "test@test.email"
# 更新が発生するようにREADME.mdにdateコマンドの結果を追加
echo "# gitカリキュラム" > README.md
echo `date` >> README.md
echo `whoami` >> README.md
echo `uname -a` >> README.md
# リモートリポジトリへプッシュ
git add README.md
git commit -m "gitカリキュラム pull用コミット"
git push origin master
# ディレクトリを削除
rm -rf /c/pull_test

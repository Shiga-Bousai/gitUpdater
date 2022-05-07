# gitUpdater
GitHubからマージしてアップデートするプログラム

## updatePython.sh
GitHubから取得し、pip installが必要なものを requirements.txt からインストールし、エラーを確認します。  
エラーがあった場合は前のバージョンに戻すようにしてあります。

```shell
bash updatePython.sh codeDir testPyCode.py
```

上記のように、codeのディレクトリとテストするPython Fileを指定します。  
なおPython Fileの指定はなくても動作します。

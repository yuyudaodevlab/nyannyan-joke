# nyannyan-joke

ubuntuなどでターミナルに `nyannyan` と打つと、寝ているにゃんこが画面全体に表示されるジョークパッケージです。

## デモ

```
    |\      _,,,---,,_
    /,`.-'`'    -.  ;-;;,_
   |,4-  ) )-,_..;\ (  `'-'
  '---''(_/--'  `-'\_)     Zzz...
```

## インストール方法

### apt リポジトリからのインストール (推奨)

GitHub Pages を利用した APT リポジトリを提供しています。

```bash
echo "deb [trusted=yes] https://yuyudaodevlab.github.io/nyannyan-joke/ stable main" | sudo tee /etc/apt/sources.list.d/nyannyan.list
sudo apt update
sudo apt install nyannyan
```

### GitHub Release から直接ダウンロード

Releases ページから最新の `.deb` ファイルをダウンロードしてインストールします。

```bash
curl -LO https://github.com/yuyudaodevlab/nyannyan-joke/releases/latest/download/nyannyan_1.0.0_all.deb
sudo dpkg -i nyannyan_1.0.0_all.deb
```

### ソースからのインストール

```bash
git clone https://github.com/yuyudaodevlab/nyannyan-joke.git
cd nyannyan-joke
sudo make install
```

## 使い方

| コマンド | 挙動 |
|---------|------|
| `nyannyan` | 3秒間、寝ている猫のアニメーションを画面全体に表示して元に戻る |
| `nyannyan -t <秒数>` | 指定秒数の間アニメーションを表示（`0`で無制限、`Ctrl+C`で終了） |
| `nyannyan -wakeup` | 寝ている猫が起き上がるアニメーションを表示 |
| `nyannyan -help` | ヘルプメッセージを表示 |

## 開発者向け

Debianパッケージのビルド方法：

```bash
sudo apt install debhelper dpkg-dev
dpkg-buildpackage -us -uc -b
```

## ライセンス

GNU GPL v3

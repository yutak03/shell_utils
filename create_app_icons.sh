#!/bin/bash

# アイコンファイル名を引数から取得
ICON_FILE=${1:-icon.png}

# 作成されたアイコンのディレクトリを作成
mkdir icon.iconset

# 元のPNG画像から各サイズのアイコンを作成
# 異なるサイズのアイコンを生成
sips -z 16 16     $ICON_FILE --out icon.iconset/icon_16x16.png
sips -z 32 32     $ICON_FILE --out icon.iconset/icon_16x16@2x.png
sips -z 32 32     $ICON_FILE --out icon.iconset/icon_32x32.png
sips -z 64 64     $ICON_FILE --out icon.iconset/icon_32x32@2x.png
sips -z 128 128   $ICON_FILE --out icon.iconset/icon_128x128.png
sips -z 256 256   $ICON_FILE --out icon.iconset/icon_128x128@2x.png
sips -z 256 256   $ICON_FILE --out icon.iconset/icon_256x256.png
sips -z 512 512   $ICON_FILE --out icon.iconset/icon_256x256@2x.png
sips -z 512 512   $ICON_FILE --out icon.iconset/icon_512x512.png
sips -z 1024 1024 $ICON_FILE --out icon.iconset/icon_512x512@2x.png

# iconutilを使用してiconsetディレクトリからicnsファイルを作成
iconutil -c icns icon.iconset

mv icon.icns icon.iconset/

echo "icon.iconsetディレクトリにicon.icnsファイルが作成されました"

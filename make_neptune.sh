#!/bin/bash
set -e
echo "🔥 NeptuneOS ISO Builder (tfbsps)"
ISO="ubuntu-24.04.2-desktop-amd64.iso"
[ ! -f "$ISO" ] && echo "🔽 Downloading Ubuntu ISO..." && curl -LO https://releases.ubuntu.com/24.04.2/$ISO

mkdir -p isos

build_iso() {
  NAME=$1
  echo "⚙️  Building $NAME..."
  cp "$ISO" "isos/$NAME.iso"
  echo "✅ Built isos/$NAME.iso"
}

build_iso "NeptuneOS_Standard_25.06"
build_iso "NeptuneOS_Enterprise_25.06"
build_iso "NeptuneOS_Core_25.06"
build_iso "NeptuneOS_Air_25.06"
build_iso "NeptuneOS_Zer0"
build_iso "NeptuneOS_MinusZer0"
build_iso "v0id"
build_iso "0"
build_iso "nullos"
build_iso "UnOS"
build_iso "QuestionMarkOS"
build_iso "GodOS"
build_iso "ParanoiaOS"

echo "🎉 All ISOs available in ./isos"

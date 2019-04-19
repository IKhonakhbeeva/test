#!/bin/bash
set -o nounset
set -o errexit

cd "$(dirname "$0")"

cache_dir=$(cygpath -m $APPDATA | xargs cygpath)/trik-studio/installer_cache
echo $cache_dir
echo download:
curl -L -s -o winscp.zip https://sourceforge.net/projects/winscp/files/WinSCP/5.15/WinSCP-5.15-Portable.zip
echo unzip:
unzip -o winscp.zip -d winscp
rm -f winscp.zip
cd winscp
ls
#!/bin/bash
set -o nounset
set -o errexit

cd "$(dirname "$0")"

cache_dir=$(cygpath -m $APPDATA | xargs cygpath)/trik-studio/installer_cache
echo $cache_dir
curl -L -s -o $cache_dir/winscp.zip https://sourceforge.net/projects/winscp/files/WinSCP/5.15/WinSCP-5.15-Portable.zip
unzip -o $cache_dir/winscp.zip -d $cache_dir/winscp
rm -f $cache_dir/winscp.zip
cd $cache_dir/winscp
ls
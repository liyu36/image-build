#!/usr/bin/env bash
__Author__="liyu36"

for dir in $(grep -Pv "(^#|^$)" images.txt)
do
    cd ${dir}
    echo "=======================Start build ${dir}======================="
    bash build.sh
    echo "=======================${dir} Build complete======================="
    cd ..
done
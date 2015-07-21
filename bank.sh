#!/usr/bin/env bash

generate_map () {
    for n in BankLogo/Logos.bundle/*;
    do
        v=$(basename $n)
        k=${v%%@2x.png}
        echo "$k: \"$v\","
    done
}

generate_enum () {
    for n in BankLogo/Logos.bundle/*;
    do
        v=$(basename $n)
        k=${v%%@2x.png}
        echo "case $k = \"$k\""
    done
}

if [ "$1" = "-e" ];
then
    generate_enum
elif [ "$1" = "-m" ]
then
    generate_map
else
    echo "-e generate_enum"
    echo "-m generate_map"
fi

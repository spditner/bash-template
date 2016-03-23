#!/bin/bash

render_template() {
    local "${@:2}"
    eval "local template=$1; echo \"$(cat $1)\""
}

echo "---------"
render_template templates/test.conf b='123' c='dd, dd'
echo "---------"
render_template templates/include.conf b='foo' c='"dd, dd"'
echo "---------"

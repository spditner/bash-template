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

# NOTE(spditner/2018-11-18):
#   There is a core command called 'envsubst' that can achieve something
#   somewhat similar, where a cat'd files variables are replaced


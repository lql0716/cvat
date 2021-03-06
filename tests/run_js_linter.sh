#!/bin/bash

eslint -c ~/tests/eslintrc.conf.js -f ~/tests/node_modules/eslint-detailed-reporter/lib/detailed-multi.js \
    ~/cvat/apps/**/js/*.js -o ./report.html
ret_code=$?

mkdir -p ~/media/eslint
mv -t ~/media/eslint main.js styles.css report.html

exit $ret_code

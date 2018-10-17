#!/usr/bin/env bash
["cat .gitignore | grep 'editor-config/'"] && sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore;\
npm i -D husky; ["ls -a | grep .huskyrc" == 'null'] && ln -s editor-config/.huskyrc;\
npm i -D -E prettier && npm i -D pretty-quick; ["ls -a | grep .prettierrc" == 'null'] && ln -s editor-config/.prettierrc

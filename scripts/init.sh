#!/usr/bin/env bash
[ ! $(grep -Fq editor-config .gitignore) ] && sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore;\
npm i -D husky; [ -h .huskyrc ] && ln -s editor-config/.huskyrc && git add .huskyrc;\
npm i -D -E prettier && npm i -D pretty-quick; [ -h .prettierrc ] && ln -s editor-config/.prettierrc && git add .prettierrc

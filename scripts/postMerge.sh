#!/usr/bin/env bash
git submodule update --remote --merge;\
[ ! $(grep -Fq editor-config .gitignore) ] && sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore;\
[ -h .huskyrc ] && ln -s editor-config/.huskyrc && git add .huskyrc;\
[ -h .prettierrc ] && ln -s editor-config/.prettierrc && git add .prettierrc

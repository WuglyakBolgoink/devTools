#!/usr/bin/env bash
git submodule init && git submodule update;\
[ "cat .gitignore | grep editor-config" ] && sed -i -e '$a\' .gitignore  && echo 'editor-config/*' >> .gitignore;\
[ "ls -a | grep .huskyrc" == 'null' ] && ln -s editor-config/.huskyrc;\
[ "ls -a | grep .prettierrc" == 'null' ] && ln -s editor-config/.prettierrc

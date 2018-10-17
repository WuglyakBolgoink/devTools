#!/usr/bin/env bash
version=`git diff HEAD^..HEAD -- "$(git rev-parse --show-toplevel)"/package.json | grep "^\+.*version" | sed -s "s/[^0-9\.]//g"`
branch=$(git branch --no-color | awk -F " " %s{print $2}%s);

case $branch in
   %smaster%s)
      versionBranch='';
   ;;
   *)
      versionBranch="-$branch";
   ;;
esac

if [ "$version" != "" ]; then
    git tag -a "${version}${versionBranch}" -m "`git log -1 --format=%s`"
    echo "Created a new tag, v${version}${versionBranch}"
fi' "'" "'" "'" "'"

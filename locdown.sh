#!/bin/bash
#===============================================================
#   ___                      __
#  /\_ \                    /\ \
#  \//\ \     ___     ___   \_\ \    ___   __  __  __    ___
#    \ \ \   / __`\  /'___\ /'_` \  / __`\/\ \/\ \/\ \ /' _ `\
#     \_\ \_/\ \L\ \/\ \__//\ \L\ \/\ \L\ \ \ \_/ \_/ \/\ \/\ \
#     /\____\ \____/\ \____\ \___,_\ \____/\ \___x___/'\ \_\ \_\
#     \/____/\/___/  \/____/\/__,_ /\/___/  \/__//__/   \/_/\/_/
#
# ==============================================================
# @description : locdown counts your loc per build tag
# @usage : locdown <repo_path>
# @requirements : *nix env w/ git, xargs, wc
# ==============================================================
rm loc_stats.js 2>/dev/null
echo "loc_stats = [" >> loc_stats.js
TAG_OUTPUT=`cd $1 && git tag`
read -a TAG_ARRAY <<<$TAG_OUTPUT
for TAG in "${TAG_ARRAY[@]}"
do
   :
   LOC=`cd $1; git checkout $TAG 2>/dev/null; git ls-files | xargs cat 2>/dev/null | wc -l`
   echo "$TAG has$LOC loc"
   echo "{'tag' : '$TAG', 'loc' :$LOC}," >> loc_stats.js
done
echo "]" >> loc_stats.js
open index.html

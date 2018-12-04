#/bin/bash/

git_merged(){
remote="${1:-origin}"
branch="$2"
git branch -r --list "$remote/*" --merged $branch \
    | sed "s/\s*$remote\///" \
    | egrep -v "^(HEAD|release|hotfix|master|develop)"
}

or=remotes/origin/
for k in $(git_merged origin develop ); do 
  if [ -n "$(git log -1 --before='28 Nov 2018'  -s $or$k)" ]; then
    #git push t push origin --delete -norigin --delete -n $k
  c=$k
  echo $or$c
  fi
done

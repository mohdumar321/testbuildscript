#/bin/bash/

or=remotes/origin/
for k in $(./git-merged.sh origin develop | grep feature); do 
  if [ -n "$(git log -1 --since='10 week ago' -s $or$k)" ]; then
    #git push t push origin --delete -norigin --delete -n $k
  c=$k
  echo $or$c
  fi
done

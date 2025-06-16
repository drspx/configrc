#!/usr/bin/env zsh
,gitdeletetags(){
for i in $(git tag --list | grep $1) ;
  do echo $i;
  git push --delete origin $i;
  git tag --delete $i;
done
}
,gitdeletegonebranches() {
  # Fetch the latest changes from the remote repository
  git fetch --prune

  # Get the list of local branches that are gone on the remote
  branches_to_delete=$(git branch -vv | awk '/: gone]/{print $1}')

  # Check if there are any branches to delete
  if [ -z "$branches_to_delete" ]; then
    echo "No branches to delete."
  else
    echo "Deleting branches:"
    for branch in $branches_to_delete; do
      echo $branch
      git branch -D "$branch"
    done
  fi
}

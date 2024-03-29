cd git-practice-04
git branch -a
git checkout main
git merge $(git branch -a --list 'remotes/origin/ready*')
git branch -d $(git branch -a --list 'remotes/origin/ready*')
git checkout main
git pull origin main
git checkout $(git branch -a --list 'remotes/origin/update*')
git merge main
git checkout main
git merge $(git branch -a --list 'remotes/origin/ready*')
git branch -d $(git branch -a --list 'remotes/origin/ready*')
git checkout main
git pull origin main
for branch in $(git branch -a --list 'remotes/origin/update*'); do
    git checkout "${branch##*/}"
    git merge main
done


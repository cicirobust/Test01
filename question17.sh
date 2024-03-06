git checkout -b branch1
mkdir dir1
touch dir1/foo
mkdir dir3
touch dir3/bar
git add dir1/foo dir3/bar
git mv README.md README.md
git rm dir3/bar_copy
touch newfile1
git add newfile1
git commit -m "Update branch1"
git checkout main
git checkout -b branch2
mkdir -p dir1/dir2
echo "Modified foo" > dir1/foo_modified
touch dir1/dir2/foo_modified
touch dir1/dir3/newfile2
git add dir1/foo_modified dir1/dir2/foo_modified dir1/dir3/newfile2
git rm newfile1
git commit -m "Update branch2"

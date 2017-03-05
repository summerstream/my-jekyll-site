current_date_time="`date +%Y/%m/%d_%H:%M:%S`";
# commit current project
git add .
git commit -m "$current_date_time"
git push

# commit jekyll site
jekyll build
cd ./culno.github.io

echo "current directory:$PWD"
git add .

echo "committing $current_date_time"

git commit -m "$current_date_time"
git push

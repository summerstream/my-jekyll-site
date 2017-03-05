#check arguent
if [ -z "$1" ];then
    echo "please input title!"
    exit 1
fi

current_date="`date +%Y-%m-%d`";
#echo "current date: $current_date"
cp ./template.markdown ./_posts/$current_date-$1.markdown
echo "completed!"
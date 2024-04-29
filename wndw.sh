#display the contents of the directory in window style
echo "\n\nDirectory of `pwd`\n"
for f in *
do
fdatetime=`date -r $f "+%d-%m-%Y   %H:%M:%S"`
if [ -d $f ]
then
echo " $f\t\t\t<DIR>\t$fdatetime"
else
fsize=`cat $f | wc -c`
echo " $f\t\t\t$fsize\t$fdatetime"
fi
done


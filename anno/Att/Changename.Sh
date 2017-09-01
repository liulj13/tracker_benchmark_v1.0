for i in `ls`; do mv -f $i `echo $i | sed 's/\b[a-z]/\U&/g'`; done

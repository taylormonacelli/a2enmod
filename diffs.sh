ls -1 *.erb | sed -e 's,\.erb,,' | while read file;
do
	diff -uw $file $file.erb >$file.diff.txt
done

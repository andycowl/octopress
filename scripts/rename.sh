#!/bin/sh

for f in *.html
do
    echo "Processing $f"
    base=`basename $f .html`
    #echo "base is $base"
    prefix=`grep "^date: '20" $f | cut -c8-17`
    #echo "prefix is ${prefix}"
    #echo "cp $f ${prefix}-${base}.markdown"
    mv $f ${prefix}-${base}.markdown
done

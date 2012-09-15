for f in *.html
do
    echo "Processing $f"
    sed -f sed.tmp $f > x.x
    mv x.x $f
done

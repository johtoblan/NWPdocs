for file in $(ls notebooks/*.ipynb)
do
    name=${file:0:-6}
    echo $name
    jupyter nbconvert --to markdown $name.ipynb  --output-dir ../NWPdocs.wiki
done
    
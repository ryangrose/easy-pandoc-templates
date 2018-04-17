git clone https://github.com/ryangrose/easy-pandoc-templates.git
cd easy-pandoc-templates/html
mkdir -p ~/.pandoc/templates2
for file in ./*.html; do
    [ -e "$file" ] || continue
    cp $file ~/.pandoc/templates2
done

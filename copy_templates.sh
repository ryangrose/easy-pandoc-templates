cd /tmp
git clone https://github.com/ryangrose/easy-pandoc-templates.git --depth 1
cd easy-pandoc-templates/html
mkdir -p ~/.pandoc/templates
for file in ./*.html; do
    [ -e "$file" ] || continue
    cp -n $file ~/.pandoc/templates 
done

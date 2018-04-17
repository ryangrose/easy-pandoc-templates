# easy pandoc templates

A collection of portable pandoc templates that can be dropped in with no dependencies, builds, or scripts 

requires [pandoc](https://pandoc.org/installing.html)

#### Screenshot
![](https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/samples/screenshots/elegant_bootstrap_menu.png)

[Live Demo](http://htmlpreview.github.io/?https://github.com/ryangrose/easy-pandoc-templates/blob/master/samples/elegant_bootstrap_menu_sample.html)

## quick start

#### install

``` bash
# Clones repo to /tmp and copies templates to ~/.pandoc/templates

curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/copy_templates.sh' | bash
```

#### usage

``` bash
# pandoc source.md -o destination.html --template=template_name.html

pandoc 'https://raw.githubusercontent.com/jgm/pandoc/master/MANUAL.txt' -f markdown -o sample.html --template=easy_template.html --toc
```

## motivation

I was tired of how complicated making a nice-looking html page with pandoc was, so I made this to simplify it.
CSS files were a good start, but to use anything more complicated (such as bootstrap or javascript files) I needed templates.
The problem was that most templates used static references to local files, which required that the file you're writing be in the same
directory as these files. In other words, you were forced to write your documents in the cloned repo directory.

To solve this, I turned to the ubiquity of CDNs and github. I began by converting the static references to css, js, etc files to
ones loaded via CDN in the html head block.
This made the templates portable as well as always up-to-date since the CDN (rawgit) pulls from Github.

## usage

Use it just like any other pandoc template, but don't worry about where the extraneous files are (like css, js, etc)

``` bash
# pandoc source.md -o destination.html --template=template_name.html

pandoc source.md -o destination.html --template=easy_template.html
```

Pandoc will look in `~/.pandoc/templates` for files with the template name.

Don't forget to add `--toc` if you want a table of contents.

If you want the document to work offline, add the `--standalone` flag to pull all of the headers
into the final document. See [the pandoc manual for more info](https://pandoc.org/MANUAL.html)

## installation

To install all the templates:

``` bash
# Clones repo to /tmp and copies templates to ~/.pandoc/templates

curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/remote_install.sh' | bash
```

To install a single template, copy the given template to `~/.pandoc/templates`.

``` bash
# curl '<url to raw html template in this repo>' > ~/.pandoc/templates/<template name>

curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/html/easy_template.html' > ~/.pandoc/templates/easy_template.html
```

## gallery

### elegant bootstrap

A nice looking responsive template using bootstrap. Can create a nice table of contents menu

![](https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/samples/screenshots/elegant_bootstrap_menu.png)

[Live Demo](http://htmlpreview.github.io/?https://github.com/ryangrose/easy-pandoc-templates/blob/master/samples/elegant_bootstrap_menu_sample.html)


### uikit

![](https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/samples/screenshots/uikit.png)

[Preview](http://htmlpreview.github.io/?https://github.com/ryangrose/easy-pandoc-templates/blob/master/samples/uikit_sample.html)

### bootstrap

A nice looking responsive template using bootstrap. Can create a nice table of contents menu

![](https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/samples/screenshots/bootstrap_menu.png)

[Live Demo](http://htmlpreview.github.io/?https://github.com/ryangrose/easy-pandoc-templates/blob/master/samples/bootstrap_menu.html)

## extras

### auto-updating

[filewatcher](https://github.com/thomasfl/filewatcher) is a ruby gem that
automatically executes a given command when a file changes. Using this
with pandoc provides a convenient way to view the compiled file in real
time. *Note:* the browser doesn't auto refresh on file change, so that still
needs to be done by hand.

Look at [filewatcher's docs](https://github.com/thomasfl/filewatcher) for more info

```
filewatcher README.md 'pandoc README.md -o README.html --template=bootstrap_menu.html'
```

### vim

Want to preview your markdown file instantly in the browser? Add the following line to your .vimrc to bind Ctrl-m to compile vim's current file and display it in firefox.
Feel free to change the template as you please

``` vimscript
noremap <C-M> :! pandoc '%:p' -o /tmp/'%:p:t'.html --template=easy_template.html --toc && firefox /tmp/'%:p:t'.html &<CR><CR>
```

Chrome users replace `firefox` with `google-chrome`

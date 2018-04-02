# easy pandoc templates

A collection of pandoc templates that can be dropped in with no dependencies, builds, or scripts 

## installation

To install, copy the given template to `~/.pandoc/templates`. If installing
via git, be sure to link the files properly.

### filewatcher

[filewatcher](https://github.com/thomasfl/filewatcher) is a ruby gem that
automatically executes a given command when a file changes. Using this
with pandoc provides a convenient way to view the compiled file in real
time. *Note:* the browser doesn't auto refresh on file change, so that still
needs to be done by hand.

### vim

Want to preview your markdown file instantly in the browser? Add the following line to your .vimrc to bind Ctrl-m to compiling vim's current file and displaying it in firefox.

``` vimscript
noremap <C-M> :! pandoc '%:p' -o /tmp/vim_md_page.html --toc --template=uikit.html && firefox /tmp/vim_md_page.html &<CR><CR>
```
## html

### uikit

[Preview](http://htmlpreview.github.io/?https://github.com/ryangrose/easy-pandoc-templates/blob/master/samples/uikit_sample.html)

Installation:

```
curl 'https://raw.githubusercontent.com/ryangrose/pandoc_templates/master/html/uikit.html' > ~/.pandoc/templates
```

Usage:

```
pandoc source.md -o destination.html --template=uikit.html --toc
```
Don't forget to include --toc for table of contents

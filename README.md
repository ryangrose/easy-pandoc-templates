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

## html

### uikit

Installation:

```
curl 'https://raw.githubusercontent.com/ryangrose/pandoc_templates/master/html/uikit.html' > ~/.pandoc/templates
```

Usage:

```
pandoc source.md -o destination.html --template=uikit.html --toc
```
Don't forget to include --toc for table of contents

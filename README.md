# pandoc_templates

A collection of pandoc templates that can be dropped in with no dependencies.

## installation

To install, copy the given template to `~/.pandoc/templates`

## filewatcher

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

Don't forget to include --toc for table of contents

```
pandoc source.md -o destination.html --template=uikit.html --toc
```

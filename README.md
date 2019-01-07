---
Plugins: navigation syntax  
---

# Vim Markdown

Here's my `vim-markdown` plugin, henceforth `VimMarkdown`.
`VimMarkdown` is a minimal overwrite of Vim's `markdown` to add the following features:

* Ruby libraries in [~/.vim/bundle/vim-markdown/lib/](lib)
* Read markdown metadata key-value pairs.
* Sub-plugins activated based on metadata key `Plugins:`' value.

`VimMarkdown` is meant to allow one to write `Vim-Ruby` plugins for markdown files.

# Installation

Using [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/carlosjhr64/vim-markdown

# Usage

`VimMarkdown` expects maybe a markdown metadata header like:

    ---
    Title:   The Title  
    Author:  John Doe  
    Plugins: navigation syntax  
    ---

The `Plugins:` metadata key should list the sub-plugins to be activated on the markdown file.
The following Vim-Ruby plugins are available on my installation:

* [navigation](NAVIGATION.md)
* [syntax](SYNTAX.md)

But more Vim-Ruby plugins can be added.
Since `VimMarkdown` just `require`'s the plugin as named,
the Vim-Ruby plugin can be an installed gem.
See [`markdown.rb`](lib/vim-markdown.rb?self.plugins) to see how this happens.

For help see |VimMarkdown|, `:help VimMarkdown`.

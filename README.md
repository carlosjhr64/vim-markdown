---
Plugins: navigation syntax  
---
# WithRuby

* [VERSION 0.8.2102040](https://github.com/carlosjhr64/with-ruby/releases)
* [github](https://github.com/carlosjhr64/with-ruby)

Here's my `with-ruby` plugin, henceforth `WithRuby`.
`WithRuby` is a minimal overwrite of Vim's `markdown` to add the following features:

* Ruby libraries in [~/.vim/bundle/with-ruby/lib/](lib)

* Read markdown metadata key-value pairs.
* Sub-plugins activated based on metadata key `Plugins:`' value.

`VimMarkdown` is meant to allow one to write `Vim-Ruby` plugins for markdown files.

## Installation

Using [Pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone https://github.com/carlosjhr64/vim-markdown

## Usage

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

## LICENSE:

(The MIT License)

Copyright (c) 2021 CarlosJHR64

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

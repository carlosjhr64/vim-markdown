---
Plugins: navigation syntax
---

# WithRuby

* [VERSION 1.0.210220](https://github.com/carlosjhr64/with-ruby/releases)
* [github](https://github.com/carlosjhr64/with-ruby)

## Description:

`WithRuby` facilitates writting vim plugins in ruby.

## Installation

Using neovim's built-in package management,
I created a `site/plugins/start` directory and clone the git there:
```shell
$ mkdir -p ~/.local/share/nvim/site/pack/plugins/start
$ cd ~/.local/share/nvim/site/pack/plugins/start
$ git clone https://github.com/carlosjhr64/with-ruby
```
See neovim's `:help packages` for more info.
There's an analogous way in vim-8 too.

Using [Pathogen](https://github.com/tpope/vim-pathogen):
```shell
$ cd ~/.vim/bundle
$ git clone https://github.com/carlosjhr64/with-ruby
```
But [tpope](https://github.com/tpope) recommends new users
use their respective built-in package manager.

## Features:

* Adds `~/.vim/bundle/with-ruby/lib` and `./lib` to ruby's load path.
* Includes [`VimMarkdown`](VIM_MARKDOWN.md), a minimal overwrite of Vim's `markdown`.

For help see |WithRuby|, `:help WithRuby`.

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

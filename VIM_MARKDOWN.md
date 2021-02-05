# VimMarkdown

* Reads markdown metadata key-value pairs as `let b:VimMarkdownMetadata#{key} = '#{value}'`.
* Sub-plugins activated based on metadata key `Plugins:`' value.

## Usage

`VimMarkdown` expects maybe a markdown metadata header like:

    ---
    Title:   The Title  
    Author:  John Doe  
    Plugins: navigation syntax  
    ---

The `Plugins:` metadata key should list the sub-plugins to be activated on the markdown file.
The following `VimMarkdown` plugins are available:

* [navigation](NAVIGATION.md)
* [syntax](SYNTAX.md)

If not specified, `Plugins:` defaults to "navigation syntax" or as set in `g:VimMarkdownMetadataPlugins`.
More Vim-Ruby plugins can be added.
See [`markdown.rb`](lib/vim-markdown.rb?self.plugins) to see how `VimMarkdown` requires in the plugins.

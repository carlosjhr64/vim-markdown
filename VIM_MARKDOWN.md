# VimMarkdown

* Reads markdown metadata key-value pairs as `let b:VimMarkdownMetadata#{key} = '#{value}'`.
* Sub-plugins activated based on metadata key `Plugins:`' value.

#### Usage

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

More Vim-Ruby plugins can be added.
Since `VimMarkdown` just `require`'s the plugin as named,
the VimMarkdown plugin can be an installed gem.
See [`markdown.rb`](lib/vim-markdown.rb?self.plugins) to see how this happens.

For help see |VimMarkdown|, `:help VimMarkdown`.

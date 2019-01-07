" The root directory of the plugin:
ruby VIM_MARKDOWN_DIRECTORY = File.dirname File.dirname Vim.evaluate('expand("<sfile>")')
" Adding the plugin's ruby lib directory to the LOAD_PATH:
ruby $LOAD_PATH.unshift File.join(VIM_MARKDOWN_DIRECTORY, 'lib')
" Give precedence to any local ruby libraries
ruby $LOAD_PATH.unshift './lib'
" remove redundant paths
ruby $LOAD_PATH.uniq!

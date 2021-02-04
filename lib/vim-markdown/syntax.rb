module VimMarkdown
module Syntax
  def self.after_syntax
    # Functions
    [
      %q{
        function VimMarkdownFoldText()
          if (v:foldstart == 1) && (getline(1) =~ '\_^---')
            return "--- MetaData(zo/zc to view/close) "
          end
          let n = v:foldend - v:foldstart + 1
          return "+-- ".n." lines: "
        endfunction
      },
    ].each{ |func| VIM.command func.strip }
    # Commands
    [
      # Conceals 
      %q{
        syn region markdownCode
        matchgroup=markdownCodeDelimiter
        start="`" end="`"
        keepend contains=markdownLineStart
        concealends
      },
      %q{
        syn region markdownLinkText
        matchgroup=markdownLinkTextDelimiter
        start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@="
        nextgroup=markdownLink,markdownId skipwhite
        contains=@markdownInline,markdownLineStart
        concealends
      },
      %q{
        syn region markdownLink
        matchgroup=markdownLinkDelimiter
        start="(" end=")"
        contains=markdownUrl keepend contained
        conceal cchar=⁺
      },
      'syn match VimMarkdownHelpHyperTextJump "|[^"*| ]\\+|" contains=VimMarkdownHelpBar',
      'syn match VimMarkdownHelpBar contained "|" conceal',
      'hi def link VimMarkdownHelpHyperTextJump Identifier',
      'hi clear Conceal',
      'setlocal conceallevel=2',
      # Folds
      'syn region VimMarkdownMetaDataFold start="\%^---" end="---" keepend transparent fold',
      'setlocal foldmethod=syntax',
      'setlocal foldtext=VimMarkdownFoldText()',
    ].each{ |cmd| VIM.command cmd.strip.gsub(/\s+/, ' ') }
  end
end
end

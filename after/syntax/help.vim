syn region helpLinkText
      \ matchgroup=helpLinkTextDelimiter
      \ start="!\=\[\%(\_[^]]*]\%( \=[[(]\)\)\@=" end="\]\%( \=[[(]\)\@="
      \ nextgroup=helpLink
      \ skipwhite
      \ concealends

syn region helpLink
      \ start="(" end=")"
      \ keepend
      \ contained
      \ conceal cchar=⁺

hi def link helpLinkText              htmlLink
hi clear Conceal
setlocal conceallevel=2

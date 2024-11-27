" Vim syntax file
" Language:     Super Cub
" Current Maintainer:   Karim Vergnes <me@thesola.io>
" Filenames:    *.h, *.cub

let s:cpo_save = &cpo
set cpo&vim

syn sync ccomment
syn sync maxlines=200


setlocal iskeyword=!,_,@-@,a-z,A-Z

syn keyword cubMacroDef  macro_rules!

syn keyword cubAttrTypes fn var type
syn keyword cubParamTypes ident expr tt

syn match cubMacroCall '\v\w+!(\()@='

syn match cubVariable '\v\$\w+'
syn match cubVariable '\$\*'

syn region cubMacroAttr start='#\[' end='\]' contains=cString,cCharacter,cNumbers

hi def link cubMacroDef     PreProc
hi def link cubMacroAttr    PreProc
hi def link cubMacroCall    PreProc
hi def link cubVariable     PreProc
hi def link cubAttrTypes    Keyword
hi def link cubParamTypes   Type

let &cpo = s:cpo_save
unlet s:cpo_save

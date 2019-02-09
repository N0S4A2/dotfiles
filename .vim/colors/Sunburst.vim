" Vim color file
" Converted from Textmate theme Sunburst using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Sunburst"

hi Cursor ctermfg=NONE ctermbg=7 cterm=NONE guifg=NONE guibg=#5f5a60 gui=NONE
hi Visual ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#5f5a60 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#0c0c0c gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#0c0c0c gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#0c0c0c gui=NONE
hi LineNr ctermfg=7 ctermbg=0 cterm=NONE guifg=#5f5a60 guibg=#0c0c0c gui=NONE
hi VertSplit ctermfg=8 ctermbg=8 cterm=NONE guifg=#5f5a60 guibg=#5f5a60 gui=NONE
hi MatchParen ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi StatusLine ctermfg=15 ctermbg=8 cterm=bold guifg=#9d999e guibg=#5f5a60 gui=bold
hi StatusLineNC ctermfg=15 ctermbg=8 cterm=NONE guifg=#9d999e guibg=#5f5a60 gui=NONE
hi Pmenu ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=8 cterm=NONE guifg=NONE guibg=#5f5a60 gui=NONE
hi IncSearch ctermfg=0 ctermbg=3 cterm=NONE guifg=#0c0c0c guibg=#cda869 gui=NONE
hi Search ctermfg=0 ctermbg=3 cterm=NONE guifg=#0c0c0c guibg=#cda869 gui=NONE
hi Directory ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Folded ctermfg=7 ctermbg=0 cterm=NONE guifg=#5f5a60 guibg=#0c0c0c gui=NONE
hi EndOfBuffer ctermfg=0 ctermbg=0 cterm=NONE guifg=#0c0c0c guibg=#0c0c0c gui=NONE

hi Normal ctermfg=15 ctermbg=0 cterm=NONE guifg=#9d999e guibg=#0c0c0c gui=NONE
hi Boolean ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Character ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Comment ctermfg=7 ctermbg=NONE cterm=NONE guifg=#5f5a60 guibg=NONE gui=italic
hi Conditional ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi Constant ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Define ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Function ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi Identifier ctermfg=10 ctermbg=NONE cterm=NONE guifg=#8f9d6a guibg=NONE gui=NONE
hi Keyword ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi Label ctermfg=2 ctermbg=NONE cterm=NONE guifg=#698857 guibg=NONE gui=NONE
hi NonText ctermfg=8 ctermbg=0 cterm=NONE guifg=#5f5a60 guibg=#0c0c0c gui=NONE
hi Number ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi Operator ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi PreProc ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#9d999e guibg=NONE gui=NONE
hi SpecialKey ctermfg=8 ctermbg=0 cterm=NONE guifg=#5f5a60 guibg=#0c0c0c gui=NONE
hi Statement ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi StorageClass ctermfg=10 ctermbg=NONE cterm=NONE guifg=#8f9d6a guibg=NONE gui=NONE
hi String ctermfg=2 ctermbg=NONE cterm=NONE guifg=#698857 guibg=NONE gui=NONE
hi Tag ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=bold guifg=#9d999e guibg=NONE gui=bold
hi Todo ctermfg=7 ctermbg=NONE cterm=inverse,bold guifg=#5f5a60 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi rubyFunction ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyConstant ctermfg=13 ctermbg=NONE cterm=NONE guifg=#9b703f guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=2 ctermbg=NONE cterm=NONE guifg=#698857 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyInclude ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyControl ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyOperator ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi rubyException ctermfg=5 ctermbg=NONE cterm=NONE guifg=#7f5a2f guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=13 ctermbg=NONE cterm=NONE guifg=#9b703f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=7 ctermbg=NONE cterm=NONE guifg=#5f5a60 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi htmlTag ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi htmlEndTag ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi htmlTagName ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi htmlArg ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=10 ctermbg=NONE cterm=NONE guifg=#8f9d6a guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi yamlAnchor ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi yamlAlias ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=2 ctermbg=NONE cterm=NONE guifg=#698857 guibg=NONE gui=NONE
hi cssURL ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=11 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi cssColor ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi cssClassName ctermfg=14 ctermbg=NONE cterm=NONE guifg=#5d90ba guibg=NONE gui=NONE
hi cssValueLength ctermfg=4 ctermbg=NONE cterm=NONE guifg=#5573a3 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=9 ctermbg=NONE cterm=NONE guifg=#9b703f guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

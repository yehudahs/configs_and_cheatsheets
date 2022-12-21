vim.cmd [[
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

vim.cmd [[
    hi CurrentWord ctermbg=237
    hi CurrentWordTwins ctermbg=237
    hi CurrentWordTwins cterm=underline
]]

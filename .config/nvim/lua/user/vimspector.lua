vim.cmd [[
    let g:vimspector_enable_mappings = 'HUMAN'
    nmap <Leader>dk <Plug>VimspectorRestart
    nmap <Leader>dh <Plug>VimspectorStepOut
    nmap <Leader>dl <Plug>VimspectorStepInto
    nmap <Leader>dj <Plug>VimspectorStepOver
    nmap <Leader>di <Plug>VimspectorBalloonEval
]]

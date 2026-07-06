set expandtab    " expand tabs to spaces
set tabstop=4    " use 4 spaces per tab
set ruler        " show line, col at status line
set hlsearch     " highlight searches
set splitbelow   " open preview at bottom

syntax on

colorscheme desert

autocmd FileType dart setlocal tabstop=2

let g:ale_completion_enabled = v:true
let g:ale_sign_column_always = v:true
let g:ale_floating_preview   = v:true

" Use ALE's auto completion for cpp
autocmd FileType cpp setlocal omnifunc=ale#completion#OmniFunc

" open hover text on Ctrl + h
nmap <C-h> :ALEHover<CR>

cabbrev gtd  ALEGoToDefinition
cabbrev gtdt ALEGoToDefinition -tab
cabbrev gti  ALEGoToImplementation
cabbrev gtit ALEGoToImplementation -tab
cabbrev fr   ALEFindReference

let no_markdown_prompt = "You are a precise coding assistant. Output raw code ONLY. Do not wrap the code in markdown code blocks like ``` or ```lang. No explanations, no introduction, no markdown."

let g:vim_ai_complete = {
\  "prompt" : no_markdown_prompt,
\  "options": {
\    "endpoint_url": "http://192.168.1.40:8080/v1/chat/completions",
\    "model": "local-model",
\    "auth_type": "none",
\   }
\ }

let g:vim_ai_edit = {
\  "prompt" : no_markdown_prompt,
\  "options": {
\    "endpoint_url": "http://192.168.1.40:8080/v1/chat/completions",
\    "model": "local-model",
\    "auth_type": "none",
\   }
\ }

let g:vim_ai_chat = {
\  "options": {
\    "endpoint_url": "http://192.168.1.40:8080/v1/chat/completions",
\    "model": "local-model",
\    "auth_type": "none",
\  }
\}


# vim configuration

#parameters
{ pkgs, lib, ... }:

#definition
{
  environment.systemPackages = [
    (pkgs.vim_configurable.customize {
      name = "vim";
      vimrcConfig.vam.pluginDictionaries = [
        { names = [
          "vim-dispatch"
          "ctrlp"
          "Syntastic"
          "YouCompleteMe"
        ];}
      ];
      vimrcConfig.customRC =
        ''
          " Vim5 and later versions support syntax highlighting. Uncommenting the next
          " line enables syntax highlighting by default.
          if has("syntax")
            syntax on
          endif

          " If using a dark background within the editing area and syntax highlighting
          " turn on this option as well
          set background=dark

          " Uncomment the following to have Vim jump to the last position when
          " reopening a file
          if has("autocmd")
            au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
          endif

          " Uncomment the following to have Vim load indentation rules and plugins
          " according to the detected filetype.
          if has("autocmd")
            filetype plugin indent on
          endif

          " The following are commented out as they cause vim to behave a lot
          " differently from regular Vi. They are highly recommended though.
          "set showcmd    " Show (partial) command in status line.
          set showmatch   " Show matching brackets.
          "set ignorecase   " Do case insensitive matching
          "set smartcase    " Do smart case matching
          set incsearch   " Incremental search
          set autowrite   " Automatically save before commands like :next and :make
          set hidden    " Hide buffers when they are abandoned
          set mouse=a   " Enable mouse usage (all modes)
          set backspace=2

          " linenumbers on
          set nu
          set relativenumber

          " BEGIN FILETYPE SETTINGS
          " GLOBAL
          set encoding=utf8
          setglobal fileencoding=utf8
          set copyindent
          set preserveindent

          " C/C++
          autocmd BufRead,BufNewFile *.c set noet sts=8 ts=8 sw=8
          autocmd BufRead,BufNewFile *.cpp set noet sts=8 ts=8 sw=8
          autocmd BufRead,BufNewFile *.h set noet sts=8 ts=8 sw=8

          " Nix
          autocmd BufRead,BufNewFile *.nix set et sts=2 ts=2 sw=2

          " YAML
          autocmd BufRead,BufNewFile *.yml set et sts=2 ts=2 sw=2
          autocmd BufRead,BufNewFile *.rul set et sts=2 ts=2 sw=2
          autocmd BufRead,BufNewFile *.sav set et sts=2 ts=2 sw=2

          " TXT
          autocmd BufRead,BufNewFile *.txt set noet sts=4 ts=4 sw=4
          autocmd BufRead,BufNewFile *.TXT set noet sts=4 ts=4 sw=4

          " PHP
          autocmd BufRead,BufNewFile *.php set noet sts=4 ts=4 sw=4
          autocmd BufRead,BufNewFile *.PHP set noet sts=4 ts=4 sw=4
          "END FILETYPE SETTINGS

          " BEGIN KEYBINDS
          nnoremap <f2> :tabp<cr>
          nnoremap <f3> :tabn<cr>
          inoremap <f2> <esc>:tabp<cr>
          inoremap <f3> <esc>:tabn<cr>
          " END KEYBINDS
        '';
    })
  ];
}

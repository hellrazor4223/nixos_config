# vim configuration

#parameters
{ pkgs, lib, ... }:

#definition
{
	environment.systemPackages = [
		(pkgs.vim_configurable.customize {
			name = "vim";
			vimrcConfig.vam.pluginDictionaries = [ 
				{ names =	[
					"vim-dispatch"
					"ctrlp"
					"Syntastic"
					"YouCompleteMe"
					
				];}
			];
			vimrcConfig.customRC = 
				''
					" Vim set options
					" The following are commented out as they cause vim to behave a lot
					" differently from regular Vi. They are highly recommended though.
					"set showcmd		" Show (partial) command in status line.
					"set showmatch		" Show matching brackets.
					"set ignorecase		" Do case insensitive matching
					"set smartcase		" Do smart case matching
					"set incsearch		" Incremental search
					set autowrite		" Automatically save before commands like :next and :make
					set hidden			" Hide buffers when they are abandoned
					set mouse=a			" Enable mouse usage (all modes)
					set background=dark	" Select your default background
					set nu				" Turn on linenumbers
					set relativenumber	" Linenumber start at cursor position
					set encoding=utf8	" Default encoding
					set copyindent		" New lines get automatically intended, similar to former line
					set preserveindent	" Keep intendation structure on new lines
					set expandtab		" replace tabs with space when entering a tab
					set tabstop=4		" how many spaces are one tab
					set softtabstop=4	" how many spaces are used when pressing tab
					set shiftwidth=4	" how many spaces are when intending

					setglobal fileencoding=utf8	" files are forced to utf-8
					setglobal bomb		" add UTF-8 indentifier to file

					" turn on sytax if available
					if has("syntax")
					  syntax on
					endif
					
					" Uncomment the following to have Vim jump to the last position when
					" reopening a file
					if has("autocmd")
					  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
					endif

					" file type autocmd definitions
					" tex file type behaviour
					let g:tex_flavor = "latex"
					autocmd Filetype tex setlocal nofoldenable
					set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf
					set t_Co=256
				'';
		})
	];
}


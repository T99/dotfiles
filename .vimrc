" Trevor's Vim Configuration File

" General Vim Settings
	
	" Disable compatibility with vi.
	set	nocompatible
	
	" Enable filetype detection.
	filetype on

" User-Interface Options

	" Enable line numbers.
	set number

	" Always show cursor position information.
	set ruler

	" Highlight the row that the cursor is on.
	" set cursorline

	" Disable line wrapping.
	set nowrap

	" Enable syntax highlighting.
	syntax on

	" Show a count of search results in the short message.
	set shortmess-=S

	" Show a visual wrapping guide for an 80-character max line length.
	" set colorcolumn=80

	" Allow backspacing over 
	set backspace=indent,eol,start

	" Automatically include a comment leader when hitting Enter in insert mode.
	set formatoptions+=r

" Indentation Settings
	
	" Make newlines inherit the indentation of the previous line.
	set autoindent
	
	" Automatically add or remove indentation based on syntax/context clues.
	set smartindent
	
	" Prevent tabs from being automatically expanded into spaces.
	set noexpandtab
	
	" Set the visual width of a literal tab character to be 4 space characters wide.
	set tabstop=4
	
	set softtabstop=4
	
	" Set the configured indentation key to indent by 4 spaces worth of indentation.
	"     Because 'tabstop' is configured as 4, this will insert 1 tab character.
	"     Note that if tabstop was not evenly divisible by shiftwidth, a mix of
	"     spaces and tabs would be inserted to produce the desired amount of
	"     indentation.
	set shiftwidth=4

" Folding Settings
	
	" Set folding mode to manual.
	set foldmethod=manual

" Key Mapping/Remapping

	" Remap 'o' and 'O' to not enter INSERT mode.
	" (also includes a fix for again preventing Vim from un-indenting empty
	" lines, similarly to the above remapping)
	nnoremap o ox<BS><Esc>
	nnoremap O Ox<BS><Esc>
	
	" Remap Tab in COMMAND AND VISUAL mode to insert a level of indentation.
	nnoremap <Tab> >>
	vnoremap <Tab> >gv

	" Remap Shift+Tab in COMMAND and INSERT mode to remove a level of
	" indentation.
	nnoremap <S-Tab> <<
	inoremap <S-Tab> <C-d>
	vnoremap <S-Tab> <gv
	
	" Remap Control+Space to open the autocompletion menu in INSERT mode.
	inoremap <C-Space> <C-n>

	" While the autocompletion menu is open, remap Enter to choose the
	" current option.
	imap <expr> <CR> (pumvisible() ? "\<C-y>" : "\<CR>")

	" While the autocompletion menu is open, remap Escape to cancel/close
	" autocompletion.
	imap <expr> <Esc> (pumvisible() ? "\<C-e>" : "\<Esc>")
	
	" Prevent Vim from un-indenting empty lines.
	inoremap <CR> <CR>x<BS>

" Coloration Settings

	" Set color scheme.
	colorscheme molokai

	" Override color scheme settings to allow transparent background.
	" hi Normal guibg=NONE ctermbg=NONE

" Netrw (File Browser) Settings
	
	" Use the 'tree' list style.
	let g:netrw_listtyle = 3
	
	" Hide the Netrw banner.
	let g:netrw_banner = 0
	
	" Open files in the previous pane.
	let g:netrw_browse_split = 4
	
	" Allocate 25% of the window width to Netrw.
	let g:netrw_winsize = 25


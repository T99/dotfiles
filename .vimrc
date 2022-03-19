" Trevor's Vim Configuration File

" General Vim Settings
	
	" Disable compatibility with vi.
	set nocompatible
	
	" Enable filetype detection.
	filetype on

" User-Interface Options
	
	" Enable line numbers.
	set number
	
	" Always show cursor position information.
	set ruler
	
	" Highlight the row that the cursor is on.
	set cursorline
	
	" Disable line wrapping.
	set nowrap

	" Enable syntax highlighting.
	syntax on

" Indentation Settings
	
	" Make newlines inherit the indentation of the previous line.
	set autoindent
	
	" Prevent tabs from being automatically expanded into spaces.
	set noexpandtab
	
	" Set the visual width of a literal tab character to be 4 space characters wide.
	set tabstop=4
	
	" Set the configured indentation key to indent by 4 spaces worth of indentation.
	"     Because 'tabstop' is configured as 4, this will insert 1 tab character.
	"     Note that if tabstop was not evenly divisible by shiftwidth, a mix of
	"     spaces and tabs would be inserted to produce the desired amount of
	"     indentation.
	set shiftwidth=4

" Key Mapping/Remapping

	" Prevent Vim from un-indenting empty lines.
	inoremap <CR> <CR>x<BS>

	" Remap 'o' and 'O' to not enter INSERT mode.
	" (also includes a fix for again preventing Vim from un-indenting empty
	" lines, similarly to the above remapping)
	nnoremap o ox<BS><Esc>
	nnoremap O Ox<BS><Esc>

" Coloration Settings

	" Set color scheme.
	colorscheme molokai

	" Override color scheme settings to allow transparent background.
	hi Normal guibg=NONE ctermbg=NONE


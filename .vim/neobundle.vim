"====================
"1 - Neobunble config
"====================

if has('vim_starting')
	set nocompatible
	"Required
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc', {
\	'build' : {
\		'windows' : 'make -f make_mingw32.mak',
\		'cygwin' : 'make -f make_cygwin.mak',
\		'mac' : 'make -f make_mac.mak',
\		'unix' : 'make -f make_unix.mak',
\		},
\	}

"===============
"2 - Colorscheme
"===============

NeoBundle 'vim-scripts/Colour-Sampler-Pack'
NeoBundle 'https://github.com/tomasr/molokai'
NeoBundle 'https://github.com/tpope/vim-vividchalk.git'
NeoBundle 'https://github.com/nielsmadan/harlequin'
NeoBundle 'https://github.com/sjl/badwolf'

"================
"3 -  Programming
"================

NeoBundle 'Tagbar', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'vim',
\			'latex',
\			'make',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	},
\}
NeoBundle 'Valloric/YouCompleteMe', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'lua',
\			'python',
\			'sh',
\			'tex',
\			'verilog',
\			'vhdl',
\			'vim',
\			'zsh',
\		],
\	},
\}
NeoBundle 'https://github.com/mhinz/vim-signify'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'https://github.com/SirVer/ultisnips'
NeoBundle 'https://github.com/oblitum/rainbow', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'vim',
\			'sh',
\		],
\	},
\}
NeoBundle 'https://github.com/Raimondi/delimitMate', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'c',
\			'cpp',
\			'vim',
\			'latex',
\			'python',
\			'sh',
\			'vhdl',
\			'verilog',
\		],
\	},
\}
"NeoBundle 'honza/vim-snippets'

"=========
"4 - Unite
"=========

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-outline'
NeoBundle 'Shougo/neomru.vim'

"================
"5 - Filetypes
"================

NeoBundle 'https://github.com/WeiChungWu/vim-SystemVerilog', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : "verilog",
\	},
\}
NeoBundle 'https://github.com/Cognoscan/vim-vhdl', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : "vhdl",
\	},
\}
NeoBundle 'kergoth/aftersyntaxc.vim', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : "c",
\	},
\}
NeoBundle 'https://github.com/jtratner/vim-flavored-markdown', {
\	'lazy' : 1,
\   'autoload' : {
\		'filetypes' : "markdown",
\	},
\}
NeoBundle 'https://github.com/jcf/vim-latex', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'tex',
\			'latex',
\		],
\	},
\}
NeoBundle 'jamessan/vim-gnupg'
NeoBundle 'https://github.com/vim-scripts/armasm'

"================
"6 - Miscelaneous
"================

NeoBundle 'sk1418/HowMuch'
NeoBundle 'https://github.com/bling/vim-airline'
NeoBundle 'VimExplorer', {
\	'lazy' : 1,
\	'autoload' : {
\		'mappings' : 'F7',
\		'commands' : 'VE',
\	},
\}
NeoBundle 'myusuf3/numbers.vim'
 " mapping does not work when set to 1
NeoBundle 'jistr/vim-nerdtree-tabs', {
\	'depends': 'https://github.com/scrooloose/nerdtree.git',
\	'lazy' : 0,
\	'autoload' : {
\		'mappings' : 'F9',
\		'commands' : 'NERDTreeTabsToggle',
\	},
\}
NeoBundle 'https://github.com/itchyny/calendar.vim', {
\	'lazy' : 1,
\	'autoload' : {
\		'commands' : 'Calendar',
\	}
\}
NeoBundle 'https://github.com/Lokaltog/vim-easymotion'
NeoBundle 'https://github.com/Shougo/vinarise.vim'
NeoBundle 'https://github.com/mhinz/vim-startify.git'
NeoBundle 'https://github.com/dhruvasagar/vim-vinegar', {
\	'lazy' : 1,
\	'autoload' : {
\		'mappings' : '-'
\	}
\}
NeoBundle 'tpope/vim-git', {
\	'lazy' : 1,
\	'autoload' : {
\		'filetypes' : [
\			'gitcommit',
\			'gitconfig',
\			'gitsendemail',
\		]
\	}
\}
NeoBundle 'mbbill/undotree', {
\	'lazy' : 1,
\   'autoload' : {
\		'mappings' : 'F6',
\		'commands' : 'UndotreeToggle',
\	},
\}

"=========================
"7 - Vim built-in plugins
"=========================

runtime! ftplugin/man.vim

"===========================
"8 - Under test/to be tested
"===========================

"NeoBundle 'https://github.com/junegunn/vim-easy-align'
"NeoBundle 'https://github.com/dhruvasagar/vim-table-mode/'
"Issue 29:
"NeoBundle 'https://github.com/chrisbra/csv.vim'
"Issue 18:
"NeoBundle 'https://github.com/jiangmiao/auto-pairs'
"Issue 21:
"NeoBundle 'https://github.com/Rykka/colorv.vim
"NeoBundle 'https://github.com/Rykka/galaxy.vim
"NeoBundle 'https://github.com/benmills/vimux
"NeoBundle 'https://github.com/terryma/vim-multiple-cursors (multiple cursors)

"NeoBundle 'https://github.com/ujihisa/vim-rengbang'
"NeoBundle 'https://github.com/Shougo/vimfiler.vim'
" fugitive uses augroup fugitive.
" NeoBundle 'tpope/vim-fugitive', { 'augroup' : 'fugitive'}


"=========================
"9 - NeoBundle post config
"=========================

let g:neobundle#types#git#default_protocol = "https"

call neobundle#end()

filetype plugin indent on    " required!

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

if !has('vim_starting')
	" Call on_source hook when reloading .vimrc.
	call neobundle#call_hook('on_source')
endif

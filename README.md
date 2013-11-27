rnpvim: Rafael Pereira's vim config files
==============================

Last update: 2013.11.27 (Wed) 11:06:28

1. Installation
-------------------

At the moment there is no automatic installation, only the manual one. Then
open a terminal ang get the rnpvim code:

`git clone https://github.com/rafaelnp/rnpvim.git rnpvim`

backup your current Vim configuration:

`cp -R ~/.vim ~/.vim.bak`

`cp ~/.vimrc ~/.vimrc.bak`

and create the symbolic links to the new configuration files:

`ln -s your-path/rnpvim/.vim ~/.vim`

`ln -s your-path/rnpvim/.vimrc ~/.vimrc`

and execute:

`vim +BundleInstall`

and the plugins shall be synchronized with github


2. Vim configuration
-------------------------

This configuration was tested on the Vim 7.4.x version (where x is the patch number) and Linux. To configuration option there is a short explanation. For experienced Vim users it may be boring or repetitive, but i think useful for beginners or also for a quick reference.

2.1 General
----------------

**compatible (cp) / nocompatible (nocp)**

It turns on/off the Vi-compatible mode. We turn off here the compatibility mode, so we can the full Vim capabilities

```vim
set nocompatible
```
 or

```vim
set nocp
```

**autodir**

Always switch to the current file directory when you open, switch, close a file/buffer/window

```vim
set autochdir
```

**autowriteall**

Saves the file contents when switching/opening/creating buffers/files/windows.

```vim
set autowriteall
```

**backup options**

The file backup is not used, because i use heavily use git in my workflow, making this option unnecessary. Deactivating this option makes also the **writebackup, backupdir, backupcopy** unnecessary too.

```vim
set nobackup            " no backup files, we have git
```

**backspace**

Configure the backspace behaviour over indenting, 

```vim
 set backspace=indent,eol,start
```

**helplang**

Comma separated list of languages.  Vim will use the first language for which the desired help can be found.  The English help will always be used as a last resort.

```vim
set helplang=de,en
```

**history**

Sets how many typed commands are stored.

```vim
set history=100
```

**printoptions**

List of items that control the print format of the  [hardcopy]() output.

```vim
set printoptions=paper:a4
```

**ruler**

```vim
set ruler                                 " Show cursor line and column number position
```

**numbers**
Show the current buffer line numbers. This option is mandatory if you are using the [numbers.vim](https://github.com/myusuf3/numbers.vim) plugin.

    set number

**Wildignore**

List of files to be ignored when performing different actions (autocomplete, expansions, and so on)

```vimscript
set wildignore=*.o,*.obj,*.bak,*.exe,*~,*.aux,*.fls
```

**visualbell**

Disables the beep and visual bell (flash). It is really annoying.

```vim
set visualbell t_vb=                      " disable the f***ing annoying visual
                                          " and sound bell :)
set novisuallbell
set noerrorbells                         " no f***ing noise
```

**tab**

I did not find it in the Vim help. FIXME

```vim
tab all                                   " open a new tab instead of launching a new
```

2.2 Formating
----------------

Text formating configuration:

**syntax**
Enables the syntax highlighting engine. It highlight different parts of the text (specific keywords or text matching a pattern)  with different colours

```vim
syntax enable                     " syntax highlight on and keep your settings
```

**Encoding and line termination**

Vim supports the 3 most used [line terminations](https://en.wikipedia.org/wiki/Newline) (unix, mac, dos) and the corresponding operating systems as well. To unify it and the text encoding, the following configuration is used:

```vim
    if has('unix') || has('macunix')
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix                    " unix rocks :)
        set fileformats=unix
    elseif has('mac')
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix
        set fileformats=unix
    else
        set termencoding=utf-8
        set encoding=utf-8
        set fileformat=unix
        set fileformats=unix
    endif
```

**Formatoptions table**

The [fo-table](http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table) tells how Vim should format the text. The following options are used:

| Option   | Description | 
|:----------:|:--------------:|
|  t	| Auto-wrap text using textwidth |
|  c	| Auto-wrap comments using textwidth, inserting the current comment leader automatically |
|  r	| Automatically insert the current comment leader after hitting |
|  q	| Allow formatting of comments with "[gq](http://vimdoc.sourceforge.net/htmldoc/change.html#gq)" |
|  n	|When formatting text, recognize numbered lists |

```vimscript
set fo=tcrqn                      " See :help fo-table
```

**Indentation options**

FIXME

```vim
set ai                            " autoindent
set si                            " smartindent
set cindent                       " do c-style indenting
```

3. Plugins
----------

The following plugins are used in the current configuration:

1. [ctrlp.vim](https://github.com/kien/ctrlp.vim) (fuzzy text search)
1. [genutils](https://github.com/vim-scripts/genutils) (Basic utilities function)
3. [nerdtree](https://github.com/scrooloose/nerdtree.git) (File browser)
4. [numbers.vim](https://github.com/myusuf3/numbers.vim) (Line numbering)
5. [powerline](https://github.com/Lokaltog/powerline) (Status bar)
6. [SelectBuf](https://github.com/vim-scripts/SelectBuf) (Buffer browser)
7. [Syntastic](https://github.com/scrooloose/syntas) (Static analysis checker)
8. [Tabular](https://github.com/godlygeek/tabular.git) (Texttabulator)
9. [Tagbar](https://github.com/majutsushi/tagbar) (Tag browser)
1. [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs.git) (File browser with tabs)
1. [VimExplorer](https://github.com/mbbill/VimExplorer) (File browser)
1. [Vim-Flavoured-Markdown](https://github.com/jtratner/vim-flavored-markdown) (Markdown)
1. [Vundle](https://github.com/gmarik/vundle)(Plugins manager)
1. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (Text/Code completion)

4. Mappings
---------------
FIXME

5. Colorschemes
---------------

Available colorscheme:

* [vim-vividchalk](https://github.com/tpop/vim-vividchalk.git)

![alt text](http://www.vimninjas.com/images/posts/10vim/vividchalk.png)


6. Known problems
---------------

* The plugin snipMate does note work if the plugin YouCompleteMe is also installed.

7. TODO
---------------

This README is still incomplete. It is being gradually expanded/improved.
For new and experimental stuff, take a look at the [labs](https://github.com/rafaelnp/rnpvim/tree/labs) branch.

* Vim configuration explained
* Plugins configuration
* FAQ
* Mappings


# dotvim

The following (Neo)Vim configuration is to help me work with programming.

The reason for it, is that I work with many technologies, sometimes changes per
projects.

The main technologies that I'm placing emphases on are:

 - Ruby
 - Go
 - HTML
 - CSS
 - Javascript (React/JSX, Vue, es6, es7, babel)
 - Elm
 - XML
 - Rust
 - C
 - Python

## Features

 - ``vimrc`` handling
 - Incremental and smart case search
 - Sublime like text editing of multiple cursors
 - Information regarding trailing whitespaces, including cleaning shortcuts
 - Logical and Visual layout (for Right-To-Left lanaguegs) editing
 - Tabs expanded to 2 spaces by default, except for Python
 - Keeping the ``<Leader>`` key as Backspace
 - Adding ``jj`` in edit mode to become alias to the ``<ESC>`` key
 - Highlight current row and color column 80
 - Syntax checking
 - Snippets
 - Completion Quotes, parenthesis pairs, etc
 - Extended pair matching with %
 - ASCII and table drawing
 - Fuzzy file, buffer, MRU, tag, etc finder
 - Task list
 - VCS support
 - Tab Completion
 - Commenting
 - History management, including persistent undo
 - Additional documentation support
 - Reload file when changed from outside
 - Working with error window (a.k.a. quickfix)
 - In-line documentation
 - Thesaurus, grammer and dictionary spelling
 - Language Server support

## Installation
The following commands will clone the repo, symlink ~/.vimrc and update the bundles:

```
git clone https://github.com/ik5/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugins from the command line:

```
vim +PlugUpdate +qa
```

To add or override settings, place them in ``~/.vim/vimrc.local``.

To update submodules in the future, when you have vim running, source vimrc to make sure plugins list is updated (or
restart vim):

```
:PlugUpdate
```

### Upgrading

In case you're updating from previous Vundle based to vim-plug, remove the bundle directory as it's not needed anymore,
get vim-plug and install the plugins:

```
cd ~/.vim
rm -rf bundle
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugUpdate +qa
```

## Shortcuts

### General

| Key | Description |
| --- | ----------- |
| ``\\`` | `<Leader>` (as a default) |
| ``jj`` | ``<ESC>`` on insert mode |
| ``<leader>+r`` | Load .vimrc |
| ``<leader>+R`` | Reload vim |
| ``K`` | Show documentation under the cursor |
| ``<leader>w`` | Fast save current file (will not work on a buffer without file name) |
| ``<c-J>`` / ``<c-Down>`` | Navigate window / terminal - go down down |
| ``<c-K>`` / ``<c-Up>`` | Navigate window / terminal- go up |
| ``<c-H>`` / ``<c-Left>`` | Navigate window / terminal- go left |
| ``<c-L>`` / ``<c-Right>`` | Navigate window / terminal- go right |
| ``<c-W>`` | Window functions on insert mode as well |
| ``-`` / ``+`` | Resize horizontal splits |
| ``<alt-,>`` / ``<alt-.>`` | Rezie vertical splits |
| ``<F2>`` | Close (but not delete) current buffer |
| ``<leader-d>`` | Delete current buffer |
| ``<leader-D>`` | Delete current buffer, but keep the split (switch to prev buffer) |
| ``<leaderS>`` | Delete trailling whitespace |
| ``<F5>`` | Toggle hlsearch |
| ``<c-d>`` / ``<c-u>`` | Center line when moving up and down half a screen |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |

###

| Key | Description |
| --- | ----------- |
| | |


## Plugins

| Name | Description |
| | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |
| [](https://github.com/) | |




# dotvim
My dotvim - work in progress - Beta stages

Making my VIM to be close to an IDE setup for the following languages:

 - Ruby
 - Go
 - HTML
 - CSS
 - Javascript
 - XML
 - Rust

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
 - Git support
 - Tab Completion
 - Commenting
 - History management, including persistent undo
 - Additional documentation support
 - Reload file when changed from outside
 - Working with error window (a.k.a. quickfix)

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

## Plugins

| Name                                                                      | Description                                                                                             |
| ------------------------------------------------                          | -----------------------                                                                                 |
| [molokai](https://github.com/tomasr/molokai)                              | The monokai theme for VIM                                                                               |
| [badwolf](https://github.com/sjl/badwold)                                 | Inspired by Doctor Who Rose Tailor theme :)                                                             |
| [vim-polyglot](https://github.com/sheerun/vim-polyglot)                   | Over 70 language pack support for vim                                                                   |
| [Syntastic](https://github.com/scrooloose/syntastic)                      | Syntax checking for many programming languages.                                                         |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)                     | Git support from insdie vim                                                                             |
| [gitv](https://github.com/gregsexton/gitv)                                | See git changes visually from inside vim                                                                |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                | Indicate what was changed based on latest git status at the gutter level                                |
| [nerdcommenter](https://github.com/scrooloose/nerdcommenter)              | Commenting based on syntax                                                                              |
| [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)   | Multiple cursors like with Sublime                                                                      |
| [vim-dispatch](https://github.com/tpope/vim-dispatch)                     | Execute things in async                                                                                 |
| [mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)               | Test functions for other plugins                                                                        |
| [tlib-vim](https://github.com/tomtom/tlib_vim)                            | Dependencies for tlib                                                                                   |
| [nerdtree](https://github.com/scrooloose/nerdtree)                        | File explorer that is not Sexplore                                                                      |
| [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)                            | Fuzzy file, buffer, mru, tag etc finder                                                                 |
| [bufexplorer](https://github.com/jlanzarotta/bufexplorer)                 | Buffer management plugin                                                                                |
| [ruby](https://github.com/vim-ruby/vim-ruby)                              | Ruby support for vim                                                                                    |
| [vim-rails](https://github.com/tpope/vim-rails)                           | Rails support for vim                                                                                   |
| [vim-bundler](https://github.com/tpope/vim-bundler)                       | Bundler support for vim                                                                                 |
| [vim-endwise](https://github.com/tpope/vim-endwise)                       | wisely add "end" in ruby, endfunction/endif/more in vim script, etc                                     |
| [vim-test](https://github.com/janko-m/vim-test)                           | Execute tests of many languages                                                                         |
| [vim-ruby-sinatra](https://github.com/hallison/vim-ruby-sinatra)          | Support for [Sinatra](http://www.sinatrarb.com/)                                                        |
| [vim-go](https://github.com/fatih/vim-go)                                 | [Golang](https://golang.org/) support for vim                                                           |
| [go-explorer](https://github.com/garyburd/go-explorer)                    | Explore go code and GoDoc                                                                               |
| [vim-unimpaired](https://github.com/tpope/vim-unimpaired)                 | pairs of handy bracket mappings                                                                         |
| [auto-pairs](https://github.com/jiangmiao/auto-pairs)                     | Auto generate pairs for '"{\[(                                                                          |
| [matchit.zip](https://github.com/vim-scripts/matchit.zip)                 | Provide ability to configure % to match more then just single characters                                |
| [vim-airline](https://github.com/vim-airline/vim-airline)                 | lean & mean status/tabline for vim that's light as air                                                  |
| [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)   | A collection of themes for vim-airline                                                                  |
| [powerline fonts](https://github.com/powerline/fonts)                     | Patched fonts for Powerline users                                                                       |
| [supertab](https://github.com/ervandew/supertab)                          | Complete using the TAB key                                                                              |
| [tagbar](https://github.com/majutsushi/tagbar)                            | Using [ctags](ctags.sourceforge.net/) to show tags of a project                                         |
| [ultisnips](https://github.com/SirVer/ultisnips)                          | The ultimate snippet solution for Vim                                                                   |
| [vim-snippets](https://github.com/honza/vim-snippets)                     | vim-snipmate default snippets                                                                           |
| [vim-snipmate](https://github.com/garbas/vim-snipmate)                    | nipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim |
| [vim-plugin-viewdoc](https://github.com/powerman/vim-plugin-viewdoc)      | Vim plugin: flexible viewer for any documentation                                                       |
| [rust.vim](https://github.com/rust-lang/rust.vim)                         | [Rust](https://www.rust-lang.org/) support for vim                                                      |
| [vim-racer](https://github.com/racer-rust)                                | Rust [racer](https://github.com/phildawes/racer) Syntax checking                                        |
| [gundo](https://github.com/sjl/gundo.vim)                                 | Visual undo graph                                                                                       |
| [vim-surround](https://github.com/tpope/vim-surround)                     | surrond changing things based on syntax, such as ', ", \[, ] etc..                                      |
| [vim-repeat](https://github.com/tpope/vim-repeat)                         | Enable repeating supported plugin maps with '.'                                                         |
| [webapi-vim](https://github.com/mattn/webapi-vim)                         | Web API for other plugins                                                                               |
| [vim-mucomplete](https://github.com/lifepillar/vim-mucomplete)            | Auto complete library                                                                                   |
| [xml.vim](https://github.com/othree/xml.vim)                              | Helps editing XML and (x)html                                                                           |
| [splitjoin](https://github.com/AndrewRadev/splitjoin.vim)                 | A vim plugin that simplifies the transition between multiline and single-line code                      |
| [drawit](https://github.com/vim-scripts/DrawIt)                           | ASCII drawing plugin: lines, ellipses, arrows, fills and more!                                          |
| [tasklist.vim](https://github.com/vim-scripts/TaskList.vim)               | An aggregated list for TODO, FIXME and XXX                                                              |
| [tabular](https://github.com/godlygeek/tabular)                           | Vim script for text filtering and alignment                                                             |
| [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)           | Drawing table using vim                                                                                 |
| [tern for vim](https://github.com/ternjs/tern_for_vim)                    | Using [turn](http://ternjs.net/) to do anaylze code connected to analyze javascript                     |
| [vim-eunuch](https://github.com/tpope/vim-eunuch)                         | eunuch.vim: helpers for UNIX                                                                            |
| [vim-bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste) | Handles bracketed-paste-mode in vim (aka automatic ``:set paste``)                                      |
| [quick-scope](https://github.com/unblevable/quick-scope)                  | Lightning fast left-right movement in Vim                                                               |

## Shortcuts

| Key                                 | Description                                                                              |
| -----                               | -------------                                                                            |
| ``<leader>``                        | The leader key is set to ``\``                                                           |
| ``jj``                              | The keys are set to be a fast escape key                                                 |
| ``<leader>r``                       | Reload vimrc                                                                             |
| ``<leader>R``                       | Reload and activate vimrc changes                                                        |
| ``<leader>w``                       | Fast saving (``:w!``)                                                                    |
| ``:W``                              | Do a sudo to try and save the file, as a command!                                        |
| ``Ctrl+j``                          | Go to the window bellow                                                                  |
| ``Ctrl+k``                          | Go to the window above                                                                   |
| ``Ctrl+h``                          | Go to the window on the left                                                             |
| ``Ctrl+l``                          | Go to the window on the right                                                            |
| ``Ctrl+w``                          | In insert mode, allows the window moving to work the same                                |
| ``-`` and ``+``                     | Resize horizontal window                                                                 |
| ``Alt+,`` and ``Alt+.``             | Resize vertical window                                                                   |
| ``F2``                              | Close current window (do not remove the buffer)                                          |
| ``<leader>d``                       | Delete current buffer                                                                    |
| ``<leader>D``                       | Delete current buffer, keep split and switch to another buffer if found                  |
| ``<leader>S``                       | Clean all of annoying white spaces in the end of a line                                  |
| ``F5``                              | Toggle highlight search                                                                  |
| ``CtrlF9``                          | Execute async compiler                                                                   |
| ``F3``                              | Toggle NerdTree                                                                          |
| ``Alt+j``                           | Move current line down                                                                   |
| ``Alt+k``                           | Move current line up                                                                     |
| ``Shift+F7 ``                       | Toggle spell checking                                                                    |
| ``<leader>sn``                      | Move to the next misspelled word                                                         |
| ``<leader>sp``                      | Move to the previous misspelled word                                                     |
| ``<leader>sa``                      | Add current word under the cursor to the dictionary                                      |
| ``<leader>s?``                      | Show suggestion window                                                                   |
| ``<leader>fc``                      | Find git merge conflict markers                                                          |
| ``<leader>g?``                      | Show git status                                                                          |
| ``<leader>gb``                      | Show git blame                                                                           |
| ``<leader>gc``                      | Do git commit                                                                            |
| ``<leader>gvd``                     | Show vertical git diff                                                                   |
| ``<leader>g/``                      | Do git grep                                                                              |
| ``<leader>gp``                      | Do git push                                                                              |
| ``<leader>gv``                      | See git in history changes (log) in new tab                                              |
| ``<leader>gV``                      | See git in history changes (log) in new windows                                          |
| ``<leader>gD``                      | See current git diff in a new window                                                     |
| ``]h``                              | Go to the next group of changes in the current file from last commit                     |
| ``[h``                              | Go to the previous group of changed in the current file from last commit                 |
| ``<leader>hs``                      | Stage the current chunk of changes                                                       |
| ``<leader>hu``                      | Undo last stage of changes                                                               |
| ``<leader>hv``                      | Preview current stage of changes                                                         |
| ``<leader>f0`` up to ``<leader>f0`` | Set code folding levels                                                                  |
| ``Ctrl+p``                          | Toggle paste                                                                             |
| ``<leader>m``                       | Remove the annoying Windows EOF of ^M                                                    |
| ``<leader><leader>``                | Switch between the last two files                                                        |
| ``<leader>y``                       | Copy the current line/visual selection to ``~/tmp/.vbuf`` file                           |
| ``<leader>p``                       | Paste the content from ``~/tmp/.vbuf`` file                                              |
| ``Y``                               | Yank the current line (to be consistent with ``D`` and ``C``)                            |
| ``<leader>ff``                      | Display all of the lines with a keyword under the cursor and ask where to go at the list |
| ``<leader>e``                       | Display the next error from the quickfix window                                          |
| ``<leader>E``                       | Display the previous error from the quickfix window                                      |
| ``<leader>Ctrl+e``                  | Close quickfix window                                                                    |
| ``<leader>q``                       | Close all open windows except of the current one                                         |
| ``Ctrl+f``                          | Print the full path we are at                                                            |
| ``<leader>Ctrl+w``                  | Exit diff mode                                                                           |
| ``F8``                              | Toggle Reverse insertion - For visual order editing                                      |
| ``F9``                              | Toggle direction mapping - for logical order editing                                     |
| ``F11``                             | Show BufExplorer                                                                         |
| ``Shift+F11``                       | Toggle BufExplorer                                                                       |
| ``Alt+F11``                         | Show BufExplorer in a Horizontal window                                                  |
| ``Ctrl+F11``                        | Shoe BufExplorer in a Vertical window                                                    |




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
 - Quotes, parenthesis pairs, etc
 - Extended pair matching with %
 - ASCII drawing
 - Fuzzy file, buffer, MRU, tag, etc finder
 - Task list
 - Git support
 - Tab Completion
 - Commenting
 - History management
 - Additional documentation support
 - Reload file when changed from outside

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

| Name                                                                    | Description                                                              |
| :------------------------------------------------:                      | :-----------------------:                                                |
| [molokai](https://github.com/tomasr/molokai)                            | The monokai theme for VIM                                                |
| [badwolf](https://github.com/sjl/badwold)                               | Inspired by Doctor Who Rose Tailor theme :)                              |
| [vim-polyglot](https://github.com/sheerun/vim-polyglot)                 | Over 70 language pack support for vim                                    |
| [Syntastic](https://github.com/scrooloose/syntastic)                    | Syntax checking for many programming languages.                          |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)                   | Git support from insdie vim                                              |
| [gitv](https://github.com/gregsexton/gitv)                              | See git changes visually from inside vim                                 |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)              | Indicate what was changed based on latest git status at the gutter level |
| [nerdcommenter](https://github.com/scrooloose/nerdcommenter)            | Commenting based on syntax                                               |
| [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) | Multiple cursors like with Sublime                                       |
| [vim-dispatch](https://github.com/tpope/vim-dispatch)                   | Execute things in async                                                  |
| [mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)             | Test functions for other plugins                                         |
| [tlib-vim](https://github.com/tomtom/tlib_vim)                          | Dependencies for tlib                                                    |
| [nerdtree](https://github.com/scrooloose/nerdtree)                      | File explorer that is not Sexplore                                       |
| [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)                          | Fuzzy file, buffer, mru, tag etc finder                                  |
| [bufexplorer](https://github.com/jlanzarotta/bufexplorer)               | Buffer management plugin                                                 |
| [ruby](https://github.com/vim-ruby/vim-ruby)                            | Ruby support for vim                                                     |
| [vim-rails](https://github.com/tpope/vim-rails)                         | Rails support for vim                                                    |
| [vim-bundler](https://github.com/tpope/vim-bundler)                     | Bundler support for vim                                                  |
| [vim-endwise](https://github.com/tpope/vim-endwise)                     | wisely add "end" in ruby, endfunction/endif/more in vim script, etc      |
| [vim-test](https://github.com/janko-m/vim-test)                         | Execute tests of many languages                                          |
| [vim-ruby-sinatra](https://github.com/hallison/vim-ruby-sinatra)        | Support for [Sinatra](http://www.sinatrarb.com/)                         |
| [vim-go](https://github.com/fatih/vim-go)                               | [Golang](https://golang.org/) support for vim                            |
| [go-explorer](https://github.com/garyburd/go-explorer)                  | Explore go code and GoDoc                                                |

## Shortcuts


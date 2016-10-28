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
- Quotes, parens etc pair, surround
- Extended pair matching with %
- ASCII drawing
- Fuzzy file, buffer, mru, tag, etc finder
- Task list
- Git support
- Tab Completion
- Commenting
- History management
- Additional documentation support

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



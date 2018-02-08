# dotvim

The following (Neo)Vim configuration is to help me work with programming.

The reason for it, is that I work with number of technologies.

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
 - Sublime like text editing for "multiple cursors"
 - Information on trailing whitespace, including cleaning shortcuts
 - Logical and Visual layout (for Right-To-Left languages) editing
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
 - Support documentation for programming languages, based on the original (neo)vim documentation engine
 - Support for external documentation using Zeal
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

To update submodules in the future, when you have vim running, source vimrc to make sure plugins list are updated (or
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

## Commands

### General

| Command   | Description                                                                             |
| -------   | -----------                                                                             |
| ``Wr``    | Save current buffer using `sudo`, does not function well, **please do not use for now** |
| ``HTem``  | Open Horizontal terminal in NeoVim                                                      |
| ``VTerm`` | Open Vertical terminal in NeoVim                                                        |

###

## Shortcuts

### General

| Key                             | Description                                                             |
| ---                             | -----------                                                             |
| ``\\``                          | `<Leader>` (as a default)                                               |
| ``jj``                          | ``<ESC>`` on insert mode                                                |
| ``<leader>+r``                  | Load .vimrc                                                             |
| ``<leader>+R``                  | Reload vim                                                              |
| ``K``                           | Show documentation under the cursor                                     |
| ``<leader>w``                   | Fast save current file (will not work on a buffer without file name)    |
| ``<c-J>`` / ``<c-Down>``        | Navigate window / terminal - go down                                    |
| ``<c-K>`` / ``<c-Up>``          | Navigate window / terminal- go up                                       |
| ``<c-H>`` / ``<c-Left>``        | Navigate window / terminal- go left                                     |
| ``<c-L>`` / ``<c-Right>``       | Navigate window / terminal- go right                                    |
| ``<c-W>``                       | Window functions on insert mode as well                                 |
| ``-`` / ``+``                   | Resize horizontal splits                                                |
| ``<alt-,>`` / ``<alt-.>``       | Resize vertical splits                                                  |
| ``<F2>``                        | Close (but not delete) current buffer                                   |
| ``<leader>d``                   | Delete current buffer                                                   |
| ``<leader>D``                   | Delete current buffer, but keep the split (switch to prev buffer)       |
| ``<leader>S``                   | Delete trailing whitespace                                              |
| ``<F5>``                        | Toggle hlsearch                                                         |
| ``<c-d>`` / ``<c-u>``           | Center line when moving up and down half a screen                       |
| ``<Alt-j>``                     | Move current line down                                                  |
| ``<Alt-k>``                     | Move current line up                                                    |
| ``SPT``                         | Toggle spelling mode                                                    |
| ``<leader>sn``                  | Move to the next misspelled word                                        |
| ``<leader>sp``                  | Move to the previous misspelled word                                    |
| ``<leader>sa``                  | Add misspelled word under the cursor                                    |
| ``<leader>s?``                  | Open suggestion window                                                  |
| ``<leader>f1`` - ``<leader>f9`` | Set fold level between 1 and 9                                          |
| ``<leader>m``                   | Remove ^M when encoding is messed up (windows)                          |
| ``<leader><leader>``            | Toggle between last two files                                           |
| ``<leader>y``                   | Copy the current visual selection or current line to `~/tmp/.vbuf` file |
| ``<leader>p``                   | Paste the content of the buffer to `~/tmp/.vbuf` file                   |
| ``Y``                           | Copy from cursor to the end of the line                                 |
| ``<leader>ff``                  | Display all keywords under the cursor and prompt to go for one of them  |
| ``<leader>e``                   | Go to next error message                                                |
| ``<leader>E``                   | Go to prev error message                                                |
| ``<leader><c-e>``               | Close quickfix error window                                             |
| ``<leader>q``                   | Close all windows except active one                                     |
| ``<c-f>``                       | Print full path                                                         |
| ``<leader><c-w>``               | Exit diff mode                                                          |
| ``<leader>hc``                  | Toggle view of hidden chars                                             |
| ``<leader>wrp``                 | Toggle wrap mode                                                        |
| ``<leader>srt``                 | Sort numbers in paragraph/selection                                     |
| ``<c-PageDown>``                | Go to next tab                                                          |
| ``<c-PageUp>``                  | Go to prev tab                                                          |
| ``<C-O>``                       | Set :tabnew command and wait for a name to be placed                    |
| ``<C-T>``                       | Open new tab                                                            |
| ``<S-Tab>``                     | Execute :retab to set thw whole buffer at the same whitespace type      |
| ``<leader>T``                   | Open new terminal in NeoVim                                             |
| ``<leader>rel``                 | Toggle between normal and relative numbers                              |

### Right To Left

| Key      | Description                  |
| ---      | -----------                  |
| ``<F8>`` | Toggle visual order editing  |
| ``<F9>`` | Toggle logical order editing |


### VCS (General)

| Key               | Description |
| ----------------- | --------------------------- |
| ``<leader>vcsfc`` | Find merge conflict markers |

### ALE

| Key       | Description                        |
| ---       | -----------                        |
| ``<c-j>`` | Go to next error reported by `ALE` |
| ``<c-k>`` | Go to prev error reported by `ALE` |

### BufExplorer

| Key         | Description          |
| ---         | -----------          |
| ``<m-F11>`` | Toggle `BufExplorer` |

### CtrlP

| Key | Description |
| --- | ----------- |
| ``<c-p>`` | Invoke `CtrlP` |
| ``gr`` | Fuzzy tag finding in buffer |

### Fugitive

| Key               | Description       |
| ---               | -----------       |
| ``<leader>gitb``  | git blame         |
| ``<leader>gitc``  | git commit        |
| ``<leader>gitvd`` | vertical git diff |
| ``<leader>git/``  | git grep          |
| ``<leader>git?``  | git status        |

### gitgutter

| Key               | Description                               |
| ---               | -----------                               |
| ``]h``            | Next gutter change under cursor           |
| ``[h``            | Prev gutter change under cursor           |
| ``<leader>giths`` | Gutter set stage under cursor             |
| ``<leader>githu`` | Gutter undo non staged lines under cursor |
| ``<leader>githv`` | Gutter Preview changes under cursor       |

### gitv

| Key              | Description                  |
| ---              | -----------                  |
| ``<leader>gitv`` | Display changes in new tab   |
| ``<leader>gitV`` | Display changes on new split |
| ``<leader>gitD`` | Display git diff             |

### Emmet

| Key        | Description                                                                                             |
| ---        | -----------                                                                                             |
| ``<c-y>,`` | Complete (current tags and snippets)[https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL] |

### NerdTree

| Key      | Description     |
| ---      | -----------     |
| ``<F3>`` | Toggle NerdTree |

### Python mode

| Key                       | Description                                                                                                                                                                                                                                                                                                    |
| ---                       | -----------                                                                                                                                                                                                                                                                                                    |
| ``[[``                    | Jump to previous class or function (normal, visual, operator modes)                                                                                                                                                                                                                                            |
| ``]]``                    | Jump to next class or function (normal, visual, operator modes)                                                                                                                                                                                                                                                |
| ``[M``                    | Jump to previous class or method (normal, visual, operator modes)                                                                                                                                                                                                                                              |
| ``]M``                    | Jump to next class or method (normal, visual, operator modes)                                                                                                                                                                                                                                                  |
| ``aC``                    | Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)                                                                                                                                                                                                                                                |
| ``iC``                    | Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)                                                                                                                                                                                                                                            |
| ``aM``                    | Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)                                                                                                                                                                                                                                   |
| ``iM``                    | Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)                                                                                                                                                                                                                               |
| ``<C-C>g``                | Go to object definition                                                                                                                                                                                                                                                                                        |
| ``<C-c>rr``               | Rename classes, functions, modules, packages, methods, variables and keyword arguments                                                                                                                                                                                                                         |
| ``<C-c>r1r``              | Rename current module                                                                                                                                                                                                                                                                                          |
| ``<C-c>ro``               | Organize imports sorts imports, too. It does that according to PEP8. Unused imports will be dropped.                                                                                                                                                                                                           |
| ``<C-c>ra``               | Insert import for current word under cursor                                                                                                                                                                                                                                                                    |
| ``<C-c>r1p``              | Convert current module to package                                                                                                                                                                                                                                                                              |
| ``<C-c>rm`` / ``<C-c>rl`` | Extract method/variable from selected lines.                                                                                                                                                                                                                                                                   |
| ``<C-c>ru``               | Try to find the places in which a function can be used and changes the code to call it instead                                                                                                                                                                                                                 |
| ``<C-c>rv``               | When a refactoring needed for methods of a class. In this refactoring, a method of a class is moved to the class of one of its attributes. The old method will call the new method. If you want to change all of the occurrences of the old method to use the new method you can inline it afterwards. |
| ``<C-c>rs``               | Change function signature                                                                                                                                                                                                                                                                                      |

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
|------|-------------|
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



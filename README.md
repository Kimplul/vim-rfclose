# vim-rfclose
Simple script for recursively closing all child folds in Vim

I couldn't find anything online that did what I wanted, so I wrote this.

# Installation
Just copy the content of `fold.vim` into your `.vimrc`, possibly changing the mapping to your liking.
This script is too small to actually bother writing a proper plugin for, sorry.

# Usage
Use whatever mapping you chose, default `zJ`, to activate the script.
The behaviour changes depending on if your cursor is on an open or closed fold.

## Open fold:
Closes all child folds up to but not including the fold the cursor is on. If the cursor is on the base level, i.e. `foldlevel = 0`, closes the next fold down.

## Closed fold:
Behaves like `zo`. Note that your cursor has to be on the fold marker line, i.e. `+-- X lines: ...`

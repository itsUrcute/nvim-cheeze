## Prerequisites
- Neovim
- Git
- A C compiler (e.g., `gcc`)

## Install
This will clone this repository as well as [`packer.nvim`](https://github.com/wbthomason/packer.nvim) which is the plugin manager this config uses.
```bash
git clone --depth 1 https://github.com/cheeze2000/nvim ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Upon running the commands, launch Neovim and wait while [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) is being installed.
When it is done, restart Neovim to enjoy syntax highlighting.
Occasionally, update the parsers with `:TSUpdate`.

## Leader Key Mappings
The leader key that this config uses is <kbd>Space</kbd>. It can be changed in `init.lua` right under `vim.g.mapleader`.

| Mapping      | Description        |
| :-:          | -                  |
| `<Leader>c`  | toggle comment     |
| `<Leader>d`  | show diagnostic    |
| `<Leader>gd` | git diff           |
| `<Leader>gr` | git reset          |
| `<Leader>h`  | show hover tooltip |
| `<Leader>l`  | restart lsp        |
| `<Leader>tf` | go to file         |
| `<Leader>tl` | find in files      |
| `<Leader>w`  | switch window      |

## Mini Guide
1. Whenever Neovim is launched, the packages are updated automatically. Dismiss the window with `q` afterwards
1. Assuming the leader key is still <kbd>Space</kbd>, focus the cursor on the file tree with <kbd>Space</kbd> + <kbd>W</kbd>
1. Navigate through the file tree like how you normally navigate in Neovim (<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>)
1. Open folders and files with <kbd>Tab</kbd> or <kbd>Enter</kbd>
1. After opening a file, install any available LSP servers with `:LspInstallInfo`
1. Verify if the servers are launched properly with `:LspInfo`
1. Have fun with Neovim

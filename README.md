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

## Leader Key Mappings
The leader key that this config uses is <kbd>Space</kbd>.

| Mapping                          | Description        |
| :-:                              | -                  |
| <kbd>Space</kbd> + <kbd>c</kbd>  | toggle comment     |
| <kbd>Space</kbd> + <kbd>d</kbd>  | show diagnostic    |
| <kbd>Space</kbd> + <kbd>gd</kbd> | git diff           |
| <kbd>Space</kbd> + <kbd>gr</kbd> | git reset          |
| <kbd>Space</kbd> + <kbd>h</kbd>  | show hover tooltip |
| <kbd>Space</kbd> + <kbd>l</kbd>  | restart lsp        |
| <kbd>Space</kbd> + <kbd>tf</kbd> | go to file         |
| <kbd>Space</kbd> + <kbd>tl</kbd> | find in files      |
| <kbd>Space</kbd> + <kbd>w</kbd>  | switch window      |

## Mini Guide
1. Whenever Neovim is launched, the packages are updated automatically. Dismiss the window with <kbd>q</kbd> afterwards
1. Assuming the leader key is still <kbd>Space</kbd>, focus the cursor on the file tree with <kbd>Space</kbd> + <kbd>W</kbd>
1. Navigate through the file tree like how you normally navigate in Neovim (<kbd>h</kbd>, <kbd>j</kbd>, <kbd>k</kbd>, <kbd>l</kbd>)
1. Open folders and files with <kbd>Tab</kbd> or <kbd>Enter</kbd>
1. After opening a file, install any available LSP servers with `:LspInstallInfo`
1. Verify if the servers are launched properly with `:LspInfo`
1. Have fun with Neovim

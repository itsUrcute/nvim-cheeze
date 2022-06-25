## Prerequisites
- Neovim
- Git
- A C compiler (e.g., `gcc`)

## Install
This will clone this repository as well as [packer.nvim](https://github.com/wbthomason/packer.nvim) which is the plugin manager this config uses.
```bash
git clone --depth 1 https://github.com/cheeze2000/nvim ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Afterwards, launch Neovim and wait while `nvim-treesitter` is being installed.
When it is done, restart Neovim to enjoy syntax highlighting.

## Leader Key Mappings
The leader key that this config uses is space. It can be changed in `init.lua` right under `vim.g.mapleader`.

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

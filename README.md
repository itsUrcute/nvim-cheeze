## Notice
If you want to use my config, please run this command to install [`packer.nvim`](https://github.com/wbthomason/packer.nvim) which is the plugin manager that this config uses.
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

After that, run `:PackerSync` inside Neovim to install all the packages.
Also, familiarise yourself with the documentation so you know how to add plugins, update plugins and remove plugins.

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

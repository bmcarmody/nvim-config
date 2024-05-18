## Neovim Config
This is my personal configuration for Neovim, customized to fit my needs and preferences. It's built on AstroNvim with a variety of added plugins, settings and keybindings that make my editing experience more efficient and enjoyable.

## Requirements
*Just so I don't forget how to get this all working next time I get a new laptop*

**Nvim (v9.0+)** - `brew install neovim`

**AstroNvim** - https://github.com/AstroNvim/AstroNvim

**Ripgrep (Telescope dependency)** - https://github.com/BurntSushi/ripgrep

**LazyGit** - `brew install lazygit`

**Ollama** - `https://ollama.com/`

Install an LLM from https://ollama.com/library to use with `gen.lua` plugin (the `gen.lua` plugin will need to be updated with the selected model)

## Usage
Clone this repository into your `~/.config/nvim/lua` folder

`git clone git@github.com:bmcarmody/nvim_config.git ~/.config/nvim/lua`

### Start Neovim
```bash
nvim
```

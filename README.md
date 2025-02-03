# ✨ Borealis 🌌

Borealis is a new NeoVim config that aims to be an alternative to modern IDEs. It is designed for efficiency and flexibility and implements Git, AI, LSP and UI Enhancement amongst all those IDE features we've gotten used to recently.

## Features

- Plugin management with [Lazy.nvim](https://github.com/folke/lazy.nvim),
- Pre-configured keymaps for an improved workflow,
- Auto-formatting, linting, and completion,
- Enhanced UI with themes, status line, and file explorer,
- Git integration with [LazyGit](https://github.com/jesseduffield/lazygit) and [GitSigns](https://github.com/lewis6991/gitsigns.nvim),
- LSP support with [Mason](https://github.com/williamboman/mason.nvim) and [LSPConfig](https://github.com/neovim/nvim-lspconfig),
- Multiple Plugins for better text manipulation and search.

## Installation

### Pre-requisites

Ensure you have the following installed:

- [NeoVim](https://github.com/neovim/neovim) (>= 0.10)
- [Git](https://git-scm.com/)
- [Nerd Fonts](https://www.nerdfonts.com/) (For proper UI rendering)
- [Node.js](https://nodejs.org/) (For LSP support)
- GitHub Pro / Copilot subscription (Optional for AI use)

### Setup

1. Clone the repository to your NeoVim configuration directory:

```bash
git clone https://github.com/Aurora-Terminal-Project/Borealis  ~/.config/nvim
```

2. Launch Neovim and install plugins:

```bash
nvim
```

Lazy.nvim will automatically install the plugins.

3. Setup Copilot (Necessary for auto-completion):

```vim
:Copilot setup
```

And follow the instructions.

## Configuration Structure

```
nvim/
├── init.lua
├── lua/borealis/
│   ├── core/      # Core settings & keymaps
│   ├── plugins/   # Plugin configurations
│   ├── lsp/       # LSP configurations
```

### Notable plugins

- File navigation: `nvim-tree`
- Git integration: `lazygit`, `gitsigns`
- LSP & Autocomplete: `mason`, `lspconfig`, `copilot`
- UI Enhancements: `lualine`, `bufferline`, `noice`
- Syntax Highlighting: `treesitter`
- Productivity: `which-key`, `telescope`, `todo-comments`
- AI: `Copilot`, `CopilotChat`

## Usage

### Open NeoVim

```bash
nvim
```

### Keymaps

You can find the keymaps [here](keymaps.md).

### Customization

In order to customize the settings, you can edit the following files:

- `core/options.lua`: Core settings
- `core/keymaps.lua`: Basic keymaps
- `plugins/*.lua`: Plugin configurations

## Contributing

If you find any issues or have suggestions, feel free to open an issue or create a pull request.

## License

This project is licensed under the GPL-3.0 License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management.
- [Cyberdream](https://github.com/username/cyberdream) for the theme inspiration.
- [Josean](https://www.josean.com/posts/how-to-setup-neovim-2024) for the basic design and implementations.
- All plugin authors whose amazing work makes this configuration possible.

# Nix + Neovim Configuration

## Build/Lint/Test Commands
- **Build**: `nix build`
- **Update**: `nix flake update`
- **Enter dev shell**: `nix develop`
- **Test Neovim config**: Open Neovim and verify plugins/configs work as expected

## Code Style Guidelines
- **Nix**: Follow standard Nix formatting (2-space indent, attributes on new lines)
- **Lua**: 4-space indent, snake_case for variables/functions, PascalCase for tables
- **Imports**: Group related imports, prefer absolute paths for Nix
- **Error Handling**: Use Lua's pcall for Neovim config errors
- **Naming**: Descriptive names for Nix attributes, concise Lua function names
- **Plugins**: Declare in plugins.nix with clear comments
- **Config**: Keep Lua configs modular (one feature per file)

## Key Files
- `flake.nix`: Main Nix flake configuration
- `plugins.nix`: Neovim plugin declarations
- `config/lua/`: Lua configuration files
- `packages/myNeovim.nix`: Neovim package definition
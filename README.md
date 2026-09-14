# witze.nvim

Syntax highlighting for [Witze][github-tree-sitter-witze], a superset of the
scripting language used for mods for the Clausewitz engine.

## Usage

To use with LazyVim:

```lua
{
  'acovaci/witze.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('witze').setup()
  end,
}
```

[github-tree-sitter-witze]: https://github.com/acovaci/tree-sitter-witze/

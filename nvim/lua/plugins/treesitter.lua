
 return  {
   'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.config',
    opts = {
      ensure_installed = {'bash', 'c', 'diff', 'markdown', 'markdown_inline', 'query', 'html', 'go', 'python', 'vimdoc'},
      auto_install = true,
      highlight = { enable = true},
      indent = { enable = true },
    }
 }


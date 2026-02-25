-- add snippet search to Telescope
return {
  {
    'benfowler/telescope-luasnip.nvim',
    lazy = true,
    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    keys = {
      { '<leader>ss', '<cmd>Telescope luasnip<cr>', desc = '[S]earch Active [S]nippets' },
    },
    config = function()
      require('telescope').load_extension 'luasnip'
    end,
  },
}

return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  config = function()
    require('competitest').setup {
      popup_ui = {
        total_width = 0.92,
      },

      testcases_use_single_file = true,
    }
  end,
}

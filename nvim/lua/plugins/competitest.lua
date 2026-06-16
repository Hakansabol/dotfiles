return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  config = function()
    require('competitest').setup {
      popup_ui = {
        total_width = 0.92,
      },

      testcases_use_single_file = true,

      compile_command = {
        c = { exec = 'gcc', args = { '-Wall', '$(FNAME)', '-o', '$(FNOEXT)' } },
        cpp = { exec = 'g++', args = { '-Wall', '$(FNAME)', '-o', '$(FNOEXT)', '-O2' } },
        rust = { exec = 'rustc', args = { '$(FNAME)', '-O', '--edition=2024' } },
        java = { exec = 'javac', args = { '$(FNAME)' } },
      },
    }
  end,
}

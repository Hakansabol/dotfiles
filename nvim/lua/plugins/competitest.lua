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
        -- haskell = { exec = 'ghc', args = { '-dynamic', '$(FNAME)' } },
        rust = { exec = 'rustc', args = { '$(FNAME)', '-O', '--edition=2024' } },
        java = { exec = 'javac', args = { '$(FNAME)' } },

        haskell = { exec = 'ghc', args = { '$(FNAME)', '-XSafe', '-rtsopts', '--make', '-dynamic', '-O2' } },
      },
      run_command = {
        c = { exec = './$(FNOEXT)' },
        cpp = { exec = './$(FNOEXT)' },
        rust = { exec = './$(FNOEXT)' },
        python = { exec = 'python', args = { '$(FNAME)' } },
        java = { exec = 'java', args = { '$(FNOEXT)' } },

        haskell = { exec = './$(FNOEXT)', args = { '+RTS', '-K256m', '-A8m', '-RTS' } },
      },
    }
  end,
}

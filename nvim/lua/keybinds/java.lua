-- Java utilities.

-- Gradle + Fabric modloader
function compile_and_run_gradle_prismlauncher()
  vim.api.nvim_command 'T ./gradlew build'
  --vim.api.nvim_command 'T '
end

vim.keymap.set('n', '<leader>rG', compile_and_run_gradle_prismlauncher, { desc = 'Compile and [R]un Java: [G]radle' })

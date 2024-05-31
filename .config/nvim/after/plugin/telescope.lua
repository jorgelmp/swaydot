require('telescope').setup{
	pickers = {
		find_files = {
			find_command = { "rg", "--ignore", "-L", "--hidden", "--files", "--ignore-file=.gitignore" },
		}
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

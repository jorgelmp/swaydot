local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- pass to setup along with your other options
require("nvim-tree").setup {
    actions = {
        change_dir = {
            global = true
        },
    },
    sort_by = "case_sensitive",
    view = {
        width = 40,
    },
    renderer = {
        root_folder_label = ":t",
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    ---
    on_attach = my_on_attach,
    ---
}

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {
    noremap = true
})

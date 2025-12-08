return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local builtin = require "telescope.builtin"

      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep text" })
      vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Grep word under cursor" })

      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })

      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help" })
      vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Keymaps" })

      vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols, { desc = "Document symbols" })
      vim.keymap.set("n", "<leader>sS", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })

      vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })
      vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git branches" })
      vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })
    end,
  },
}

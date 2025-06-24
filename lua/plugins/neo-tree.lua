return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      filesystem = {
        follow_current_file = {
          enabled = false,
        },
        filtered_items = {
          visible = true,          -- Show hidden files by default
          hide_dotfiles = false,   -- Do not hide dotfiles (like .git, .env)
          hide_gitignored = false, -- Do not hide gitignored files
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
    vim.keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>", {})
    vim.keymap.set("n", "<leader>uh", function()
      require("neo-tree.sources.filesystem.commands").toggle_hidden()
    end, { desc = "Toggle hidden files in Neo-tree" })
  end,
}

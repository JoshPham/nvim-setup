return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")

		dashboard.section.header.val = {
			[[]],
			[[]],
			[[]],
			[[]],
			[[  ░░░░░██╗░█████╗░░██████╗██╗░░██╗  ██████╗░██╗░░██╗░█████╗░███╗░░░███╗ ]],
			[[  ░░░░░██║██╔══██╗██╔════╝██║░░██║  ██╔══██╗██║░░██║██╔══██╗████╗░████║ ]],
			[[  ░░░░░██║██║░░██║╚█████╗░███████║  ██████╔╝███████║███████║██╔████╔██║ ]],
			[[  ██╗░░██║██║░░██║░╚═══██╗██╔══██║  ██╔═══╝░██╔══██║██╔══██║██║╚██╔╝██║ ]],
			[[  ╚█████╔╝╚█████╔╝██████╔╝██║░░██║  ██║░░░░░██║░░██║██║░░██║██║░╚═╝░██║ ]],
			[[  ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝  ╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝ ]],
			[[]],
			[[]],
			[[  ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗ ]],
			[[  ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║ ]],
			[[  ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║ ]],
			[[  ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║ ]],
			[[  ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║ ]],
			[[  ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝ ]],
			[[]],
			[[]],
		}

    dashboard.section.header.opts = {
      -- position = "center",
      hl = "Constant", -- Highlight group (can be changed to "Constant", "Title", etc.)
    }

		-- dashboard.section.buttons.val = {
		-- dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
		-- dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
		-- dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
		-- dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
		-- dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
		-- }
		vim.api.nvim_set_hl(0, "AlphaHeaderGreen", { fg = "#00ff5e", bold = true })
		dashboard.section.header.opts.hl = "AlphaHeaderGreen"

		-- dashboard.section.footer.val = os.date("📆 %A, %B %d %Y")
		-- dashboard.section.footer.opts = {
		-- position = "center",
		-- hl = "Comment",
		-- }

		alpha.setup(dashboard.opts)
	end,
}

local ok, error = pcall(require, "rust-tools")
if not ok then
	vim.notify(error)
	return
end

local opts = {
	tools = {
		autoSetHints = true,
		hover_with_actions = true,
		executor = require("rust-tools/executors").termopen,

		-- These apply to the default RustSetInlayHints command
		inlay_hints = {
			show_parameter_hints = true,
			show_variable_name = true,
			parameter_hints_prefix = "<- ",
			other_hints_prefix = "=> ",
			max_len_align = false,
			max_len_align_padding = 1,
			right_align = false,
			right_align_padding = 7,
		},

		hover_actions = {
			border = {
				{ "╭", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╮", "FloatBorder" },
				{ "│", "FloatBorder" },
				{ "╯", "FloatBorder" },
				{ "─", "FloatBorder" },
				{ "╰", "FloatBorder" },
				{ "│", "FloatBorder" },
			},
			auto_focus = true,
		},
	},
	server = {
		settings = {
			["rust-analyzer"] = {
				cargo = {
					autoreload = true,
				},
			},
		},
		on_attach = require("user.lsp.handlers").on_attach,
	}, -- rust-analyer options
}

require("rust-tools").setup(opts)

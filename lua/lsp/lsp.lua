local nvim_lsp = require("lspconfig")
local lsp_signature = require("lsp_signature")
local u = require("utils")
local lsp_status = require("lsp-status")

lsp_status.register_progress()

-- Change lsp icons in gutter
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
	local hl = "LspDiagnosticsSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})]])

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end
	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Add function signature
	lsp_signature.on_attach({
		bind = true,
		handler_opts = {
			border = "single",
		},
		bufnr,
	})

	-- Add statusline support
	lsp_status.on_attach(client)

	u.lua_command("LspFormatting", "vim.lsp.buf.formatting()")
	u.lua_command("LspHover", "vim.lsp.buf.hover()")
	u.lua_command("LspRename", "vim.lsp.buf.rename()")
	u.lua_command("LspDiagPrev", "vim.lsp.diagnostic.goto_prev({ popup_opts = global.lsp.popup_opts })")
	u.lua_command("LspDiagNext", "vim.lsp.diagnostic.goto_next({ popup_opts = global.lsp.popup_opts })")
	u.lua_command("LspDiagLine", "vim.lsp.diagnostic.show_line_diagnostics(global.lsp.popup_opts)")
	u.lua_command("LspSignatureHelp", "vim.lsp.buf.signature_help()")
	u.lua_command("LspTypeDef", "vim.lsp.buf.type_definition()")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "<C-p>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	-- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	-- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	-- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	-- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	-- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	-- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	-- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
	-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
	-- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

	if client.resolved_capabilities.document_formatting then
		u.buf_augroup("LspFormatOnSave", "BufWritePre", "lua vim.lsp.buf.formatting_sync()")
	end
end

-- -- Use a loop to conveniently call 'setup' on multiple servers and
-- -- map buffer local keybindings when the language server attaches
-- local servers = { 'pyright', 'rust_analyzer', 'tsserver' }
-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup {
--     on_attach = on_attach,
--     flags = {
--       debounce_text_changes = 150,
--     }
--   }
-- end

local function setup_server(server)
	require("lspconfig")[server].setup({
		on_attach = function(client, bufnr)
			client.resolved_capabilities.document_formatting = false
			on_attach(client, bufnr)
		end,
		flags = {
			debounce_text_changes = 150,
		},
		capabilities = lsp_status.capabilities,
	})
end

local function setup_servers()
	require("lspinstall").setup()
	local servers = require("lspinstall").installed_servers()
	for _, server in pairs(servers) do
		setup_server(server)
	end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require("lspinstall").post_install_hook = function()
	setup_servers() -- reload installed servers
	vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

local null_ls = require("null-ls")

local sources = {
	-- null_ls.builtins.formatting.eslint_d,
	null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.clang_format.with({
		filetypes = { "c", "cpp", "cs" },
	}),
	null_ls.builtins.formatting.prettier,
	null_ls.builtins.code_actions.gitsigns,
	null_ls.builtins.formatting.stylua,
	-- null_ls.builtins.formatting.rustfmt,
}

null_ls.config({
	sources = sources,
})

require("lspconfig")["null-ls"].setup({
	on_attach = on_attach,
	capabilities = lsp_status.capabilities,
})

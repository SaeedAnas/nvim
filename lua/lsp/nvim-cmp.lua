-- Setup nvim-cmp.
local cmp = require("cmp")
local luasnip = require("luasnip")

local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

vim.opt.completeopt = "menuone,noselect"

-- Have copilot play nice with nvim-cmp.
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""

cmp.setup({
	snippet = {
		expand = function(args)
			-- For `vsnip` user.
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

			-- For `luasnip` user.
			luasnip.lsp_expand(args.body)

			-- For `ultisnips` user.
			-- vim.fn["UltiSnips#Anon"](args.body)
		end,
	},
	formatting = {
		--       format = function(entry, vim_item)
		--          -- load lspkind icons
		--          vim_item.kind = string.format(
		--             "%s %s",
		--             require("plugins.configs.lspkind_icons").icons[vim_item.kind],
		--             vim_item.kind
		--          )
		--
		--          vim_item.menu = ({
		--             nvim_lsp = "[LSP]",
		--             nvim_lua = "[Lua]",
		--             buffer = "[BUF]",
		--          })[entry.source.name]
		--
		--          return vim_item
		--
		--       end,

		format = require("lspkind").cmp_format({ with_text = false }),
	},
	mapping = {
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				local copilot_keys = vim.fn["copilot#Accept"]()
				if copilot_keys ~= "" then
					vim.api.nvim_feedkeys(copilot_keys, "i", true)
				else
					fallback()
				end
			end
		end, {
			"i",
			"s",
		}),
		["<Right>"] = cmp.mapping(function(fallback)
			local copilot_keys = vim.fn["copilot#Accept"]()
			if copilot_keys ~= "" then
				vim.api.nvim_feedkeys(copilot_keys, "i", true)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<C-e>"] = cmp.mapping(function(fallback)
			local copilot_keys = vim.fn["copilot#Accept"]()
			if copilot_keys ~= "" then
				vim.api.nvim_feedkeys(copilot_keys, "i", true)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		-- ["<Tab>"] = cmp.mapping.select_next_item(),
		-- ["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		-- ["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = {
		{ name = "nvim_lsp" },

		-- For vsnip user.
		-- { name = 'vsnip' },

		-- For luasnip user.
		{ name = "luasnip" },

		-- For ultisnips user.
		-- { name = 'ultisnips' },

		{ name = "buffer" },
		{ name = "orgmode" },
	},
})

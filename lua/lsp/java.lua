local M = {}

function M.setup()
	local config = {
		-- The command that starts the language server
		cmd = {
			"jdtls",
		},

		-- This is the default if not provided, you can remove it. Or adjust as needed.
		-- One dedicated LSP server & client will be started per unique root_dir
		root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
	}
	require("jdtls").start_or_attach(config)
end

return M

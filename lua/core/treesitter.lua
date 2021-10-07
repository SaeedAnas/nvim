require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        use_languagetree = true
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    },
}

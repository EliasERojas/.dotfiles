local cmp = require("cmp")

cmp.setup({
	snippet = {
        expand = function(args)
            require('snippy').expand_snippet(args.body) -- For `snippy` users.
        end,
	},

	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-e>"] = cmp.mapping.abort(),
        ["<C-Space>"] = cmp.mapping.confirm({ select = true })
        }),

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "snippy" }, -- For luasnip users.
        {{ name = "buffer" }},
		{ name = "path" },
	}),
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "git" } -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
	}, {
        { name = "buffer" }
    }),
})


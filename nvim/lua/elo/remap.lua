local km = vim.keymap
-- debug
km.set("n", "<leader>t", "<cmd>Lex<CR>")
km.set("n", "<leader>ff", "<cmd>Files<CR>")
km.set("n", "<leader>fg", "<cmd>Rg<CR>")
km.set("n", "<leader>fb", "<cmd>Buffers<CR>")
-- reset cfg
km.set("n", "<leader>xx", "<cmd>luafile $MYVIMRC<CR>")
-- nvim dap

km.set("n", "<F5>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
km.set("n", "<F6>", "<cmd>lua require'dap'.continue()<CR>")
km.set("n", "<F10>", "<cmd>lua require'dap'.step_into()<CR>")
km.set("n", "<F11>", "<cmd>lua require'dap'.step_over()<CR>")
km.set("n", "<F12>", "<cmd>lua require'dap'.repl.open()<CR>")

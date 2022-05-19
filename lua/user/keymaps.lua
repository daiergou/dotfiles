local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Force yourself to use the home row
keymap("", "<Left>", "<Nop>", opts)
keymap("", "<Up>", "<Nop>", opts)
keymap("", "<Down>", "<Nop>", opts)
keymap("", "<Right>", "<Nop>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


keymap("n", "<leader>e", ":Lex 25<cr>", opts)
-- Resize with arrows
keymap("n", "<C-W-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-W-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-W-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-W-Right>", ":vertical resize +2<CR>", opts)

-- Move Fast
keymap("n", "H", "^", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "L", "$", opts)

-- Navigate buffers
keymap("n", "<Left>", ":bprevious<CR>", opts)
keymap("n", "<Right>",":bnext<CR>", opts)


-- Move text up and down
-- keymap("n", "<leader>k", "<Esc>:m .-2<CR>==gi", opts)
-- keymap("n", "<leader>j", "<Esc>:m .+1<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i","<leader>w",":w<CR>",opts)

-- Visual --
-- Stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "jk", "<ESC>", opts)
keymap("v", "<", "<gv", opts)

-- Move text up and down
-- keymap("v", "<C-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("v", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<C-k>", ":move '>-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", "5j", opts)
keymap("x", "K", "5k", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- DEBUG --
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>DB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
keymap("n", "<F5>", "lua require'dap'.run_last()<cr>", opts)
keymap('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
keymap("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
keymap("n", "<F6>", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<F8>", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<F9>", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<F3>", "<cmd>lua require'dapui'.eval()<cr>", opts)

-- ============================
--  Custom Keymaps Configuration
-- ============================

-- Leader key
vim.g.mapleader = " "

-- Keymap options
local opts = { noremap = true, silent = true }

-- Helper for shorter syntax
local keymap = vim.keymap.set

-- ========== Basic Commands ==========
keymap("n", "<Leader>w", "<cmd>write<CR>", opts)          -- Save file
keymap("n", "<Leader>-", "<C-w><", opts)                  -- Resize window smaller
keymap("n", "<Leader>+", "<C-w>>", opts)                  -- Resize window larger
keymap("i", "jj", "<Esc>", opts)                          -- Exit insert mode
keymap("t", "jj", "<C-\\><C-n>", opts)                    -- Exit terminal mode

-- Disable Ctrl+Z freeze on Windows
if vim.fn.has("win32") == 1 then
  keymap("n", "<C-z>", "<Nop>", opts)
end

-- ========== FZF Lua Integrations ==========
keymap("n", "<C-p>", "<cmd>FzfLua files<CR>", opts)
keymap("n", "<Leader>n", "<cmd>FzfLua git_status<CR>", opts)
keymap("n", "fb", "<cmd>FzfLua buffers<CR>", opts)
keymap("n", ";", "<cmd>FzfLua grep_project<CR>", opts)

-- ========== GitSigns ==========
keymap("n", "hn", "<cmd>Gitsigns next_hunk<CR>", opts)
keymap("n", "hp", "<cmd>Gitsigns prev_hunk<CR>", opts)
keymap("n", "gp", "<cmd>Gitsigns preview_hunk<CR>", opts)

-- ========== Transparency Toggle ==========
keymap("n", "tt", "<cmd>TransparentToggle<CR>", opts)

-- ========== Copy File Path ==========
vim.api.nvim_create_user_command("Cppath", function()
  local row = vim.api.nvim_win_get_cursor(0)[1]
  local path = vim.fn.expand("%:~:.") .. ":" .. row
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

keymap("n", "cp", "<cmd>Cppath<CR>", opts)

-- ========== Tmux Navigation ==========
local ok, nvim_tmux_nav = pcall(require, "nvim-tmux-navigation")
if ok then
  nvim_tmux_nav.setup({ disable_when_zoomed = true })

  keymap("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, opts)
  keymap("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, opts)
  keymap("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, opts)
  keymap("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, opts)
  keymap("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive, opts)
  keymap("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext, opts)
end

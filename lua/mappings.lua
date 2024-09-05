-- Atajos personalizados
-- Asigna leader a espacio
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

-- Función de asignación de atajos
local function map_key(mode, key, action)
  local options = {noremap = true}
  map(mode, key, action, options)
end

-- Atajos
map_key("n", "<Leader>w", ":write<CR>")
map_key("n", "<Leader>z", ":bn!<CR>")
map_key("n", "<Leader>x", ":bd<CR>")
map_key("n", "<Leader>-", "<c-w><")
map_key("n", "<Leader>+", "<c-w>>")
map_key("n", "<C-k>", "<c-w>+")
map_key("n", "<C-j>", "<c-w>-")
map_key("n", "<Leader>h", "<c-w>h")
map_key("n", "<Leader>j", "<c-w>j")
map_key("n", "<Leader>k", "<c-w>k")
map_key("n", "<Leader>l", "<c-w>l")
map_key("n", "tt", ":TransparentToggle<CR>")
map_key("n", "<c-P>", "<cmd>FzfLua files<CR>")
map_key("n", "<Leader>n", "<cmd>FzfLua git_status<CR>")
map_key("n", "fb", ":FzfLua buffers<CR>")
map_key("n", ";", ":FzfLua grep_project<CR>")
map_key("n", "hn", ":Gitsigns next_hunk<CR>")
map_key("n", "hp", ":Gitsigns prev_hunk<CR>")
map_key("n", "gp", ":Gitsigns preview_hunk<CR>")
map_key("n", "cp", ":Cppath<CR>")

-- Función para copiar la ruta de un archivo en el portapapeles
vim.api.nvim_create_user_command("Cppath", function()
  local row, column = unpack(vim.api.nvim_win_get_cursor(0))
  local path = vim.fn.expand("%:~:.") .. ":" .. row
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- Corrige el bug de control + z que freeza nvim en Windows
if vim.fn.has("win32") == 1 then
  map_key("n", "<C-z>", "<Nop>")
end

-- Mapeo de tecla para salir del modo insertar
map_key("i", "jj", "<esc>")
map_key("t", "jj", "<C-\\><C-n>")

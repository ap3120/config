-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

local o = vim.opt
local map = vim.api.nvim_set_keymap

-- Editor options

o.relativenumber = true
o.cursorcolumn = true
o.wrap = true
o.hidden = false

-- Define an autocommand for .java files
vim.api.nvim_create_autocmd("BufEnter", {
      pattern = { "*.java", },
      command = "setlocal shiftwidth=4 tabstop=4",
})

-- Switch between tabs
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Copy to clipboard
--
-- sudo apt install xclip
map("v", "y", '"+y', { noremap = true })

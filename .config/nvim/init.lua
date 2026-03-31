-- Basic settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.encoding = "utf-8"
vim.opt.writebackup = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.showcmd = true
vim.opt.clipboard = "unnamed"

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.virtualedit = "onemore"
vim.opt.backspace = "indent,eol,start"
vim.opt.visualbell = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.wildmode = "list:longest"
vim.opt.wildmenu = true
vim.opt.list = true
vim.opt.listchars = { tab = "->", trail = "·" }

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true

vim.opt.errorbells = false
vim.opt.cmdheight = 2
vim.opt.display = "lastline"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Keymaps
vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true })

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  { "cocopon/iceberg.vim", priority = 1000, config = function()
    vim.cmd.colorscheme("iceberg")
  end },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "go", "javascript", "typescript", "json", "yaml", "markdown" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end },
  { "lewis6991/gitsigns.nvim", config = true },
  { "nvim-lualine/lualine.nvim", config = function()
    require("lualine").setup({ options = { theme = "iceberg_dark" } })
  end },
})

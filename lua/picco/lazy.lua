local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- local pathOfThisFile = ...
-- local folderOfThisFile = (...):match("(.-)[^%.]+$")
require("lazy").setup({
	-- plenary
	"nvim-lua/plenary.nvim",
	-- harpoon
	{
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    dependencies = { "nvim-lua/plenary.nvim" }
	},
	-- others
	{ import = 'picco.plugins' }
})

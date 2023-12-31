local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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


require("lazy").setup({
 { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
 { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
})



vim.cmd [[colorscheme moonfly]]
vim.wo.number = true
vim.wo.relativenumber = true

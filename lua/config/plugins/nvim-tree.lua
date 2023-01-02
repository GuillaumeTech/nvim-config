-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- configure nvim-tree
nvimtree.setup({
  -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "+", -- arrow when folder is closed
          arrow_open = "-", -- arrow when folder is open
        },
      },
    },
  },
  -- 	git = {
  -- 		ignore = false,
  -- 	},
})

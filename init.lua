-- remappings

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear highlighted searched word


-- specifying register control
vim.keymap.set("x", "<leader>p", "\"_dP") -- puts the overwritten word in the void register so copy and pasting is easy (theprimeagen video 27:01)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "x", '"_x') -- delete curent char, no register placing

-- get rid of <shift+space> making :2u
vim.api.nvim_set_keymap('t', '<S-Space>', ' ', {noremap = true, silent = true})





-- set env

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim.undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50





-- colors

vim.cmd[[colorscheme vim]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "none" })
vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = '#1E1E1E' })

-- vim.cmd('highlight clear SignColumn')

--vim.cmd('highlight MatchParen ctermfg=yellow ctermbg=red cterm=NONE')
vim.cmd('highlight MatchParen cterm=bold,underline ctermfg=NONE ctermbg=NONE')





-- packages

require("nvim-autopairs").setup{}


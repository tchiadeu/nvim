vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window verticality" }) -- split window verticality
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontality" }) -- split window horizontality
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split window equal width
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- open current buffer in new tab

-- move code lines
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "move the line down" })
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "move the line up" })

-- move with cursor replaced
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move to end of screen and place cursor at middle" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move to start of screen and place cursor at middle" })

-- balises for erb
keymap.set("i", "<leader>pe", "<%=  %><ESC>hhi", { desc = "open a displayed balise" })
keymap.set("i", "<leader>er", "<%  %><ESC>hhi", { desc = "open a undisplayed balise" })

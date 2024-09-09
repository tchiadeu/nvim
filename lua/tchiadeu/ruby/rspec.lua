local zellij = "~/.config/zellij/./zellij"

local test_current_file = function()
  local position = "--height '80%' --width '80%' -x '10%' -y '10%'"
  local current_file = vim.fn.expand('%')
  vim.fn.system(zellij .. " run -f " .. position .. " -n 'Testing current file' -- bundle exec rspec " .. current_file)
end
vim.keymap.set("n", "<leader>tc", test_current_file)

local test_all_specs = function()
  vim.cmd(":!" .. zellij .. " run -i -n 'Testing all specs' -- bundle exec rspec")
end
vim.keymap.set("n", "<leader>ta", test_all_specs)


vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe Get-Clipboard",
    ["*"] = "powershell.exe Get-Clipboard",
  },
  cache_enabled = 0,
}

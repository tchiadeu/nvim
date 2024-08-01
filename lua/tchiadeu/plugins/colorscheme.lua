return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local transparent = true

    local bg = "#011628"
    local bg_dark = "#011423"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#CBE0F0"
    local fg_dark = "#B4D0E9"
    local fg_gutter = "#627E97"
    local border = "#547998"
    local type = "#FFDA70"
    local function_color = "#B1CFF3"
    local variable = "#F1969D"
    local symbol = "#E2A174"
    local constant = "#FFEEBC"
    local boolean = "#ECB98A"

    require("tokyonight").setup({
      style = "night",
      transparent = transparent,
      styles = {
        sidebars = transparent and "transparent" or "dark",
        floats = transparent and "transparent" or "dark",
      },
      on_colors = function(colors)
        colors.bg = bg
        colors.bg_dark = transparent and colors.none or bg_dark
        colors.bg_float = transparent and colors.none or bg_dark
        colors.bg_highlight = bg_highlight
        colors.bg_popup = bg_dark
        colors.bg_search = bg_search
        colors.bg_sidebar = transparent and colors.none or bg_dark
        colors.bg_statusline = transparent and colors.none or bg_dark
        colors.bg_visual = bg_visual
        colors.border = border
        colors.fg = fg
        colors.fg_dark = fg_dark
        colors.fg_float = fg
        colors.fg_gutter = fg_gutter
        colors.fg_sidebar = fg_dark
      end,
      on_highlights = function(hl, c)
        hl.Type = { fg = type }
        hl.Function = { fg = function_color }
        hl.Variable = { fg = variable }
        hl["@variable"] = { link = "Variable" }
        hl.SpecialChar = { fg = symbol }
        hl.Constant = { fg = constant }
        hl.Boolean = { fg = boolean }
        hl.Number = { link = "Boolean" }
        hl.Float = { link = "Boolean" }
        hl.erubyExpression = { link = "Function" }
        hl.rubySymbol = { link = "SpecialChar" }
        hl.htmlTag = { link = "Variable" }
        hl.htmlArg = { link = "htmlTag" }
        hl.htmlEndTag = { link = "htmlTag" }
        hl.htmlTagName = { link = "htmlTag" }
        hl.htmlTagN = { link = "htmlTag" }
        hl.rubyBlockParameterList = { link = "Variable" }
        hl.rubyInstanceVariable = { link = "LspKindProperty" }
      end,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}

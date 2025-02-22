local M = {}

local function set_globals()
  vim.g.terminal_color_0          = "#0F1E26"
  vim.g.terminal_color_1          = "#4B7654"
  vim.g.terminal_color_2          = "#BFE984"
  vim.g.terminal_color_3          = "#2FB346"
  vim.g.terminal_color_4          = "#9BB078"
  vim.g.terminal_color_5          = "#C1E178"
  vim.g.terminal_color_6          = "#7B7760"
  vim.g.terminal_color_7          = "#D6D69E"
  vim.g.terminal_color_8          = "#E0B596"
  vim.g.terminal_color_9          = "#4B7654"
  vim.g.terminal_color_10         = "#BFE984"
  vim.g.terminal_color_11         = "#2FB346"
  vim.g.terminal_color_12         = "#9BB078"
  vim.g.terminal_color_13         = "#C1E178"
  vim.g.terminal_color_14         = "#7B7760"
  vim.g.terminal_color_15         = "#9FE479"
  vim.g.terminal_color_background = "#0F1E26"
  vim.g.terminal_color_foreground = "#4B7654"
end

local function set_hl_groups()
  local hl = vim.api.nvim_set_hl

  hl(0, "Normal",                 { fg = "#4B7654", bg     = "#0F1E26" })
  hl(0, "Cursor",                 { fg = "#0F1E26", bg     = "#4B7654" })
  hl(0, "LineNr",                 { fg = "#9BB078", bg     = "#0F1E26" })
  hl(0, "CursorLine",             { fg = "NONE",    bg     = "#D6D69E" })
  hl(0, "Visual",                 { fg = "NONE",    bg     = "#2FB346" })

  hl(0, "Comment",                { fg = "#9BB078", italic = true      })
  hl(0, "String",                 { fg = "#2FB346", bg     = "NONE"    })
  hl(0, "Keyword",                { fg = "#BFE984", bold   = true      })
  hl(0, "Function",               { fg = "#BFE984", bold   = true      })
  hl(0, "Identifier",             { fg = "#4B7654", bg     = "NONE"    })
  hl(0, "Number",                 { fg = "#BFE984", bg     = "NONE"    })
  hl(0, "Type",                   { fg = "#BFE984", bold   = true      })
  hl(0, "Statement",              { fg = "#BFE984", bold   = true      })
  hl(0, "Constant",               { fg = "#4B7654", bg     = "NONE"    })
  hl(0, "Special",                { fg = "#2FB346", bg     = "NONE"    })

  hl(0, "StatusLine",             { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "StatusLineNC",           { fg = "#9BB078", bg     = "#7B7760" })
  hl(0, "VertSplit",              { fg = "#D6D69E", bg     = "#0F1E26" })
  hl(0, "TabLine",                { fg = "#9BB078", bg     = "#7B7760" })
  hl(0, "TabLineSel",             { fg = "#BFE984", bg     = "#0F1E26" })
  hl(0, "TabLineFill",            { fg = "NONE",    bg     = "#7B7760" })
  hl(0, "Pmenu",                  { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "PmenuSel",               { fg = "#0F1E26", bg     = "#BFE984" })

  hl(0, "ColorColumn",            { fg = "NONE",    bg     = "#D6D69E" })
  hl(0, "CursorLineNr",           { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "NonText",                { fg = "#9BB078", bg     = "NONE"    })
  hl(0, "MatchParen",             { fg = "#C1E178", bg     = "#2FB346" })
  hl(0, "Search",                 { fg = "#0F1E26", bg     = "#BFE984" })
  hl(0, "IncSearch",              { fg = "#0F1E26", bg     = "#C1E178" })

  hl(0, "TelescopeNormal",        { fg = "#4B7654", bg     = "#0F1E26" })
  hl(0, "TelescopeBorder",        { fg = "#9BB078", bg     = "#0F1E26" })
  hl(0, "TelescopePrompt",        { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "TelescopePromptBorder",  { fg = "#9BB078", bg     = "#7B7760" })
  hl(0, "TelescopePromptPrefix",  { fg = "#BFE984", bg     = "#7B7760" })
  hl(0, "TelescopePromptCounter", { fg = "#9BB078", bg     = "#7B7760" })
  hl(0, "TelescopeResults",       { fg = "#4B7654", bg     = "#0F1E26" })
  hl(0, "TelescopeResultsBorder", { fg = "#9BB078", bg     = "#0F1E26" })
  hl(0, "TelescopePreview",       { fg = "#4B7654", bg     = "#D6D69E" })
  hl(0, "TelescopePreviewBorder", { fg = "#9BB078", bg     = "#D6D69E" })
  hl(0, "TelescopeMatching",      { fg = "#C1E178", bg     = "#2FB346", bold = true })
  hl(0, "TelescopeSelection",     { fg = "#0F1E26", bg     = "#BFE984" })
  hl(0, "TelescopeTitle",         { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "TelescopePromptTitle",   { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "TelescopeResultsTitle",  { fg = "#C1E178", bg     = "#7B7760" })
  hl(0, "TelescopePreviewTitle",  { fg = "#C1E178", bg     = "#7B7760" })
end

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "fernmind"
  set_globals()
  set_hl_groups()
end

return M

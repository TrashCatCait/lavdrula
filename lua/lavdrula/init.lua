local fn = vim.fn 

local none = "NONE"
local bold = "bold"
local italic = "italic"
local underline = "underline"

local black = "#39243a"
local pink = "#eb64b9"
local light_green = "#afd686"
local orange = "#feae87"
local blue = "#40b4c4"
local magenta = "#b381c5"
local dark_cyan = "#215969"
local grey = "#918896"

local dark_grey = "#716485"
local red = "#fc2377"
local green = "#50fa7b"
local yellow = "#ffe261"
local turqouise = "#74dfc4"
local dark_magenta = "#6d75e0"
local cyan = "#b4dce7"
local white = "#ffffff"

local fg0 = white
local bg_sel = dark_grey
local bg0 = black 

local lavdrula = {}

local sign = {
  error = "",
  warn = "",
  hint = "",
  info = ""
}

local combine = function(...)
  local M = {...}
  local style = ""
  for k, s in pairs(M) do
    if k ~= #M and k ~= 1 then
      style = style .. ","
    end
    style = style .. s
  end
  return style
end

lavdrula["hi"] = {
	--Normal
	{"Normal", bg = bg0, fg = fg0},
	{"NormalFloat", bg = bg0, fg = fg0},
	
	--Cursors 
	{"Cursor", bg = dark_grey, fg = bg0}, 
	{"lCursor", bg = dark_grey, fg = bg0}, 

	--Details
	{"NonText", fg = turqouise},
  	{"MatchParen", bg = bg0, fg = white, style = underline},
  	{"CursorLine", bg = bg_sel},
  	{"VertSplit", bg = white, fg = bg0},
  	{"StatusLine", bg = bg0, fg = white},
  	{"StatusLineNC", bg = bg0, fg = white},
	--Line Number 
	{"LineNr", fg = dark_grey},
	{"CursorLineNr", fg = grey},
	--folders 
	{"Folded", bg = bg0, fg = light_green, styple = bold},
	{"FoldColumn", bg = bg0, fg = light_green, styple = bold},

	-- Sign
  	{"SignColumn", bg = bg0},
  	{"EndOfBuffer", fg = bg0},
  	-- Git
  	{"GitAdd", fg = green},
	{"GitDelete", fg = red},
  	{"GitChange", fg = magenta},
  	-- Lsp
  	{"ErrorSign", bg = bg0, fg = red},
  	{"ErrorVirtualText", fg = red, bg = bg0},
  	{"ErrorFloating", fg = red, bg = bg0},
  	{"ErrorUnderline", fg = red, bg = bg0},
  	{"WarningSign", fg = orange, bg = bg0},
  	{"WarningVirtualText", fg = orange, bg = bg0},
  	{"WarningFloating", fg = orange, bg = bg0},
  	{"WarningUnderline", fg = orange, bg = bg0},
  	{"HintSign", fg = grey, bg = bg0},
  	{"HintVirtualText", fg = grey, bg = bg0},
  	{"HintFloating", fg = grey, bg = bg0},
  	{"HintUnderline", fg = grey, bg = bg0},
  	{"InformationSign", fg = yellow, bg = bg0},
  	{"InformationVirtualText", fg = yellow, bg = bg0},
  	{"InformationFloating", fg = yellow, bg = bg0},
  	{"InformationUnderline", fg = yellow, bg = bg0},
  	{"Title", fg = yellow},

	-- Indentifier
  	{"Identifier", fg = white}, -- filed
  	{"Keyword", fg = dark_magenta, style = italic}, -- local
  	{"Type", fg = pink, style = italic}, -- char, int
  	{"Character", fg = dark_cyan}, -- char
  	{"String", fg = light_green}, -- string
  	{"Number", fg = turqouise}, -- number,int
  	{"Boolean", fg = magenta}, -- boolean
  	{"Float", fg = blue}, -- float,double
  	{"Function", fg = cyan, style = bold}, -- func
  	{"PreProc", fg = pink},
  	{"Statement", fg = yellow, style = italic}, -- conditional operator
  	{"Comment", fg = gray, style = combine(italic)},
  	-- Special
  	-- {"SpecialChar", fg = lightblue},
  	-- {"Tag", fg = lightblue},
  	-- {"Delimiter", fg = lightblue},
 	-- {"SpecialComment", fg = lightblue},
  	-- {"Debug", fg = lightblue},
	-- nvim-tree
	{"NvimTreeFolderName", fg = yellow},
  	{"NvimTreeRootFolder", fg = yellow},
  	{"NvimTreeSpecialFile", fg = yellow},
  	-- dashboard
  	{"dashboardHeader", fg = blue},
  	{"dashboardFooter", fg = orange},
  	{"dashboardCenter", fg = cyan},
  	{"dashboardShortCut", fg = orange},
  	-- Search
  	{"Search", fg = dark_mangenta, bg = pink},
  	{"MatchParen", fg = white, bg = pink},
  	-- Visual
  	{"Visual", style = "inverse"},
  	{"VisualNOS", bg = dark_grey},
  	-- More
  	{"More", fg = cyan},
  	{"MoreMsg", fg = cyan},
  	-- Mode
  	{"ModeMsg", fg = red},
  	{"Statements", fg = red},
  	-- barbar.nvim
  	{"BufferCurrent", bg = bg0, fg = white},
  	{"BufferInactive", bg = bg0, fg = yellow},
  	-- lspsaga
  	{"TargetWord", bg = bg0, fg = magenta},
  	-- flutter-tools.nvim
  	{"FlutterCloseTag", bg = bg0, fg = grey},
  	{"FlutterToolsOutlinevertical", bg = bg0, fg = green},
  	{"FlutterToolsOutlinemiddle", bg = bg0, fg = green},
  	{"FlutterToolsOutlinemiddlehorizontal", bg = bg0, fg = green},
  	{"FlutterToolsOutlinebottom", bg = bg0, fg = green},
  	-- Telescope
  	{"TelescopeSelection", bg = bg0, fg = white},
  	{"TelescopePreviewHyphen", bg = bg0, fg = white},
  	-- {"TelescopeResult"},
  	-- neogit
  	{"NeogitDiffAddHighlight", bg = bg0, fg = green},
  	{"NeogitDiffDelete", bg = bg0, fg = red},
  	{"NeogitDiffDeleteHighlight", bg = bg0, fg = red},
  	{"NeogitDiffContextHighlight", bg = bg0, fg = yellow},
  	-- easymotion
  	{"EasyMotionTarget", fg = blue},
  	-- hop.nvim
  	{"HopNextKey", fg = blue, style = combine(bold, underline)},
  	-- nvim-tree.lua
  	{"NvimTreeGitDirty", fg = orange},
  	-- indent-blanking.nvim
  	{"IndentBlanklineChar", fg = bg0},
  	{"IndentBlanklineContextChar", fg = magenta},
  	-- todo-comments.nvim
  	{"TodoSignWARN", bg = none},
  	{"TodoSignPERF", bg = none},
  	{"TodoSignHACK", bg = none},
  	{"TodoSignTODO", bg = none},
  	{"TodoSignNOTE", bg = none},
  	{"TodoSignFIX", bg = none},
  	-- vim-cursorword
  	{"CursorWord1", bg = none, fg = none},
    -- CATSTATUS
    {"CStatLeft", bg = "#674169"},
}

lavdrula["li"] = {
  -- Diff
  {"DiffAdd", "GitAdd"},
  {"DiffChange", "GitChange"},
  {"DiffDelete", "GitDelete"},
  -- barbar.nvim
  {"BufferCurrentIndex", "BufferCurrent"},
  {"BufferCurrentMod", "BufferCurrent"},
  {"BufferCurrentSign", "BufferCurrent"},
  {"BufferCurrentTarget", "BufferCurrent"},
  {"BufferVisible", "BufferInactive"},
  {"BufferVisibleIndex", "BufferInactive"},
  {"BufferVisibleMod", "BufferInactive"},
  {"BufferVisibleSign", "BufferInactive"},
  {"BufferVisibleTarget", "BufferInactive"},
  {"BufferInactive", "BufferInactive"},
  {"BufferInactiveMod", "BufferInactive"},
  {"BufferInactiveSign", "BufferInactive"},
  {"BufferInactiveIndex", "BufferInactive"},
  {"BufferInactiveTarget", "BufferInactive"},
  {"BufferTabpageFill", "Normal"},
  {"BufferTabpages", "Normal"},
  -- lspconfig(version: 0.5.x )
  {"LspDiagnosticsSignError", "ErrorSign"},
  {"LspDiagnosticsVirtualTextInformationError", "ErrorVirtualText"},
  {"LspDiagnosticsFloatingError", "ErrorFloating"},
  {"LspDiagnosticsUnderlineError", "ErrorUnderline"},
  {"LspDiagnosticsSignWarning", "WarningSign"},
  {"LspDiagnosticsVirtualTextInformationWarning", "WarningVirtualText"},
  {"LspDiagnosticsFloatingWarning", "WarningFloating"},
  {"LspDiagnosticsUnderlineWarning", "WarningUnderline"},
  {"LspDiagnosticsSignHint", "HintSign"},
  {"LspDiagnosticsVirtualTextInformationHint", "HintVirtualText"},
  {"LspDiagnosticsFloatingHint", "HintFloating"},
  {"LspDiagnosticsUnderlineHint", "HintUnderline"},
  {"LspDiagnosticsSignInformation", "InformationSign"},
  {"LspDiagnosticsVirtualTextInformationInformation", "InformationVirtualText"},
  {"LspDiagnosticsFloatingInformation", "InformationFloating"},
  {"LspDiagnosticsUnderlineInformation", "InformationUnderline"},
  -- lspconfig(version: 0.6.x)
  {"DiagnosticSignError", "ErrorSign"},
  {"DiagnosticVirtualTextError", "ErrorVirtualText"},
  {"DiagnosticFloatingError", "ErrorFloating"},
  {"DiagnosticUnderlineError", "ErrorUnderline"},
  {"DiagnosticWarn", "WarningSign"},
  {"DiagnosticVirtualTextWarn", "WarningVirtualText"},
  {"DiagnosticFloatingWarn", "WarningFloating"},
  {"DiagnosticUnderlineWarn", "WarningUnderline"},
  {"DiagnosticHint", "HintSign"},
  {"DiagnosticVirtualTextHint", "HintVirtualText"},
  {"DiagnosticFloatingHint", "HintFloating"},
  {"DiagnosticUnderlineHint", "HintUnderline"},
  {"DiagnosticSignInfo", "InformationSign"},
  {"DiagnosticVirtualTextInfo", "InformationVirtualText"},
  {"DiagnosticFloatingInfo", "InformationFloating"},
  {"DiagnosticUnderlineInfo", "InformationUnderline"},
  -- gitgutter
  {"GitGutterAdd", "GitAdd"},
  {"GitGutterChange", "GitChange"},
  {"GitGutterDelete", "GitDelete"},
  -- coc-git
  {"CocGitSign", "GitAdd"},
  {"CocGitChangedSign", "GitChange"},
  {"CocGitChangeRemoveSign", "GitChange"},
  {"CocGitRemoveSign", "GitDelete"},
  {"CocGitTopRemoveSign", "GitDelete"},
  -- nvim-treesitter
  {"TSCharacter", "Character"},
  {"TSNumber", "Number"},
  {"TSString", "String"},
  {"TSFloat", "Float"},
  -- coc.nvim
  {"CocErrorSign", "ErrorSign"},
  {"CocWarningSign", "WarningSign"},
  {"CocInformationSign", "InformationSign"},
  {"CocHintSign", "HintSign"},
  -- vim-translator
  {"TranslatorBorder", "Normal"},
  -- flutter-tools.nvim
  {"FlutterToolsOutlinemiddle", "FlutterToolsOutlinevertical"},
  {"FlutterToolsOutlinemiddlehorizontal", "FlutterToolsOutlinevertical"},
  {"FlutterToolsOutlinebottom", "FlutterToolsOutlinevertical"}
}

if vim.fn.has("nvim-0.6") == 1 then
  lavdrula["sign"] = {
    {"DiagnosticSignError", text = sign["error"], hl = "DiagnosticError", nhl = "DiagnosticError"},
    {"DiagnosticSignWarn", text = sign["warn"], hl = "DiagnosticWarning", nhl = "DiagnosticWarning"},
    {"DiagnosticSignHint", text = sign["hint"], hl = "DiagnosticHint", nhl = "DiagnosticHint"},
    {
      "DiagnosticSignInfo",
      text = sign["info"],
      hl = "DiagnosticInfo",
      nhl = "DiagnosticInfo"
    }
  }
else
  lavdrula["sign"] = {
    {"LspDiagnosticsSignError", text = sign["error"], hl = "LspDiagnosticsSignError", nhl = "LspDiagnosticsSignError"},
    {
      "LspDiagnosticsSignWarning",
      text = sign["warn"],
      hl = "LspDiagnosticsSignWarning",
      nhl = "LspDiagnosticsSignWarning"
    },
    {"LspDiagnosticsSignHint", text = sign["hint"], hl = "LspDiagnosticsSignHint", nhl = "LspDiagnosticsSignHint"},
    {
      "LspDiagnosticsSignInformation",
      text = sign["info"],
      hl = "LspDiagnosticsSignInformation",
      nhl = "LspDiagnosticsSignInformation"
    }
  }
end

table.insert(lavdrula["sign"], {"GitSignsAdd", text = "|", hl = "GitAdd"})
table.insert(lavdrula["sign"], {"GitSignsDelete", text = "|", hl = "GitDelete"})
table.insert(lavdrula["sign"], {"GitSignsTopDelete", text = "|", hl = "GitDelete"})
table.insert(lavdrula["sign"], {"GitSignsChangeDelete", text = "|", hl = "GitDelete"})


function lavdrula:load_hi_group()
  for _, v in ipairs(self["hi"]) do
    local command = "hi! " .. v[1] .. " "
    if v["bg"] ~= nil then
      command = command .. "guibg=" .. v["bg"] .. " "
    end
    if v["fg"] ~= nil then
      command = command .. "guifg=" .. v["fg"] .. " "
    end
    if v["style"] ~= nil then
      command = command .. "gui=" .. v["style"] .. " "
    end
    vim.cmd(command)
  end
end

function lavdrula:load_li_group()
  for _, v in ipairs(self["li"]) do
    local command = "hi! link " .. v[1] .. " " .. v[2]
    vim.cmd(command)
  end
end

function lavdrula:load_sign_group()
  for _, v in ipairs(self["sign"]) do
    local t = {}
    if v["text"] ~= nil then
      t["text"] = v["text"]
    end
    if v["hl"] ~= nil then
      t["texthl"] = v["hl"]
    end
    if v["nhl"] ~= nil then
      t["numhl"] = v["nhl"]
    end
    fn["sign_define"](v[1], t)
  end
end

function lavdrula.setup(opts) 
    if opts and opts.reset == true then
    	vim.cmd("highlight clear")
    end
    if fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true

    vim.g.colors_name = "nvim-lavdrula"
  	lavdrula:load_hi_group()
end

return lavdrula

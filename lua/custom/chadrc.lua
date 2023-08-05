---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "bearded-arc",
  theme_toggle = { "bearded-arc", "everforest_light" },
  transparency = false,
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  nvdash = {
    -- Load on startup does not work, had to create an autocommand for it.
    load_on_startup = true,
    header = {
      "                                                                 ;                                 ",
      "                                                          :      ED.                               ",
      "                           L.                            t#,     E#Wi                 ,;           ",
      "                       t   EW:        ,ft         .Gt   ;##W.    E###G.             f#i            ",
      "            ..       : Ej  E##;       t#E        j#W:  :#L:WE    E#fD#W;          .E#t             ",
      "           ,W,     .Et E#, E###t      t#E      ;K#f   .KG  ,#D   E#t t##L        i#W,   t      .DD.",
      "          t##,    ,W#t E#t E#fE#f     t#E    .G#D.    EE    ;#f  E#t  .E#K,     L#D.    EK:   ,WK. ",
      "         L###,   j###t E#t E#t D#G    t#E   j#K;     f#.     t#i E#t    j##f  :K#Wfff;  E#t  i#D   ",
      "       .E#j##,  G#fE#t E#t E#t  f#E.  t#E ,K#f   ,GD;:#G     GK  E#t    :E#K: i##WLLLLt E#t j#f    ",
      "      ;WW; ##,:K#i E#t E#t E#t   t#K: t#E  j#Wi   E#t ;#L   LW.  E#t   t##L    .E#L     E#tL#i     ",
      "     j#E.  ##f#W,  E#t E#t E#t    ;#W,t#E   .G#D: E#t  t#f f#:   E#t .D#W;       f#E:   E#WW,      ",
      "   .D#L    ###K:   E#t E#t E#t     :K#D#E     ,K#fK#t   f#D#;    E#tiW#G.         ,WW;  E#K:       ",
      "  :K#t     ##D.    E#t E#t E#t      .E##E       j###t    G#t     E#K##i            .D#; ED.        ",
      "  ...      #G      ..  E#t ..         G#E        .G#t     t      E##D.               tt t          ",
      "           j           ,;.             fE          ;;            E#t                               ",
      "                                        ,                        L:                                ",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  extended_integrations = { "notify" },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M

local neoscroll = require('neoscroll')

neoscroll.setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    -- mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
    --     '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = false,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = "quadratic",
    pre_hook = function(info) if info == 'M' then vim.cmd("normal M") end end,
    post_hook = nil,              -- Function to run after the scrolling animation starts
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
    -- CUSTOM
})

local keymap = {
  ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 150, info = 'M' }) end;
  ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 150, info = 'M' }) end;
  ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 300 }) end;
  ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 300 }) end;
  ["<C-y>"] = function() neoscroll.scroll(-0.1, { duration = 100 }) end;
  ["<C-e>"] = function() neoscroll.scroll(0.1, { duration = 100 }) end;
  ["zt"]    = function() neoscroll.zt({ half_win_duration = 200 }) end;
  ["zz"]    = function() neoscroll.zz({ half_win_duration = 200 }) end;
  ["zb"]    = function() neoscroll.zb({ half_win_duration = 200 }) end;
}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end

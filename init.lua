-- map leader to "<Space>"
vim.g.mapleader = " "
vim.loader.enable()

-- Replace the minimal plugin setup with this
require('plugins')
require('maps')
require('base')
require('null-ls')
require('highlights')
require('scrollsettings')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('macos')
end
if is_win == 1 then
  require('windows')
end
if is_wsl == 1 then
  require('wsl')
end
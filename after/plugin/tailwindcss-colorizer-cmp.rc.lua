local status, cmp = pcall(require, "cmp")
if (not status) then return end

require("cmp").config.formatting = {
  format = require("tailwindcss-colorizer-cmp").formatter
}

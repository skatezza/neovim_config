local status, icons = pcall(require, "nvim-web-devicons")
if (not status) then return end

icons.setup {
  -- your personal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    svelte = {
      icon = "", -- Svelte icon
      color = "#ff3e00", -- Orange color
      name = "Svelte" -- Name of the icon
    },
    -- Other icons go here
  },
  -- globally enable default icons (default to false)
  -- will get overridden by `get_icons` option
  default = true
}

icons.get_icons()["svelte"] = {
  icon = "",
  color = "#ff3e00",
  name = "Svelte"
}

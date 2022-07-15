local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")
require("telescope").setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-p>"] = action_layout.toggle_preview,
      },
    },
  },
  extensions = {
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
    },
  },
}

require('telescope').load_extension('media_files')


require("obsidian").setup({

    workspaces = {
        {
        name = "External Brain",
        path = "/Users/hflubis/Library/Mobile Documents/iCloud~md~obsidian/Documents/External Brain",
        },
      },

    notes_subdir = "Inbox",
    new_notes_location = "notes_subdir",

    disable_frontmatter = true,
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M:%S",
     },

    completion = {
    -- Set to false to disable completion.
    nvim_cmp = true,
    -- Trigger completion at 2 chars.
    min_chars = 2,
      },

    mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    },
})
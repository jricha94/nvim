local settings = {
  mouse = "a",               -- Allow Mouse Use
  backup = false,            -- Creates a backup file
  conceallevel = 0,          -- So `` is visible in Markdown files
  fileencoding = "utf-8",    -- Encoding writen to a file
  foldmethod = "indent",     -- Folds are based on indents
  hidden = true,             -- Required for multiple buffers
  hlsearch = true,           -- Highlight all searches
  ignorecase = true,         -- Ignore case when searching
  smartcase = true,          -- Only case sensitive is cases are used
  smartindent = true,        -- Makes indent smart :)
  pumheight = 10,            -- Pop-up menu height
  showmode = false,          -- Don't need to show mode when we have a pretty statusbar
  showtabline = 2,           -- Always show tabs
  splitbelow = true,         -- New splits are opened below
  splitright = true,         -- New V-splits are to the right
  swapfile = false,          -- Create a swapfile
  termguicolors = true,      -- Set termguicolors for pretty colors
  timeoutlen = 500,          -- Time to wait for a mapped sequence
  title = true,              -- Set title to titlestring
  updatetime = 200,          -- Faster completion
  writebackup = false,       -- Can't change file being edited by another program
  shiftwidth = 2,            -- Number of spacer per indentation
  tabstop = 2,               -- 2 spaces for a tab
  expandtab = true,          -- Convert tabs to spaces
  number = true,             -- Set numbered lines
  relativenumber = true,     -- Set relative number
  cursorline = false,        -- Highlight line with cursor on it
  wrap = false,              -- Wrap lines that extend off screen
  foldlevel = 999,           -- Fold level when opening file
  spell = false,
  spelllang = "en",
  scrolloff = 8,
  sidescrolloff = 8,
}


for k, v in pairs(settings) do
  vim.opt[k] = v
end

---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- line numbers
    ["<leader>un"] = { "<cmd> set nu! <CR>", "Toggle line number" },
    ["<leader>ur"] = { "<cmd> set rnu! <CR>", "Toggle relative number" },

    ["<leader>uh"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
    ["<leader>l"] = {"", "LSP functions"},
  },
}

M.disabled = {
    n = {
        -- general
        ["<leader>rn"] = "",
        ["<leader>n"] = "",
        ["<leader>ch"] = "",

        -- LSP functions keybinds
        -- -> <leader>l + button (leader + Lsp + funk)
        -- -> <leader>g + button (leader + Go + funk)
        -- -> <leader>w + button (leader + Workplace + funk)
        ["K"] = "",
        ["<leader>D"] = "",
        ["<leader>ra"] = "",
        ["<leader>ca"] = "",
        ["<leader>f"] = "",
        ["<leader>fm"] = "",
        ["<leader>q"] = "",

        -- nvimtree 
        ["<C-n>"] = "",

        -- nvterm
        ["<leader>v"] = "",
        ["<leader>h"] = "",

        -- telescope
        ["<leader>pt"] = "",
        ["<leader>cm"] = "",
        ["<leader>gt"] = "",
        ["<leader>th"] = "",
    },

}

-- more keybinds!
M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["L"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>x"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

M.lspconfig = {
  plugin = true,

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["<leader>lk"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>gD"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["<leader>le"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>ld"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "Goto next",
    },

    ["<leader>lq"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },

    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<C-e>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.nvterm = {

  n = {
    -- toggle in normal mode
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    -- new
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },

    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "New float term",
    },
  },
}

M.telescope = {

  n = {
    -- git
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git status" },

    -- pick a hidden term
    ["<leader>tp"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },

    -- theme switcher
    -- ["<leader>th"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
  },
}

return M

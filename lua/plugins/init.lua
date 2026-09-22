return {
  -- ── overrides of NvChad's own specs (was lua/custom/configs/overrides.lua) ──

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
      },
      indent = {
        enable = true,
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",
      },
    },
  },

  -- git support in nvimtree
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },

  -- ── your plugins (was lua/custom/plugins.lua) ──

  {
    "skywind3000/vim-gpt-commit",
    lazy = false,
    init = function()
      vim.g.gpt_commit_key = "your key"
      -- uncomment this line below to enable proxy
      -- vim.g.gpt_commit_proxy = 'socks5://127.0.0.1:1080'
    end,
  },

  {
    "edluffy/hologram.nvim",
    lazy = false,
    opts = {
      auto_display = true, -- WIP. Will display 'Hologram' on CursorHold events
    },
  },

  {
    "poljar/typos.nvim",
    lazy = false,
    config = function()
      require("typos").setup()
    end,
  },

  { "RRethy/vim-illuminate", lazy = false },
  { "MattesGroeger/vim-bookmarks", lazy = false },
  { "vim-scripts/c.vim", lazy = false },

  {
    "luochen1990/rainbow",
    lazy = false,
    init = function()
      vim.g.rainbow_active = 1
    end,
  },

  {
    "tamton-aquib/zone.nvim",
    lazy = false,
    opts = {
      style = "treadmill",
      after = 30, -- Idle timeout
      exclude_filetypes = { "TelescopePrompt", "NvimTree", "neo-tree", "dashboard", "lazy" },

      treadmill = {
        direction = "left",
        headache = true,
        tick_time = 30, -- Lower, the faster
      },
      epilepsy = {
        stage = "aura", -- "aura" or "ictal"
        tick_time = 100,
      },
      dvd = {
        -- text = {"line1", "line2", "line3", "etc"}
        tick_time = 100,
      },
    },
  },

  { "liuchengxu/vista.vim", lazy = false },

  {
    "skywind3000/asyncrun.vim",
    lazy = false,
    init = function()
      vim.g.asyncrun_open = 6
    end,
  },

  { "wellle/context.vim", lazy = false },
  { "rhysd/vim-clang-format", lazy = false },

  -- was Exafunction/codeium.vim, repo renamed to windsurf.vim
  { "Exafunction/windsurf.vim", lazy = false },

  { "danilamihailov/beacon.nvim", lazy = false },

  -- coc.nvim is a complete LSP + completion engine of its own and fights
  -- NvChad's nvim-cmp / nvim-lspconfig stack. Left disabled; pick one.
  -- { "neoclide/coc.nvim", lazy = false, branch = "release" },

  -- upstream is unmaintained (last push 2023-02); `line_highlight = true` was
  -- set as a bare spec key in v2.0, which lazy.nvim ignores
  { "williamboman/warden.nvim", lazy = false },

  {
    "tamton-aquib/duck.nvim",
    lazy = false,
    config = function()
      vim.keymap.set("n", "<leader>dd", function()
        require("duck").hatch "🦀"
      end, { desc = "duck hatch" })
      vim.keymap.set("n", "<leader>dk", function()
        require("duck").cook()
      end, { desc = "duck cook" })
    end,
  },

  {
    -- repo transferred from p00f/ to dchinmay2/. The v2.0 commit pin
    -- (798e377, 2023) was dropped: that revision calls require("lspconfig"),
    -- which nvim-lspconfig deprecates and removes in v3.0.0. HEAD is clean.
    "dchinmay2/clangd_extensions.nvim",
    lazy = false,
    opts = {
      server = {
        -- options to pass to nvim-lspconfig
        -- i.e. the arguments to require("lspconfig").clangd.setup({})
      },
      extensions = {
        -- Automatically set inlay hints (type hints)
        autoSetHints = true,
        -- These apply to the default ClangdSetInlayHints command
        inlay_hints = {
          only_current_line = false,
          only_current_line_autocmd = "CursorHold",
          show_parameter_hints = true,
          parameter_hints_prefix = "<- ",
          other_hints_prefix = "=> ",
          max_len_align = false,
          max_len_align_padding = 1,
          right_align = false,
          right_align_padding = 7,
          highlight = "Comment",
          priority = 100,
        },
        ast = {
          -- These are unicode, should be available in any font
          role_icons = {
            type = "🄣",
            declaration = "🄓",
            expression = "🄔",
            statement = ";",
            specifier = "🄢",
            ["template argument"] = "🆃",
          },
          kind_icons = {
            Compound = "🄲",
            Recovery = "🅁",
            TranslationUnit = "🅄",
            PackExpansion = "🄿",
            TemplateTypeParm = "🅃",
            TemplateTemplateParm = "🅃",
            TemplateParamObject = "🅃",
          },
          highlights = {
            detail = "Comment",
          },
        },
        memory_usage = {
          border = "none",
        },
        symbol_info = {
          border = "none",
        },
      },
    },
  },

  {
    "simrat39/inlay-hints.nvim",
    lazy = false,
    opts = {
      only_current_line = true,

      eol = {
        right_align = true,
      },
    },
  },

  {
    -- upstream archived 2024-01; mrcjkb/rustaceanvim is the maintained successor
    "simrat39/rust-tools.nvim",
    lazy = false,
    dependencies = { "simrat39/inlay-hints.nvim" },
    config = function()
      local ih = require "inlay-hints"
      require("rust-tools").setup {
        tools = {
          on_initialized = function()
            ih.set_all()
          end,
          autosethints = true,
          inlay_hints = {
            auto = true,
            show_parameter_hints = true,
          },
          hover_actions = {
            auto_focus = true,
          },
        },
        server = {
          on_attach = function(c, b)
            ih.on_attach(c, b)
          end,
        },
      }
    end,
  },

  {
    "saecki/crates.nvim",
    lazy = false,
    tag = "v0.2.1",
    config = function()
      require("crates").setup()
    end,
  },

  {
    "folke/todo-comments.nvim",
    -- PERF: test perf?
    -- HACK: bruh
    -- TODO: wew
    -- NOTE:  sdkfj dkfjskdf
    -- ERROR: --
    -- FIX: fixed
    -- WARNING: test done
    lazy = false,
    opts = {
      keywords = {
        FIX = {
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "ERR" },
        },
        TODO = {
          color = "info",
          alt = { "VERB", "DEBG" },
        },
        PERF = {
          alt = { "OK" },
        },
      },
      highlight = {
        comments_only = false, -- uses treesitter to match keywords in comments only
        pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
      },
    },
  },

  { "mfussenegger/nvim-dap", lazy = false },

  {
    "voldikss/vim-floaterm",
    lazy = false,
    init = function()
      vim.g.floaterm_position = "bottom"
      vim.g.floaterm_width = 1.0
      vim.g.floaterm_height = 0.3
      vim.g.floaterm_keymap_new = "<F10>"
      vim.g.floaterm_keymap_prev = "<F9>"
      vim.g.floaterm_keymap_next = "<F11>"
      vim.g.floaterm_keymap_toggle = "<F12>"
    end,
  },
}

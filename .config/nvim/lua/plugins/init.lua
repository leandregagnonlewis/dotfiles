return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvim-lua/plenary.nvim",
  },
  --[[
  {
    "prettier/vim-prettier",
    Lazy = "VeryLazy",
    cmd = {
      "Prettier",
      "PrettierAsync",
    },
  },--]]
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
    opts = function ()
      return require "configs.mason"
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {"williamboman/mason.nvim"},
    config = function(_, opts)
      require("mason").setup()
      require("mason-lspconfig").setup()
    end,
    cmd = {
      "LspInstall",
      "LspUninstall",
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = "false",
    cmd =
      {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
  {
    "github/copilot.vim",
    cmd = {
      "Copilot"
    },
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvimtools/none-ls-extras.nvim"
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim" },
    event = "VeryLazy",
    opts = function ()
      return require "configs.null-ls"
    end
  },
  {
    "mfussenegger/nvim-dap",
    keys = {
      {"<leader>db", "<cmd> DapToggleBreakpoint <CR>"},
      {
        "<leader>dr",
        function ()
          require('dap').continue()
        end
      },
    },
  },
  { "nvim-neotest/nvim-nio" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function ()
      local dap =require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end

  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      local M = require("dap-python")
      M.setup(path)
      M.test_runner = "pytest"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event= "VeryLazy",
    opts = function()
      require("nvim-ts-autotag").setup()
    end
  }
}

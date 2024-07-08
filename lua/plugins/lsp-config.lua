return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
<<<<<<< HEAD
      require("mason").setup()
=======
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
>>>>>>> 65b25eb (LSP cinfig changed)
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
<<<<<<< HEAD
    lazy = false,
     ensure_installed = { "lua_ls", "rust_analyzer" },
    opts = {
      auto_install = true,
    },
=======
    config = function()
      require("mason-lspconfig").setup({
        lazy = false,
        opts = {
          auto_install = true,
        },
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "clangd",
          "gopls",
          "gradle_ls",
          "kotlin_language_server",
          "markdown_oxide",
          "taplo",
        },
      })
    end,
>>>>>>> 65b25eb (LSP cinfig changed)
  },
   {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
<<<<<<< HEAD

      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
 
      lspconfig.lua_ls.setup({
        capabilities = capabilities
=======
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.rust_analyzer.setup({
        settings = {
          capabilities = capabilities,
          ["rust-analyzer"] = {},
        },
>>>>>>> 65b25eb (LSP cinfig changed)
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.gradle_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.kotlin_language_server.setup({ capabilities = capabilities })
      lspconfig.markdown_oxide.setup({ capabilities = capabilities })
      lspconfig.taplo.setup({ capabilities = capabilities })

      -- Mappings.
      local opts = {}
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})

      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
      vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
      vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)
    end,
  },
}

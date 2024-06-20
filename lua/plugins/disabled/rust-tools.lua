return {
  "simrat39/rust-tools.nvim",
  opts = function()
    local ok, mason_registry = pcall(require, "mason-registry")
    local adapter ---@type any
    if ok then
      -- rust tools configuration for debugging support
      local codelldb = mason_registry.get_package("codelldb")
      local extension_path = codelldb:get_install_path() .. "/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"

      adapter = {
        type = "server",
        port = "${port}",
        host = "127.0.0.1",
        executable = {
          command = codelldb_path,
          args = { "--port", "${port}" },
        },
      }
    end
    return {
      dap = {
        adapter = adapter,
      },
      tools = {
        on_initialized = function()
          vim.cmd([[
                augroup RustLSP
                  autocmd CursorHold                      *.rs silent! lua vim.lsp.buf.document_highlight()
                  autocmd CursorMoved,InsertEnter         *.rs silent! lua vim.lsp.buf.clear_references()
                  autocmd BufEnter,CursorHold,InsertLeave *.rs silent! lua vim.lsp.codelens.refresh()
                augroup END
              ]])
        end,
      },
    }
  end,
  config = function() end,
}

local M = {}

M.defaults = {
  exclude = {
     lsp = {},
     ft = {}
    }
}

M.setup = function(opts)
  M.opts = vim.tbl_deep_extend("force", M.defaults, opts)
end

return M

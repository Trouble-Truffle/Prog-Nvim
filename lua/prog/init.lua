local M = {}


local hasCoderunner, _ = pcall(require, "code_runner")

local defaults = {
  projectFileLocation = vim.fn.stdpath('data') .. '/projects/projects',
  autoGenerate = {
    enable = true,
    codeRunner = hasCoderunner
  }
}

local opts = {}
M.setup = function(userOpts)
  opts = vim.tbl_deep_extend("force", defaults, userOpts or {})
end

M.create = function(path)
  require("prog.reify").create(opts, path or opts.projectFileLocation)
end

M.test = function()
  M.create()
end


return M

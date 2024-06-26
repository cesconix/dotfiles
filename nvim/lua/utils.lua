local M = {}

function M.file_exists(filenames)
  local expand = vim.fn.expand
  local cwd = expand '%:p:h'
  for _, name in ipairs(filenames) do
    local filepath = cwd .. '/' .. name
    if vim.fn.filereadable(filepath) == 1 then
      return true
    end
  end
  return false
end

-- function M.file_exists(filenames)
--   local find = vim.fs.find
--   local expand = vim.fn.expand
--   for _, name in ipairs(filenames) do
--     if #find({ name }, { path = expand '%:p:h', upward = true }) > 0 then
--       return true
--     end
--   end
--   return false
-- end

return M

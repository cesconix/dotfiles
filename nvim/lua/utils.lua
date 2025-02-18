local M = {}

function M.file_exists(filenames)
  local find = vim.fs.find
  local expand = vim.fn.expand
  for _, name in ipairs(filenames) do
    if #find({ name }, { path = expand '%:p:h', upward = true }) > 0 then
      return true
    end
  end
  return false
end

return M

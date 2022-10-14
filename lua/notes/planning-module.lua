local function insertTodayTitle()
    -- 2022-10-14
    todayString = os.date("%Y-%m-%d")
    vim.api.nvim_command('exec "normal 7G"')
    lineContent = vim.api.nvim_get_current_line()
    if string.match(lineContent, todayString) then
      print ("The word tiger was found.")
    else
      vim.api.nvim_set_current_line(os.date("## %Y-%m-%d"))
    end
  end

return insertTodayTitle

local function insertTodayTitle()
    -- 2022-10-14
    todayString = os.date("## %Y-%m-%d")
    print(todayString)
    vim.api.nvim_command('exec "normal 7G"')
    lineContent = vim.api.nvim_get_current_line()
    print(lineContent, todayString)
    if string.find(lineContent, todayString, 1, true) then
      print ("The word tiger was found.")
    else
      print ("not match")
      vim.api.nvim_command('exec "normal O"')
      vim.api.nvim_set_current_line(todayString)
    end
  end

return insertTodayTitle

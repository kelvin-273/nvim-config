-- Check if the 'pomo' plugin is installed
local status, pomo = pcall(require, "pomo")
if not status then
  vim.notify("Pomo plugin not found!", vim.log.levels.WARN)
  return
end
pomo.setup({
  sessions = {
    pomodoro = {
      { name = "Work", duration = "25m" },
      { name = "Short Break", duration = "5m" },
      { name = "Work", duration = "25m" },
      { name = "Short Break", duration = "5m" },
      { name = "Work", duration = "25m" },
      { name = "Long Break", duration = "15m" },
    },
  },
})

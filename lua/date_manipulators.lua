M= {}

function M.get_week_dates(current_date, n_weeks)
    -- Convert the current_date string (assuming format "YYYY-MM-DD") to a table
    local year, month, day = current_date:match("(%d+)-(%d+)-(%d+)")
    local date_table = {
        year = tonumber(year),
        month = tonumber(month),
        day = tonumber(day)
    }

    -- Get the day of the week for the current date (1 = Sunday, 2 = Monday, ..., 7 = Saturday)
    local time = os.time(date_table)
    local day_of_week = tonumber(os.date("%w", time))

    -- Adjust so Monday is considered day 1 (if it's Sunday, treat it as 7)
    if day_of_week == 0 then day_of_week = 7 end

    -- Find the Monday of the current week
    local days_to_monday = day_of_week - 1
    local monday_time = time - (days_to_monday * 86400) -- 86400 seconds in a day

    -- Calculate the Monday `n_weeks` weeks ahead
    local target_monday_time = monday_time + (n_weeks * 7 * 86400)
    local d1 = os.date("%Y-%m-%d", target_monday_time)

    -- Calculate the Sunday of that week (6 days after Monday)
    local target_sunday_time = target_monday_time + (6 * 86400)
    local d2 = os.date("%Y-%m-%d", target_sunday_time)

    return d1, d2
end

return M

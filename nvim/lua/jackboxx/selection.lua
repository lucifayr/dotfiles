Selection = {}

local function get_lines(bufnr, start_row, start_col, end_row, end_col)
    if start_row == end_row and start_col == end_col then
        return {}
    end

    local lines = vim.api.nvim_buf_get_lines(bufnr, start_row - 1, end_row, false)
    lines[1] = lines[1]:sub(start_col, -1)
    if #lines == 1 then -- visual selection all in the same line
        lines[1] = lines[1]:sub(1, end_col - start_col + 1)
    else
        lines[#lines] = lines[#lines]:sub(1, end_col)
    end
    return lines
end

local function get_visual_start_end()
    vim.api.nvim_feedkeys(ESC_FEEDKEY, "n", true)
    vim.api.nvim_feedkeys("gv", "x", false)
    vim.api.nvim_feedkeys(ESC_FEEDKEY, "n", true)

    local _, start_row, start_col, _ = unpack(vim.fn.getpos("'<"))
    local _, end_row, end_col, _ = unpack(vim.fn.getpos("'>"))

    -- handle selections made in visual line mode (see :help getpos)
    return start_row, start_col, end_row, end_col
end

function Selection.getSelection()
    local winnr = vim.api.nvim_get_current_win()
    bufnr = vim.api.nvim_win_get_buf(winnr)

    local start_row, start_col, end_row, end_col = get_visual_start_end()
    if start_row == end_row and start_col == end_col then
        return nil
    end

    local visual_lines = get_lines(bufnr, start_row, start_col, end_row, end_col)
    return visual_lines, start_row, start_col, end_row, end_col
end

return Selection

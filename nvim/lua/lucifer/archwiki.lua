local Archwiki = {}

local function split(s, sep)
    local result = {}
    for field in string.gmatch(s, string.format("([^%s]+)", sep)) do
        table.insert(result, field)
    end
    return result
end

local function execute_command(command)
    local tmpfile = '/tmp/lua_execute_tmp_file'
    local exit = os.execute(command .. ' > ' .. tmpfile .. ' 2> ' .. tmpfile .. '.err')

    local stdout_file = io.open(tmpfile)
    local stdout = stdout_file:read("*all")

    local stderr_file = io.open(tmpfile .. '.err')
    local stderr = stderr_file:read("*all")

    stdout_file:close()
    stderr_file:close()

    return exit, stdout, stderr
end

function Archwiki.readPage(page, show_urls)
    local url_flag = ""
    if (show_urls) then
        url_flag = "-s"
    end

    local exit, out, err = execute_command("archwiki-rs read-page " .. url_flag .. " " .. page)
    if (exit == false) then
        print('failed to run archwiki-rs command')
        return
    end

    if (err ~= "") then
        return split(err, "\n")
    end

    local buf = vim.api.nvim_create_buf(false, false)
    local data = split(out, "\n")

    vim.api.nvim_buf_set_text(buf, 0, 0, 0, 0, data)

    vim.api.nvim_buf_set_option(buf, 'modifiable', false)
    vim.cmd("b" .. buf)
end

return Archwiki

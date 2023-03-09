vim.g.knap_settings = {
    textoutputtext = 'pdf',
    mdoutputext = 'pdf',
    mdtopdf =
    "pandoc --from=gfm %docroot% -V 'monofont:JetBrains Mono' -V 'monofont:JetBrains Mono' -V 'geometry:margin=2cm' -o %outputfile%",
    mdtopdfviewerlaunch = "sioyek %outputfile%",
    textopdf = "pdflatex -interaction=batchmode -halt-on-error %docroot%",
}

vim.keymap.set({ 'n' }, '<leader>pm', function() require("knap").process_once() end)
vim.keymap.set({ 'n' }, '<leader>pk', function() require("knap").close_viewer() end)
vim.keymap.set({ 'n' }, '<leader>pa', function() require("knap").toggle_autopreviewing() end)

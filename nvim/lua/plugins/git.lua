return {
    'lewis6991/gitsigns.nvim',
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" }
        },
        signs_staged = {
            add = { text = "+" },
            change = { text = "~" }
        },
        on_attach = function(bufnr)
    local gitsigns = require('gitsigns')

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end
    map('n', '<leader>hs', gitsigns.stage_hunk)
    map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', '<leader>hu', gitsigns.undo_stage_hunk)
    map('v', '<leader>hu', function() gitsigns.undo_stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', '<leader>td', gitsigns.toggle_deleted)
end
    }
}

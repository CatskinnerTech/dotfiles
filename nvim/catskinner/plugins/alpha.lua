return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
--        require'alpha'.setup(require'alpha.themes.startify'.config)
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {

    "                                                                                        ", 
    " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗    ██████╗  █████╗ ██████╗ ██╗  ██╗ ",
    " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║    ██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝ ",
    " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║    ██║  ██║███████║██████╔╝█████╔╝  ",
    " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║    ██║  ██║██╔══██║██╔══██╗██╔═██╗  ",
    " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║    ██████╔╝██║  ██║██║  ██║██║  ██╗ ",
    " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ",
    "                                                                                        ",                                                                                  

}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "a", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/Github | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
    end,
}

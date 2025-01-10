return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- configuration goes here
    },
    keys = {
        { "<leader>ll", '<CMD>Leet<CR>',        { desc = 'Leetcode Main Menu' } },
        { "<leader>lt", '<CMD>Leet test<CR>',   { desc = 'Leetcode Test Code' } },
        { "<leader>ls", '<CMD>Leet submit<CR>', { desc = 'Leetcode Submit Code' } },
        { "<leader>lp", '<CMD>Leet lang<CR>',   { desc = 'Leetcode Pick Language' } },
    },
    injector = { ---@type table<lc.lang, lc.inject>
        ["python3"] = {
            before = true
        },
        ["cpp"] = {
            before = { "#include <bits/stdc++.h>", "using namespace std;" },
            after = "int main() {}",
        },
        ["java"] = {
            before = "import java.util.*;",
        },
    }
}

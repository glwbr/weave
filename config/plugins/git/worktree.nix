_: {
  keymaps = [
    {
      mode = "n";
      action = "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>";
      key = "<leader>gt";
      options = {
        desc = "Git Worktree Switch";
      };
    }
    {
      mode = "n";
      action = "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>";
      key = "<leader>gc";
      options = {
        desc = "Git Worktree Create";
      };
    }
  ];

  plugins.git-worktree = {
    enable = true;
    enableTelescope = true;
  };
}

_: {
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;

    keymaps = {
      "<leader>s/" = {
        action = "current_buffer_fuzzy_find";
        options.desc = "[/] Fuzzily [S]earch in Current Buffer";
      };

      "<leader>sb" = {
        action = "buffers";
        options.desc = "[S]earch Existing [B]uffers";
      };

      "<leader>sd" = {
        action = "diagnostics";
        options.desc = "[S]earch Workspace [D]iagnostics";
      };

      "<leader>sf" = {
        action = "find_files";
        options.desc = "[S]earch [F]iles";
      };

      "<leader>sg" = {
        action = "live_grep";
        options.desc = "[S]earch by [G]rep";
      };

      "<leader>sh" = {
        action = "help_tags";
        options.desc = "[S]earch Neovim [H]elp Pages";
      };

      "<leader>s." = {
        action = "oldfiles";
        options.desc = "[S]earch Recently Opened Files ('.' for repeat)";
      };

      "<leade>sw" = {
        action = "grep_string";
        options.desc = "[S]earch Current [W]ord";
      };
    };

    settings.defaults = {
      prompt_prefix = "   ";
      selection_caret = "  ";
      entry_prefix = "  ";
      sorting_strategy = "ascending";

      layout_strategy = "flex";
      layout_config = {
        horizontal = {
          prompt_position = "top";
          preview_width = 0.55;
        };
        vertical.mirror = false;
        width = 0.86;
        height = 0.8;
        preview_cutoff = 120;
      };

      dynamic_preview_title = true;

      set_env.COLORTERM = "truecolor";

      file_ignore_patterns = [
        ".direnv"
        "^.git/"
        "node_modules"
        "venv"
        "vendor"
      ];
    };
  };
}

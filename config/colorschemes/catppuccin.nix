_: {
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato"; # "latte", "mocha", "frappe", "macchiato", "auto"
      no_bold = true;
      no_italic = true;
      no_underline = false;
      transparent_background = true;
      term_colors = true;
      integrations = {
        cmp = true;
        notify = true;
        harpoon = true;
        gitsigns = true;
        # which_key = true;
        treesitter = true;
        treesitter_context = true;
        telescope.enabled = true;
        indent_blankline.enabled = true;
        mini.enabled = true;
        native_lsp = {
          enabled = true;
          inlay_hints = {
            background = true;
          };
          underlines = {
            errors = ["underline"];
            hints = ["underline"];
            information = ["underline"];
            warnings = ["underline"];
          };
        };
      };
    };
  };
}

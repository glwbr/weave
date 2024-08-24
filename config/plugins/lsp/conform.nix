{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    gofumpt
    golines
    jq
    phpPackages.php-cs-fixer
    prettierd
    ruff
    stylua
  ];

  plugins.conform-nvim = {
    enable = true;
    settings = {
      log_level = "error";
      notify_on_error = true;
      notify_no_formatters = true;

      formatters_by_ft = {
        css = ["prettierd"];
        go = ["gofumpt" "golines"];
        html = ["prettierd"];
        javascript = ["prettierd"];
        json = ["jq"];
        lua = ["stylua"];
        markdown = ["prettierd"];
        nix = ["alejandra"];
        php = ["php_cs_fixer"];
        python = ["ruff_format" "ruff_fix"];
        typescript = ["prettierd"];
        yaml = ["prettierd"];
        "_" = ["trim_whitespace"];
      };

      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
    };
  };
}

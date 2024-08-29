{pkgs, ...}: {
  extraPackages = with pkgs; [
    alejandra
    gofumpt
    golines
    jq
    nodePackages.intelephense
    nodePackages.jsonlint
    nodePackages.prettier
    prettierd
    phpactor
    ruff
    stylua
  ];

  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;

      formatters_by_ft = {
        css = ["prettierd" "prettier"];
        go = ["gofumpt" "golines"];
        html = ["prettierd" "prettier"];
        javascript = ["prettierd" "prettier"];
        json = ["jq"];
        lua = ["stylua"];
        markdown = ["prettierd" "prettier"];
        nix = ["alejandra"];
        php = ["intelephense" "phpactor"];
        python = ["ruff_format" "ruff_fix"];
        typescript = ["prettierd" "prettier"];
        yaml = ["prettierd" "prettier"];
        "_" = ["trim_whitespace"];
      };

      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
        # stop_after_first = true;
      };
    };
  };
}

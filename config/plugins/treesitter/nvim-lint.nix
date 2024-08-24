{pkgs, ...}: {
  extraPackages = with pkgs; [
    golangci-lint
    eslint_d
    hadolint
    nodePackages.jsonlint
    phpPackages.phpstan
    selene
    statix
    stylelint
  ];

  plugins.lint = {
    enable = true;
    lintersByFt = {
      css = ["stylelint"];
      docker = ["hadolint"];
      go = ["golangci-lint"];
      javascript = ["eslint_d"];
      javascriptreact = ["eslint_d"];
      json = ["jsonlint"];
      lua = ["selene"];
      nix = ["statix"];
      php = ["phpstan"];
      typescript = ["eslint_d"];
      typescriptreact = ["eslint_d"];
    };
  };
}
